local WidgetParams = require('WidgetParams')
local Skin2 = require('Skin2')

WidgetParams.create()

local enableTest

function setEnableTest(enable)
	enableTest = enable
end

local nilValue = WidgetParams.getNilValue()

local function replaceNilValue(table)
	for name, value in pairs(table) do
		if value == nilValue then
			table[name] = nil
		else
			if type(value) == 'table' then
				replaceNilValue(value)
			end
		end
	end

	return table
end

local function loadFile(filename)
	local result
	local f, err = loadfile(filename)

	if f then
		local env = {}

		setfenv(f, env)
		f()

		result = env.dialog
	else
		print("Cannot load " .. filename .. ": " .. err)
	end

	return result
end

-- локализация параметров производится только для функции setText()
local function localizeParams(funcName, paramTable, localization)
	local result = paramTable

	if localization and ('setText' == funcName or 'setTooltipText' == funcName)then
		local textToLocalize = paramTable[1] or ''

		-- имя локализованной строки должно начинаться со знака $
		local name = string.match(textToLocalize, "^%$(.*)") 

		if name then
			local localizedParam = localization[name]

			if localizedParam then
				result = {localizedParam}
			end
		end
	else
		result = paramTable
	end

	return result
end

local function setWidgetParams(widget, widgetTable, localization)
	local widgetInfo = WidgetParams.getWidgets()[widgetTable.type]

	for name, paramTable in pairs(widgetTable.params) do
		local widgetInfoParam = widgetInfo.params[name]
		
		if widgetInfoParam then
			local funcName = widgetInfoParam.set
			local setFunc = widget[funcName] or widgetInfoParam.setFunc

			if setFunc then
				setFunc(widget, unpack(localizeParams(funcName, paramTable, localization)))
			end
		end
	end
end

local function mergeSkins(skinsDestination, skinsSource)
	for widgetName, skinSource in pairs(skinsSource) do
		WidgetParams.merge(skinsDestination[widgetName], skinSource, true)
	end
end

local function createSubSkins(skinsTable)
	local result

	if skinsTable then
		result = {}

		for widgetName, widgetSkin in pairs(skinsTable) do
			result[widgetName] = widgetSkin

			if widgetSkin.skinData.skins then
				local subSkins = createSubSkins(widgetSkin.skinData.skins)

				if subSkins then
					if result[widgetName] then
						mergeSkins(result[widgetName].skinData.skins, subSkins)
					end
				end
			end
		end
	end

	return result
end

local function getSkinName(skinTable)
	local result

	if skinTable then
		local skinParams = skinTable.params

		if skinParams and skinParams.name then
			result = skinParams.name
		end
	end

	return result
end

local function createSkin(skinTable)
	local result
	local skinName = getSkinName(skinTable)
	
	if skinName then
		result = Skin.getSkin(skinName)

		if result then
			WidgetParams.merge(result.skinData, skinTable, true)

			local skins = createSubSkins(skinTable.skins)

			if skins then
				mergeSkins(result.skinData.skins, skins)
			end

			replaceNilValue(result)
		end
	end

	return result
end

local function getDefaultSkinName(widgetTypeName)
	return string.gsub(widgetTypeName, "%u?", string.lower, 1) .. "Skin"
end

local function createDefaultSkin(widgetTypeName)
	local skinName = getDefaultSkinName(widgetTypeName)
 
	return Skin.getSkin(skinName)
end

local function setSkinParams(widget, widgetTable)
	local skin = createSkin(widgetTable.skin)

	if not skin then
		skin = createDefaultSkin(widgetTable.type)
	end

	if skin then
		widget:setSkin(skin)
	end
end

-- функция spawnWidget определена ниже
local spawnWidget
local function spawnChildren(widget, widgetTable, localization)
	local childInfo = {}

	for childName, childTable in pairs(widgetTable.children) do
		local child = spawnWidget(childTable, localization)
		
		table.insert(childInfo, {child = child, childName = childName, childType = childTable.type})
	end

	local sortChildren = function(childInfo1, childInfo2)
		return childInfo1.child:getZIndex() < childInfo2.child:getZIndex()
	end

	table.sort(childInfo, sortChildren)

	local widgetInfo = WidgetParams.getWidgets()[widgetTable.type]
	local addChildFunc = widget[widgetInfo.addChildFuncName]
	
	for i, info in ipairs(childInfo) do
		widget[info.childName] = info.child
		-- Menu не должны вставляться в другие виджеты!
		if 'Menu' ~= info.childType then
			addChildFunc(widget, info.child)
		end
	end
end

local function createWidget(widgetTable)
	local widgetType = widgetTable.type

	if 'Window' == widgetTable.type and widgetTable.params.modal[1] then
		widgetType = 'ModalWindow'
	end

	local class = require(widgetType)
	
	return class.new()
end

function spawnWidget(widgetTable, localization)
	local result = createWidget(widgetTable)

	setSkinParams(result, widgetTable)
	setWidgetParams(result, widgetTable, localization)
	
	local skinName		= result:getSkinName()

	if skinName then
		local newSkin = Skin2.getSkin(skinName)
		
		if newSkin then
			local oldSkin = Skin2.getOldSkin(newSkin, result:getPictureFile())
			
			result:setSkin(oldSkin)
		end
	end	

	if enableTest then
		local widgetInfo = WidgetParams.getWidgets()[widgetTable.type]
		
		if widgetInfo.initFunc then
			widgetInfo.initFunc(result)
		end
	end

	spawnChildren(result, widgetTable, localization)

	return result
end

local function spawnDialog(widgetTable, localization)
	return spawnWidget(widgetTable, localization)
end

local function spawnDialogFromFile(filename, localization)
	local result
	local dialogTable = loadFile(filename)

	if dialogTable then
		result = spawnDialog(dialogTable, localization)
	end
	 
	return result
end

local function getWidgetIsChild(parent, widget)
	local widgetCount = parent:getWidgetCount()
	
	for i = 0, widgetCount - 1 do
		if parent:getWidget(i) == widget then
			return true
		end
	end
	
	return false
end

local function findWidgetByName(parent, name)
	local result
	
	if parent.getWidgetCount then
		local childWidget = parent[name]
		
		if getWidgetIsChild(parent, childWidget) then
			result = childWidget
		else
			local widgetCount = parent:getWidgetCount()
			
			for i = 0, widgetCount - 1 do
				result = findWidgetByName(parent:getWidget(i), name)
				
				if result then
					break
				end
			end
		end
	end
	
	return result
end

-- FIXME: если редактор контролирует тип виджета,
-- который можно поместить в контейнер, 
-- то дополнительная проверка getWidgetIsChild() не нужна
local function findMenuByName(parent, name)
	local menu = parent[name]

	if not menu then
		if parent.getWidgetCount then
			local widgetCount = parent:getWidgetCount()
		
			for i = 0, widgetCount - 1 do
				menu = findMenuByName(parent:getWidget(i), name)
				
				if menu then
					break
				end
			end
		end
	end
		
	
	return menu
end

return {
	setEnableTest		= setEnableTest,
	loadFile			= loadFile,
	spawnDialog			= spawnDialog,
	spawnDialogFromFile	= spawnDialogFromFile,
	findWidgetByName	= findWidgetByName,
	findMenuByName		= findMenuByName,
}