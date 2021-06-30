local base = _G

module('me_menubar') -- top header&toolbar

local require = base.require
local ipairs = base.ipairs

local MapWindow					= require('me_map_window')
local DialogLoader				= require('DialogLoader')
local Menu						= require('Menu')
local MenuItem					= require('MenuItem')
local MenuBarItem				= require('MenuBarItem')
local Gui						= require('dxgui')
local AutoBriefingModule		= require('me_autobriefing')
local payload					= require('me_payload')
local MissionModule				= require('me_mission')
local Logbook					= require('me_logbook')
local i18n						= require('i18n')
local MsgWindow					= require('MsgWindow')
local NodesManager				= require('me_nodes_manager')
local TemplatesManager			= require('me_templates_manager')
local toolbar					= require('me_toolbar')
local panel_generator			= require('me_generator_dialog')
local panel_about				= require('me_about')
local panel_record_avi 			= require('record_avi')
local panel_campaign_editor 	= require('me_campaign_editor')
local panel_campaign			= require('me_campaign')
local MissionOptionsView		= require('Options.MissionOptionsView')
local OptionsDialog				= require('me_options')
local MapController				= require('Mission.MapController')
local MapLayerController		= require('Mission.MapLayerController')
local NavigationPointController	= require('Mission.NavigationPointController')
local AirdromeController 		= require('Mission.AirdromeController')
local waitScreen	        	= require('me_wait_screen')
local pPayload_vehicles		    = require('me_payload_vehicles')
local panel_server_list         = require('mul_server_list')  
local staticTemplate			= require('me_staticTemplate') 
local staticTemplateSave 		= require('me_staticTemplateSave') 
local staticTemplateLoad 		= require('me_staticTemplateLoad') 
local setCoordPanel 			= require('me_setCoordPanel')
local Terrain					= require('terrain')
local panelSelectUnit			= require('me_selectUnit')
local MeSettings				= require('MeSettings')
local FileDialog 				= require('FileDialog')
local FileDialogFilters 		= require('FileDialogFilters')
local TriggerZoneController 	= require('Mission.TriggerZoneController')
local module_mission 			= require('me_mission')
local panel_vehicle				= require('me_vehicle')
local panel_dataCartridge 	  	= require('me_dataCartridge')
local panel_aircraft 			= require('me_aircraft')
local panel_auth				= require('me_authorization')
local panelContextMenu			= require('me_contextMenu')
local statusbar 				= require('me_statusbar')
local music						= require('me_music')
local sound						= require('sound')
local UpdateManager				= require('UpdateManager')
local optionsEditor 			= require('optionsEditor')
local OptionsData    			= require('Options.Data')
local coords_info				= require('me_coords_info')
local ProductType 				= require('me_ProductType') 
local net               		= require('net')
local panel_ChangingCoalitions 	= require('me_changingCoalitions') 
local CoalitionPanel			= require('Mission.CoalitionPanel')
local progressBar 				= require('ProgressBarDialog')
local lfs						= require('lfs')

i18n.setup(_M)

cdata = {
	missionEditor 		= _('MISSION EDITOR'),
	missionEditorLOFAC 	= _('MISSION EDITOR LOFAC'),
	yes					= _('YES'),
	no					= _('NO'),
	cancel				= _('CANCEL'),
	question			= _('QUESTION'),
	
	-- menu items
	file				= _('FILE'),
	new					= _('NEW'),
	open				= _('OPEN'),
	save				= _('SAVE'),
	saveAs				= _('SAVE AS'),
	exit				= _('EXIT'),
	
	-- menu View
	View				= _('VIEW'),	
	Metric				= _('METRIC-MEmenu'		, 'METRIC'	),
	Imperial			= _('IMPERIAL-MEmenu'	, 'IMPERIAL'),
	iconsNato			= _('Icons NATO'					),
	iconsRussia			= _('Icons Russia'					),	
	
	
	edit				= _('EDIT-MEmenu', 'EDIT'),
	addAirplane			= _('ADD AIRPLANE'),
	addHelicopter		= _('ADD HELICOPTER'),
	addShip				= _('ADD SHIP'),
	addVehicle			= _('ADD VEHICLE'),
	addStatic			= _('ADD STATIC'),
	addTemplate			= _('ADD TEMPLATE'),
	remove				= _('REMOVE'),
	
	flight				= _('FLIGHT'),
	recordAvi			= _('RECORD AVI'),
	replay				= _('REPLAY-EDITOR', 'REPLAY'),
	
	campaign			= _('CAMPAIGN'),
	campaignEditor		= _('CAMPAIGN BUILDER'),
	
	customize			= _('CUSTOMIZE'),
	
	mapOptions			= _('MAP OPTIONS'),
	options				= _('OPTIONS'),
	langPanel			= _('LOCAL PANEL'),
	setPosition			= _('SET POSITION'),
	logbook				= _('LOGBOOK'),
	
	generate			= _('GENERATE...'),
	nodes				= _('NODES'),
	templates			= _('TEMPLATES'),	
	saveGen				= _('SAVE'),

	help = _('MISC'),
	encyclopedia = _('ENCYCLOPEDIA'),
    trainingNetwork = _('TRAINING NETWORK'),
	
	dynMission = _('DYNAMIC MISSION'),
	load = _('LOAD'),
	generateDyn = _('GENERATE'),
	upload = _('UPLOAD'),
	rts_on = _('RTS ON'),
	rts_off = _('RTS OFF'),
	rts_saveDCM = _('SAVE DCM'),
	rts_openDCM = _('OPEN DCM'),
	
	openDynMission = _('Open dynamic mission:'),
	saveDynMission = _('Save dynamic mission:'),
	
	openDCM = _('Open DCM:'),
	saveDCM = _('Save DCM:'),
	
	loadStaticTemplate = _('LOAD STATIC TEMPLATE'),
	saveStaticTemplate = _('SAVE STATIC TEMPLATE'),
		
	
	historical = _("Historical list of units"),
}

	
if ProductType.getType() == "LOFAC" then
	cdata.about             = _('ABOUT MISSION EDITOR-LOFAC')
    cdata.generator         = _('MISSION GENERATOR MENU-LOFAC')
    cdata.missionOptions    = _('MISSION OPTIONS-LOFAC')
    cdata.flyMission        = _('FLY MISSION-LOFAC')
	cdata.prepareMission    = _('PREPARE MISSION-LOFAC')
    cdata.saveCahnges	= _(
        'Mission contains unsaved changes! All changes will be lost!\
        Press "Yes" to save your changes\
        Press "No" to discard and continue unsaved\
        Press "Cancel" to cancel flight-LOFAC')
	cdata.saveCahnges2	= _(
        'Mission contains unsaved changes! Your changes may be lost!\
        Press "Yes" to save your changes\
        Press "No" to quit without saving\
        Press "Cancel" to cancel-LOFAC')
	cdata.new_mission = _('Creating new mission-LOFAC')
	cdata.new_mission_msg = _('Are you sure you want to create new mission? \nAll unsaved changes will be lost!-LOFAC')
	cdata.open_mission_msg = _('Are you sure you want to open new mission? \nAll unsaved changes will be lost!-LOFAC')
    cdata.missionPlanner = _('MISSION PLANNER-LOFAC') 
    cdata.flight = _('STARTING THE EPISODES-LOFAC')
else
	cdata.about             = _('ABOUT MISSION EDITOR')
    cdata.generator         = _('MISSION GENERATOR MENU')
    cdata.missionOptions    = _('MISSION OPTIONS')
    cdata.flyMission        = _('FLY MISSION')
	cdata.prepareMission    = _('PREPARE MISSION')
    cdata.saveCahnges	= _(
        'Mission contains unsaved changes! All changes will be lost!\
        Press "Yes" to save your changes\
        Press "No" to discard and continue unsaved\
        Press "Cancel" to cancel flight')
	cdata.saveCahnges2	= _(
        'Mission contains unsaved changes! Your changes may be lost!\
        Press "Yes" to save your changes\
        Press "No" to quit without saving\
        Press "Cancel" to cancel')
	cdata.new_mission = _('Creating new mission')
	cdata.new_mission_msg = _('Are you sure you want to create new mission? \nAll unsaved changes will be lost!')
	cdata.open_mission_msg = _('Are you sure you want to open new mission? \nAll unsaved changes will be lost!')	 
    cdata.missionPlanner = _('MISSION PLANNER')
end

local x_, y_, w_, h_
local enabledSave = true

function create(x, y, w, h)
	x_ = x
	y_ = y
	w_ = w
	h_ = h
end

function hotCallback(a_fun)
	panelSelectUnit.show(false)
	if panel_ChangingCoalitions.isVisible() ~= true 
			and CoalitionPanel.isVisible() ~= true then
		a_fun()
	end
end

local function addWindowHotKeys()
	window:addHotKeyCallback('Ctrl+O', function() hotCallback(onOpen) end)
	window:addHotKeyCallback('Ctrl+N', function() hotCallback(onNew) end)
	window:addHotKeyCallback('Ctrl+S', function() hotCallback(onSave) end)
	window:addHotKeyCallback('Ctrl+P', function() hotCallback(function() onFly('--mission') end) end)
	window:addHotKeyCallback('Ctrl+W', function() hotCallback(onSetPosition) end)
	window:addHotKeyCallback('Ctrl+Y', function() hotCallback(onCoordsInfo) end)
	
	
	if ProductType.getType() ~= "LOFAC" and ProductType.getType() ~= "MCS" then
		window:addHotKeyCallback('Ctrl+M', function() hotCallback(function() onFly('--prepare') end) end)
	end
	
	window:addHotKeyCallback('Ctrl+R', function() hotCallback(onRecordAVI) end)	
	window:addHotKeyCallback('delete', function() hotCallback(onRemove) end)
end

local function setMenuCallback(menu)	
	function menu:onChange(item)
		if item.func then
			item.func()
		end
	end
end

local function setFileMenu()
	local menu = menuBar.file.menu
	
	setMenuCallback(menu)
	
	menu.new.func       = onNew
	menu.open.func      = onOpen
	menu.saveAs.func    = onSaveAs
    menu.save.func      = onSave
	menu.exit.func      = onExit
end

local function setViewMenu()
	local menu = menuBar.view.menu
	
	setMenuCallback(menu)
	
	menu.mrMetric	.func = onUnitSys
	menu.mrImperial	.func = onUnitSys
	
	menu.mrNato		.func = onIconsTheme
	menu.mrRussia	.func = onIconsTheme
end

local function setEditMenu()
	local menu = menuBar.edit.menu
	
	setMenuCallback(menu)
	
	menu.addAirplane.func = onAddAirplane
	menu.addHelicopter.func = onAddHelicopter
	menu.addShip.func = onAddShip
	menu.addVehicle.func = onAddVehicle
	menu.addStatic.func = onAddStatic
	menu.addTemplate.func = onAddTemplate
	menu.remove.func = onRemove	
	menu.saveStaticTemplate.func = onSaveStaticTemplate
	menu.loadStaticTemplate.func = onLoadStaticTemplate
end


local function setFlightMenu()
	local menu = menuBar.flight.menu
	
	setMenuCallback(menu)
	
	menu.flyMission.func = function() onFly('--mission') end
	
	if ProductType.getType() == "MCS" or ProductType.getType() == "LOFAC" then
		menu:removeItem(menu.prepareMission)
		menu.prepareMission = nil
		if not (net.NO_SERVER and net.NO_CLIENT) then
			menu.trainingNetwork.func = onNetworkTraining
		else
			menu:removeItem(menu.trainingNetwork)
	    end
	else
		menu.prepareMission.func = function() onFly('--prepare') end
        menu:removeItem(menu.trainingNetwork)
	end
	
	menu.recordAvi.func = onRecordAVI
	menu.replay.func = onShowReplays
        
end

local function setCampaignMenu()	
	if ProductType.getType() == "LOFAC"  then
		menuBar:removeItem(menuBar.campaign)
		menuBar.campaign = nil
	elseif	ProductType.getType() == "MCS" then
		local menu = menuBar.campaign.menu
		
		setMenuCallback(menu)
		menu.campaign.func = onCampaign
		
		menu:removeItem(menu.campaignEditor)
		menu.campaignEditor = nil
	else
		local menu = menuBar.campaign.menu
		
		setMenuCallback(menu)
		
		menu.campaign.func = onCampaign
		menu.campaignEditor.func = onCampaignEditor
	end
end

local function setCustomizeMenu()
	local menu = menuBar.customize.menu
	
	setMenuCallback(menu)
	
	menu.missionOptions.func = onOptions
	menu.mapOptions.func = onMapOptions
    menu.langPanel.func = onLangPanel
	menu.setPosition.func = onSetPosition
	menu.logbook.func = onLogbook
	
	if ProductType.getType() == "LOFAC" or ProductType.getType() == "MCS" then
		menu.options.func = onLOFACOptions
	else
		menu:removeItem(menu.options)
		menu.options = nil
	end
end

local function setGeneratorMenu()
	local menu = menuBar.generator.menu
	local MGModule = require('me_generator')
	
	setMenuCallback(menu)
	
	menu.generate.func = onGeneratorDialog
	menu.nodes.func = onNodes
	menu.templates.func = onGeneratorTemplates
	menu.save.func = MGModule.saveAll
end

local function setHelpMenu()
	local menu = menuBar.help.menu
	
	setMenuCallback(menu)
	
	menu.encyclopedia.func = onEncyclopedia
	
	if ProductType.getType() == "LOFAC" or ProductType.getType() == "MCS" then
		menu:removeItem(menu.about)
		menu.about = nil
	else	
		menu.about.func = onAbout
	end
	
end

local function setDynMissionMenu()
	local menu = menuBar.dymMission.menu
	setMenuCallback(menu)
	
	menu.load.func = onLoadDynMission
	menu.save.func = onSaveDynMission
	menu.upload.func = onUploadDynMission
	menu.generate.func = onGenerateDynMission
	menu.rts_on.func = onRtsOn
	menu.rts_off.func = onRtsOff
	menu.rts_saveDCM.func = onRtsSaveDCM
	menu.rts_openDCM.func = onRtsOpenDCM
end

local function create_()
	window = DialogLoader.spawnDialogFromFile('MissionEditor/modules/dialogs/me_menubar.dlg', cdata)
	window:setBounds(x_, y_, w_, h_)

	staticCaption = window.staticCaption
	
	window.pLeft.buttonClose.onChange = onChangeExit	
	
	menuBar = window.menuBar
	
	bLoginLogout = window.pLeft.bLoginLogout
	sLogin = window.pLeft.sLogin
	
	sLogin:setText("")
	
	bLoginLogout.onChange = function(self)
		if self:getState() == false then			
		
		else
			sLogin:setText("")
		end
		panel_auth.logout()
		base.restartME()
	end
	
	setFileMenu()
	setViewMenu()
	setEditMenu()
	setFlightMenu()
	setCampaignMenu()
	setCustomizeMenu()
	setGeneratorMenu()
	setHelpMenu()
	setDynMissionMenu()

	addWindowHotKeys()
	
	if base.test_dyn_missions == true then
		menuBar.dymMission:setVisible(true)
	else
		menuBar.dymMission:setVisible(false)
	end
	
--	if ProductType.getType() == "LOFAC" then
--		sLogin:setVisible(true)
--		bLoginLogout:setVisible(true)
--	else
		sLogin:setVisible(false)
		bLoginLogout:setVisible(false)
--	end
	
end

function setAutorization(result)
	if result == true then
		bLoginLogout:setState(false)	

		sLogin:setText(panel_auth.getLogin())
		--local nw = sLogin:calcSize()	
		--sLogin:setSize(nw,20)
		--sLogin:setVisible(true)
	
	else
		bLoginLogout:setState(true)
		--sLogin:setVisible(false)
		sLogin:setText("")
	end
end
	
function setEnabled(b)
	if (base.isPlannerMission() == false) then
		menuBar:setVisible(b)
	end
end

function setPlannerMission(planner_mission)
	if planner_mission == true then
		staticCaption:setText(cdata.missionPlanner)
		menuBar:setVisible(false)		
	else
		if ProductType.getType() == "LOFAC" then
			staticCaption:setText(cdata.missionEditorLOFAC)
		else
			staticCaption:setText(cdata.missionEditor)
		end	
		
		menuBar:setVisible(true)
	end
	
	local layout = window:getLayout()
	
	if layout then
		layout:updateSize()
	end
end

	
function show(b)
	if not window then
		create_()
	end

    updateEnabledButtons()
	
	setPlannerMission(base.isPlannerMission())
	
	local menu = menuBar.view.menu

	base.print("--setViewMenu--",OptionsData.getDifficulty('units'))
	if OptionsData.getDifficulty('units') == 'metric' then
		menu.mrMetric:setState(true)
	else
		menu.mrImperial:setState(true)
	end
	
	if OptionsData.getDifficulty('iconsTheme') == 'nato' then
		menu.mrNato:setState(true)
	else
		menu.mrRussia:setState(true)
	end
	
	window:setVisible(b)
end

function showOnExitSavePrompt(yes, no, cancel)
	local result = cancel
	local handler = MsgWindow.question(cdata.saveCahnges2, cdata.question, yes, no, cancel)
	
	function handler:onChange(button)
		result = button
	end
	
	handler:show()
	
	return result
end

-- menu callbacks
function onExit()
	if (ProductType.getType() == "MCS" or ProductType.getType() == "LOFAC")
		and base.isPlannerMission() ~= true  then
		local exit_dialog = require('me_exit_dialog')
		
		if exit_dialog.show() then
			UpdateManager.add(Gui.doQuit)
		end
	else
		if MapWindow.isEmptyME() ~= true and MissionModule.isSignedMission() ~= true and MissionModule.isMissionModified() then
			local result = showOnExitSavePrompt(cdata.yes, cdata.no, cdata.cancel)
			
			if result == cdata.yes then
				toolbar.saveMission(true)
				Exit()
			elseif result == cdata.no then
				Exit()
			end
		else		
			Exit()
		end
	end	
--	MapWindow.closeNewMapView()
end

function Exit()
    MapWindow.unselectAll()	
	if ProductType.getType() == "LOFAC" and base.isPlannerMission() ~= true then
		MapWindow.unselectAll()	
        toolbar.untoggle_all_except()
        MapController.onExit()
        hideME()
        base.START_PARAMS.command = '--quit'
        Gui.doQuit() 
		return
	end
	
	toolbar.untoggle_all_except()
    hideME()
	
    if MapWindow.isEmptyME() ~= true and MapWindow.isCreated() and (base.isPlannerMission() ~= true) then
        MapWindow.selectedGroup = nil
        MissionModule.create_new_mission()							
    end
	MapController.onExit()
	
	base.mmw.show(true)	
end 

function hideME()
	MapWindow.unselectAll()
    MapWindow.show(false)
	base.statusbar.show(false)
    base.mapInfoPanel.show(false)
	base.setCoordPanel.show(false)
	toolbar.untoggle_tape()
	toolbar.show(false)
	base.panel_bullseye.show(false)
	base.panel_roles.show(false)
	base.panel_units_list.show(false)
	base.panel_aircraft.show(false)
	base.panel_summary.show(false)
	base.panel_triggered_actions.show(false)
	base.panel_targeting.show(false)
    base.panel_paramFM.show(false)
	base.panel_radio.show(false)
	base.panel_route.show(false)
	base.panel_suppliers.show(false)
	base.panel_wpt_properties.show(false)
	base.panel_loadout.show(false)
    base.panel_wagons.show(false)
	base.panel_payload.show(false)
    pPayload_vehicles.show(false)
	base.panel_ship.show(false)
	base.panel_vehicle.show(false)
	base.panel_static.show(false)
	base.panel_goal.showGoals(false)
	MissionOptionsView.hide()
	base.panel_openfile.show(false)
	panel_campaign.show(false)
	base.panel_briefing.show(false)
	base.panel_debriefing.show(false)
	base.panel_failures.show(false)
	panel_dataCartridge.show(false)
	base.panel_weather.show(false)
	OptionsDialog.hide()
	panel_about.show(false)
	panel_record_avi.hide()
	base.panel_template.show(false)
	NavigationPointController.hidePanel()
	AirdromeController.hideWarehousePanel()
    MapController.onToolbarTriggerZone(false)
	MapController.onToolbarTriggerZoneList(false)
    MapController.onToolbarMapOptions(false)
	NodesManager.show(false)
	TemplatesManager.show(false)
	panelContextMenu.show(false)
	coords_info.show(false)
	show(false)
end
 
function onNew()
	toolbar.newMission()
end

function onOpen()
	toolbar.openMission()
end

function onSave()
	if MapWindow.isEmptyME() ~= true then
		toolbar.saveMission()
	end
end

function onUnitSys()
	local menu = menuBar.view.menu
	if menu.mrMetric:getState() == true then
		optionsEditor.setOption("difficulty.units", "metric")
		OptionsData.setDifficulty("units", "metric")
	elseif menu.mrImperial:getState() == true then
		optionsEditor.setOption("difficulty.units", "imperial")
		OptionsData.setDifficulty("units", "imperial")
	end
	toolbar.untoggle_all_except()
	statusbar.updateOptions()
end

function onIconsTheme()
	local menu = menuBar.view.menu
	
	if menu.mrNato:getState() == true then
		optionsEditor.setOption('difficulty.iconsTheme', 'nato')
		OptionsData.setDifficulty('iconsTheme', 'nato')
	elseif menu.mrRussia:getState() == true then
		optionsEditor.setOption('difficulty.iconsTheme', 'russian')
		OptionsData.setDifficulty('iconsTheme', 'russian')
	end
	
	MapWindow.onIconsThemeChange()
end

function onSetPosition()
	setCoordPanel.show(not setCoordPanel:getVisible())
end

function onLogbook()
	toolbar.untoggle_all_except()
    hideME()
	base.panel_logbook.show(true, 'editor')
end

function onCoordsInfo()
	if MapWindow.isEmptyME() ~= true then
		coords_info.show(true)
	end
end

function onSaveAs()
	toolbar.untoggle_all_except()
	toolbar.saveMissionFileDialog()
end

function onManagerResource()
	base.panel_manager_resource.show(true)
end

function onAddAirplane()
	toolbar.addAirplane()
end

function onAddHelicopter()
	toolbar.addHelicopter()
end

function onAdd()
	toolbar.addVehicle()
end

function onNodes()
	NodesManager.show(true)
	panelContextMenu.show(false)
	coords_info.show(false)
end

function onGeneratorTemplates()
	TemplatesManager.show(true)
	panelContextMenu.show(false)
	coords_info.show(false)
end

function onGeneratorDialog()
	toolbar.untoggle_all_except()
    hideME()
	panel_generator.show(true, 'editor')
end

function onAddShip()
	toolbar.addShip()
end

function onAddVehicle()
	toolbar.addVehicle()
end

function onAddStatic()
	toolbar.addStatic()
end

function onAddTemplate()
	toolbar.addTemplate()
end

function onSaveStaticTemplate()
	staticTemplateSave.show(true)
--	staticTemplate.save()
	panelContextMenu.show(false)
	coords_info.show(false)
end

function onLoadStaticTemplate()
	--staticTemplate.load()
	staticTemplateLoad.show(true)
	panelContextMenu.show(false)
	coords_info.show(false)
end

function onRemove()
	if MapWindow.isMouseDown() == true then
		return
	end
	
	MapController.onToolbarDelete()
	
	panelSelectUnit.show(false)

	local groups = MapWindow.getSelectedGroups()
	
	if MapWindow.selectedGroup == nil 
		or groups[MapWindow.selectedGroup.groupId] ~= nil then	
		for k, groupId in base.pairs(groups) do
			local group = base.module_mission.group_by_id[groupId]
			if group then
				MapWindow.setState(MapWindow.getPanState())
				MapWindow.selectedGroup = nil
				base.panel_units_list.saveSelection()
				base.module_mission.remove_group(group)
				
				if base.panel_units_list.window:isVisible() then		
					base.panel_units_list.selectNextGroup()
				else
					toolbar.untoggle_all_except()
				end
			end
		end
	elseif MapWindow.selectedGroup and MapWindow.selectedGroup.groupId then
		MapWindow.setState(MapWindow.getPanState())		
		base.panel_units_list.saveSelection()
		base.module_mission.remove_group(MapWindow.selectedGroup)
		MapWindow.selectedGroup = nil
		
		if base.panel_units_list.window:isVisible() then		
			base.panel_units_list.selectNextGroup()
		else
			toolbar.untoggle_all_except()
		end
	end
end

function onSelect()
	MapWindow.setState(MapWindow.getPanState())
end

function onFly(flight_type)
	if MapWindow.isEmptyME() == true then
		return
	end
	
	toolbar.untoggle_all_except()	
	toolbar.untoggle_tape()
	toolbar.untoggleButtons()
	coords_info.show(false)
	MapController.onFly()
	
	function showSavePrompt()
		local handler = MsgWindow.question(cdata.saveCahnges, cdata.question, cdata.yes, cdata.no, cdata.cancel)
		
		function handler:onChange(button)
            handler:hide()
			if button == cdata.yes then                
				toolbar.saveMission()
                Run(flight_type)
			elseif button == cdata.no then
				local path = MissionModule.getTempMissionPath()					
                
				if MissionModule.save_mission(path, false) then
					--MissionModule.mission.path = path
                    handler:close()
					Run(flight_type)
				end
			end
		end
		
		handler:show()
	end 
		
	if MissionModule.isSignedMission() ~= true and (MissionModule.isMissionModified() or not MissionModule.getMissionPathIsSaved()) then
		showSavePrompt()
    else
        Run(flight_type)
	end
end

function setEnabledSave(a_enable)
    enabledSave = a_enable 
    updateEnabledButtons()    
end

function updateEnabledButtons()
	if menuBar then
		if MapWindow.isEmptyME() == true then
			menuBar.file.menu.new:setEnabled(false)
			menuBar.file.menu.open:setEnabled(false)
			menuBar.view:setEnabled(false)
			menuBar.edit:setEnabled(false)
			menuBar.flight:setEnabled(false)
			menuBar.file.menu.saveAs:setEnabled(false)
			menuBar.file.menu.save:setEnabled(false)
			
			menuBar.customize:setEnabled(false)
			
			menuBar.generator.menu.nodes:setEnabled(false)
			menuBar.generator.menu.templates:setEnabled(false)
			menuBar.generator.menu.save:setEnabled(false)			
		else
			menuBar.file.menu.new:setEnabled(true)
			menuBar.file.menu.open:setEnabled(true)
			menuBar.view:setEnabled(true)
			menuBar.edit:setEnabled(true)
			menuBar.flight:setEnabled(true)
			menuBar.file.menu.saveAs:setEnabled(enabledSave)
			menuBar.file.menu.save:setEnabled(enabledSave)
			
			menuBar.customize:setEnabled(true)
			
			menuBar.generator.menu.nodes:setEnabled(true)
			menuBar.generator.menu.templates:setEnabled(true)
			menuBar.generator.menu.save:setEnabled(true)
		end
	end
	
    
end

function Run(flight_type)
	AutoBriefingModule.returnToME = true
	AutoBriefingModule.fly = flight_type or '--mission'
	
	if '--prepare' == flight_type then 
		local path = MissionModule.mission.path or base.tempDataDir .. base.tempMissionName
		show(false)
		waitScreen.setUpdateFunction(function()
			if (MissionModule.play({ file = path, command = flight_type}, 'prepare', MissionModule.mission.path) == false) then
				show(true)
			end
		end)
	else
		base.panel_autobriefing.setDoSave(true)
		AutoBriefingModule.show(true, 'editor')
	end	
end 


function onNetworkTraining()
    MapWindow.unselectAll()	
    toolbar.untoggle_all_except()
	MapController.onExit()
    hideME()
    panel_server_list.show(true)
end

function onShowReplays()

	local handler = MsgWindow.question(cdata.saveCahnges, cdata.question, cdata.yes, cdata.no, cdata.cancel)
    
    function openReplays()
		toolbar.untoggle_all_except()
		hideME()
		
        MapWindow.selectedGroup = nil
        MissionModule.create_new_mission()							

		MapController.onExit()
            
        waitScreen.setUpdateFunction(function()
			base.panel_openfile.show(true, 'editor', true)        
        end)
    end
		
    function handler:onChange(button)
        if button == cdata.yes then                
            toolbar.saveMissionFileDialog()
        end
        
        if button ~= cdata.cancel then                
            openReplays()
        end
    end
	
    if enabledSave == true then    
        handler:show()
    else
        openReplays()
    end    
end
	
function onRecordAVI()
	toolbar.untoggle_all_except()
	panel_record_avi.show()
	panelContextMenu.show(false)
	coords_info.show(false)
end

function onOptions()
	toolbar.untoggle_all_except()
	MissionOptionsView.show()
end

function onLOFACOptions()
	local listener = {
		onOk = function()
			if 	OptionsDialog.getScreenSettingsChanged() or 
				OptionsDialog.getEnableVRChanged() then	
				
				base.restartME()
                return
			end

			if OptionsDialog.getIconsThemeChanged() then
				MapWindow.onIconsThemeChange()
			end
			
			if 	OptionsDialog.getCoordSettingsChanged() or 
				OptionsDialog.getUnitsSettingsChanged() then
				
				statusbar.updateOptions()
			end
			
			show(true) 
		end,
		
		onCancel = function()
			show(true) 
		end,
		
		onSoundSetting = function(name, value)
			if name == 'music' then
				music.setMusicVolume(value)
			elseif name == 'gui' then
				music.setEffectsVolume(value)
			elseif (name == 'voice_chat' or 
					name == 'voice_chat_output' or 
					name == 'voice_chat_input') then
				sound.updateVoiceChatSettings{ [name] = value }					
			end
			sound.updateSettings{ [name] = value }
		end,
		
		setWallpaper = function()  end,
	}
	
	waitScreen.setUpdateFunction(function()
		toolbar.untoggle_all_except()
		OptionsDialog.show(listener)
	end)
end

function onMapOptions()
	toolbar.untoggle_all_except()
	MapLayerController.showMapLayerPanel()
end

function onLangPanel()
    toolbar.untoggle_all_except()
	MapController.triggerZoneHidePanel()
	base.langPanel.show(true)
end

function onEncyclopedia()
	toolbar.untoggle_all_except()
    hideME()
	base.panel_enc.show(true, true)
end

function onAbout()
	toolbar.untoggle_all_except()
	panel_about.show(true)
end

function onCampaign()
	toolbar.untoggle_all_except()
    hideME()

	waitScreen.setUpdateFunction(function()
		panel_campaign.show(true, 'editor')
    end)
end

function onCampaignEditor()
	toolbar.untoggle_all_except()
    hideME()
	panel_campaign_editor.show(true, 'editor')
end

function onChangeExit()
	if (base.isPlannerMission() == true) then
		Exit()
		base.setPlannerMission(false)
		base.panel_autobriefing.setDoSave(true)
		base.panel_autobriefing.show(true, base.panel_autobriefing.returnScreen)
	else            
		onExit()
	end
end		

function onLoadDynMission()
	local path = MeSettings.getRTSPath()
		
	local filters = {FileDialogFilters.rts()}
	local filename = FileDialog.open(path, filters, cdata.openDynMission)

	base.print("---onLoadDynMission----", filename)
	if filename then		
		local res = base.rts.open(filename)
	end
end

function onSaveDynMission()
	local path = MeSettings.getRTSPath()
	local filters = {FileDialogFilters.rts()}
	local filename = FileDialog.save(path, filters, cdata.saveDynMission)
	
	base.print("---onSaveDynMission----", filename)
	if filename then
		local res = base.rts.save(filename)
		MeSettings.setRTSPath(filename)
	end
	
	return filename
end

function onUploadDynMission ()
	base.print("---onUploadDynMission----")
		local data = base.rts.upload()	
	base.print("--res-33--")	
	
	
	if MapWindow.isCreated() then
		MapWindow.selectedGroup = nil
	end		
	TriggerZoneController.removeAllZones()
	
	if data and data.zones then
		for k,v in base.pairs(data.zones) do
			--v.radius = 10000
			--v.hidden = false
			--v.color[2] = 1
			
			local zoneId = TriggerZoneController.addTriggerZone(v.name, v.x, v.y, v.radius, v.properties, v.color)
			base.print("---zoneId---",zoneId)
		end
	end
end

function onGenerateDynMission()
	base.print("---onGenerateDynMission----")
	local data = {}
--	data.zones = TriggerZoneController.saveTriggerZones()
	data = module_mission.unload()
	base.U.traverseTable(data)
	base.rts.generate(data)
	
	base.print("---Generate--end----")
end

function onRtsOn()
	MapWindow.unselectAll()
    MapWindow.setState(MapWindow.getRtsState())
end

function onRtsOff()
	MapWindow.setState(MapWindow.getPanState())
end

function onRtsOpenDCM()
	toolbar.untoggle_all_except()
	--toolbar.saveMissionFileDialog()
	local path = MeSettings.getRTSPath()
		
	local filters = {FileDialogFilters.dcm()}
	local filename = FileDialog.open(path, filters, cdata.openDCM)

	base.print("---onLoadDynMission----", filename)
	if filename then	
		statusbar.setFileName(base.U.extractFileName(filename))
		if MapWindow.isCreated() then
			MapWindow.selectedGroup = nil
		end		
		module_mission.removeMission()
		progressBar.setUpdateFunction(function()
			base.print('Loading DCM ', filename)
			
			local result, err, theatre = module_mission.load(filename)
			MapWindow.show(true)
		end)
		
		
		UpdateManager.add(function()
			base.rts.openDCM()
			-- удаляем себя из UpdateManager
			return true
		end)
		
		
	end
end

function onRtsSaveDCM()
	toolbar.untoggle_all_except()
	base.rts.saveDCM()
	base.print("--base.rts.saveDCM()--")
	
	local path = MeSettings.getMissionPath()
	local filters = {FileDialogFilters.dcm()}
	local filename = FileDialog.save(path, filters, cdata.saveDCM)
	
	if filename then
		local showError = true	
		
		if module_mission.save_mission_safe(filename, showError) then
			UpdateManager.add(function()				
				MapWindow.show(true)
				base.rts.openDCM()
				-- удаляем себя из UpdateManager
				return true
			end)
			
		end
	end
end

