local base = _G

module('TreeView')
mtab = { __index = _M }

local print = base.print
local require = base.require
local ipairs = base.ipairs
local error = base.error
local table = base.table

local Factory = require('Factory')
local Widget = require('Widget')
local CheckListBox = require('CheckListBox')
local TreeViewItem = require('TreeViewItem')
local Skin = require('Skin')
local gui = require('dxgui')

Factory.setBaseClass(_M, Widget)

function new()
	return Factory.create(_M)
end
	
function construct(self)
	Widget.construct(self)
	
	self:setSkin(Skin.treeViewSkin())
	
	self:addItemMouseDownCallback(function(self)
		local item = CheckListBox.getSelectedItem(self)
		
		if item then
			self:onNodeMouseDown(item.node)
		end	
	end)
	
	self:addItemMouseUpCallback(function(self)
		local item = CheckListBox.getSelectedItem(self)
		
		if item then
			self:onNodeMouseUp(item.node)
		end	
	end)
	
	self:addItemMouseDoubleDownCallback(function(self)
		local item = CheckListBox.getSelectedItem(self)
		
		if item then
			self:onNodeMouseDoubleClick(item.node)
		end	
	end)
	
	self:addItemChangeCallback(function(self)
		local item = CheckListBox.getSelectedItem(self)
		local node = item.node
		
		node.expanded = item:getChecked()
		self.selectedNode = node
		
		local value = self:getScrollPosition()
		
		self:fillList()
		
		self:setScrollPosition(value)
		
		self.selectedNode = nil
		self:onNodeChange(node)
	end)
	
	self:addSelectionChangeCallback(function()
		local item = CheckListBox.getSelectedItem(self)
		local node = item.node
		
		self:onSelectedNodeChange(node)
	end)	
	
	self.nodes = {}

	-- сначала рисуется маркер затем отступ затем картинка затем отступ затем текст
	-- marker markerGap picture pictureGap text
	self.markerSize_	= 16	-- размер маркера
	self.markerGap_		= 2		-- расстояние между маркером и картинкой
	self.pictureSize_	= 16	-- размер картинки
	self.pictureGap_	= 2		-- расстояние между картинкой и текстом
end

function newWidget(self)
	return gui.NewCheckListBox()
end

function getScrollPosition(self)
	return gui.CheckListBoxGetScrollPosition(self.widget)
end

function setScrollPosition(self, value)
	gui.CheckListBoxSetScrollPosition(self.widget, value)
end

local function setOffsets_(self, itemSkin, level)
	local skinParams	= itemSkin.skinData.params
	local markerSize	= skinParams.checkSize
	local markerGap		= skinParams.checkGap
	local pictureSize	= skinParams.pictureSize
	local pictureGap	= skinParams.pictureGap
	local markerOffset	= level * (markerSize + markerGap)
	local textOffset	= markerOffset + markerSize + markerGap + pictureSize + pictureGap
	
	local apply = function(interactiveState)
		for innerState = 1, 4 do
			interactiveState[innerState].check.horzAlign.offset = markerOffset
			interactiveState[innerState].text.horzAlign.offset = textOffset	
		end
	end
	
	apply(itemSkin.skinData.states.released)
	apply(itemSkin.skinData.states.hover)
end

function fillNode(self, node, level, itemSkin)
	local item = TreeViewItem.new(node.text)
	
	item:setChecked(node.expanded)
	
	setOffsets_(self, itemSkin, level)
	
	item:setSkin(itemSkin)
	item.node = node
	
	CheckListBox.insertItem(self, item)
	
	item:setCheckVisible(#node.children > 0)
	
	if node.expanded then
		for i, child in ipairs(node.children) do
			self:fillNode(child, level + 1, itemSkin)
		end
	end
	
	if node == self.selectedNode then
		CheckListBox.selectItem(self, item)
	end
end

function fillList(self)
	CheckListBox.removeAllItems(self)
	
	local itemSkin = self:getSkin().skinData.skins.item
	
	for i, node in base.ipairs(self.nodes) do
		self:fillNode(node, 0, itemSkin)
	end	
end

function addNode(self, text, parentNode, index, needUpdate)
	local node = {
		text = text,
		parentNode = parentNode,
		children = {},
		expanded = true
	}
	
	local children
	
	if parentNode then
		children = parentNode.children
	else
		children = self.nodes
	end
	
	if index then
		if index < 1 or index > #children + 1 then
			error('Invalid node index!')
		end
		
		table.insert(children, index, node)
	else
		table.insert(children, node)
	end
	
	if needUpdate then
		self:fillList()
	end	
	
	return node
end

function removeNode(self, node, needUpdate)
	local children
	
	if node.parentNode then
		children = node.parentNode.children
	else
		children = self.nodes
	end
	
	for i, child in ipairs(children) do
		if child == node then
			table.remove(children, i)
			
			if needUpdate then
				self:fillList()
			end	
			
			break
		end
	end
end

function clear(self)
	self.nodes = {}
	self:fillList()
end

function findNodeItem(self, node)
	if node then
		local counter = CheckListBox.getItemCount(self) - 1
			
		for i = 0, counter do
			local item = CheckListBox.getItem(self, i)
			local itemNode = item.node
			
			if itemNode and itemNode == node then
				return item
			end
		end
	end
end

function selectNode(self, node)
	CheckListBox.selectItem(self, self:findNodeItem(node))
end

function getSelectedNode(self)
	local item = CheckListBox.getSelectedItem(self)
	local node
	
	if item then
		node = item.node
	end
	
	return node
end

function getNode(self, index)
	local item = CheckListBox.getItem(self, index)
	local node
	
	if item then
		node =	item.node
	end
	
	return node
end

function expandNode(self, node)
	node.expanded = true
	
	for i, child in ipairs(node.children) do
		self:expandNode(child)
	end
end

function expand(self)
	for i, node in base.ipairs(self.nodes) do
		self:expandNode(node)
	end	
	
	self:fillList()
end

function collapseNode(self, node)
	node.expanded = false
	
	for i, child in ipairs(node.children) do
		self:collapseNode(child)
	end
end

function collapse(self)
	for i, node in base.ipairs(self.nodes) do
		self:collapseNode(node)
	end	
	
	self:fillList()
end

function setNodeText(self, node, text, needUpdate)
	node.text = text
	
	if needUpdate then
		local item = findNodeItem(self, node)
		
		if item then
			item:setText(text)
		end
	end
end

function addItemMouseMoveCallback(self, callback)
	self:addCallback('list box item mouse move', callback)
end

function addItemMouseDownCallback(self, callback)
	self:addCallback('list box item mouse down', callback)
end

function addItemMouseDoubleDownCallback(self, callback)
	self:addCallback('list box item mouse double down', callback)
end

function addItemMouseUpCallback(self, callback)
	self:addCallback('list box item mouse up', callback)
end

-- у элемента списка изменилось состояние (checked/unchecked)
function addItemChangeCallback(self, callback)
	self:addCallback('list box item change', callback)
end

function addSelectionChangeCallback(self, callback)
	self:addCallback('list box selection change', callback)
end

function onNodeMouseDown(self, node)
	-- print('onNodeMouseDown', node.text)
end

function onNodeMouseUp(self, node)
	-- print('onNodeMouseUp', node.text)
end

function onNodeMouseDoubleClick(self, node)
	-- print('onNodeMouseDoubleClick', node.text)
end

function onNodeChange(self, node)
	-- print('onNodeChange', node.text)
end

function onSelectedNodeChange(self, node)
	-- print('onSelectedNodeChange', node.text)
end