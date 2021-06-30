module('WidgetParams', package.seeall)

local WidgetParam = require('WidgetParam')
local LayoutFactory = require('LayoutFactory')

function getNilValue()
	return '$nil$'
end

local widgets

function getWidgets()
	return widgets
end

function merge(tableTo, tableFrom, replace)
	if tableFrom then
		for k, v in pairs(tableFrom) do
			if 'table' == type(v) then
				tableTo[k] = tableTo[k] or {}

				if getNilValue() == tableTo[k] then
					tableTo[k] = {}
				end

				merge(tableTo[k], v, replace)
			else
				if replace then
					tableTo[k] = v
				else
					tableTo[k] = tableTo[k] or v
				end
			end
		end
	end

	return tableTo
end

function parseDummy(value)
	return value
end

function parseText(text)
	if '' == text then
		return getNilValue()
	end 

	return text
end

function parseNumber(text)
	local result = tonumber(text)

	if not result then
		result = getNilValue()
	end

	return result
end

function parseBool(text)
	return text == 'true' or text == true
end

function addElement(name, base, params, addChildFuncName)
	params = params or {}

	if base then
		local widget = widgets[base]

		merge(params, widget.params)
	end

	widgets[name] = {
		name = name, 
		base = base,
		params = params,
		addChildFuncName = addChildFuncName,
	}
end

function createParam(name)
	return WidgetParam.new(name)
end

function createBoundsParam()
	local getBoundsTable = function(widget)
		local x, y, w, h = widget:getBounds()

		return {x = x, y = y, w = w, h = h}
	end

	-- при загрузке из старых ресурсов сюда приходят 4 числа
	local setBoundsTable = function(widget, x, y, w, h)
		if 'table' == type(x) then
			local bounds = x

			widget:setBounds(bounds.x, bounds.y, bounds.w, bounds.h)
		else
			widget:setBounds(x, y, w, h)
		end
	end

	return createParam('Bounds'):getTableFunc(getBoundsTable):setTableFunc(setBoundsTable):getFuncName('getBoundsTable'):setFuncName('setBoundsTable'):fieldsFunc(
		function()
			return {
				x = createParam('\tX'):parseFunc(parseNumber):fieldName('x'):numberType(-1e6, 1e6),
				y = createParam('\tY'):parseFunc(parseNumber):fieldName('y'):numberType(-1e6, 1e6),
				w = createParam('\tWidth'):parseFunc(parseNumber):fieldName('w'):numberType(),
				h = createParam('\tHeight'):parseFunc(parseNumber):fieldName('h'):numberType(),
			}
		end
	)
end

function createRangeParam()
	local getRangeTable = function(widget)
		local min, max = widget:getRange()

		return {
			min = min,
			max = max,
		}
	end

	-- при загрузке из старых ресурсов сюда приходят 2 числа
	local setRangeTable = function(widget, min, max)
		if 'table' == type(min) then
			local range = min

			widget:setRange(range.min, range.max)
		else
			widget:setRange(min, max)
		end
	end

	return createParam('Range'):getTableFunc(getRangeTable):setTableFunc(setRangeTable):fieldsFunc(
		function()
			return {
				min = createParam('\tMin'):parseFunc(parseNumber):fieldName('min'):numberType(-1e6, 1e6),
				max = createParam('\tMax'):parseFunc(parseNumber):fieldName('max'):numberType(-1e6, 1e6),
			}
		end
	)
end

function createValueRangeParam()
	local getValueRangeTable = function(widget)
		local min, max = widget:getValueRange()

		return {
			min = min,
			max = max,
		}
	end

	local setValueRangeTable = function(widget, valueRange)
		widget:setValueRange(valueRange.min, valueRange.max)
	end

	return createParam('ValueRange'):getTableFunc(getValueRangeTable):setTableFunc(setValueRangeTable):fieldsFunc(
		function()
			return {
				min = createParam('\tValue Min'):parseFunc(parseNumber):fieldName('min'):numberType(-1e6, 1e6),
				max = createParam('\tValue Max'):parseFunc(parseNumber):fieldName('max'):numberType(-1e6, 1e6),
			}
		end
	)
end

function createHorzAlignParam(name, dataPath, tabCount)
	local prefix = string.rep('\t', tabCount)
	local prefixFields = string.rep('\t', tabCount + 1)
	return createParam(prefix .. name):fieldsFunc(
		function()
			return {
				type = createParam(prefixFields .. 'Type'):parseFunc(parseText):fieldName(dataPath .. '.type'):horzAlignType(),
				offset = createParam(prefixFields .. 'Offset'):parseFunc(parseNumber):fieldName(dataPath .. '.offset'):numberType(-1e6, 1e6),
			}
		end
	)
end

function createVertAlignParam(name, dataPath, tabCount)
	local prefix = string.rep('\t', tabCount)
	local prefixFields = string.rep('\t', tabCount + 1)
	return createParam(prefix .. name):fieldsFunc(
		function()
			return {
				type = createParam(prefixFields .. 'Type'):parseFunc(parseText):fieldName(dataPath .. '.type'):vertAlignType(),
				offset = createParam(prefixFields .. 'Offset'):parseFunc(parseNumber):fieldName(dataPath .. '.offset'):numberType(-1e6, 1e6),
			}
		end
	)
end

function createPivotPointParam()
	local getPivotPointTable = function(widget)
		local x, y = widget:getPivotPoint()

		return {
			x = x,
			y = y,
		}
	end

	-- при загрузке из старых ресурсов сюда приходят 2 числа
	local setPivotPointTable = function(widget, pivotPoint)
		widget:setPivotPoint(pivotPoint.x, pivotPoint.y)
	end

	return createParam('PivotPoint'):getTableFunc(getPivotPointTable):setTableFunc(setPivotPointTable):fieldsFunc(
		function()
			return {
				x = createParam('\tX'):parseFunc(parseNumber):fieldName('x'):numberType(-1e6, 1e6),
				y = createParam('\tY'):parseFunc(parseNumber):fieldName('y'):numberType(-1e6, 1e6),
			}
		end
	)
end

local function getLayoutTable(widget)
	local result = {}
	local layout = widget:getLayout()

	if layout then
		result.type = layout:getType()
		result.data = layout:unload()
	end

	return result
end

local function setLayoutTable(widget, layoutTable)
	local layoutType = layoutTable.type
	local layout = widget:getLayout()
	local currLayoutType

	if layout then
		currLayoutType = layout:getType()
	end

	if currLayoutType ~= layoutType then
		layout = LayoutFactory.createLayout(layoutType)
		widget:setLayout(layout)
	end

	if not currLayoutType or currLayoutType == layoutType then 
		if layout then
			if layoutTable.data then
				layout:load(layoutTable.data)
			end
		end
	end
end

function createLayoutParam()
	return createParam('Layout'):getTableFunc(getLayoutTable):setTableFunc(setLayoutTable):fieldsFunc(
		function(layoutTable)
			if 'horz' == layoutTable.type or 'vert' == layoutTable.type then
				return {
					type = createParam('\tType'):parseFunc(parseText):fieldName('type'):needUpdate():layoutType(),
					gap = createParam('\tGap'):parseFunc(parseNumber):fieldName('data.gap'):numberType(),
					horzAlign = createHorzAlignParam('Horz Align', 'data.horzAlign', 1):getTableFunc(getLayoutTable):setTableFunc(setLayoutTable),
					vertAlign = createVertAlignParam('Vert Align', 'data.vertAlign', 1):getTableFunc(getLayoutTable):setTableFunc(setLayoutTable),
				}
			elseif 'form' == layoutTable.type then
				return {
					type = createParam('\tType'):parseFunc(parseText):fieldName('type'):needUpdate():layoutType(),
					horzGap = createParam('\tHorz Gap'):parseFunc(parseNumber):fieldName('data.horzGap'):numberType(),
					vertGap = createParam('\tVert Gap'):parseFunc(parseNumber):fieldName('data.vertGap'):numberType(),
					captionsAlign = createParam('\tCaptions Align'):getTableFunc(getLayoutTable):setTableFunc(setLayoutTable):fieldsFunc(
					function()
						return {
							horzAlign = createHorzAlignParam('Horz Align', 'data.captions.horzAlign', 2):getTableFunc(getLayoutTable):setTableFunc(setLayoutTable),
							vertAlign = createVertAlignParam('Vert Align', 'data.captions.vertAlign', 2):getTableFunc(getLayoutTable):setTableFunc(setLayoutTable),
						}
					end
					),
					fieldsAlign = createParam('\tFields Align'):getTableFunc(getLayoutTable):setTableFunc(setLayoutTable):fieldsFunc(
					function()
						return {
							horzAlign = createHorzAlignParam('Horz Align', 'data.fields.horzAlign', 2):getTableFunc(getLayoutTable):setTableFunc(setLayoutTable),
							vertAlign = createVertAlignParam('Vert Align', 'data.fields.vertAlign', 2):getTableFunc(getLayoutTable):setTableFunc(setLayoutTable),
						}
					end
					),
				}
			elseif 'border'	== layoutTable.type then
				return {
					type = createParam('\tType'):parseFunc(parseText):fieldName('type'):needUpdate():layoutType(),
					horzGap = createParam('\tHorz Gap'):parseFunc(parseNumber):fieldName('data.horzGap'):numberType(),
					vertGap = createParam('\tVert Gap'):parseFunc(parseNumber):fieldName('data.vertGap'):numberType(),
				}
			elseif 'anchor' == layoutTable.type then
				local result = {
					type = createParam('\tType'):parseFunc(parseText):fieldName('type'):needUpdate():layoutType(),
					count = createParam('\tCount'):parseFunc(parseNumber):fieldName('data.count'):needUpdate():numberType(),
				}

				local anchorInfos = layoutTable.data.anchorInfos or {}

				for i, anchorInfo in ipairs(anchorInfos) do
					local param = createParam('\tAnchors ' .. i):getTableFunc(getLayoutTable):setTableFunc(setLayoutTable):fieldsFunc(
						function()
							return {
								left	= createHorzAlignParam('Left', 'data.anchorInfos.[' .. i .. '].left', 2):getTableFunc(getLayoutTable):setTableFunc(setLayoutTable),
								top		= createVertAlignParam('Top', 'data.anchorInfos.[' .. i .. '].top', 2):getTableFunc(getLayoutTable):setTableFunc(setLayoutTable),
								right	= createHorzAlignParam('Right', 'data.anchorInfos.[' .. i .. '].right', 2):getTableFunc(getLayoutTable):setTableFunc(setLayoutTable),
								bottom	= createVertAlignParam('Bottom', 'data.anchorInfos.[' .. i .. '].bottom', 2):getTableFunc(getLayoutTable):setTableFunc(setLayoutTable),
							}
						end
					)

					result['Anchors' .. i] = param
				end

				return result
			else
				return {
					type = createParam('\tType'):parseFunc(parseText):fieldName('type'):needUpdate():layoutType(),
				}
			end
		end
	)
end

function create()
	if widgets then
		return
	end

	widgets = {}

	addElement("Widget", nil,
	{
		name = createParam('Name'):getFuncName('getName'):setFuncName('setName'):parseFunc(parseText):skipSave():textType(),
		text = createParam('Text'):getFuncName('getText'):setFuncName('setText'):parseFunc(parseText):textType(),
		visible = createParam('Visible'):getFuncName('getVisible'):setFuncName('setVisible'):parseFunc(parseBool):boolType(),
		enabled = createParam('Enabled'):getFuncName('getEnabled'):setFuncName('setEnabled'):parseFunc(parseBool):boolType(),
		tooltip = createParam('Tooltip'):getFuncName('getTooltipText'):setFuncName('setTooltipText'):parseFunc(parseText):textType(),
		bounds = createBoundsParam(),
		zindex = createParam('Z Index'):getFuncName('getZIndex'):setFuncName('setZIndex'):parseFunc(parseNumber):numberType(),
	})
	addElement("Panel", "Widget",
	{
		layout = createLayoutParam(),
	}, 'insertWidget')
	addElement("Window", nil,
	{
		layout = createLayoutParam(),
		text = createParam('Text'):getFuncName('getText'):setFuncName('setText'):parseFunc(parseText):textType(),
		enabled = createParam('Enabled'):getFuncName('getEnabled'):setFuncName('setEnabled'):parseFunc(parseBool):boolType(),
		bounds = createBoundsParam(),
		zOrder = createParam('Z Order'):getFuncName('getZOrder'):setFuncName('setZOrder'):parseFunc(parseNumber):numberType(),
		modal = createParam('Modal'):getFuncName('getModal'):setFuncName('setModal'):parseFunc(parseBool):boolType(),
		offscreen = createParam('Offscreen'):getFuncName('getOffscreen'):setFuncName('setOffscreen'):parseFunc(parseBool):boolType(),
		overlay = createParam('Overlay'):getFuncName('getOverlay'):setFuncName('setOverlay'):parseFunc(parseBool):boolType(),
		lockFlow = createParam('Lock Flow'):getFuncName('getLockFlow'):setFuncName('setLockFlow'):parseFunc(parseBool):boolType(), 
		hasCursor = createParam('Has Cursor'):getFuncName('getHasCursor'):setFuncName('setHasCursor'):parseFunc(parseBool):boolType(),
		draggable = createParam('Draggable'):getFuncName('getDraggable'):setFuncName('setDraggable'):parseFunc(parseBool):boolType(),
		resizable = createParam('Resizable'):getFuncName('getResizable'):setFuncName('setResizable'):parseFunc(parseBool):boolType(),
		clipResizeCursor = createParam('Clip Resize Cursor'):getFuncName('getClipResizeCursor'):setFuncName('setClipResizeCursor'):parseFunc(parseBool):boolType(),
	}, 'insertWidget')	
	addElement("OffscreenWindow", nil,
	{
		layout = createLayoutParam(),
		text = createParam('Text'):getFuncName('getText'):setFuncName('setText'):parseFunc(parseText):textType(),
		enabled = createParam('Enabled'):getFuncName('getEnabled'):setFuncName('setEnabled'):parseFunc(parseBool):boolType(),
		bounds = createBoundsParam(),
		zOrder = createParam('Z Order'):getFuncName('getZOrder'):setFuncName('setZOrder'):parseFunc(parseNumber):numberType(),
		modal = createParam('Modal'):getFuncName('getModal'):setFuncName('setModal'):parseFunc(parseBool):boolType(),
		offscreen = createParam('Offscreen'):getFuncName('getOffscreen'):setFuncName('setOffscreen'):parseFunc(parseBool):boolType(),
		overlay = createParam('Overlay'):getFuncName('getOverlay'):setFuncName('setOverlay'):parseFunc(parseBool):boolType(),
		lockFlow = createParam('Lock Flow'):getFuncName('getLockFlow'):setFuncName('setLockFlow'):parseFunc(parseBool):boolType(), 
		hasCursor = createParam('Has Cursor'):getFuncName('getHasCursor'):setFuncName('setHasCursor'):parseFunc(parseBool):boolType(),
		draggable = createParam('Draggable'):getFuncName('getDraggable'):setFuncName('setDraggable'):parseFunc(parseBool):boolType(),
		resizable = createParam('Resizable'):getFuncName('getResizable'):setFuncName('setResizable'):parseFunc(parseBool):boolType(),
		clipResizeCursor = createParam('Clip Resize Cursor'):getFuncName('getClipResizeCursor'):setFuncName('setClipResizeCursor'):parseFunc(parseBool):boolType(),
	}, 'insertWidget')	
	addElement("Static", "Widget",
	{
		angle = createParam('Angle'):getFuncName('getAngle'):setFuncName('setAngle'):parseFunc(parseNumber):numberType(-1e6, 1e6),
		pivotPoint = createPivotPointParam(),
	})
	addElement("AutoScrollText", "Widget")
	addElement("Chart", "Widget")
	addElement("AnimatedColorStatic", "Widget")
	addElement("ColorTextStatic", "Widget")
	addElement("Button", "Widget", 
	{
		sound = createParam('Sound'):getFuncName('getSound'):setFuncName('setSound'):parseFunc(parseText):textType(),
		tabOrder = createParam('Tab Order'):getFuncName('getTabOrder'):setFuncName('setTabOrder'):parseFunc(parseNumber):numberType(),
	})
	addElement("ToggleButton", "Widget", 
	{
		state = createParam('State'):getFuncName('getState'):setFuncName('setState'):parseFunc(parseBool):boolType(),
		sound = createParam('Sound'):getFuncName('getSound'):setFuncName('setSound'):parseFunc(parseText):textType(),
		tabOrder = createParam('Tab Order'):getFuncName('getTabOrder'):setFuncName('setTabOrder'):parseFunc(parseNumber):numberType(),
	})
	addElement("CheckBox", "ToggleButton")
	addElement("SwitchButton", "Widget",
	{
		state = createParam('State'):getFuncName('getState'):setFuncName('setState'):parseFunc(parseBool):boolType(),
		sound = createParam('Sound'):getFuncName('getSound'):setFuncName('setSound'):parseFunc(parseText):textType(),
		tabOrder = createParam('Tab Order'):getFuncName('getTabOrder'):setFuncName('setTabOrder'):parseFunc(parseNumber):numberType(),
	})
	addElement("RadioButton", "SwitchButton")
	addElement("TabGroupItem", "Widget",
	{
		state = createParam('State'):getFuncName('getState'):setFuncName('setState'):parseFunc(parseBool):boolType(),
		sound = createParam('Sound'):getFuncName('getSound'):setFuncName('setSound'):parseFunc(parseText):textType(),
	})
	addElement("Dial", "Widget",
	{
		range = createRangeParam(),
		value = createParam('Value'):getFuncName('getValue'):setFuncName('setValue'):parseFunc(parseNumber):numberType(-1e6, 1e6),
		step = createParam('Step'):getFuncName('getStep'):setFuncName('setStep'):parseFunc(parseNumber):numberType(),
		pageStep = createParam('Page Step'):getFuncName('getPageStep'):setFuncName('setPageStep'):parseFunc(parseNumber):numberType(),
		cyclic = createParam('Cyclic'):getFuncName('getCyclic'):setFuncName('setCyclic'):parseFunc(parseBool):boolType(),
		tabOrder = createParam('Tab Order'):getFuncName('getTabOrder'):setFuncName('setTabOrder'):parseFunc(parseNumber):numberType(),
	})
	addElement("HorzScrollBar", "Widget",
	{
		range = createRangeParam(),
		value = createParam('Value'):getFuncName('getValue'):setFuncName('setValue'):parseFunc(parseNumber):numberType(-1e6, 1e6),
		step = createParam('Step'):getFuncName('getStep'):setFuncName('setStep'):parseFunc(parseNumber):numberType(),
		pageStep = createParam('Page Step'):getFuncName('getPageStep'):setFuncName('setPageStep'):parseFunc(parseNumber):numberType(),
		thumbValue = createParam('Thumb Value'):getFuncName('getThumbValue'):setFuncName('setThumbValue'):parseFunc(parseNumber):numberType(),
	})
	addElement("VertScrollBar", "HorzScrollBar")
	addElement("ScrollPane", "Widget",
	{
		layout = createLayoutParam(),
		vertScrollBarStep = createParam('Vert ScrollBar Step'):getFuncName('getVertScrollBarStep'):setFuncName('setVertScrollBarStep'):parseFunc(parseNumber):numberType(),
		vertScrollBarPageStep = createParam('Vert ScrollBar Page Step'):getFuncName('getVertScrollBarPageStep'):setFuncName('setVertScrollBarPageStep'):parseFunc(parseNumber):numberType(),
		horzScrollBarStep = createParam('Horz ScrollBar Step'):getFuncName('getHorzScrollBarStep'):setFuncName('setHorzScrollBarStep'):parseFunc(parseNumber):numberType(),
		horzScrollBarPageStep = createParam('Horz ScrollBar Page Step'):getFuncName('getHorzScrollBarPageStep'):setFuncName('setHorzScrollBarPageStep'):parseFunc(parseNumber):numberType(),
		vertMouseWheel = createParam('Vert Mouse Wheel'):getFuncName('getVertMouseWheel'):setFuncName('setVertMouseWheel'):parseFunc(parseBool):boolType(),
		horzMouseWheel = createParam('Horz Mouse Wheel'):getFuncName('getHorzMouseWheel'):setFuncName('setHorzMouseWheel'):parseFunc(parseBool):boolType(),
	}, 'insertWidget')
	addElement("EditBox", "Widget",
	{
		password = createParam('Password'):getFuncName('getPassword'):setFuncName('setPassword'):parseFunc(parseBool):boolType(),
		multiline = createParam('Multiline'):getFuncName('getMultiline'):setFuncName('setMultiline'):parseFunc(parseBool):boolType(),
		numeric = createParam('Numeric'):getFuncName('getNumeric'):setFuncName('setNumeric'):parseFunc(parseBool):boolType(),
		acceptDecimalPoint = createParam('Accept Decimal Point'):getFuncName('getAcceptDecimalPoint'):setFuncName('setAcceptDecimalPoint'):parseFunc(parseBool):boolType(),
		textWrapping = createParam('Text Wrapping'):getFuncName('getTextWrapping'):setFuncName('setTextWrapping'):parseFunc(parseBool):boolType(),
		readOnly = createParam('Read Only'):getFuncName('getReadOnly'):setFuncName('setReadOnly'):parseFunc(parseBool):boolType(),
		tabOrder = createParam('Tab Order'):getFuncName('getTabOrder'):setFuncName('setTabOrder'):parseFunc(parseNumber):numberType(),
	})
	addElement("SpinBox", "Widget",
	{
		range = createRangeParam(),
		checkRange = createParam('Check Range'):getFuncName('getCheckRange'):setFuncName('setCheckRange'):parseFunc(parseBool):boolType(),
		value = createParam('Value'):getFuncName('getValue'):setFuncName('setValue'):parseFunc(parseNumber):numberType(-1e6, 1e6),
		step = createParam('Step'):getFuncName('getStep'):setFuncName('setStep'):parseFunc(parseNumber):numberType(),
		pageStep = createParam('Page Step'):getFuncName('getPageStep'):setFuncName('setPageStep'):parseFunc(parseNumber):numberType(), 
		acceptDecimalPoint = createParam('Accept Decimal Point'):getFuncName('getAcceptDecimalPoint'):setFuncName('setAcceptDecimalPoint'):parseFunc(parseBool):boolType(),
		tabOrder = createParam('Tab Order'):getFuncName('getTabOrder'):setFuncName('setTabOrder'):parseFunc(parseNumber):numberType(),
	})
	addElement("ListBox", "Widget", 
	{
		tabOrder = createParam('Tab Order'):getFuncName('getTabOrder'):setFuncName('setTabOrder'):parseFunc(parseNumber):numberType(),
	})
	addElement("ListBoxItem", "Widget")
	addElement("CheckListBox", "ListBox")
	addElement("CheckListBoxItem", "Widget",
	{
		checked = createParam('Checked'):getFuncName('getChecked'):setFuncName('setChecked'):parseFunc(parseBool):boolType(),
	})
	addElement("TreeView", "CheckListBox")
	addElement("TreeViewItem", "Widget")
	addElement("ComboBox", "Widget",
	{
		readOnly = createParam('Read Only'):getFuncName('getReadOnly'):setFuncName('setReadOnly'):parseFunc(parseBool):boolType(),
		tabOrder = createParam('Tab Order'):getFuncName('getTabOrder'):setFuncName('setTabOrder'):parseFunc(parseNumber):numberType(),
	})
	addElement("ComboList", "Widget",
	{
		tabOrder = createParam('Tab Order'):getFuncName('getTabOrder'):setFuncName('setTabOrder'):parseFunc(parseNumber):numberType(),
	})
	addElement("Menu", "Widget", nil, 'insertItem')
	addElement("MenuItem", "Widget")
	addElement("MenuSeparatorItem", "Widget")
	addElement("MenuCheckItem", "Widget")
	addElement("MenuRadioItem", "Widget",
	{
		groupNumber = createParam('Group Number'):getFuncName('getGroupNumber'):setFuncName('setGroupNumber'):parseFunc(parseNumber):numberType(),
	})
	addElement("MenuSubItem", "Widget",
	{
		menuName = createParam('MenuName'):getFuncName('getMenuName'):setFuncName('setMenuName'):parseFunc(parseText):textType(),
	}, 'setSubMenu')
	addElement("MenuBar", "Widget", 
	{
		layout = createLayoutParam(),
	}, 'insertItem')
	addElement("MenuBarItem", "Widget", 
	{
		menuName = createParam('MenuName'):getFuncName('getMenuName'):setFuncName('setMenuName'):parseFunc(parseText):textType(),
	}, 'setMenu')
	addElement("Grid", "Widget",
	{
		vertScrollBarStep = createParam('Vert ScrollBar Step'):getFuncName('getVertScrollBarStep'):setFuncName('setVertScrollBarStep'):parseFunc(parseNumber):numberType(),
		vertScrollBarPageStep = createParam('Vert ScrollBar Page Step'):getFuncName('getVertScrollBarPageStep'):setFuncName('setVertScrollBarPageStep'):parseFunc(parseNumber):numberType(),
		horzScrollBarStep = createParam('Horz ScrollBar Step'):getFuncName('getHorzScrollBarStep'):setFuncName('setHorzScrollBarStep'):parseFunc(parseNumber):numberType(),
		horzScrollBarPageStep = createParam('Horz ScrollBar Page Step'):getFuncName('getHorzScrollBarPageStep'):setFuncName('setHorzScrollBarPageStep'):parseFunc(parseNumber):numberType(),	
		fixedColumns = createParam('Fixed Column Count'):getFuncName('getFixedColumnCount'):setFuncName('setFixedColumnCount'):parseFunc(parseNumber):numberType(),
		rows = createParam('Row count'):getFuncName('getRowCount'):setFuncName('setRowCount'):parseFunc(parseNumber):numberType(),
		columnMouseResizing = createParam('Column Mouse Resizing'):getFuncName('getMouseColumnResizing'):setFuncName('setMouseColumnResizing'):parseFunc(parseBool):boolType(),
	}, 'insertHeaderCell')
	addElement("GridHeaderCell", nil,
	{
		name = createParam('Name'):getFuncName('getName'):setFuncName('setName'):parseFunc(parseText):skipSave():textType(),
		text = createParam('Text'):getFuncName('getText'):setFuncName('setText'):parseFunc(parseText):textType(),
		visible = createParam('Visible'):getFuncName('getVisible'):setFuncName('setVisible'):parseFunc(parseBool):boolType(),
		enabled = createParam('Enabled'):getFuncName('getEnabled'):setFuncName('setEnabled'):parseFunc(parseBool):boolType(),
		tooltip = createParam('Tooltip'):getFuncName('getTooltipText'):setFuncName('setTooltipText'):parseFunc(parseText):textType(),
		bounds = createBoundsParam(),
		zindex = createParam('Index'):getFuncName('getZIndex'):setFuncName('setZIndex'):parseFunc(parseNumber):numberType(),
		draggable = createParam('Draggable'):getFuncName('getDraggable'):setFuncName('setDraggable'):parseFunc(parseBool):boolType(),
		layout = createLayoutParam(),
	}, 'insertWidget')
	addElement("HorzSlider", "Widget",
	{
		range = createRangeParam(),
		value = createParam('Value'):getFuncName('getValue'):setFuncName('setValue'):parseFunc(parseNumber):numberType(-1e6, 1e6),
		step = createParam('Step'):getFuncName('getStep'):setFuncName('setStep'):parseFunc(parseNumber):numberType(),
		pageStep = createParam('Page Step'):getFuncName('getPageStep'):setFuncName('setPageStep'):parseFunc(parseNumber):numberType(),
		tabOrder = createParam('Tab Order'):getFuncName('getTabOrder'):setFuncName('setTabOrder'):parseFunc(parseNumber):numberType(),
	})
	addElement("VertSlider", "HorzSlider")
	addElement("HorzProgressBar", "Widget",
	{
		range = createRangeParam(),
		value = createParam('Value'):getFuncName('getValue'):setFuncName('setValue'):parseFunc(parseNumber):numberType(-1e6, 1e6),
		step = createParam('Step'):getFuncName('getStep'):setFuncName('setStep'):parseFunc(parseNumber):numberType(),
	})
	addElement("VertProgressBar", "HorzProgressBar")
	addElement("HorzRangeIndicator", "Widget",
	{
		range = createRangeParam(),
		valueRange = createValueRangeParam(),
	})
	addElement("VertRangeIndicator", "HorzRangeIndicator")
end
