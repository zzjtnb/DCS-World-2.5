local base = _G

module('MainMenu')

local require	= base.require
local print		= base.print

local Form                      = require('MainMenuForm')
local Encyclopedia              = require('me_encyclopedia')
local Gui                       = require('dxgui')
local Mission                   = require('me_mission')
local ComboBox                  = require('ComboBox')
local lfs                       = require('lfs')
local pan_quickstart            = require('me_quickstart')
local panel_generator_simple    = require('me_simple_generator_dialog')
local Tools                     = require('tools')
local panel_news                = require('me_news')
local OptionsDialog				= require('me_options')
local statusbar 				= require('me_statusbar')
local music						= require('me_music')
local sound						= require('sound')
local MeSettings				= require('MeSettings')
local panel_campaign_editor		= require('me_campaign_editor')
local panel_campaign			= require('me_campaign')
local TheatreOfWarData          = require('Mission.TheatreOfWarData')
local MsgWindow			        = require('MsgWindow')
local i18n 					    = require('i18n')
local panel_auth                = require('me_authorization')
local waitScreen				= require('me_wait_screen')
local DCS                       = require('DCS')
local modulesInfo  				= require('me_modulesInfo')
local optionsEditor 			= require('optionsEditor')
local MissionData				= require('Mission.Data')
local progressBar 				= require('ProgressBarDialog')
local Analytics					= require("Analytics")  
local modulesOffers				= require("me_modulesOffers")
local ProductType 				= require('me_ProductType')
local MapWindow					= require('me_map_window')

i18n.setup(_M)

function verifyLeastOneTheatre()
    bEnableTerrain = TheatreOfWarData.verifyLeastOneTheatre()
    Form.modeNoTerrain(bEnableTerrain)
    
    if bEnableTerrain == false and bNoMsgTerrain ~= true then
        local handler = MsgWindow.warning(_("Seems that you do not have any theatres installed. Please, check available on our Store."), _("WARNING"), _("GET TERRAIN"), _("NO, THANKS"))
            function handler:onChange(buttonText)
                if buttonText == _("GET TERRAIN") then 
					if (ProductType.getType() == "STEAM") then
						base.os.open_uri("http://store.steampowered.com/app/411891/DCS_NEVADA_Test_and_Training_Range_Map/")
					else
						base.os.open_uri("https://www.digitalcombatsimulator.com/en/shop/terrains/nttr_terrain/")
					end
                end
            end 
        handler:show() 
    end
    bNoMsgTerrain = true
end

function verifyLeastOneTheatreMCS()
    bEnableTerrain = TheatreOfWarData.verifyLeastOneTheatre()

    if bEnableTerrain == false then
        MsgWindow.warning(_("No terrain found."), _("WARNING"), _("EXIT")):show() 
		Gui.doQuit()  
		return false	
    end
	return true
end

function anonymousStatistic()
    if MeSettings.getPermissionToCollectStatistics() == nil then
        local handler = MsgWindow.question(_("We will collect anonymous usage data \nto improve the quality of your experience \nwhen you use our products.")..("\n\n"), _('HELP US IMPROVE OUR PRODUCTS'), _("DISAGREE"), _("AGREE"))
            function handler:onChange(buttonText)
                if buttonText == _("DISAGREE") then 
                    MeSettings.setPermissionToCollectStatistics(false)   
					optionsEditor.setOption("miscellaneous.collect_stat", false)	
                end
                
                if buttonText == _("AGREE") then 
                    MeSettings.setPermissionToCollectStatistics(true) 
					optionsEditor.setOption("miscellaneous.collect_stat", true)		
                end
            end 
        handler:show() 
    end
end

function create(x, y, w, h)
  Form.create(x, y, w, h)
  
  setAutorization = Form.setAutorization
  if (base.__BETA_VERSION__ == true) then
    Form.staticLogoBeta:setVisible(true)
  else
    Form.staticLogoBeta:setVisible(false)
  end
  
  function Form.buttonExit:onChange()
    base.START_PARAMS.command = '--quit'
    Gui.doQuit()
  end

  function Form.buttonQuickMission:onChange() 
	Form.closeInfo()
    pan_quickstart.show()
  end

  function Form.buttonShowReplays:onChange()
	Form.closeInfo()
    show(false)
    
    waitScreen.setUpdateFunction(function()
		base.panel_openfile.show(true, 'mainmenu', true)
	end)
  end

  function Form.buttonTraining:onChange()
	Form.closeInfo()
    show(false)
    waitScreen.setUpdateFunction(function()
		base.panel_training.show(true)
    end)
  end

  function Form.buttonOpenMission:onChange()
	Form.closeInfo()
    base.panel_openfile.vdata.type = '*.miz'
    base.panel_openfile.caller = 'mainmenu'
    waitScreen.setUpdateFunction(function()
		base.panel_openfile.show(true, 'mainmenu', false)
    end)
  end

  function showMissionEditorEmpty()
	Form.closeInfo()
    show(false)
	MapWindow.closeNewMapView()
	MapWindow.showEmpty()
  end
  
  function showMissionEditor(noResetMission)
	Form.closeInfo()
    show(false)
	
	if ProductType.getType() == "MCS" or ProductType.getType() == "LOFAC" then
		if verifyLeastOneTheatreMCS() == false then
			return
		end
	end
   
	local f = function()
		base.setPlannerMission(false)
		if noResetMission ~= true then
			if MapWindow.initTerrain(true, false, "ME", Mission.getDefaultDate()) == true then
				Mission.create_new_mission()
				MapWindow.show(true)				
			else
				show(true)
			end
		else
			MapWindow.show(true)	
		end	
	end

	progressBar.setUpdateFunction(f)

  end
  
  function Form.buttonModulesManager:onChange()
	Form.closeInfo()
    show(false)
	
    base.panel_modulesmanager.show(true)
  end
  
  function Form.buttonMissionEditor:onChange()  
	Form.closeInfo()
	if Mission.missionCreated ~= true then
		showMissionEditorEmpty()
	else	
		Mission.missionCreated = false
		showMissionEditor()
	end
  end

  function Form.buttonCampaignBuilder:onChange()
	Form.closeInfo()
    --base.toolbar.untoggle_all_except()
    show(false)
	
    waitScreen.setUpdateFunction(function()
		panel_campaign_editor.show(true)
    end)
  end

  if (Form.buttonFastCreateMission) then
    Form.buttonFastCreateMission.onChange = buttonFastCreateMissiononChange
  end
  
  function Form.buttonCampaign:onChange()
	Form.closeInfo()
    show(false)
    waitScreen.setUpdateFunction(function()
		panel_campaign.show(true)
    end)
  end

  function Form.buttonEncyclopedia:onChange()
	Form.closeInfo()
    show(false)

    waitScreen.setUpdateFunction(function()
		base.panel_enc.show(true)
    end)
  end

  function Form.buttonPilotLogbook:onChange()
	Form.closeInfo()
    show(false)
    waitScreen.setUpdateFunction(function()
		base.panel_logbook.show(true)
    end)
  end

  function Form.buttonOptions:onChange()
	Form.closeInfo()
	show(false)
	
	local listener = {
		onOk = function()
			if 	OptionsDialog.getScreenSettingsChanged() or 
--				OptionsDialog.getDeferredShadingChanged() or
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
		
		setWallpaper = Form.setWallpaper,
	}
	
	OptionsDialog.show(listener)
  end
  
  if (Form.buttonMultiplayer) then
    Form.buttonMultiplayer.onChange = buttonMultiplayeronChange
  end


end


function show(b, noAnalytics)
    if not Form.window then
        return
    end
    
    panel_news.show(b)
    Form.window:setVisible(b)
    
    if b then	
		if noAnalytics ~= true then
			Analytics.pageview(Analytics.MainMenu)
		end
		if ProductType.getType() ~= "MCS" and ProductType.getType() ~= "LOFAC" then
			anonymousStatistic() 
		end	
		UpdateIndicatorMM()
    end
	Form.updateOfflineTimeWidget(b)
	
	if b then 
		verifyLeastOneTheatre()
	end	
end

function callbackMainMenu()
	UpdateIndicatorMM()

	if panel_auth.getOfflineMode() ~= true then
		modulesOffers.show(true)
	end
end

function UpdateIndicatorMM()
	if panel_auth.getOfflineMode() == true then
		Form.sIndicator:setVisible(false)
		return
	end
	
	local num = modulesInfo.getNumPurchasedModules()
	
	if num > 0 and (ProductType.getOpt('enableModulesManager') == true) then
		Form.sIndicator:setText(num)
		Form.sIndicator:setVisible(true)
	else
		Form.sIndicator:setVisible(false)
	end
end

function setLastWallpaper()
    Form.setWallpaper(MeSettings.getMainMenuSkinName())
end


function buttonFastCreateMissiononChange()
	Form.closeInfo()
    panel_generator_simple.show(true)
end

local function endAutorization(a_result)    
    if a_result == true then
		base.START_PARAMS.missionPath = ""
        base.panel_server_list.show(true)
        show(false)
    end  
    setAutorization(a_result)    
end

function buttonMultiplayeronChange()
	Form.closeInfo()
    if base.__FINAL_VERSION__  or panel_auth.isAutorization() == true then
		base.START_PARAMS.missionPath = ""
        base.panel_server_list.show(true)
        show(false)
    else
        panel_auth.show(true, endAutorization) 
    end    
end



function setWallpaper(a_data)
    Form.setWallpaper(a_data)
end



