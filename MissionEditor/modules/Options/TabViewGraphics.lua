local DialogLoader		= require('DialogLoader')
local ListBoxItem		= require('ListBoxItem')
local Factory			= require('Factory')
local TabViewBase		= require('Options.TabViewBase')
local i18n				= require('i18n')
local WidgetUtils		= require('Options.WidgetUtils')
local U					= require('me_utilities')
local optionsUtils		= require('Options.optionsUtils')
local Skin				= require('Skin')
local ViewportEditor	= require('ViewportEditor')
local MeSettings		= require('MeSettings')

local _ = i18n.ptranslate

local function loadFromResource(self)
	local localization = {
		graphics				= _("Graphics"),
		textures				= _("TEXTURES"),
		terrainTextures			= _("TERRAIN TEXTURES"),
		flatTerrainShadows		= _("Terrain Objects Shadows"),
		terrPreload				= _("TERR PRELOAD"),
		civTraffic				= _("CIV TRAFFIC"),
		water					= _("WATER"),
		visibRange				= _("VISIB RANGE"),
		effects					= _("EFFECTS"),
		heatBlur				= _("HEAT BLUR"),
		LensEffects				= _("LENS EFFECTS"),
		shadows					= _("SHADOWS"),
		resolution				= _("RESOLUTION"),
		cockpitShadows			= _("COCKPIT SHADOWS"),
		cockpitGI				= _("COCKPIT GLOBAL ILLUMINATION"),
		VSync					= _("VSYNC"),
		fullScreen				= _("FULL SCREEN"),
		scaleGui				= _("SCALE GUI"),
		aspect					= _("ASPECT"),
		multiMonitorSetup		= _("MONITORS"),
		resOfCockpitDisplays	= _('RES. OF COCKPIT DISPLAYS'),
		MSAA					= _("MSAA"),
		TranspSSAA				= _("TSSAA"),
		cluttergrass			= _("CLUTTER/GRASS"),
		forestDistanceFactor	= _("Forest Visibility"),
		forestDetailsFactor		= _("Forest Details Factor"),
		preloadRadius			= _("PRELOAD RADIUS"),
		shadowTree				= _("TREE SHADOWS"),
		presets 				= _("PRESETS"),
		low 					= _("LOW"),
		medium 					= _("MEDIUM"),
		high 					= _("HIGH"),
		custom 					= _("CUSTOM"),
		DOF						= _('DEPTH OF FIELD'),
		clouds					= _('Сlouds'),	
		anisotropy				= _('ANISOTROPIC FILTERING'),
		VR						= _("VR"),
		SSAO					= _("SSAO"),
		motionBlur				= _("MOTION BLUR"),
		chimneySmokeDensity		= _("CHIMNEY SMOKES DENSITY"),
		outputGamma				= _("GAMMA"),
		rainDroplets			= _("Rain Droplets"),
		SSAA					= _("SSAA"),
		SSLR					= _("SSLR"),
		SSAO					= _("SSAO"),
		messagesFontScale		= _("Messages font scale"),
		SaveCustom1				= _("SAVE"),
		SaveCustom2				= _("SAVE"),
		SaveCustom3				= _("SAVE"),
		Custom1					= _("Custom1"),
		Custom2					= _("Custom2"),
		Custom3					= _("Custom3"),
		SaveUsersPresets		= _("Save Users Presets"),	
		sceneryDetailsFactor	= _("Scenery Details Factor"),
		box_mouse_cursor		= _('CURSOR CONFINED TO GAME WINDOW'),
	}
	local window = DialogLoader.spawnDialogFromFile('./MissionEditor/modules/dialogs/me_options_system.dlg', localization)
	local container = window.containerMain.containerSystem
	
	window.containerMain:removeWidget(container)
	window:kill()
	
	return container
end

local function bindAspectComboBox(self, aspectComboBox, getFunc, setFunc, getValuesFunc)
	local optionName = 'aspect'
	
	self:bindComboList(aspectComboBox, optionName, getFunc, setFunc, getValuesFunc)
	
	function aspectComboBox:onChange(item)
		if item then
			setFunc(optionName, item.value)
		end
	end

	local updateFunction = function()
		local value = getFunc(optionName)
		local counter = aspectComboBox:getItemCount() - 1
		local item = nil
		
		for i = 0, counter do
			local currItem = aspectComboBox:getItem(i)
			
			if currItem.value == value then
				item = currItem
				break
			end
		end
		
		if item then
			aspectComboBox:selectItem(item)
		else
			aspectComboBox:setText(value)
		end	
	end
	
	self.updateFunctions_[optionName] = updateFunction
	
	local applyUserInput = function(text)
		-- ожидаем число
		local aspect = tonumber(text)
		
		if nil == aspect or 0 >= aspect then
			-- или ожидаем два целых числа, разделенных ':'
			local width, height = string.match(text, '(%d+)[:](%d+)')
			
			if width and height then
				width = tonumber(width)
				height = tonumber(height)
				
				if width > 0 and height > 0 then
					aspect = width / height
				end
			end	
		end
		
		if nil == aspect or 0 >= aspect then
			updateFunction()
		else
			setFunc(optionName, aspect)
		end
	end
	
	function aspectComboBox:onKeyDown(key, unicode)
		if 'return' == key then
			applyUserInput(self:getText())
		end
	end
	
	function aspectComboBox:onFocus(focused)
		if not focused then
			applyUserInput(self:getText())
		end
	end
end

local function bindSlider(self, slider, static, optionName, getFunc, setFunc, getDbValuesFunc)
	local dbValues = getDbValuesFunc(optionName)
	local range = dbValues[1]
	local minValue = range.min
	local maxValue = range.max
	
	WidgetUtils.fillSlider(slider, dbValues)
	
	local getPercents = function(value)	
		return math.floor((value / maxValue) * 100)
	end
	
	function slider:onChange()
		local value = self:getValue()

		setFunc(optionName, value)
		
		static:setText(getPercents(value) .. '%')
	end	
	
	self.updateFunctions_[optionName] = function()
		local value = getFunc(optionName)
		
		slider:setValue(value)
		static:setText(getPercents(value) .. '%')
	end
end

local function makeResolutionString(width, height)
	return width .. 'x' .. height
end

local function fillResolutionComboBox(resolutionComboBox, widthOptionName, heightOptionName, getValuesFunc)
	local screenWidths = getValuesFunc(widthOptionName)
	local screenHeights = getValuesFunc(heightOptionName)
	
	for i, screenWidth in ipairs(screenWidths) do
		local screenHeight = screenHeights[i]
		local item = ListBoxItem.new(makeResolutionString(screenWidth, screenHeight))
		
		item.width = screenWidth
		item.height = screenHeight
		
		resolutionComboBox:insertItem(item)
	end
end

local function bindResolutionComboBox(self, resolutionComboBox, getFunc, setFunc, getValuesFunc)
	local widthOptionName = 'width'
	local heightOptionName = 'height'
	local aspectOptionName = 'aspect'
	local width = getFunc(widthOptionName)
	local height = getFunc(heightOptionName)

	fillResolutionComboBox(resolutionComboBox, widthOptionName, heightOptionName, getValuesFunc)
	resolutionComboBox:setText(makeResolutionString(width, height))

	function resolutionComboBox:onChangeListBox()
		local item = self:getSelectedItem()
		
		if not(getFunc(widthOptionName) == item.width 
			and getFunc(heightOptionName) == item.height) then			
			setFunc(widthOptionName, item.width)
			setFunc(heightOptionName, item.height)
			setFunc(aspectOptionName, item.width / item.height)
		end
	end
	
	local applyUserInput = function(text)
		-- ожидаем два целых числа, разделенных латинскими 'x' или 'X'
		local width, height = string.match(text, '(%d+)[xX](%d+)')
		local valuesAreValid = false
		
		if width and height then
			width = tonumber(width)
			height = tonumber(height)
			
			if width >= 1024 and height >= 768 then
				valuesAreValid = true
			end
		end	
		
		if valuesAreValid then
			if not(getFunc(widthOptionName) == width 
				and getFunc(heightOptionName) == height) then	
				setFunc(widthOptionName, width)
				setFunc(heightOptionName, height)
				setFunc(aspectOptionName, width / height)
			end
		else
			local width = getFunc(widthOptionName)
			local height = getFunc(heightOptionName)
			
			resolutionComboBox:setText(makeResolutionString(width, height))
		end
	end
	
	function resolutionComboBox:onKeyDown(key, unicode)
		if 'return' == key then
			applyUserInput(self:getText())
		end
	end
	
	function resolutionComboBox:onFocus(focused)
		if not focused then
			applyUserInput(self:getText())
		end
	end
	
	local updateFunction = function()
		local width = getFunc(widthOptionName)
		local height = getFunc(heightOptionName)
		local counter = resolutionComboBox:getItemCount() - 1
		local item = nil
		
		for i = 0, counter do
			local currItem = resolutionComboBox:getItem(i)
			
			if currItem.width == width and currItem.height == height then
				item = currItem
				break
			end
		end
		
		if item then
			resolutionComboBox:selectItem(item)
		else
			resolutionComboBox:setText(makeResolutionString(width, height))
		end
	end
	
	self.updateFunctions_[widthOptionName] = updateFunction
	self.updateFunctions_[heightOptionName] = updateFunction
end

local function bindPresetButtons(self)
	local container = self:getContainer()
	local controller = self.controller_
	
	function container.lowBtn:onChange()
		controller.setGraphicsLow()
		controller.setViewsCockpitLow()
	end
	
	function container.mediumBtn:onChange()
		controller.setGraphicsMedium()
		controller.setViewsCockpitMedium()
	end	
	
	function container.highBtn:onChange()
		controller.setGraphicsHigh()
		controller.setViewsCockpitHigh()
	end
    
    function container.VRBtn:onChange()
		controller.setGraphicsVR()
		controller.setViewsCockpitVR()
	end
	
	function container.SaveCustom1Btn:onChange()
		controller.saveGraphicsCustom1()
		container.Custom1Btn:setSkin(Skin.buttonSkinGrayNew_Rel())
	end
	
	function container.SaveCustom2Btn:onChange()
		controller.saveGraphicsCustom2()	
		container.Custom2Btn:setSkin(Skin.buttonSkinGrayNew_Rel())
	end
	
	function container.SaveCustom3Btn:onChange()
		controller.saveGraphicsCustom3()
		container.Custom3Btn:setSkin(Skin.buttonSkinGrayNew_Rel())
	end
	
	function container.Custom1Btn:onChange()
		controller.setGraphicsCustom1()
	end
	
	function container.Custom2Btn:onChange()
		controller.setGraphicsCustom2()
	end
	
	function container.Custom3Btn:onChange()
		controller.setGraphicsCustom3()
	end
end

local function updateLists(self)
	local container		= self:getContainer()
	local GraphicsDb	= self.controller_.getGraphicsDb()
	local dbValues		= GraphicsDb['multiMonitorSetup']
	local values		= optionsUtils.getMultiMonitorSetupValues()
	
	dbValues.values		= values
	container.multiMonitorSetupComboList:clear()
	WidgetUtils.fillComboList(container.multiMonitorSetupComboList, values)
end

local function bindControls(self)
	local container = self:getContainer()
	
	self:bindOptionsContainer(container, 'Graphics')
	self:bindOptionsContainer(container, 'ViewsCockpit')
	
	local controller 			= self.controller_
	local getGraphics			= controller.getGraphics
	local setGraphics			= controller.setGraphics
	local getGraphicsValues		= controller.getGraphicsValues
	
	bindAspectComboBox(self, container.aspectCombo, getGraphics, setGraphics, getGraphicsValues)
	bindResolutionComboBox(self, container.resolutionCombo, getGraphics, setGraphics, getGraphicsValues)
	bindSlider(self, container.forestDistanceFactorSlider, container.forestDistanceFactorWidget, 'forestDistanceFactor', getGraphics, setGraphics, getGraphicsValues)
	
	bindPresetButtons(self)
	
	if MeSettings.getEnabledViewportEditor() == true then
		container.buttonViewportEditor:setVisible(true)
	else
		container.buttonViewportEditor:setVisible(false)
	end	

	if controller.isGraphicsCustom1() then
		container.Custom1Btn:setSkin(Skin.buttonSkinGrayNew_Rel())
	else
		container.Custom1Btn:setSkin(Skin.buttonSkinGrayNew_Dis())
	end
	
	if controller.isGraphicsCustom2() then
		container.Custom2Btn:setSkin(Skin.buttonSkinGrayNew_Rel())
	else
		container.Custom2Btn:setSkin(Skin.buttonSkinGrayNew_Dis())
	end
	
	if controller.isGraphicsCustom3() then
		container.Custom3Btn:setSkin(Skin.buttonSkinGrayNew_Rel())
	else
		container.Custom3Btn:setSkin(Skin.buttonSkinGrayNew_Dis())
	end
	
	local tab = self
	
	function container.buttonViewportEditor:onChange()
		local comboList = container.multiMonitorSetupComboList
		-- после вызова редактора текущее значение может исчезнуть
		local currValue = controller.getGraphics('multiMonitorSetup')
		
		ViewportEditor.show()
		updateLists(tab)
		
		local values	= optionsUtils.getMultiMonitorSetupValues()
		local found		= false
		
		for i, dbValue in ipairs(values) do		
			if dbValue.value == currValue then
				found = true
				
				break
			end
		end
		
		if found then
			controller.setGraphics('multiMonitorSetup', currValue)
		else
			controller.setGraphics('multiMonitorSetup', values[1].value)
		end
	end
	
	container.box_mouse_cursorCheckbox.callbackUpdate = function(self)
		if  not HMD.isActive() then
			visualizer.boxMouseCursor(self:getState())
		end
	end
end

local function setStyle(self, a_style)
	if a_style == 'sim' then
		getOptionsDbFunc = self.controller_.getGraphicsDb
		
		self:updateEditable(true, getOptionsDbFunc())
	else
		self:updateEditable(nil)
	end
end


return Factory.createClass({
	construct = construct,
	bindControls = bindControls,
	loadFromResource = loadFromResource,
	setStyle = setStyle,
	updateLists	= updateLists,
}, TabViewBase)
