local base = _G

local require = base.require
local pairs = base.pairs
local ipairs = base.ipairs
local print = base.print
local table = base.table
local string = base.string
local tonumber = base.tonumber
local tostring = base.tostring
local assert = base.assert
local math = base.math

local DialogLoader			= require('DialogLoader')
local CoalitionController	= require('Mission.CoalitionController')
local CoalitionUtils		= require('Mission.CoalitionUtils')
local i18n					= require('i18n')

local _ = i18n.ptranslate

local initialBounds_
local window_
local comboListCoalition_
local comboBoxCallsign_
local editBoxDescription_
local comboListScale_
local comboListSteer_
local comboListVnav_
local comboListVangle_
local spinBoxAngle_
local controller_
local navigationPointId_

local function setController(controller)
	controller_ = controller
end

local function create(...)
	initialBounds_ = {...}
end

local function fillComboListCoalition()
	local coalitionNames = {
		CoalitionController.blueCoalitionName(),
		CoalitionController.redCoalitionName(),
	}
	if base.test_addNeutralCoalition == true then  
		base.table.insert(coalitionNames, CoalitionController.neutralCoalitionName())
	end
	
	CoalitionUtils.fillComboListCoalition(comboListCoalition_, coalitionNames, function(coalitionName)
		controller_.setNavigationPointCoalition(navigationPointId_, coalitionName)
	end)
end

local function getSelectedCoalition()
	return CoalitionUtils.getComboListCoalition(comboListCoalition_, true)
end

local function fillComboBoxCallsign()
	local callsignNames = {}
	
	for name, worldId in pairs(controller_.getCallsigns()) do
		table.insert(callsignNames, name)
	end

	table.sort(callsignNames)
	
	for i, callsignName in ipairs(callsignNames) do
		comboBoxCallsign_:insertItem(ListBoxItem.new(callsignName))
	end
end

local function getSelectedCallsign()
	local item = comboBoxCallsign_:getSelectedItem() or comboBoxCallsign_:getItem(0)
	
	if item then
		return item:getText()
	end
	
	return ''
end

local function fillComboListScale()
	local infos = {
		{name = _('ENROUTE'),	scale = 0},
		{name = _('TERMINAL'),	scale = 1},		   
		{name = _('APPROACH'),	scale = 2},
		{name = _('HIGH ACC'),	scale = 3},
		{name = _('none'),		scale = 4}
	}
	
	for i, info in ipairs(infos) do
		local item = ListBoxItem.new(info.name)
		
		item.scale = info.scale
		
		comboListScale_:insertItem(item)
	end
	
	function comboListScale_:onChange(item)
		controller_.setNavigationPointScale(navigationPointId_, item.scale)
	end
end

local function fillComboListSteer()
	local infos = {
		{name = _('TO FROM'),  steer = 0},
		{name = _('DIRECT'),   steer = 1},
		{name = _('TO TO'),	   steer = 2},
		{name = _('none'),	   steer = 3}
	}
	
	for i, info in ipairs(infos) do
		local item = ListBoxItem.new(info.name)
		
		item.steer = info.steer
		
		comboListSteer_:insertItem(item)
	end
	
	function comboListSteer_:onChange(item)
		controller_.setNavigationPointSteer(navigationPointId_, item.steer)
	end
end

local function fillComboListVnav()
	local infos = {
		{name = _('2D'),	vnav = 0},
		{name = _('3D'),	vnav = 1},
		{name = _('none'),	vnav = 3}
	}
	
	for i, info in ipairs(infos) do
		local item = ListBoxItem.new(info.name)
		
		item.vnav = info.vnav
		
		comboListVnav_:insertItem(item)
	end
	
	function comboListVnav_:onChange(item)
		controller_.setNavigationPointVnav(navigationPointId_, item.vnav)
	end
end

local function fillComboListVangle()
	local infos = {
		{name = _('COMPUTED'),	vangle = 0},
		{name = _('ENTERED'),	vangle = 1},
	}
	
	for i, info in ipairs(infos) do
		local item = ListBoxItem.new(info.name)
		
		item.vangle = info.vangle
		
		comboListVangle_:insertItem(item)
	end
	
	function comboListVangle_:onChange(item)
		controller_.setNavigationPointVangle(navigationPointId_, item.vangle)
	end
end

local function bindControls()	
	function comboBoxCallsign_:onChange()
		if controller_ then
			controller_.setNavigationPointName(navigationPointId_, self:getText())
		end
	end
	
	function comboBoxCallsign_:onFocus(focused)
		if not focused then
			self:setText(controller_.getNavigationPointName(navigationPointId_))
		end
	end
	
	function editBoxDescription_:onFocus(focused)
		if not focused then
			if controller_ then
				controller_.setNavigationPointDescription(navigationPointId_, self:getText())
			end
		end
	end
	
	function editBoxDescription_:onKeyDown(key, unicode)
		if 'return' == key then
			local lineBegin, indexBegin, lineEnd, indexEnd = self:getSelectionNew()
			
			if controller_ then
				controller_.setNavigationPointDescription(navigationPointId_, self:getText())
				self:setSelectionNew(lineBegin, indexBegin, lineEnd, indexEnd)
			end
		end
	end
	
	fillComboListCoalition()
	fillComboBoxCallsign()
	fillComboListScale()
	fillComboListSteer()
	fillComboListVnav()
	fillComboListVangle()
	
	function spinBoxAngle_:onChange()
		if controller_ then
			controller_.setNavigationPointAngle(navigationPointId_, self:getValue())
		end
	end
end

local hide
local function create_()
	local localization = {
		title		= _('INITIAL POINT'),
		coalition	= _('Coalition'),
		callsign	= _('Callsign'),
		comment		= _('Comment'),

		scale		= _('SCALE'),
		steer		= _('STEER'),
		vnav		= _('VNAV'),
		vangle		= _('VANGLE'),
		angle		= _('ANGLE'),
	}
	
	window_ = DialogLoader.spawnDialogFromFile('./MissionEditor/modules/dialogs/me_nav_point_panel.dlg', localization)
	
	if initialBounds_ then
		window_:setBounds(unpack(initialBounds_))
		w_=initialBounds_[3]
	end
	
	function window_:onClose()
		hide()
		MapWindow.expand()
	end	
	
	comboListCoalition_		= window_.comboListCoalition
	comboBoxCallsign_		= window_.comboBoxCallsign
	editBoxDescription_		= window_.editBoxDescription
	comboListScale_			= window_.comboListScale
	comboListSteer_			= window_.comboListSteer
	comboListVnav_			= window_.comboListVnav
	comboListVangle_		= window_.comboListVangle
	spinBoxAngle_			= window_.spinBoxAngle

	bindControls()
end

local function updateComboListCoalition(navigationPointId)
	local coalition = controller_.getNavigationPointCoalition(navigationPointId)
	
	CoalitionUtils.setComboListCoalition(comboListCoalition_, coalition)
end

local function updateComboBoxCallsign(navigationPointId)
	local name = controller_.getNavigationPointName(navigationPointId)
	
	-- иначе после каждого нажатия кнопки каретка перепрыгивает в начало строки
	if comboBoxCallsign_:getText() ~= name then
		comboBoxCallsign_:setText(name)
	end	
end

local function updateEditBoxDescription(navigationPointId)
	local description = controller_.getNavigationPointDescription(navigationPointId)
	
	editBoxDescription_:setText(description)
end

local function updateComboListScale(navigationPointId)
	local scale = controller_.getNavigationPointScale(navigationPointId)
	
	for i = 0, comboListScale_:getItemCount() - 1 do
		local item = comboListScale_:getItem(i)
		
		if item.scale == scale then
			comboListScale_:selectItem(item)
			
			break
		end
	end
end

local function updateComboListSteer(navigationPointId)
	local steer = controller_.getNavigationPointSteer(navigationPointId)
	
	for i = 0, comboListSteer_:getItemCount() - 1 do
		local item = comboListSteer_:getItem(i)
		
		if item.steer == steer then
			comboListSteer_:selectItem(item)
			
			break
		end
	end
end

local function updateComboListVnav(navigationPointId)
	local vnav = controller_.getNavigationPointVnav(navigationPointId)
	
	for i = 0, comboListVnav_:getItemCount() - 1 do
		local item = comboListVnav_:getItem(i)
		
		if item.vnav == vnav then
			comboListVnav_:selectItem(item)
			
			break
		end
	end
end

local function updateComboListVangle(navigationPointId)
	local vangle = controller_.getNavigationPointVangle(navigationPointId)
	
	for i = 0, comboListVangle_:getItemCount() - 1 do
		local item = comboListVangle_:getItem(i)
		
		if item.vangle == vangle then
			comboListVangle_:selectItem(item)
			
			break
		end
	end
end

local function updateSpinBoxAngle(navigationPointId)
	spinBoxAngle_:setValue(controller_.getNavigationPointAngle(navigationPointId))
	
	spinBoxAngle_:setEnabled(controller_.getNavigationPointVangle(navigationPointId) == 1)
end

local function updateWidgets(navigationPointId)
	updateComboListCoalition(navigationPointId)
	updateComboBoxCallsign(navigationPointId)
	updateEditBoxDescription(navigationPointId)
	updateComboListScale(navigationPointId)
	updateComboListSteer(navigationPointId)
	updateComboListVnav(navigationPointId)
	updateComboListVangle(navigationPointId)
	updateSpinBoxAngle(navigationPointId)
end

local function enableWidgets(enabled)
	comboListCoalition_	:setEnabled(enabled)
	comboBoxCallsign_	:setEnabled(enabled)
	editBoxDescription_	:setEnabled(enabled)
	comboListScale_		:setEnabled(enabled)
	comboListSteer_		:setEnabled(enabled)
	comboListVnav_		:setEnabled(enabled)
	comboListVangle_	:setEnabled(enabled)
	spinBoxAngle_		:setEnabled(enabled)
end

local function needUpdate()
	return window_ and window_:getVisible() and controller_
end

local function update(navigationPointId)
	if needUpdate() then
		if navigationPointId then
			enableWidgets(true)
			updateWidgets(navigationPointId)
		else
			enableWidgets(false)
		end
	end	
end

local function navigationPointNameChanged(navigationPointId)
	if needUpdate() and navigationPointId_ == navigationPointId then
		updateComboBoxCallsign(navigationPointId)
	end
end

local function navigationPointDescriptionChanged(navigationPointId)
	if needUpdate() and navigationPointId_ == navigationPointId then
		updateEditBoxDescription(navigationPointId)
	end
end

local function navigationPointScaleChanged(navigationPointId)
	if needUpdate() and navigationPointId_ == navigationPointId then
		updateComboListScale(navigationPointId)
	end	
end

local function navigationPointSteerChanged(navigationPointId)
	if needUpdate() and navigationPointId_ == navigationPointId then
		updateComboListSteer(navigationPointId)
	end	
end

local function navigationPointVnavChanged(navigationPointId)
	if needUpdate() and navigationPointId_ == navigationPointId then
		updateComboListVnav(navigationPointId)
	end	
end

local function navigationPointVangleChanged(navigationPointId)
	if needUpdate() and navigationPointId_ == navigationPointId then
		updateComboListVangle(navigationPointId)
		updateSpinBoxAngle(navigationPointId)
	end	
end

local function navigationPointAngleChanged(navigationPointId)
	if needUpdate() and navigationPointId_ == navigationPointId then
		updateSpinBoxAngle(navigationPointId)
	end	
end

local function navigationPointCoalitionChanged(navigationPointId)
	if needUpdate() and navigationPointId_ == navigationPointId then
		updateComboListCoalition(navigationPointId)
	end	
end

local function show()
	if not window_ then
		create_()
	end
	
	if not window_:getVisible() then
		MapWindow.collapse(w_, 0)
		window_:setVisible(true)
		
		update(navigationPointId_)
		
		if controller_ then
			controller_.onNavigationPointPanelShow()
		end		
	end
end

-- объявлена выше
hide = function()
	if window_ then		
		if window_:getVisible() then
			MapWindow.expand()
			window_:setVisible(false)
			
			if controller_ then
				controller_.onNavigationPointPanelHide()
			end			
		end	
	end
end

local function setNavigationPointId(navigationPointId)
	navigationPointId_ = navigationPointId
	update(navigationPointId_)
end

local function getNavigationPointId()
	return navigationPointId_
end

return {
	setController						= setController,
	create								= create,
	show								= show,
	hide								= hide,
	setNavigationPointId				= setNavigationPointId,
	getNavigationPointId				= getNavigationPointId,
	getSelectedCoalition				= getSelectedCoalition,
	getSelectedCallsign					= getSelectedCallsign,
	navigationPointNameChanged			= navigationPointNameChanged,
	navigationPointDescriptionChanged	= navigationPointDescriptionChanged,
	navigationPointScaleChanged			= navigationPointScaleChanged,
	navigationPointSteerChanged			= navigationPointSteerChanged,
	navigationPointVnavChanged			= navigationPointVnavChanged,
	navigationPointVangleChanged		= navigationPointVangleChanged,
	navigationPointAngleChanged			= navigationPointAngleChanged,
	navigationPointCoalitionChanged		= navigationPointCoalitionChanged,
}