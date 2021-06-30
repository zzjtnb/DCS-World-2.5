local DialogLoader	= require('DialogLoader'	)
local MapWindow 	= require('me_map_window'	)
local MapWindow 	= require('me_map_window'	)
local ColorSelector	= require('me_select_color'	)
local toolbar 		= require('me_toolbar'		)
local BuddyWindow 	= require('BuddyWindow'		)
local SkinUtils 	= require('SkinUtils'		)
local i18n			= require('i18n'			)
local gui			= require('dxgui'			)

local window_
local w_
local colorSelector_
local colorWindow_
local switchButtonSelect_
local panelProperties_
local propertyPanels_			= {}
local checkListBoxObjects_
local currPrimitiveType_
local newObject_
local currObject_
local currLastMouseX_
local currLastMouseY_
local polygonFreeDragged_		= false
local selectionHandlersPool_	= {}
local selectionHandlers_		= {}
local selectionHandlerIndex_
local circleSides_ 				= 36
local distanceUnits_
local iconsFolder_ 				= './MissionEditor/data/NewMap/images/draw/icons/'

-- primitive types
local Primitive = {
	Line	= 'Line'	,
	Polygon	= 'Polygon'	,
	TextBox	= 'TextBox'	,
	Icon	= 'Icon'	,
}

local LineMode = {
	Segments	= 'segments',
	Segment		= 'segment',
	Free		= 'free',
}

local lineMode_ = LineMode.Segments

local PolygonMode = {
	Circle		= 'circle',
	Oval		= 'oval',
	Rect		= 'rect',
	Free		= 'free',
}

local polygonMode_	= PolygonMode.Circle
local lineMode_		= LineMode.Segments

local Style = {
	Solid	= 'solid'	,
	Dot		= 'dot'		,
	Dash	= 'dash'	,
}

local styleInfo_ 	= {
	[Style.Solid]	= {order = 1, file = './MissionEditor/data/NewMap/images/draw/polyline_solid.png'	},
	[Style.Dot	]	= {order = 2, file = './MissionEditor/data/NewMap/images/draw/polyline_dotted.png'	},
	[Style.Dash	]	= {order = 3, file = './MissionEditor/data/NewMap/images/draw/polyline_dash.png'	},	
}

local newPrimitiveInfo_ = {
	[Primitive.Line]	= {	
		name			= {formatString = 'Line %d'		, counter = 0},
		thickness		= 4,
		colorString		= '0xff0000ff', -- красный цвет
		style			= Style.Solid,
		closed			= false,
	},
	[Primitive.Polygon]	= {
		name			= {formatString = 'Polygon %d'	, counter = 0},
		thickness		= 4,
		colorString		= '0xff0000ff', -- красный цвет
		style			= Style.Solid,
		fillColorString	= '0xff000080', -- красный цвет
	},
	[Primitive.TextBox]	= {
		name			= {formatString = 'Text Box %d'	, counter = 0},
		text			= 'New text box',
		fontSize		= 24,
		borderThickness	= 4,
		colorString		= '0x00ff00ff', -- зеленый цвет
		fillColorString	= '0xff000080', -- красный цвет
	},
	[Primitive.Icon]	= {
		name			= {formatString = 'Icon %d'		, counter = 0},
		colorString		= '0xffffffff', -- белый цвет
		file			= '',
	},	
}

local objects_ = {}

for name, primitiveType in pairs(Primitive) do
	objects_[primitiveType] = {}
end

local function parseColorString(colorString)
	local r
	local g
	local b
	local a
	
	local i = tonumber(colorString)

	if i then
		local f

		i, f = math.modf(i / 256)
		a = f * 256

		i, f = math.modf(i / 256)
		b = f * 256

		r, f = math.modf(i / 256)

		g = f * 256
	end

	return r, g, b, a
end

local function colorFromString(colorString)
	local r, g, b, a = parseColorString(colorString)
	
	return { r / 255, g / 255, b / 255, a / 255}
end

local function releaseSelectionHandlers()
	local selectionHandler = table.remove(selectionHandlers_)
	
	while selectionHandler do
		MapWindow.removeDrawObject(selectionHandler.mapId)
		table.insert(selectionHandlersPool_, selectionHandler)
		
		selectionHandler = table.remove(selectionHandlers_)
	end
end

local function createSelectionHandle(mapX, mapY)
	local mapData = {
		objectType = 'Icon',
		x = mapX,
		y = mapY,
		color = {1, 1, 1, 1},
		file = './MissionEditor/data/NewMap/images/draw/selection_handle.png',
	}
	
	local mapId = MapWindow.createDrawObject(mapData)

	return {
		mapId = mapId, 
		mapData = mapData,
	}
end

local function getSelectionHandle(mapX, mapY)
	local selectionHandler = table.remove(selectionHandlersPool_)
	
	if not selectionHandler then
		selectionHandler = createSelectionHandle(mapX, mapY)
	end
	
	return selectionHandler
end

local function updateSelectionHandle(index, mapX, mapY)
	local selectionHandle = selectionHandlers_[index]
			
	if not selectionHandle then
		selectionHandle = getSelectionHandle(mapX, mapY)
		table.insert(selectionHandlers_, selectionHandle)
		MapWindow.addDrawObject(selectionHandle.mapId)		
	end
	
	selectionHandle.mapData.x = mapX
	selectionHandle.mapData.y = mapY
	
	MapWindow.updateDrawObject(selectionHandle.mapId, selectionHandle.mapData)
end

local function lineUpdateSelectionHandles(line)
	local x = line.mapData.x
	local y = line.mapData.y
	
	for i, point in ipairs(line.mapData.points) do
		updateSelectionHandle(i, x + point.x, y + point.y)
	end	
end

local function polygonCircleUpdateSelectionHandles(circle)
	local x = circle.mapData.x
	local y = circle.mapData.y
	local r = circle.radius
	
	updateSelectionHandle(1, x + r	, y		) -- top
	updateSelectionHandle(2, x		, y + r	) -- right
	updateSelectionHandle(3, x - r	, y 	) -- bottom
	updateSelectionHandle(4, x		, y - r	) -- left
end

local function polygonOvalUpdateSelectionHandles(oval)
	local x = oval.mapData.x
	local y = oval.mapData.y
	local r1 = oval.r1
	local r2 = oval.r2
	
	updateSelectionHandle(1, x + r1	, y			) -- top
	updateSelectionHandle(2, x		, y + r2	) -- right
	updateSelectionHandle(3, x - r1	, y 		) -- bottom
	updateSelectionHandle(4, x		, y - r2	) -- left
end

local function polygonRectUpdateSelectionHandles(rect)
	local x = rect.mapData.x
	local y = rect.mapData.y
	local w = rect.width
	local h = rect.height
	
	updateSelectionHandle(1, x		, y		) -- left top
	updateSelectionHandle(2, x + h	, y		) -- left bottom
	updateSelectionHandle(3, x + h	, y + w	) -- right bottom
	updateSelectionHandle(4, x		, y + w	) -- right top
end

local function polygonFreeUpdateSelectionHandles(polygon)
	local x = polygon.mapData.x
	local y = polygon.mapData.y
	
	for i, point in ipairs(polygon.mapData.points) do
		updateSelectionHandle(i, x + point.x, y + point.y)
	end	
end

local function textBoxUpdateSelectionHandles(textBox)
	local x = textBox.mapData.x
	local y = textBox.mapData.y
	
	updateSelectionHandle(1, x, y) -- left top
end

local function iconUpdateSelectionHandles(icon)
	local x = icon.mapData.x
	local y = icon.mapData.y
	
	updateSelectionHandle(1, x, y) -- left top
end


local function updateSelectionHandles(object)
	if object.primitiveType == Primitive.Line then
		lineUpdateSelectionHandles(object)
	elseif object.primitiveType == Primitive.Polygon then
		if object.polygonMode == PolygonMode.Circle then
			polygonCircleUpdateSelectionHandles(object)
		elseif object.polygonMode == PolygonMode.Oval then
			polygonOvalUpdateSelectionHandles(object)			
		elseif object.polygonMode == PolygonMode.Rect then
			polygonRectUpdateSelectionHandles(object)
		elseif object.polygonMode == PolygonMode.Free then
			polygonFreeUpdateSelectionHandles(object)
		end
	elseif object.primitiveType == Primitive.TextBox then
		textBoxUpdateSelectionHandles(object)
	elseif object.primitiveType == Primitive.Icon then
		iconUpdateSelectionHandles(object)		
	end
end

local function updateObjectName(object, newName)
	object.name = newName
	checkListBoxObjects_.objectsToItems[object]:setText(newName)
end

local function setEditBoxNameCallbacks(editBoxName)
	function editBoxName:onFocus(focused)
		if not focused then
			if currObject_ then
				updateObjectName(currObject_, editBoxName:getText())
			end
		end
	end
	
	function editBoxName:onKeyDown(key, unicode)
		if 'return' == key then
			if currObject_ then
				updateObjectName(currObject_, editBoxName:getText())
			end
		end
	end
end

local function lineSetPropertiesCallbacks(panelPropertiesLine)
	local comboListStyle = panelPropertiesLine.comboListStyle
	
	comboListStyle:newItem('Solid'	).style	= Style.Solid	
	comboListStyle:newItem('Dot'	).style	= Style.Dot
	comboListStyle:newItem('Dash'	).style	= Style.Dash
	
	local newPrimitiveInfo = newPrimitiveInfo_[Primitive.Line]

	function panelPropertiesLine.spinBoxThickness:onChange()
		local thickness = panelPropertiesLine.spinBoxThickness:getValue()
		
		if currObject_ then
			currObject_.mapData.thickness = thickness
			
			MapWindow.updateDrawObject(currObject_.mapId, currObject_.mapData)
		else
			newPrimitiveInfo.thickness = thickness
		end
	end
	
	setEditBoxNameCallbacks(panelPropertiesLine.editBoxName)
	
	function panelPropertiesLine.comboListStyle:onChange(item)
		if currObject_ then
			currObject_.style			= item.style
			currObject_.mapData.file	= styleInfo_[item.style].file
			
			MapWindow.updateDrawObject(currObject_.mapId, currObject_.mapData)
		else
			newPrimitiveInfo.style = item.style
		end
	end
	
	local buttonColor = panelPropertiesLine.buttonColor
	
	panelPropertiesLine.buttonColorSkin = buttonColor:getSkin()
	
	local function onColorChange(r, g, b, a)
		local colorString = string.format('0x%.2x%.2x%.2x%.2x', r, g, b, a)
		
		buttonColor:setSkin(SkinUtils.setButtonColor(colorString, panelPropertiesLine.buttonColorSkin))
		
		if currObject_ then
			currObject_.mapData.color	= colorFromString(colorString)
			currObject_.colorString		= colorString
			
			MapWindow.updateDrawObject(currObject_.mapId, currObject_.mapData)
		else
			newPrimitiveInfo.colorString = colorString
		end
	end
	
	function buttonColor:onChange()
		local bw, bh = buttonColor:getSize()
		local wx, wy = buttonColor:widgetToWindow(0, bh)
		local colorString
		
		if currObject_ then
			colorString = currObject_.colorString
		else
			colorString = newPrimitiveInfo.colorString
		end
		
		colorSelector_	:setCallback(onColorChange)
		colorSelector_	:setColor	(parseColorString(colorString))
		colorWindow_	:setPosition(wx, wy)
		colorWindow_	:setVisible	(true)
	end
	
	local checkBoxClosed = panelPropertiesLine.checkBoxClosed
	
	function checkBoxClosed:onChange()
		if currObject_ then
			currObject_.mapData.closed	= checkBoxClosed:getState()
			
			MapWindow.updateDrawObject(currObject_.mapId, currObject_.mapData)
		else
			newPrimitiveInfo.closed = checkBoxClosed:getState()
		end
	end
end

 -- переопределена ниже
local polygonCircleRadiusUpdate
local polygonRectUpdateSize -- определена ниже
local polygonOvalUpdateSize -- определена ниже

local function polygonSetPropertiesCallbacks(panelPropertiesPolygon)
	local comboListStyle	= panelPropertiesPolygon.comboListStyle
	
	comboListStyle:newItem('Solid'	).style	= Style.Solid	
	comboListStyle:newItem('Dot'	).style	= Style.Dot
	comboListStyle:newItem('Dash'	).style	= Style.Dash
	
	local newPrimitiveInfo = newPrimitiveInfo_[Primitive.Polygon]

	function panelPropertiesPolygon.spinBoxThickness:onChange()
		local thickness = panelPropertiesPolygon.spinBoxThickness:getValue()
		
		if currObject_ then
			currObject_.mapData.thickness = thickness
			
			MapWindow.updateDrawObject(currObject_.mapId, currObject_.mapData)
		else
			newPrimitiveInfo.thickness = thickness
		end
	end
	
	setEditBoxNameCallbacks(panelPropertiesPolygon.editBoxName)
	
	function comboListStyle:onChange(item)
		if currObject_ then
			currObject_.style			= item.style
			currObject_.mapData.file	= styleInfo_[item.style].file
			
			MapWindow.updateDrawObject(currObject_.mapId, currObject_.mapData)
		else
			newPrimitiveInfo.style = item.style
		end
	end

	local buttonColor = panelPropertiesPolygon.buttonColor
	
	panelPropertiesPolygon.buttonColorSkin = buttonColor:getSkin()
	
	local function onColorChange(r, g, b, a)
		local colorString = string.format('0x%.2x%.2x%.2x%.2x', r, g, b, a)
		
		buttonColor:setSkin(SkinUtils.setButtonColor(colorString, panelPropertiesPolygon.buttonColorSkin))
		
		if currObject_ then
			currObject_.mapData.color	= colorFromString(colorString)
			currObject_.colorString		= colorString
			
			MapWindow.updateDrawObject(currObject_.mapId, currObject_.mapData)
		else
			newPrimitiveInfo.colorString = colorString
		end
	end
	
	function buttonColor:onChange()
		local bw, bh = buttonColor:getSize()
		local wx, wy = buttonColor:widgetToWindow(0, bh)
		local colorString
		
		if currObject_ then
			colorString = currObject_.colorString
		else
			colorString = newPrimitiveInfo.colorString
		end
		
		colorSelector_	:setCallback(onColorChange)
		colorSelector_	:setColor	(parseColorString(colorString))
		colorWindow_	:setPosition(wx, wy)
		colorWindow_	:setVisible	(true)
	end	
	
	local buttonFillColor = panelPropertiesPolygon.buttonFillColor
	
	panelPropertiesPolygon.buttonFillColorSkin = buttonFillColor:getSkin()
	
	local function onFillColorChange(r, g, b, a)
		local fillColorString = string.format('0x%.2x%.2x%.2x%.2x', r, g, b, a)
		
		buttonFillColor:setSkin(SkinUtils.setButtonColor(fillColorString, panelPropertiesPolygon.buttonFillColorSkin))
		
		if currObject_ then
			currObject_.fillColorString		= fillColorString
			currObject_.mapData.fillColor	= colorFromString(fillColorString)
			
			MapWindow.updateDrawObject(currObject_.mapId, currObject_.mapData)
		else
			newPrimitiveInfo.fillColorString = fillColorString
		end
	end
	
	function buttonFillColor:onChange()
		local bw, bh = buttonFillColor:getSize()
		local wx, wy = buttonFillColor:widgetToWindow(0, bh)
		local fillColorString
		
		if currObject_ then
			fillColorString = currObject_.fillColorString
		else
			fillColorString = newPrimitiveInfo.fillColorString
		end
		
		colorSelector_	:setCallback(onFillColorChange)
		colorSelector_	:setColor	(parseColorString(fillColorString))
		colorWindow_	:setPosition(wx, wy)
		colorWindow_	:setVisible	(true)
	end
	
	local spinBoxRadius = panelPropertiesPolygon.panelCircle.spinBoxRadius
	
	function spinBoxRadius:onChange()
		currObject_.radius = spinBoxRadius:getValue() / distanceUnits_.coeff
		
		polygonCircleRadiusUpdate	(currObject_)
		updateSelectionHandles		(currObject_)
	end
	
	local spinBoxWidth = panelPropertiesPolygon.panelRect.spinBoxWidth
	
	local sign = function(value)
		if value > 0 then
			return 1
		end
		
		if value < 0 then
			return -1
		end
		
		return 0
	end
	
	function spinBoxWidth:onChange()
		if currObject_.polygonMode == PolygonMode.Rect then
			local sign = sign(currObject_.width)
			
			currObject_.width = sign * spinBoxWidth:getValue() / distanceUnits_.coeff
			polygonRectUpdateSize(currObject_)
			
		elseif currObject_.polygonMode == PolygonMode.Oval then
		
			currObject_.r2 = (spinBoxWidth:getValue() / distanceUnits_.coeff) / 2
			polygonOvalUpdateSize(currObject_)
		end
		
		updateSelectionHandles	(currObject_)
	end	
	
	local spinBoxHeight = panelPropertiesPolygon.panelRect.spinBoxHeight
	
	function spinBoxHeight:onChange()
		if currObject_.polygonMode == PolygonMode.Rect then
			local sign = sign(currObject_.height)
		
			currObject_.height = sign * spinBoxHeight:getValue() / distanceUnits_.coeff
			polygonRectUpdateSize	(currObject_)
			
		elseif currObject_.polygonMode == PolygonMode.Oval then
		
			currObject_.r1 = (spinBoxHeight:getValue() / distanceUnits_.coeff) / 2
			polygonOvalUpdateSize(currObject_)
		end
		
		updateSelectionHandles	(currObject_)
	end
	
	panelPropertiesPolygon.panelCircle	.staticUnits:setText(distanceUnits_.name)
	panelPropertiesPolygon.panelRect	.staticUnits:setText(distanceUnits_.name)
end

local function textBoxSetPropertiesCallbacks(panelPropertiesTextBox)	
	local newPrimitiveInfo = newPrimitiveInfo_[Primitive.TextBox]
	
	function panelPropertiesTextBox.spinBoxThickness:onChange()
		local borderThickness = panelPropertiesTextBox.spinBoxThickness:getValue()
		
		if currObject_ then
			currObject_.mapData.borderThickness = borderThickness
			
			MapWindow.updateDrawObject(currObject_.mapId, currObject_.mapData)
		else
			newPrimitiveInfo.borderThickness = borderThickness
		end
	end
	
	function panelPropertiesTextBox.spinBoxFontSize:onChange()
		local fontSize = panelPropertiesTextBox.spinBoxFontSize:getValue()
		
		if currObject_ then
			currObject_.mapData.fontSize = fontSize
			
			MapWindow.updateDrawObject(currObject_.mapId, currObject_.mapData)
		else
			newPrimitiveInfo.fontSize = fontSize
		end
	end	

	setEditBoxNameCallbacks(panelPropertiesTextBox.editBoxName)
	
	local editBoxText = panelPropertiesTextBox.editBoxText
	
	function editBoxText:onFocus(focused)
		if not focused then
			if currObject_ then
				currObject_.mapData.text = editBoxText:getText()
				MapWindow.updateDrawObject(currObject_.mapId, currObject_.mapData)
			else
				newPrimitiveInfo.text = editBoxText:getText()
			end
		end
	end
	
	function editBoxText:onKeyDown(key, unicode)
		if 'return' == key then
			if currObject_ then
				currObject_.mapData.text = editBoxText:getText()
				MapWindow.updateDrawObject(currObject_.mapId, currObject_.mapData)
			else
				newPrimitiveInfo.text = editBoxText:getText()
			end
		end
	end	
	
	local buttonColor = panelPropertiesTextBox.buttonColor
	
	panelPropertiesTextBox.buttonColorSkin = buttonColor:getSkin()
	
	local function onColorChange(r, g, b, a)
		local colorString = string.format('0x%.2x%.2x%.2x%.2x', r, g, b, a)
		
		buttonColor:setSkin(SkinUtils.setButtonColor(colorString, panelPropertiesTextBox.buttonColorSkin))
		
		if currObject_ then
			currObject_.mapData.color	= {r / 255, g / 255, b / 255, a / 255}
			currObject_.colorString		= colorString
			
			MapWindow.updateDrawObject(currObject_.mapId, currObject_.mapData)
		else
			newPrimitiveInfo.colorString = colorString
		end
	end
	
	function buttonColor:onChange()
		local bw, bh = buttonColor:getSize()
		local wx, wy = buttonColor:widgetToWindow(0, bh)
		local colorString
		
		if currObject_ then
			colorString = currObject_.colorString
		else
			colorString = newPrimitiveInfo.colorString
		end
		
		colorSelector_	:setCallback(onColorChange)
		colorSelector_	:setColor	(parseColorString(colorString))
		colorWindow_	:setPosition(wx, wy)
		colorWindow_	:setVisible	(true)
	end	
	
	local buttonFillColor = panelPropertiesTextBox.buttonFillColor
	
	panelPropertiesTextBox.buttonFillColorSkin = buttonFillColor:getSkin()
	
	local function onFillColorChange(r, g, b, a)
		local fillColorString = string.format('0x%.2x%.2x%.2x%.2x', r, g, b, a)
		
		buttonFillColor:setSkin(SkinUtils.setButtonColor(fillColorString, panelPropertiesTextBox.buttonFillColorSkin))
		
		if currObject_ then
			currObject_.mapData.fillColor	= {r / 255, g / 255, b / 255, a / 255}
			currObject_.fillColorString		= fillColorString
			
			MapWindow.updateDrawObject(currObject_.mapId, currObject_.mapData)
		else
			newPrimitiveInfo.fillColorString = fillColorString
		end
	end
	
	function buttonFillColor:onChange()
		local bw, bh = buttonFillColor:getSize()
		local wx, wy = buttonFillColor:widgetToWindow(0, bh)
		local fillColorString
		
		if currObject_ then
			fillColorString = currObject_.fillColorString
		else
			fillColorString = newPrimitiveInfo.fillColorString
		end
		
		colorSelector_	:setCallback(onFillColorChange)
		colorSelector_	:setColor	(parseColorString(fillColorString))
		colorWindow_	:setPosition(wx, wy)
		colorWindow_	:setVisible	(true)
	end
end

local function loadIconsList()
	local result
	local f, err = loadfile(iconsFolder_ .. 'icons.lua')
	
	if f then
		local env = {
			_ = i18n.ptranslate,
		}
		
		setfenv(f, env)
		
		local ok, res = pcall(f)
		
		if ok then
			result = res
		else
			print(res)
		end
	else
		print(err)
	end
	
	return result
end

local function iconSetPropertiesCallbacks(panelPropertiesIcon)	
	local newPrimitiveInfo = newPrimitiveInfo_[Primitive.Icon]
	
	setEditBoxNameCallbacks(panelPropertiesIcon.editBoxName)
	
	local buttonColor = panelPropertiesIcon.buttonColor
	
	panelPropertiesIcon.buttonColorSkin = buttonColor:getSkin()
	
	local function onColorChange(r, g, b, a)
		local colorString = string.format('0x%.2x%.2x%.2x%.2x', r, g, b, a)
		
		buttonColor:setSkin(SkinUtils.setButtonColor(colorString, panelPropertiesIcon.buttonColorSkin))
		
		if currObject_ then
			currObject_.mapData.color	= {r / 255, g / 255, b / 255, a / 255}
			currObject_.colorString		= colorString
			
			MapWindow.updateDrawObject(currObject_.mapId, currObject_.mapData)
		else
			newPrimitiveInfo.colorString = colorString
		end
	end
	
	function buttonColor:onChange()
		local bw, bh = buttonColor:getSize()
		local wx, wy = buttonColor:widgetToWindow(0, bh)
		local colorString
		
		if currObject_ then
			colorString = currObject_.colorString
		else
			colorString = newPrimitiveInfo.colorString
		end
		
		colorSelector_	:setCallback(onColorChange)
		colorSelector_	:setColor	(parseColorString(colorString))
		colorWindow_	:setPosition(wx, wy)
		colorWindow_	:setVisible	(true)
	end	
	
	local comboListIcon	= panelPropertiesIcon.comboListIcon
	local iconstList	= loadIconsList()
	
	if iconstList then
		local filesToItems = {} -- для быстрого поиска итемов по имени файла
		
		for i, iconInfo in ipairs(iconstList) do
			local item = comboListIcon:newItem(iconInfo.title)
			
			item.file = iconInfo.file
			filesToItems[iconInfo.file] = item
		end
		
		comboListIcon.filesToItems = filesToItems
	
		local item = comboListIcon:getItem(0)
				
		if item then
			comboListIcon:selectItem(item)
			newPrimitiveInfo.file = item.file
		end
	end
	
	function comboListIcon:onChange(item)
		if currObject_ then
			currObject_.mapData.file = iconsFolder_ .. item.file
			
			MapWindow.updateDrawObject(currObject_.mapId, currObject_.mapData)
		else
			newPrimitiveInfo.file = item.file
		end
	end	
end

local function lineSelectMode(lineMode)	-- переопределена ниже (здесь определена для Function List Notepad++)
end

local function polygonSelectMode(polygonMode) -- переопределена ниже (здесь определена для Function List Notepad++)
end

local function setDistanceValue(meters, spinBox)
	local precision
	
	if meters < 10 then
		precision = 0.0001
	elseif meters < 1000 then
		precision = 0.001
	elseif meters < 10000 then	
		precision = 0.01
	elseif meters < 50000 then	
		precision = 0.1
	else
		precision = 1
	end

	local value = precision * math.floor((meters * distanceUnits_.coeff) / precision + 0.5)

	spinBox:setValue(value)
end

-- обновить свойства когда пользователь выбирает взаимодействует с объектом
local function updatePropertiesPanel(object)
	local primitiveType		= object.primitiveType
	local propertiesPanel	= propertyPanels_[primitiveType]
		
	if primitiveType == Primitive.Line then
		lineSelectMode(object.lineMode)
		propertiesPanel.checkBoxClosed:setState(object.mapData.closed == true)
	elseif primitiveType == Primitive.Polygon then
		polygonSelectMode(object.polygonMode)
		
		propertiesPanel.panelCircle	:setVisible(false)
		propertiesPanel.panelRect	:setVisible(false)
		
		if object.polygonMode == PolygonMode.Circle then
		
			propertiesPanel.panelCircle:setVisible(true)
			
			setDistanceValue(object.radius, propertiesPanel.panelCircle.spinBoxRadius)

		elseif object.polygonMode == PolygonMode.Oval then
				
			propertiesPanel.panelRect:setVisible(true)
			
			setDistanceValue(math.abs(object.r2 * 2	), propertiesPanel.panelRect.spinBoxWidth	)
			setDistanceValue(math.abs(object.r1 * 2	), propertiesPanel.panelRect.spinBoxHeight	)
			
		elseif object.polygonMode == PolygonMode.Rect then
		
			propertiesPanel.panelRect:setVisible(true)
			
			setDistanceValue(math.abs(object.width	), propertiesPanel.panelRect.spinBoxWidth	)
			setDistanceValue(math.abs(object.height	), propertiesPanel.panelRect.spinBoxHeight	)
		end
	end
end

local function lineFillPropertiesPanel(object, propertiesPanel)
	local nameEnabled		= false
	local name
	local thickness
	local colorString
	local style
	
	if object then
		nameEnabled	= true
		name		= object.name
		thickness	= object.mapData.thickness
		colorString	= object.colorString
		style		= object.style
		
		updatePropertiesPanel(object)
	else
		local info	= newPrimitiveInfo_[Primitive.Line]
		
		thickness	= info.thickness
		colorString	= info.colorString
		style		= info.style
	end
	
	propertiesPanel.editBoxName		:setEnabled	(nameEnabled)
	propertiesPanel.editBoxName		:setText	(name)
	propertiesPanel.spinBoxThickness:setValue	(thickness)			
	propertiesPanel.buttonColor		:setSkin	(SkinUtils.setButtonColor(colorString, propertiesPanel.buttonColorSkin))
	
	local comboListStyle = propertiesPanel.comboListStyle
	
	comboListStyle:selectItem(comboListStyle:getItem(styleInfo_[style].order - 1))
end

local function polygonFillPropertiesPanel(object, propertiesPanel)
	local nameEnabled		= false
	local name
	local thickness
	local colorString
	local fillColorString
	local style
	
	if object then
		nameEnabled		= true
		name			= object.name
		thickness		= object.mapData.thickness
		colorString		= object.colorString
		style			= object.style
		fillColorString	= object.fillColorString
		
		updatePropertiesPanel(object)
	else
		local info		= newPrimitiveInfo_[Primitive.Polygon]
		
		thickness		= info.thickness
		colorString		= info.colorString
		style			= info.style
		fillColorString	= info.fillColorString
		
		propertiesPanel.panelCircle	:setVisible(false)
		propertiesPanel.panelRect	:setVisible(false)
	end
	
	propertiesPanel.editBoxName		:setEnabled	(nameEnabled)
	propertiesPanel.editBoxName		:setText	(name)
	propertiesPanel.spinBoxThickness:setValue	(thickness)			
	propertiesPanel.buttonColor		:setSkin	(SkinUtils.setButtonColor(colorString, propertiesPanel.buttonColorSkin))
	propertiesPanel.buttonFillColor	:setSkin	(SkinUtils.setButtonColor(fillColorString, propertiesPanel.buttonFillColorSkin))
	
	local comboListStyle = propertiesPanel.comboListStyle
	
	comboListStyle:selectItem(comboListStyle:getItem(styleInfo_[style].order - 1))
end

local function textBoxFillPropertiesPanel(object, propertiesPanel)
	local nameEnabled = false
	local name
	local text
	local fontSize
	local borderThickness
	local colorString
	local fillColorString
	
	if object then
		nameEnabled		= true
		name			= object.name
		text			= object.mapData.text
		fontSize		= object.mapData.fontSize
		borderThickness	= object.mapData.borderThickness
		colorString		= object.colorString
		fillColorString	= object.fillColorString
	else
		local info		= newPrimitiveInfo_[Primitive.TextBox]
		
		text			= info.text
		fontSize		= info.fontSize
		borderThickness	= info.borderThickness
		colorString		= info.colorString
		fillColorString	= info.fillColorString
	end
	
	propertiesPanel.editBoxName		:setEnabled	(nameEnabled)
	propertiesPanel.editBoxName		:setText	(name)
	propertiesPanel.editBoxText		:setText	(text)		
	propertiesPanel.spinBoxFontSize	:setValue	(fontSize)
	propertiesPanel.spinBoxThickness:setValue	(borderThickness)			
	propertiesPanel.buttonColor		:setSkin	(SkinUtils.setButtonColor(colorString, propertiesPanel.buttonColorSkin))
	propertiesPanel.buttonFillColor	:setSkin	(SkinUtils.setButtonColor(fillColorString, propertiesPanel.buttonFillColorSkin))
end

local function iconFillPropertiesPanel(object, propertiesPanel)
	local nameEnabled = false
	local name
	local colorString
	local file
	
	if object then
		nameEnabled		= true
		name			= object.name
		colorString		= object.colorString
		file			= object.file
	else
		local info		= newPrimitiveInfo_[Primitive.Icon]
	
		colorString		= info.colorString
		file			= info.file
	end
	
	propertiesPanel.editBoxName	:setEnabled	(nameEnabled)
	propertiesPanel.editBoxName	:setText	(name)
	propertiesPanel.buttonColor	:setSkin	(SkinUtils.setButtonColor(colorString, propertiesPanel.buttonColorSkin))
	
	local comboListIcon = propertiesPanel.comboListIcon
	
	comboListIcon:selectItem(comboListIcon.filesToItems[file])
end

-- обновить свойства когда пользователь выбирает другой объект
local function fillPropertiesPanel(object)
	local primitiveType
	
	if object then
		primitiveType = object.primitiveType
	else
		primitiveType = currPrimitiveType_
	end
	
	local propertiesPanel = propertyPanels_[primitiveType]

	if primitiveType == Primitive.Line then
		lineFillPropertiesPanel(object, propertiesPanel)		
	elseif primitiveType == Primitive.Polygon then
		polygonFillPropertiesPanel(object, propertiesPanel)
	elseif primitiveType == Primitive.TextBox then
		textBoxFillPropertiesPanel(object, propertiesPanel)
	elseif primitiveType == Primitive.Icon then
		iconFillPropertiesPanel(object, propertiesPanel)
	end
	
	return propertiesPanel
end

local function setPropertiesPanel(object)
	local prevPanel = panelProperties_:getWidget(0)
	
	if prevPanel then
		panelProperties_:removeWidget(prevPanel)
	end	
	
	if object then
		panelProperties_:insertWidget(fillPropertiesPanel(object))
	elseif currPrimitiveType_ then
		panelProperties_:insertWidget(fillPropertiesPanel())
	end	
end

local function objectAdd(object)
	table.insert(objects_[object.primitiveType], object)
	
	MapWindow.addDrawObject(object.mapId)
	
	local item = checkListBoxObjects_:newItem(object.name)
	
	item.object = object
	checkListBoxObjects_.objectsToItems[object] = item
end

local function deleteMapObject(primitiveType, mapId)
	for i, object in ipairs(objects_[primitiveType]) do
		if object.mapId == mapId then
			table.remove(objects_[primitiveType], i)
			
			MapWindow.deleteDrawObject(mapId)
			
			break
		end
	end
end

local function objectSelect(object)
	if object ~= currObject_ then
		if currObject_ then
			releaseSelectionHandlers()
			checkListBoxObjects_:selectItem()
		end
	end
	
	currObject_ = object
	
	if object then
		updateSelectionHandles(object)
		checkListBoxObjects_:selectItem(checkListBoxObjects_.objectsToItems[object])
	end
	
	setPropertiesPanel(object)
end

local function objectDelete(object)
	deleteMapObject(object.primitiveType, object.mapId)
	checkListBoxObjects_:removeItem(checkListBoxObjects_.objectsToItems[object])
	checkListBoxObjects_.objectsToItems[object] = nil
	
	objectSelect()
end

local function objectSelectNew()
	objectSelect(newObject_)
	
	switchButtonSelect_:setState(true)
	switchButtonSelect_:onChange() -- resets newObject_ to nil
end

local function deleteIncomleteNewObject()
	deleteMapObject(newObject_.primitiveType, newObject_.mapId)
	
	local info = newPrimitiveInfo_[newObject_.primitiveType]
	
	info.name.counter = info.name.counter - 1
	
	newObject_ = nil
	fillPropertiesPanel()
end

local function onDelete()
	if currPrimitiveType_ == nil then
		if currObject_ then
			objectDelete(currObject_)
		end
	end	
end

local function create(x, y, w, h)
	local localization = {
		title		= _('Draw panel'),
		properties	= _('Properties'),
		name		= _('Name'		),
		color		= _('Color'		),
		fill		= _('Fill'		),
		thickness	= _('Thickness'	),
		style		= _('Style'		),
		closed		= _('Closed'	),
		select		= _('Select'	),
		line		= _('Line'		),
		lineHint	= _('Draw lines and polylines'),
		segment		= _('Segment'	),
		segments	= _('Segments'	),
		polygon		= _('Polygon'	),
		polygonHint	= _('Draw circles, rectangles, arrows, etc...'	),
		circle		= _('Circle'	),
		oval		= _('Oval'		),
		rect		= _('Rect'		),
		free		= _('Free'		),
		radius		= _('Radius'	),
		width		= _('Width'		),
		height		= _('Height'	),
		textBox		= _('Text Box'	),
		textBoxHint	= _('Draw text labels'),
		text		= _('Text'		),
		fontSize	= _('Font Size'	),
		icon		= _('Icon'		),
	}
	window_ = DialogLoader.spawnDialogFromFile('MissionEditor/modules/dialogs/me_draw_panel.dlg', localization)
	window_:setBounds(x, y, w, h)
	window_:addHotKeyCallback('delete', onDelete)
	w_ = w
	
	local U				= require('me_utilities')
	local OptionsData	= require('Options.Data')
	
	distanceUnits_ = U.distanceUnits[OptionsData.getUnits()]
	
	function window_:onClose()
		toolbar.untoggle_all_except()
		objectSelect()
		MapWindow.setState(MapWindow.getPanState())
		MapWindow.expand()	
	end
	
	colorSelector_		= ColorSelector.new()
	colorWindow_		= BuddyWindow.new()
						
	local colorPanel	= colorSelector_:getPanel()
	
	colorWindow_:setBuddy		(colorPanel)
	colorWindow_:insertWidget	(colorPanel)
	colorWindow_:setSize		(colorPanel:getSize())
	
	colorWindow_:addKeyDownCallback(function(self, key, unicode)
		if 	'escape' == key or 
			'return' == key then
			colorWindow_:setVisible(false)
			
			return true -- чтобы по escape не закрывалась панель рисования
		end
	end)
	
	panelProperties_					= DialogLoader.findWidgetByName(window_, 'panelProperties'			)
	checkListBoxObjects_				= DialogLoader.findWidgetByName(window_, 'checkListBoxObjects'		)
	checkListBoxObjects_.objectsToItems = {}
		
	local panelPropertiesLine 			= DialogLoader.findWidgetByName(window_, 'panelPropertiesLine'		)
	local panelPropertiesPolygon 		= DialogLoader.findWidgetByName(window_, 'panelPropertiesPolygon'	)
	local panelPropertiesTextBox		= DialogLoader.findWidgetByName(window_, 'panelPropertiesTextBox'	)
	local panelPropertiesIcon			= DialogLoader.findWidgetByName(window_, 'panelPropertiesIcon'		)
	local placeholder 					= panelPropertiesPolygon.staticPlaceholder
	
	panelPropertiesPolygon.panelCircle	:setPosition(placeholder:getPosition())
	panelPropertiesPolygon.panelRect	:setPosition(placeholder:getPosition())
	
	propertyPanels_[Primitive.Line		] = panelPropertiesLine
	propertyPanels_[Primitive.Polygon	] = panelPropertiesPolygon
	propertyPanels_[Primitive.TextBox	] = panelPropertiesTextBox
	propertyPanels_[Primitive.Icon		] = panelPropertiesIcon
		
	lineSetPropertiesCallbacks(panelPropertiesLine)
	panelPropertiesLine:setPosition(0, 0)
	
	polygonSetPropertiesCallbacks(panelPropertiesPolygon)
	panelPropertiesPolygon:setPosition(0, 0)
	
	textBoxSetPropertiesCallbacks(panelPropertiesTextBox)
	panelPropertiesTextBox:setPosition(0, 0)
	
	iconSetPropertiesCallbacks(panelPropertiesIcon)
	panelPropertiesIcon:setPosition(0, 0)

	window_:removeWidget(panelPropertiesLine	)
	window_:removeWidget(panelPropertiesPolygon	)
	window_:removeWidget(panelPropertiesTextBox	)
	window_:removeWidget(panelPropertiesIcon	)
	
	switchButtonSelect_			= DialogLoader.findWidgetByName(window_, 'switchButtonSelect'	)
	
	local switchButtonLine 		= DialogLoader.findWidgetByName(window_, 'switchButtonLine'		)
	local switchButtonPolygon 	= DialogLoader.findWidgetByName(window_, 'switchButtonPolygon'	)
	local switchButtonTextBox 	= DialogLoader.findWidgetByName(window_, 'switchButtonTextBox'	)
	local switchButtonIcon 		= DialogLoader.findWidgetByName(window_, 'switchButtonIcon'		)
	
	function switchButtonSelect_:onChange()
		currPrimitiveType_	= nil
		newObject_			= nil
	end
	
	function switchButtonLine:onChange()
		currPrimitiveType_ = Primitive.Line
		objectSelect()
	end
	
	function switchButtonPolygon:onChange()
		currPrimitiveType_ = Primitive.Polygon
		objectSelect()
	end
	
	function switchButtonTextBox:onChange()
		currPrimitiveType_ = Primitive.TextBox
		objectSelect()
	end
	
	function switchButtonIcon:onChange()
		currPrimitiveType_ = Primitive.Icon
		objectSelect()	
	end
	
	local switchButtonLineSegments	= DialogLoader.findWidgetByName(panelPropertiesLine, 'switchButtonLineSegments'	)
	local switchButtonLineSegment	= DialogLoader.findWidgetByName(panelPropertiesLine, 'switchButtonLineSegment'	)
	local switchButtonLineFree		= DialogLoader.findWidgetByName(panelPropertiesLine, 'switchButtonLineFree'		)
		
	lineSelectMode = function(lineMode) -- объявлена выше
		switchButtonLineSegments:setState(lineMode == LineMode.Segments	)
		switchButtonLineSegment	:setState(lineMode == LineMode.Segment	)
		switchButtonLineFree	:setState(lineMode == LineMode.Free		)		
	end
	
	lineSelectMode(lineMode_)
	
	function switchButtonLineSegments:onChange()
		lineMode_ = LineMode.Segments
	end
	
	function switchButtonLineSegment:onChange()
		lineMode_ = LineMode.Segment
	end
	
	function switchButtonLineFree:onChange()
		lineMode_ = LineMode.Free
	end
	
	local switchButtonPolygonCircle	= DialogLoader.findWidgetByName(panelPropertiesPolygon, 'switchButtonPolygonCircle'	)
	local switchButtonPolygonOval	= DialogLoader.findWidgetByName(panelPropertiesPolygon, 'switchButtonPolygonOval'	)
	local switchButtonPolygonRect	= DialogLoader.findWidgetByName(panelPropertiesPolygon, 'switchButtonPolygonRect'	)
	local switchButtonPolygonFree	= DialogLoader.findWidgetByName(panelPropertiesPolygon, 'switchButtonPolygonFree'	)
	
	polygonSelectMode = function(polygonMode) -- объявлена выше
		switchButtonPolygonCircle	:setState(polygonMode == PolygonMode.Circle	)
		switchButtonPolygonOval		:setState(polygonMode == PolygonMode.Oval	)
		switchButtonPolygonRect		:setState(polygonMode == PolygonMode.Rect	)
		switchButtonPolygonFree		:setState(polygonMode == PolygonMode.Free	)		
	end
	
	polygonSelectMode(polygonMode_)
	
	function switchButtonPolygonCircle:onChange()
		polygonMode_ = PolygonMode.Circle
	end
	
	function switchButtonPolygonOval:onChange()
		polygonMode_ = PolygonMode.Oval
	end	
	
	function switchButtonPolygonRect:onChange()
		polygonMode_ = PolygonMode.Rect
	end
	
	function switchButtonPolygonFree:onChange()
		polygonMode_ = PolygonMode.Free
	end
	
	function checkListBoxObjects_:onSelectionChange() -- выбранный элемент списка изменили клавишами вверх/вниз
		local item = checkListBoxObjects_:getSelectedItem()
		
		if item then
			objectSelect(item.object)
		else
			objectSelect()
		end	
	end
	
	function checkListBoxObjects_:onItemMouseDown()
		local item = checkListBoxObjects_:getSelectedItem()
		
		if item then
			objectSelect(item.object)
		else
			objectSelect()
		end	
	end
end

local function cancelDrawingLine(line)
	local points = line.mapData.points
	
	if #points > 2 then
		-- удаляем последнюю точку
		table.remove(points)
		
		MapWindow.updateDrawObject(line.mapId, line.mapData)
	else
		deleteMapObject(line.primitiveType, line.mapId)
	end
end

local function show(b)	
	if b then
		if window_:getVisible() == false then
			MapWindow.collapse(w_, 0)
		end
	elseif window_:getVisible() then
		if newObject_ then
			if newObject_.primitiveType == Primitive.Line then
				cancelDrawingLine(newObject_)
			end
			
			newObject_ = nil
		end
		
		objectSelect()
		MapWindow.expand()
	end
	
	window_:setVisible(b)
end

local function createNewPrimitiveName(primitiveType)
	local info = newPrimitiveInfo_[primitiveType]
	
	info.name.counter = info.name.counter + 1
	
	return string.format(info.name.formatString, info.name.counter)
end

local function lineSegmentOnMouseMove(x, y)
	local mapX, mapY	= MapWindow.getMapPoint(x, y)
	local points		= newObject_.mapData.points
	local pointEnd		= points[#points] -- последняя точка
	
	pointEnd.x			= mapX - newObject_.mapData.x
	pointEnd.y			= mapY - newObject_.mapData.y
	
	MapWindow.updateDrawObject(newObject_.mapId, newObject_.mapData)
end

local function lineSegmentsOnMouseMove(x, y)
	lineSegmentOnMouseMove(x, y)
end

local function polygonFreeOnMouseMove(x, y)
	local mapX, mapY	= MapWindow.getMapPoint(x, y)
	local points		= newObject_.mapData.points
	local pointEnd		= points[#points - 1] -- предпоследняя точка
	
	pointEnd.x			= mapX - newObject_.mapData.x
	pointEnd.y			= mapY - newObject_.mapData.y
	
	MapWindow.updateDrawObject(newObject_.mapId, newObject_.mapData)
end

local function onMouseMove(x, y)
	if newObject_ then
		if currPrimitiveType_ == Primitive.Line then
			if lineMode_ == LineMode.Segment then
				lineSegmentOnMouseMove(x, y)
			elseif	lineMode_ == LineMode.Segments then
				lineSegmentsOnMouseMove(x, y)
			end
		elseif	currPrimitiveType_ == Primitive.Polygon then
			if polygonMode_ == PolygonMode.Free then
				polygonFreeOnMouseMove(x, y)
			end
		end	
	end
end

local function lineFreeOnMouseDown(x, y)
	local mapX, mapY		= MapWindow.getMapPoint(x, y)
	local newPrimitiveInfo	= newPrimitiveInfo_[Primitive.Line]
	local colorString		= newPrimitiveInfo.colorString
	local style				= newPrimitiveInfo.style
	
	local mapData = {
		objectType			= 'Polyline',
		points				= {{x = 0, y = 0}},
		thickness			= newPrimitiveInfo.thickness,
		closed				= newPrimitiveInfo.closed,
		color				= colorFromString(colorString),
		file				= styleInfo_[style].file,
		x 					= mapX,
		y 					= mapY,
	}
	
	local line = {
		primitiveType		= Primitive.Line,
		lineMode			= LineMode.Free,
		name				= createNewPrimitiveName(Primitive.Line),
		mapId				= MapWindow.createDrawObject(mapData),
		mapData				= mapData,
		colorString			= colorString,
		style				= style,
	}
	
	objectAdd(line)
	
	currLastMouseX_ = x
	currLastMouseY_ = y
	
	return line
end

local function lineSegmentOnMouseDown(x, y)
	local line = lineFreeOnMouseDown(x, y)
	
	line.lineMode = LineMode.Segment
	
	return line
end

local function lineSegmentsOnMouseDown(x, y)
	local line = lineFreeOnMouseDown(x, y)

	line.lineMode = LineMode.Segments
	
	table.insert(line.mapData.points, {x = 0, y = 0})
	
	return line
end

local function polygonCircleOnMouseDown(x, y)
	local mapX, mapY	= MapWindow.getMapPoint(x, y)
	local points 		= {}
	
	for i = 0, circleSides_ do
		table.insert(points, {x = 0, y = 0})
	end

	local newPrimitiveInfo	= newPrimitiveInfo_[Primitive.Polygon]
	local colorString		= newPrimitiveInfo.colorString
	local fillColorString	= newPrimitiveInfo.fillColorString
	local style				= newPrimitiveInfo.style
	local mapData			= {
		objectType			= 'Polygon',
		points				= points,
		thickness			= newPrimitiveInfo.thickness,
		color				= colorFromString(colorString		),
		fillColor			= colorFromString(fillColorString	),
		file				= styleInfo_[style].file,
		x 					= mapX,
		y 					= mapY,
	}
	
	local circle = {
		primitiveType		= Primitive.Polygon,
		polygonMode			= PolygonMode.Circle,
		name				= createNewPrimitiveName(Primitive.Polygon),
		mapId				= MapWindow.createDrawObject(mapData),
		mapData				= mapData,
		colorString			= colorString,
		fillColorString		= fillColorString,
		style				= style,
		radius				= 0,
	}
	
	objectAdd(circle)
	
	return circle
end

local function polygonOvalOnMouseDown(x, y)
	local mapX, mapY	= MapWindow.getMapPoint(x, y)
	local points 		= {}
	
	for i = 0, circleSides_ do
		table.insert(points, {x = 0, y = 0})
	end

	local newPrimitiveInfo	= newPrimitiveInfo_[Primitive.Polygon]
	local colorString		= newPrimitiveInfo.colorString
	local fillColorString	= newPrimitiveInfo.fillColorString
	local style				= newPrimitiveInfo.style
	local mapData			= {
		objectType			= 'Polygon',
		points				= points,
		thickness			= newPrimitiveInfo.thickness,
		color				= colorFromString(colorString		),
		fillColor			= colorFromString(fillColorString	),
		file				= styleInfo_[style].file,
		x 					= mapX,
		y 					= mapY,
	}
	
	local oval = {
		primitiveType		= Primitive.Polygon,
		polygonMode			= PolygonMode.Oval,
		name				= createNewPrimitiveName(Primitive.Polygon),
		mapId				= MapWindow.createDrawObject(mapData),
		mapData				= mapData,
		colorString			= colorString,
		fillColorString		= fillColorString,
		style				= style,
		r1					= 0,
		r2					= 0,
	}
	
	objectAdd(oval)
	
	return oval
end

local function polygonRectOnMouseDown(x, y)
	local mapX, mapY		= MapWindow.getMapPoint(x, y)
	local points			= {}
	
	for i = 0, 4 do
		table.insert(points, {x = 0, y = 0})
	end
	
	local newPrimitiveInfo	= newPrimitiveInfo_[Primitive.Polygon]
	local colorString		= newPrimitiveInfo.colorString
	local fillColorString	= newPrimitiveInfo.fillColorString
	local style				= newPrimitiveInfo.style
	local mapData			= {
		objectType			= 'Polygon',
		points				= points,
		thickness			= newPrimitiveInfo.thickness,
		color				= colorFromString(colorString),
		fillColor			= colorFromString(fillColorString),
		file				= styleInfo_[style].file,
		x 					= mapX,
		y 					= mapY,
	}
	
	local rect = {
		primitiveType		= Primitive.Polygon,
		polygonMode			= PolygonMode.Rect,
		name				= createNewPrimitiveName(Primitive.Polygon),
		mapId				= MapWindow.createDrawObject(mapData),
		mapData				= mapData,
		colorString			= colorString,
		fillColorString		= fillColorString,
		style				= style,
		width				= 0,
		height				= 0,
	}
	
	objectAdd(rect)
	
	return rect
end

local function polygonFreeOnMouseDown(x, y)
	local mapX, mapY		= MapWindow.getMapPoint(x, y)
	
	local newPrimitiveInfo	= newPrimitiveInfo_[Primitive.Polygon]
	local colorString		= newPrimitiveInfo.colorString
	local fillColorString	= newPrimitiveInfo.fillColorString
	local style				= newPrimitiveInfo.style
	local mapData			= {
		objectType			= 'Polygon',
		points				= {{x = 0, y = 0}, {x = 0, y = 0}, {x = 0, y = 0}},
		thickness			= newPrimitiveInfo.thickness,
		color				= colorFromString(colorString),
		fillColor			= colorFromString(fillColorString),
		file				= styleInfo_[style].file,
		x 					= mapX,
		y 					= mapY,
	}
	
	local polygon = {
		primitiveType		= Primitive.Polygon,
		polygonMode			= PolygonMode.Free,
		name				= createNewPrimitiveName(Primitive.Polygon),
		mapId				= MapWindow.createDrawObject(mapData),
		mapData				= mapData,
		colorString			= colorString,
		fillColorString		= fillColorString,
		style				= style,
	}
	
	objectAdd(polygon)
	
	currLastMouseX_ = x
	currLastMouseY_ = y
	polygonFreeDragged_ = false
	
	return polygon
end

local function makeOvalPoints(x, y, r1, r2, points)
	local da		= 2 * math.pi / circleSides_
	local sin		= math.sin
	local cos		= math.cos

	for i, point in ipairs(points) do
		local angle = da * (i - 1)
		
		point.x = x + r1 * sin(angle)
		point.y = y + r2 * cos(angle)
	end
end

local function makeRectPoints(x, y, dx, dy, points)
	points[1].x = x
	points[1].y = y
	
	points[2].x = x + dx
	points[2].y = y	
	
	points[3].x = x + dx
	points[3].y = y + dy
	
	points[4].x = x
	points[4].y = y + dy

	if points[5] then
		points[5].x = x
		points[5].y = y
	end
end

local function textBoxOnMouseDown(x, y)
	local mapX, mapY		= MapWindow.getMapPoint(x, y)
	local newPrimitiveInfo	= newPrimitiveInfo_[Primitive.TextBox]
	local colorString		= newPrimitiveInfo.colorString
	local fillColorString	= newPrimitiveInfo.fillColorString
	local borderThickness	=  newPrimitiveInfo.borderThickness
	
	local mapData = {
		objectType		= Primitive.TextBox,
		x				= mapX,
		y				= mapY,
		angle			= 0,
		color			= colorFromString(colorString),
		text			= newPrimitiveInfo.text,
		font			= 'DejaVuLGCSansCondensed.ttf',
		fontSize		= newPrimitiveInfo.fontSize,
		fillColor		= colorFromString(fillColorString),
		borderThickness	= borderThickness,
	}
	
	local textBox = {
		primitiveType	= Primitive.TextBox,
		name			= createNewPrimitiveName(Primitive.TextBox),
		mapId			= MapWindow.createDrawObject(mapData),
		mapData			= mapData,
		colorString		= colorString,
		fillColorString	= fillColorString,
	}
	
	objectAdd(textBox)
	
	return textBox
end

local function iconOnMouseDown(x, y)
	local mapX, mapY		= MapWindow.getMapPoint(x, y)
	local newPrimitiveInfo	= newPrimitiveInfo_[Primitive.Icon]
	local colorString		= newPrimitiveInfo.colorString
	local file				= newPrimitiveInfo.file
	
	local mapData = {
		objectType			= Primitive.Icon,
		x					= mapX,
		y					= mapY,
		angle				= 0,
		color				= colorFromString(colorString),
		file				= iconsFolder_ .. file,
	}
	
	local icon = {
		primitiveType		= Primitive.Icon,
		name				= createNewPrimitiveName(Primitive.Icon),
		file				= file,
		mapId				= MapWindow.createDrawObject(mapData),
		mapData				= mapData,
		colorString			= colorString,
	}
	
	objectAdd(icon)
	
	return icon
end

local function onMouseDown(x, y, button)
	if 1 == button then
		if currPrimitiveType_ == Primitive.Line then
			if not newObject_ then
				if lineMode_ == LineMode.Free		then
					newObject_ = lineFreeOnMouseDown(x, y)
				elseif lineMode_ == LineMode.Segment	then
					newObject_ = lineSegmentOnMouseDown(x, y)
				elseif lineMode_ == LineMode.Segments	then
					newObject_ = lineSegmentsOnMouseDown(x, y)
				end
				
				setPropertiesPanel(newObject_)
			end
		elseif 	currPrimitiveType_ == Primitive.Polygon then
			if not newObject_ then
				if polygonMode_ == PolygonMode.Circle then
					newObject_ = polygonCircleOnMouseDown(x, y)
				elseif polygonMode_ == PolygonMode.Oval then
					newObject_ = polygonOvalOnMouseDown(x, y)					
				elseif polygonMode_ == PolygonMode.Rect then
					newObject_ = polygonRectOnMouseDown(x, y)
				elseif polygonMode_ == PolygonMode.Free then
					newObject_ = polygonFreeOnMouseDown(x, y)				
				end
				
				setPropertiesPanel(newObject_)
			end
		elseif	currPrimitiveType_ == Primitive.TextBox then
			newObject_ = textBoxOnMouseDown(x, y)
			setPropertiesPanel(newObject_)
		elseif	currPrimitiveType_ == Primitive.Icon then
			newObject_ = iconOnMouseDown(x, y)
			setPropertiesPanel(newObject_)			
		else
			-- выбираем объект на карте
			local mapX, mapY	= MapWindow.getMapPoint(x, y)
			local radius		= MapWindow.getMapSize(0, 10)
			local mapIds		= MapWindow.findDrawObjects(mapX, mapY, radius)
			
			selectionHandlerIndex_	= nil
			
			-- если есть выбранный объект,
			-- то вначале ищем среди хендлеров выбранного объекта
			if currObject_ then
				for i = #mapIds, 1, -1 do
					local mapId = mapIds[i]
					
					for j, selectionHandler in ipairs(selectionHandlers_) do
						if selectionHandler.mapId == mapId then
							selectionHandlerIndex_ = j
							
							break
						end	
					end
					
					if selectionHandlerIndex_ then
						break
					end
				end
				
				if not selectionHandlerIndex_ then
					for i = #mapIds, 1, -1 do
						local mapId = mapIds[i]
						
						if mapId == currObject_.mapId then
							selectionHandlerIndex_ = 0
							
							break
						end
					end
				end
			end
			
			-- если хендлеров нет, то выбираем новый объект
			if not selectionHandlerIndex_ then
				local foundObject
				
				for i = #mapIds, 1, -1 do	
					local mapId = mapIds[i]
					
					for primitiveType, objects in pairs(objects_) do
						for j = #objects,1, -1 do
							local object = objects[j]
							
							if primitiveType == Primitive.Line then
								if object.mapId == mapId then
								
									foundObject = object
									selectionHandlerIndex_ = 0
									
									break
								end								
							elseif primitiveType == Primitive.Polygon then
								if 	object.mapId == mapId then
									foundObject = object
									selectionHandlerIndex_ = 0
									
									break
								end
							elseif primitiveType == Primitive.TextBox then
								if 	object.mapId == mapId then
									
									foundObject = object
									selectionHandlerIndex_ = 0
									
									break
								end
							elseif primitiveType == Primitive.Icon then
								if 	object.mapId == mapId then
									
									foundObject = object
									selectionHandlerIndex_ = 0
									
									break
								end
							end
						end
						
						if foundObject then
							break
						end
					end	
				end

				objectSelect		(foundObject)					
			end
		end
	end
end

local function lineSegmentsOnMouseUp(x, y)
	local mapX, mapY	= MapWindow.getMapPoint(x, y)
	local pointX		= mapX - newObject_.mapData.x
	local pointY		= mapY - newObject_.mapData.y
	local points		= newObject_.mapData.points
	
	-- добавляем новую точку, 
	-- чтобы при движении мыши было видно последний отрезок
	table.insert(points, {x = pointX, y = pointY})
	
	local count = #points
	
	if count > 3 then
		if 	pointX == points[count - 1].x and 
			pointX == points[count - 2].x and
			pointY == points[count - 1].y and 
			pointY == points[count - 2].y then
			
			-- удаляем последнюю точку
			table.remove(points)
			
			-- в начале и конце линии точки могут дублироваться
			if 	points[1].x == points[2].x and
				points[1].y == points[2].y then
				
				table.remove(points, 1)
			end
			
			count = #points
			
			if points[count] and points[count - 1] then
				if 	points[count].x == points[count - 1].x and
					points[count].y == points[count - 1].y then
					
					table.remove(points)
				end
			end
			
			if #points > 1 then
				MapWindow.updateDrawObject(newObject_.mapId, newObject_.mapData)
				
				-- начинаем новую линию
				objectSelectNew()
			else
				deleteIncomleteNewObject()
			end
		end	
	end
end

local function lineSegmentOnMouseUp(x, y)
	local points = newObject_.mapData.points
	
	if not points[2] or	(	points[1].x == points[2].x and
							points[1].y == points[2].y) then
		deleteIncomleteNewObject()
	else
		objectSelectNew()
	end
end

local function lineFreeOnMouseUp(x, y)
	local points = newObject_.mapData.points
	
	if not points[2] then
		deleteIncomleteNewObject()
	else	
		objectSelectNew()
	end
end

local function polygonFreeOnMouseUp(x, y)
	local mapX, mapY	= MapWindow.getMapPoint(x, y)
	local pointX		= mapX - newObject_.mapData.x
	local pointY		= mapY - newObject_.mapData.y
	local points		= newObject_.mapData.points
	
	-- добавляем новую точку перед последней точкой, 
	local count = #points
	
	table.insert(points, count - 1, {x = pointX, y = pointY})
	
	count = count + 1
	
	if count > 4 then
		-- если три последние точки одинаковые, 
		-- то заканчиваем полигон
		if(	pointX == points[count - 1].x and
			pointY == points[count - 1].y and
			pointX == points[count - 2].x and
			pointY == points[count - 2].y and
			pointX == points[count - 3].x and
			pointY == points[count - 3].y) or polygonFreeDragged_ then
			
			table.remove(points, count - 1)
			table.remove(points, count - 2)
			
			-- первая и вторая точки могут совпадать
			if 	points[1].x == points[2].x and
				points[1].y == points[2].y then
				
				table.remove(points, 1)
			end	
			
			if #points == 3 then
				deleteIncomleteNewObject()
			else			
				MapWindow.updateDrawObject(newObject_.mapId, newObject_.mapData)
				objectSelectNew()
			end
		else
			MapWindow.updateDrawObject(newObject_.mapId, newObject_.mapData)			
		end	
	end
end

local function onMouseUp(x, y, button)
	if 1 == button then
		if		currPrimitiveType_ == Primitive.Line then
			if		lineMode_ == LineMode.Free then
				lineFreeOnMouseUp()
			elseif	lineMode_ == LineMode.Segment then
				lineSegmentOnMouseUp(x, y)
			elseif	lineMode_ == LineMode.Segments then
				lineSegmentsOnMouseUp(x, y)
			end
		elseif 	currPrimitiveType_ == Primitive.Polygon then
			if polygonMode_ == PolygonMode.Free then
				polygonFreeOnMouseUp(x, y)
			else
				objectSelectNew()
			end
		elseif 	currPrimitiveType_ == Primitive.TextBox then
			objectSelectNew()
		elseif 	currPrimitiveType_ == Primitive.Icon then
			objectSelectNew()			
		end
	end
end

local function lineFreeNewOnMouseDrag(x, y)
	local mapX, mapY	= MapWindow.getMapPoint(x, y)
	local points		= newObject_.mapData.points
	local pointX		= mapX - newObject_.mapData.x
	local pointY		= mapY - newObject_.mapData.y
	
	if (x - currLastMouseX_) * (x - currLastMouseX_) + (y - currLastMouseY_) * (y - currLastMouseY_) > 10 * 10 then
		-- курсор сдвинули относительно последней позиции больше чем на 10 пикселей
		-- добавим точку к линии
		local point = {
			x = pointX,
			y = pointY,
		}
		
		table.insert(points, point)
		
		MapWindow.updateDrawObject(newObject_.mapId, newObject_.mapData)
		
		currLastMouseX_ = x
		currLastMouseY_ = y
	else
		local pointEnd = points[#points] -- последняя точка
		
		pointEnd.x = pointX
		pointEnd.y = pointY
		
		MapWindow.updateDrawObject(newObject_.mapId, newObject_.mapData)
	end
end

local function lineSegmentNewOnMouseDrag(x, y)
	local mapX, mapY	= MapWindow.getMapPoint(x, y)
	local points		= newObject_.mapData.points
	local pointX		= mapX - newObject_.mapData.x
	local pointY		= mapY - newObject_.mapData.y
	local pointEnd		= points[2]
				
	if pointEnd then
		pointEnd.x = pointX
		pointEnd.y = pointY
	else	
		pointEnd = {
			x = pointX,
			y = pointY,
		}
		
		table.insert(points, pointEnd)
	end
	
	MapWindow.updateDrawObject(newObject_.mapId, newObject_.mapData)
end

local function lineSegmentsNewOnMouseDrag(x, y)
	local mapX, mapY	= MapWindow.getMapPoint(x, y)
	local points		= newObject_.mapData.points
	local pointX		= mapX - newObject_.mapData.x
	local pointY		= mapY - newObject_.mapData.y
	local pointEnd		= points[#points]
				
	if pointEnd then
		pointEnd.x = pointX
		pointEnd.y = pointY
	else	
		pointEnd = {
			x = pointX,
			y = pointY,
		}
		
		table.insert(points, pointEnd)
	end
	
	MapWindow.updateDrawObject(newObject_.mapId, newObject_.mapData)
end

local function makeCirclePoints(x, y, radius, points)
	local da		= 2 * math.pi / circleSides_
	local sin		= math.sin
	local cos		= math.cos

	for i, point in ipairs(points) do
		local angle = da * (i - 1)
		
		point.x = x + radius * sin(angle)
		point.y = y + radius * cos(angle)
	end
end

function polygonCircleRadiusUpdate(circle) -- объявлена выше	
	makeCirclePoints(0, 0, circle.radius, circle.mapData.points)
	
	MapWindow.updateDrawObject(circle.mapId	, circle.mapData)
end

local function polygonCircleNewOnMouseDrag(x, y)
	local mapX, mapY	= MapWindow.getMapPoint(x, y)
	local dx 			= mapX - newObject_.mapData.x
	local dy 			= mapY - newObject_.mapData.y
	local radius		= math.sqrt(dx * dx + dy * dy)
	
	newObject_.radius	= radius
	
	polygonCircleRadiusUpdate	(newObject_)
	updatePropertiesPanel		(newObject_)
end

-- объявлена выше
function polygonOvalUpdateSize(oval)
	makeOvalPoints(0, 0, oval.r1, oval.r2, oval.mapData.points)
	
	MapWindow.updateDrawObject(oval.mapId, oval.mapData)
end

local function polygonOvalNewOnMouseDrag(x, y)
	local mapX, mapY	= MapWindow.getMapPoint(x, y)
	
	newObject_.r2		= math.abs(mapY - newObject_.mapData.y)
	newObject_.r1		= math.abs(mapX - newObject_.mapData.x)
	
	polygonOvalUpdateSize(newObject_)
	updatePropertiesPanel(newObject_)
end

-- объявлена выше
function polygonRectUpdateSize(rect)
	makeRectPoints(0, 0, rect.height, rect.width, rect.mapData.points)
	
	MapWindow.updateDrawObject(rect.mapId, rect.mapData)
end

local function polygonRectNewOnMouseDrag(x, y)
	local mapX, mapY	= MapWindow.getMapPoint(x, y)
	
	newObject_.width	= mapY - newObject_.mapData.y
	newObject_.height	= mapX - newObject_.mapData.x
	
	polygonRectUpdateSize(newObject_)
	updatePropertiesPanel(newObject_)
end

local function polygonFreeNewOnMouseDrag(x, y)
	local mapX, mapY	= MapWindow.getMapPoint(x, y)
	local points		= newObject_.mapData.points
	local pointX		= mapX - newObject_.mapData.x
	local pointY		= mapY - newObject_.mapData.y
	
	if (x - currLastMouseX_) * (x - currLastMouseX_) + (y - currLastMouseY_) * (y - currLastMouseY_) > 10 * 10 then
		-- курсор сдвинули относительно последней позиции больше чем на 10 пикселей
		-- добавим точку к линии
		local point = {
			x = pointX,
			y = pointY,
		}
		
		table.insert(points, #points - 1, point)
		
		MapWindow.updateDrawObject(newObject_.mapId, newObject_.mapData)
		
		currLastMouseX_ = x
		currLastMouseY_ = y
	else
		local pointEnd = points[#points - 1] -- последняя точка
		
		pointEnd.x = pointX
		pointEnd.y = pointY
		
		MapWindow.updateDrawObject(newObject_.mapId, newObject_.mapData)
	end
	
	polygonFreeDragged_ = true
end

local function textBoxNewOnMouseDrag(x, y)
	local mapX, mapY	= MapWindow.getMapPoint(x, y)
	
	newObject_.mapData.x = mapX
	newObject_.mapData.y = mapY
	
	MapWindow.updateDrawObject(newObject_.mapId, newObject_.mapData)	
end

local function iconNewOnMouseDrag(x, y)
	local mapX, mapY	= MapWindow.getMapPoint(x, y)
	
	newObject_.mapData.x = mapX
	newObject_.mapData.y = mapY
	
	MapWindow.updateDrawObject(newObject_.mapId, newObject_.mapData)	
end

local function lineCurrOnMouseDrag(x, y, dx, dy)
	local mapX	, mapY	= MapWindow.getMapPoint(x, y)
	local mapDx	, mapDy	= MapWindow.getMapSize(dx, dy, true)

	if selectionHandlerIndex_ == 0 then
		-- перемещаем линию целиком
		local x = currObject_.mapData.x + mapDx
		local y = currObject_.mapData.y + mapDy
		
		currObject_.mapData.x = x
		currObject_.mapData.y = y
		
		MapWindow.updateDrawObject(currObject_.mapId, {x = x, y = y})
		
		updateSelectionHandles(currObject_)
	else
		-- линию схватили за хэндл
		-- изменяем только одну точку линии
		local point				= currObject_.mapData.points[selectionHandlerIndex_]
		local selectionHandler	= selectionHandlers_		[selectionHandlerIndex_]
		
		point.x = point.x + mapDx
		point.y = point.y + mapDy
		
		selectionHandler.mapData.x = currObject_.mapData.x + point.x
		selectionHandler.mapData.y = currObject_.mapData.y + point.y
		
		MapWindow.updateDrawObject(currObject_		.mapId	, currObject_		.mapData)
		MapWindow.updateDrawObject(selectionHandler.mapId	, selectionHandler	.mapData)
	end
end

local function polygonCircleCurrOnMouseDrag(x, y)
	-- круг схватили за хэндл
	-- изменяем радиус круга
	local mapX, mapY	= MapWindow.getMapPoint(x, y)
	local dx 			= mapX - currObject_.mapData.x
	local dy 			= mapY - currObject_.mapData.y
	local radius 		= math.sqrt(dx * dx + dy * dy)
	
	currObject_.radius 	= radius
	
	polygonCircleRadiusUpdate	(currObject_)
	updateSelectionHandles		(currObject_)
	updatePropertiesPanel		(currObject_)
end

local function polygonOvalCurrOnMouseDrag(x, y)
	-- овал схватили за хэндл
	-- изменяем радиусы овала
	local mapX, mapY	= MapWindow.getMapPoint(x, y)
	
	if selectionHandlerIndex_ == 1 then -- top
		currObject_.r1	= math.abs(mapX - currObject_.mapData.x)
	elseif selectionHandlerIndex_ == 2 then -- right
		currObject_.r2	= math.abs(mapY - currObject_.mapData.y)
	elseif selectionHandlerIndex_ == 3 then -- bottom
		currObject_.r1	= math.abs(mapX - currObject_.mapData.x)
	elseif selectionHandlerIndex_ == 4 then -- left
		currObject_.r2	= math.abs(mapY - currObject_.mapData.y)
	end
	
	polygonOvalUpdateSize	(currObject_)
	updateSelectionHandles	(currObject_)
	updatePropertiesPanel	(currObject_)
end

local function polygonRectCurrOnMouseDrag(x, y)
	-- прямоугольник схватили за хэндл
	-- изменяем размер прямоугольника
	local mapX, mapY	= MapWindow.getMapPoint(x, y)
	local dx 			= mapX - currObject_.mapData.x
	local dy 			= mapY - currObject_.mapData.y
	
	if selectionHandlerIndex_ == 1 then -- left top
		currObject_.mapData.x	= currObject_.mapData.x + dx
		currObject_.mapData.y	= currObject_.mapData.y + dy
		currObject_.width		= currObject_.width		- dy
		currObject_.height		= currObject_.height	- dx
	elseif selectionHandlerIndex_ == 2 then -- left bottom
		currObject_.mapData.y	= currObject_.mapData.y + dy
		currObject_.width		= currObject_.width		- dy
		currObject_.height		= dx	
	elseif selectionHandlerIndex_ == 3 then -- right bottom
		currObject_.width	= dy
		currObject_.height	= dx
	elseif selectionHandlerIndex_ == 4 then -- right top
		currObject_.mapData.x	= currObject_.mapData.x + dx
		currObject_.width		= dy
		currObject_.height		= currObject_.height	- dx
	end
	
	polygonRectUpdateSize	(currObject_)
	updateSelectionHandles	(currObject_)
	updatePropertiesPanel	(currObject_)
end

local function polygonFreeCurrOnMouseDrag(dx, dy)
	-- полигон схватили за хэндл
	-- изменяем только одну точку полигона
	local mapDx	, mapDy	= MapWindow.getMapSize(dx, dy, true)
	
	local points = currObject_.mapData.points
	local movePointAndHandler 	= function(index)
		local point				= points			[index]
		local selectionHandler	= selectionHandlers_[index]		

		point.x = point.x + mapDx
		point.y = point.y + mapDy
		
		selectionHandler.mapData.x = currObject_.mapData.x + point.x
		selectionHandler.mapData.y = currObject_.mapData.y + point.y
		
		MapWindow.updateDrawObject(selectionHandler.mapId, selectionHandler.mapData)
	end
	
	movePointAndHandler(selectionHandlerIndex_)
	
	-- если это первая и последняя точки,
	-- то их нужно двигать вместе
	local pointCount = #points
	
	if selectionHandlerIndex_ == 1 then
		movePointAndHandler(pointCount)
	elseif selectionHandlerIndex_ == pointCount then
		movePointAndHandler(1)
	end
	
	MapWindow.updateDrawObject(currObject_.mapId, currObject_.mapData)
end

local function polygonCurrOnMouseDrag(x, y, dx, dy)
	if selectionHandlerIndex_ == 0 then
		local mapDx, mapDy = MapWindow.getMapSize(dx, dy, true)
		
		-- перемещаем полигон целиком
		local mapX = currObject_.mapData.x + mapDx
		local mapY = currObject_.mapData.y + mapDy
		
		currObject_.mapData.x = mapX
		currObject_.mapData.y = mapY

		MapWindow.updateDrawObject(currObject_.mapId, {x = mapX, y = mapY}) -- обновляем только позицию
		updateSelectionHandles(currObject_)
	else		
		if currObject_.polygonMode == PolygonMode.Circle then
			polygonCircleCurrOnMouseDrag(x, y)
		elseif currObject_.polygonMode == PolygonMode.Oval then
			polygonOvalCurrOnMouseDrag(x, y)
		elseif currObject_.polygonMode == PolygonMode.Rect then
			polygonRectCurrOnMouseDrag(x, y)
		elseif 	currObject_.polygonMode == PolygonMode.Free then
			polygonFreeCurrOnMouseDrag(dx, dy)
		end
	end
end

local function textBoxCurrOnMouseDrag(dx, dy)
	-- перемещаем TextBox целиком
	local mapDx, mapDy	= MapWindow.getMapSize(dx, dy, true)
	local mapX			= currObject_.mapData.x + mapDx
	local mapY			= currObject_.mapData.y + mapDy
	
	currObject_.mapData.x = mapX
	currObject_.mapData.y = mapY
	
	MapWindow.updateDrawObject(currObject_.mapId, {x = mapX, y = mapY}) -- обновляем только позицию
	
	updateSelectionHandles(currObject_)
end

local function iconCurrOnMouseDrag(dx, dy)
	-- перемещаем Icon целиком
	local mapDx, mapDy	= MapWindow.getMapSize(dx, dy, true)
	local mapX			= currObject_.mapData.x + mapDx
	local mapY			= currObject_.mapData.y + mapDy
	
	currObject_.mapData.x = mapX
	currObject_.mapData.y = mapY
	
	MapWindow.updateDrawObject(currObject_.mapId, {x = mapX, y = mapY}) -- обновляем только позицию
	
	updateSelectionHandles(currObject_)
end

local function onMouseDrag(dx, dy, button, x, y)	
	if 1 == button then
		if currPrimitiveType_ == Primitive.Line then
			if lineMode_ == LineMode.Free		then
				lineFreeNewOnMouseDrag(x, y)
			elseif lineMode_ == LineMode.Segment	then
				lineSegmentNewOnMouseDrag(x, y)
			elseif lineMode_ == LineMode.Segments	then
				lineSegmentsNewOnMouseDrag(x, y)
			end
		elseif 	currPrimitiveType_ == Primitive.Polygon then
			if polygonMode_ == PolygonMode.Circle then
				polygonCircleNewOnMouseDrag(x, y)
			elseif polygonMode_ == PolygonMode.Oval then
				polygonOvalNewOnMouseDrag(x, y)				
			elseif polygonMode_ == PolygonMode.Rect then
				polygonRectNewOnMouseDrag(x, y)
			elseif polygonMode_ == PolygonMode.Free then
				polygonFreeNewOnMouseDrag(x, y)
			end
		elseif 	currPrimitiveType_ == Primitive.TextBox then
			textBoxNewOnMouseDrag(x, y)
		elseif 	currPrimitiveType_ == Primitive.Icon then
			iconNewOnMouseDrag(x, y)			
		else
			if currObject_ then
				local mapX	, mapY	= MapWindow.getMapPoint(x, y)
				local mapDx	, mapDy	= MapWindow.getMapSize(dx, dy, true)
				
				if currObject_.primitiveType == Primitive.Line then
					lineCurrOnMouseDrag(x, y, dx, dy)
				elseif 	currObject_.primitiveType == Primitive.Polygon then
					polygonCurrOnMouseDrag(x, y, dx, dy)
				elseif 	currObject_.primitiveType == Primitive.TextBox then
					textBoxCurrOnMouseDrag(dx, dy)
				elseif 	currObject_.primitiveType == Primitive.Icon then
					iconCurrOnMouseDrag(dx, dy)			
				end
			end
		end
	end
end

local function reset()
	-- все объекты карты будут удалены вызовом clearUserObjects
	
	for primitiveType, info in pairs(newPrimitiveInfo_) do
		info.counter = 0
	end
	
	for primitiveType, objects in pairs(objects_) do
		objects_[primitiveType] = {}
	end
	
	checkListBoxObjects_:clear()
	checkListBoxObjects_.objectsToItems = {}
	
	objectSelect()
	
	selectionHandlersPool_	= {}
	selectionHandlers_		= {}
	selectionHandlerIndex_	= nil
end

local function lineLoad(object)
	local mapX = object.mapX
	local mapY = object.mapY
	local colorString		= object.colorString
	local style				= object.style
	
	local mapData			= {
		objectType			= 'Polyline',
		points				= object.points,
		closed				= object.closed,
		thickness			= object.thickness,
		color				= colorFromString(colorString),
		file				= styleInfo_[style].file,
		x 					= object.mapX,
		y 					= object.mapY,
	}
	
	local line = {
		primitiveType		= Primitive.Line,
		lineMode			= object.lineMode,
		name				= object.name,
		mapId				= MapWindow.createDrawObject(mapData),
		mapData				= mapData,
		colorString			= colorString,
		style				= style,
	}
	
	objectAdd(line)
end

local function polygonCircleLoad(object)
	local mapX			= object.mapX
	local mapY			= object.mapY
	local radius		= object.radius
	local points		= {}
	local da			= 2 * math.pi / circleSides_
	local sin			= math.sin
	local cos			= math.cos
	local angle
	
	for i = 0, circleSides_ do
		angle = da * (i - 1)
		
		table.insert(points, {x = radius * sin(angle), y = radius * cos(angle)})
	end

	local colorString		= object.colorString
	local fillColorString	= object.fillColorString
	local style				= object.style
	
	local mapData			= {
		objectType			= 'Polygon',
		points				= points,
		thickness			= object.thickness,
		color				= colorFromString(colorString		),
		fillColor			= colorFromString(fillColorString	),
		file				= styleInfo_[style].file,
		x 					= mapX,
		y 					= mapY,
	}
	
	local circle = {
		primitiveType		= Primitive.Polygon,
		polygonMode			= PolygonMode.Circle,
		name				= object.name,
		mapId				= MapWindow.createDrawObject(mapData),
		mapData				= mapData,
		colorString			= colorString,
		fillColorString		= fillColorString,
		style				= style,
		radius				= radius,
	}
	
	objectAdd(circle)
end

local function polygonOvalLoad(object)
	local mapX			= object.mapX
	local mapY			= object.mapY
	local r1			= object.r1
	local r2			= object.r2
	local points		= {}
	local da			= 2 * math.pi / circleSides_
	local sin			= math.sin
	local cos			= math.cos
	local angle
	
	for i = 0, circleSides_ do
		angle = da * (i - 1)

		table.insert(points, {x = r1 * sin(angle), y = r2 * cos(angle)})
	end

	local colorString		= object.colorString
	local fillColorString	= object.fillColorString
	local style				= object.style
	
	local mapData			= {
		objectType			= 'Polygon',
		points				= points,
		thickness			= object.thickness,
		color				= colorFromString(colorString		),
		fillColor			= colorFromString(fillColorString	),
		file				= styleInfo_[style].file,
		x 					= mapX,
		y 					= mapY,
	}
	
	local oval = {
		primitiveType		= Primitive.Polygon,
		polygonMode			= PolygonMode.Oval,
		name				= object.name,
		mapId				= MapWindow.createDrawObject(mapData),
		mapData				= mapData,
		colorString			= colorString,
		fillColorString		= fillColorString,
		style				= style,
		r1					= r1,
		r2					= r2,
	}
	
	objectAdd(oval)
end



local function polygonRectLoad(object)
	local mapX			= object.mapX
	local mapY			= object.mapY
	local width			= object.width
	local height		= object.height
	local points 		= {}

	for i = 0, 4 do
		table.insert(points, {x = 0, y = 0})
	end
	
	makeRectPoints(0, 0, height, width, points)
	
	local colorString		= object.colorString
	local fillColorString	= object.fillColorString
	local style				= object.style
	local mapData			= {
		objectType			= 'Polygon',
		points				= points,
		thickness			= object.thickness,
		color				= colorFromString(colorString		),
		fillColor			= colorFromString(fillColorString	),
		file				= styleInfo_[style].file,
		x 					= mapX,
		y 					= mapY,
	}
	
	local rect = {
		primitiveType		= Primitive.Polygon,
		polygonMode			= PolygonMode.Rect,
		name				= object.name,
		mapId				= MapWindow.createDrawObject(mapData),
		mapData				= mapData,
		colorString			= colorString,
		fillColorString		= fillColorString,
		style				= style,
		width				= width,
		height				= height,
	}
	
	objectAdd(rect)
end

local function polygonFreeLoad(object)
	local colorString		= object.colorString
	local fillColorString	= object.fillColorString
	local style				= object.style
	local mapData			= {
		objectType			= 'Polygon',
		points				= object.points,
		thickness			= object.thickness,
		color				= colorFromString(colorString		),
		fillColor			= colorFromString(fillColorString	),
		file				= styleInfo_[style].file,
		x 					= object.mapX,
		y 					= object.mapY,
	}
	
	local polygon = {
		primitiveType		= Primitive.Polygon,
		polygonMode			= PolygonMode.Free,
		name				= object.name,
		mapId				= MapWindow.createDrawObject(mapData),
		mapData				= mapData,
		colorString			= colorString,
		fillColorString		= fillColorString,
		style				= style,
	}
	
	objectAdd(polygon)
end

local function textBoxLoad(object)	
	local mapData = {
		objectType			= Primitive.TextBox,
		x					= object.mapX,
		y					= object.mapY,
		color				= colorFromString(object.colorString),
		text				= object.text,
		font				= object.font,
		fontSize			= object.fontSize,
		fillColor			= colorFromString(object.fillColorString),
		borderThickness		= object.borderThickness,
	}
	
	local textBox = {
		primitiveType		= Primitive.TextBox,
		name				= object.name,
		mapId				= MapWindow.createDrawObject(mapData),
		mapData				= mapData,
		colorString			= colorString,
		fillColorString		= fillColorString,
	}
	
	objectAdd(textBox)
end

local function iconLoad(object)
	local mapData = {
		objectType			= Primitive.Icon,
		x					= object.mapX,
		y					= object.mapY,
		color				= colorFromString(object.colorString),
		file				= iconsFolder_ .. object.file,
	}
	
	local icon = {
		primitiveType		= Primitive.Icon,
		name				= object.name,
		mapId				= MapWindow.createDrawObject(mapData),
		mapData				= mapData,
		colorString			= object.colorString,
		file				= object.file,
	}
	
	objectAdd(icon)
end


local function loadObject(primitiveType, object)
	if primitiveType == Primitive.Line then
		lineLoad(object)
	elseif primitiveType == Primitive.Polygon then
		if object.polygonMode == PolygonMode.Circle then
			polygonCircleLoad(object)
		elseif object.polygonMode == PolygonMode.Oval then
			polygonOvalLoad(object)			
		elseif object.polygonMode == PolygonMode.Rect then
			polygonRectLoad(object)		
		elseif object.polygonMode == PolygonMode.Free then
			polygonFreeLoad(object)
		end
	elseif primitiveType == Primitive.TextBox then
		textBoxLoad(object)
	elseif primitiveType == Primitive.Icon then
		iconLoad(object)		
	end
end

local function loadFromMission(data)
	reset()
	
	if data then
		for primitiveType, objects in pairs(data.objects) do
			for i, object in ipairs(objects) do
				loadObject(primitiveType, object)
			end
		end
	end
end

local function lineSave(object)
	return {
		name			= object.name				,
		lineMode		= object.lineMode			,
		colorString		= object.colorString		,
		style			= object.style				,
		closed			= object.mapData.closed		,
		thickness		= object.mapData.thickness	,
		mapX			= object.mapData.x			,
		mapY			= object.mapData.y			,
		points			= object.mapData.points		,
	}
end

local function polygonCircleSave(object)
	return {
		name			= object.name				,
		polygonMode		= object.polygonMode		,
		colorString		= object.colorString		,
		style			= object.style				,
		thickness		= object.mapData.thickness	,
		mapX			= object.mapData.x			,
		mapY			= object.mapData.y			,
		radius			= object.radius				,
		fillColorString	= object.fillColorString	,
	}
end

local function polygonOvalSave(object)
	return {
		name			= object.name				,
		polygonMode		= object.polygonMode		,
		colorString		= object.colorString		,
		style			= object.style				,
		thickness		= object.mapData.thickness	,
		mapX			= object.mapData.x			,
		mapY			= object.mapData.y			,
		r1				= object.r1					,
		r2				= object.r2					,
		fillColorString	= object.fillColorString	,
	}
end

local function polygonRectSave(object)
	return {
		name			= object.name				,
		polygonMode		= object.polygonMode		,
		colorString		= object.colorString		,
		style			= object.style				,
		thickness		= object.mapData.thickness	,
		mapX			= object.mapData.x			,
		mapY			= object.mapData.y			,
		width			= object.width				,
		height			= object.height				,
		fillColorString	= object.fillColorString	,
	}
end

local function polygonFreeSave(object)
	return {
		name			= object.name				,
		polygonMode		= object.polygonMode		,
		points			= object.mapData.points		,
		colorString		= object.colorString		,
		style			= object.style				,
		thickness		= object.mapData.thickness	,
		mapX			= object.mapData.x			,
		mapY			= object.mapData.y			,
		fillColorString	= object.fillColorString	,
	}
end

local function textBoxSave(object)
	return {
		mapX			= object.mapData.x			,
		mapY			= object.mapData.y			,		
		name			= object.name				,
		text			= object.mapData.text		,
		font			= object.mapData.font		,
		fontSize		= object.mapData.fontSize	,
		borderThickness	= object.mapData.borderThickness,
		colorString		= object.colorString		,
		fillColorString	= object.fillColorString	,
	}
end

local function iconSave(object)
	return {
		mapX			= object.mapData.x			,
		mapY			= object.mapData.y			,		
		name			= object.name				,
		file			= object.file				,
		colorString		= object.colorString		,
	}
end

local function saveObject(primitiveType, object)
	if primitiveType == Primitive.Line then
		return lineSave(object)
	elseif primitiveType == Primitive.Polygon then	
		if object.polygonMode == PolygonMode.Circle then
			return polygonCircleSave(object)
		elseif object.polygonMode == PolygonMode.Oval then
			return polygonOvalSave(object)			
		elseif object.polygonMode == PolygonMode.Rect then
			return polygonRectSave(object)		
		elseif object.polygonMode == PolygonMode.Free then
			return polygonFreeSave(object)
		end
	elseif primitiveType == Primitive.TextBox then		
		return textBoxSave(object)	
	elseif primitiveType == Primitive.Icon then		
		return iconSave(object)
	end
end

local function saveToMission()
	local objectsOut = {}
	
	for primitiveType, objects in pairs(objects_) do
		local primitives = {}
		
		for i, object in ipairs(objects) do
			table.insert(primitives, saveObject(primitiveType, object))
		end
		
		objectsOut[primitiveType] = primitives
	end
	
	return {
		objects = objectsOut,
	}
end

return {
	create			= create,
	show			= show,
	loadFromMission	= loadFromMission,
	saveToMission	= saveToMission,
	onMouseMove		= onMouseMove,
	onMouseDown		= onMouseDown,
	onMouseUp		= onMouseUp,
	onMouseDrag		= onMouseDrag,
}