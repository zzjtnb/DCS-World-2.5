"use strict";

/* jshint esversion: 6 */
/* jshint bitwise: false */
/* jshint jquery: true */
$.ajaxSetup({ cache: false })   //disallows caching, so information should be new

let previousSelection = []      // stores previously selected tree nodes, need for change event

let typingTimer;                // Timer for search field rebounce
let doneTypingInterval = 600;  // How long to wait before trigger search

$(document).ready(function() {
    prepare_table_data()
})

async function prepare_table_data() {
    let jsonData = await $.ajax('/vfs.json')
    let fileTree = {}
    let key = 1

    let t0 = performance.now()

    generate_filetree(jsonData, fileTree)

    fileTree = prepare_filetree(fileTree)

    let t1 = performance.now()
    console.log('prepared data in ' + (t1-t0) + 'ms')
    init_fancytree(fileTree)
}

function generate_filetree(jsonData, fileTree) {
    for (let fileData of jsonData) {
        let texturePath = fileData.path
        let size = fileData.size
        let refList = fileData.refs

        let pathSplit = texturePath.split('/').slice(1)
        process_path(pathSplit, fileTree, fileData)
    }
    console.log('well?')
}

function process_path(pathSplit, treeNode, fileData) {
    /* Goes like this:
        1) Take path segment
        2) If it's not in file tree, add it
        3) Take next segment, this time pass reference to already existing node (as it is child of another path)
    */
    let path_segment = pathSplit.shift()
    let node
    if (!('children' in treeNode)) {
        treeNode.children = {}
    }
    if (!(path_segment in treeNode.children)) {
        node = create_node(path_segment, fileData)
        treeNode.children[path_segment] = node
    }
    else node = treeNode.children[path_segment]
    if (pathSplit.length > 0) {
        process_path(pathSplit, node, fileData)
    }
}

let key = 1
function create_node(nodeTitle, fileData) {
    let node = {
        data: fileData,
        title: nodeTitle,
        key: key,
        folder: nodeTitle.includes('.') ? false: true
    }
    key += 1
    return node
}

function prepare_filetree(fileTree) {
    // Traverse children, replacing key value pairs with arrays of objects (fancytree format)
    traverse_children(fileTree.children)
    // Do the same for object root outside of recursive loop
    fileTree = fileTree.children
    fileTree = Object.values(fileTree)
    return fileTree
}

function traverse_children(node) {
    // First iterate all children. If any of them has property 'children', make a recursive call
    for (let child in node) {
        if (node[child].hasOwnProperty('children')) {
            traverse_children(node[child].children)
            node[child].children = Object.values(node[child].children)
        }
    }
}

function init_fancytree(fileTree) {
    $('#tree').fancytree({
        source: fileTree,
        titlesTabbable: true,
        extensions: ['grid', 'filter'],
        debugLevel: 0,
        filter: {
            autoExpand: true
        },
        table: {
            indentation: 16,
            nodeColumnIdx: 0
        },
        viewport: {
            enabled: true,
            count: 20
        },
        preInit: function(event, data) {
            let tree = data.tree

            tree.verticalScrollbar = new PlainScrollbar({
              alwaysVisible: true,
              arrows: true,
              orientation: "vertical",
              onSet: function(numberOfItems) {
                tree.debug("verticalScrollbar:onSet", numberOfItems);
                tree.setViewport({
                  start: Math.round(numberOfItems.start)
                });
              },
              scrollbarElement: document.getElementById("verticalScrollbar"),
            })
        },
        init: function(event, data) {
            let modelCount = data.tree.count()
            data.tree.adjustViewportSize()
        },
        renderColumns: function(event, data) {
            let node = data.node,
                $tdList = $(node.tr).find(">td")

            // Make the title cell span the remaining columns if it's a folder:
            if( node.isFolder() ) {
                $tdList.eq(1).empty()
                $tdList.eq(2).empty()
                return
            }
            // (Column #0 is rendered by fancytree by adding the checkbox)

            // Column #1 should contain the index as plain text, e.g. '2.7.1'

            $tdList.eq(1)
                .text(node.data.size)
                .addClass("alignRight")

            let ul;
            if ($tdList.eq(2).find('ul').length === 0) {
                ul = $tdList.eq(2).append('<ul></ul>').find('ul')
            }
            else {
                ul = $tdList.eq(2).find('ul')
                ul.empty()
            }

            for (let refId in node.data.refs) {
                ul.append('<li id="node'+ node.key + '_' + refId + '">' + node.data.refs[refId] + '</li>')
            }
        },
        updateViewport: function(event, data) {
            let tree = data.tree
            // Handle PlainScrollbar events
            tree.verticalScrollbar.set({
                start: tree.viewport.start,
                total: tree.visibleNodeList.length,
                visible: tree.viewport.count,
            }, true);  // do not trigger `onSet`
        }
    })


    // TODO: Aren't two search methods overlapping?
    // Handle search
    $("input[name=search_name]").on("keyup", (e) => {
        clearTimeout(typingTimer)
        typingTimer = setTimeout(searchFiles, doneTypingInterval, $(e.target).val())
    })
    $("input[name=search_name]").on("keydown", () => {
        clearTimeout(typingTimer)
    })

    // Handle search in archives
    $("input[name=search_archives]").on("keyup", (e) => {
        clearTimeout(typingTimer)
        typingTimer = setTimeout(searchArchives, doneTypingInterval, $(e.target).val())
    })
        $("input[name=search_archives]").on("keydown", (e) => {
        clearTimeout(typingTimer)
    })

    // Run search again if checkbox value changed
    $("input[name=search_type]").on("change", (e) => {
        let searchValue = $("input[name=search_name]").val();
        if (searchValue !== '') {
            searchFiles(searchValue)
        }
    })



    // handle resize
    $(window).on("resize", function(e){
        let tree = $('#tree').fancytree("getTree")
        if (!('adjustViewportSize' in tree)) {
            return
        }

        // Re-calculate viewport.count from current wrapper height:
        tree.adjustViewportSize()
    }).resize()
}

function searchFiles(val){
    let n,
        tree = $('#tree').fancytree('getTree'),
        match = $.trim(val)

    let fullMatch = function(node) {
        let localMatch = false
        if (node.data.path.includes(match)) {
            localMatch = true
            // TODO: Highlight matched text somehow
        }
        return localMatch
    }

    let dirMatch = function(node) {
        let localMatch = false
        let isFolderMatched = ((node.folder === true) && (node.data.path.includes(match)))
        if (isFolderMatched || (node.data.path.split('/').slice(0,-1).join('/').includes(match))) {
            localMatch = true
            // TODO: Highlight matched text somehow
        }
        return localMatch
    }

    let fileMatch = function(node) {
        let localMatch = false
        if ((node.folder === false) && (node.title.includes(match))) {
            localMatch = true
            // TODO: Highlight matched text somehow
        }
        return localMatch
    }

    let searchTypeValue = $("input[name='search_type']:checked").val();
    console.log(searchTypeValue)
    let searchTypeTable = {
        all: fullMatch,
        files: fileMatch,
        folders: dirMatch
    }

    // Pass a string to perform case insensitive matching
    n = tree.filterNodes(searchTypeTable[searchTypeValue], { mode: "hide" })

    $("span.matches").text(n ? "(" + n + " matches)" : "")
}

function searchArchives(val){
    let n,
        tree = $('#tree').fancytree('getTree'),
        match = $.trim(val)

    // Pass a string to perform case insensitive matching
    let archMatch = function(node) {
        let localMatch = false
        Object.values(node.data.refs).forEach((ref, ref_id) => {
            if (ref.includes(match)) {
                localMatch = true
                let li = $("#node" + node.key + "_" + ref_id)[0]
                if (li !== undefined) {
                    li.innerHTML = li.innerText.replace(match, "<mark>" + match + "</mark>")
                    console.log(li)
                }
            }
        })

        return localMatch
    }
    n = tree.filterNodes(archMatch, { mode: "hide" })

    $("span.matches").text(n ? "(" + n + " matches)" : "")
}
