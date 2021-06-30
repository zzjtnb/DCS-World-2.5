dofile('./Scripts/UI/initGUI.lua')

local base = _G

module('GameMenu')

local require = base.require
local table = base.table

local Gui						= require('dxgui')
local Skin						= require('Skin')
local GuiWin					= require('dxguiWin')
local DialogLoader				= require('DialogLoader')
local gettext					= require('i_18n')
local DCS						= require('DCS')
local ManualDialog				= require('ManualDialog')
local BriefingDialog			= require('BriefingDialog')
local ChoiceOfRoleDialog		= require('ChoiceOfRoleDialog')
local ChoiceOfCoalitionDialog	= require('ChoiceOfCoalitionDialog')
local gameMessages				= require('gameMessages')
local AdjustControlsDialog		= require('AdjustControlsDialog')
local TooltipSkinHolder			= require('TooltipSkinHolder')
local Select_role		        = require('mul_select_role')
local net                       = require('net')
local OptionsDialog				= require('me_options')
local music						= require('me_music')
local sound						= require('sound')
local MsgWindow			        = require('MsgWindow')
local waitScreen        		= require('me_wait_screen')
local UC						= require('utils_common')
local visualizer 				= base.visualizer
local panel_voicechat 			= require('mul_voicechat')

base.setmetatable(base.dxgui, {__index = base.dxguiWin})

local window_
local listButtons = {}

local countCoalitions = 0

local function _(text) 
    return gettext.translate(text) 
end

local cdata	= {
        missionPaused	= _('MISSION PAUSED'),
        resume			= _('RESUME'),
        briefing		= _('BRIEFING'),
        manual			= _('MANUAL'),
        takeControl		= _('TAKE CONTROL'),
        quit			= _('QUIT'),
		leaveServer		= _('LEAVE SERVER'),
        adjustControls	= _('ADJUST CONTROLS'),
        choiceSlot		= _('CHOOSE SLOT'), 
        choiceCaol		= _('CHOOSE COALITION'),
        controlServer	= _('CONTROL SERVER'),
        selectRole	    = _('SELECT ROLE'),
        audioOption	    = _('OPTIONS'),
        quitToDesktop   = _('QUIT TO DESKTOP'),
        msgExit         = _('Are you sure you want to exit the game?'),
		msgLeaveServer	= _('Are you sure you want to exit the server?'),
        warning         = _('WARNING'), 
        yes             = _('YES'),
        no              = _('NO'),
    }
    
if base.LOFAC then
    cdata.missionPaused	= _('MISSION PAUSED-LOFAC') 
end    
    
local function create_()  
	
	screenWidth, screenHeight = Gui.GetWindowSize()
	
    window_ = DialogLoader.spawnDialogFromFile('./Scripts/UI/GameMenu.dlg', cdata)	
	window_:setBounds(0, 0, screenWidth, screenHeight)

	local findWidgetByName = DialogLoader.findWidgetByName
	
    buttonCancel			= findWidgetByName(window_, "buttonCancel"			)
    buttonTakeControl		= findWidgetByName(window_, "buttonTakeControl"		)
    buttonQuit				= findWidgetByName(window_, "buttonQuit"			)
    buttonBriefing			= findWidgetByName(window_, "buttonBriefing"		)
    buttonManual			= findWidgetByName(window_, "buttonManual"			)
    buttonAdjustControls	= findWidgetByName(window_, "buttonAdjustControls"	)
    buttonChoiceSlot		= findWidgetByName(window_, "buttonChoiceSlot"		)
    buttonChoiceCaol		= findWidgetByName(window_, "buttonChoiceCaol"		)
    buttonSelectRole		= findWidgetByName(window_, "buttonSelectRole"		)
    buttonAudio				= findWidgetByName(window_, "buttonAudioOption"		)
    buttonQuitToDesktop		= findWidgetByName(window_, "buttonQuitToDesktop"	)
	buttonLeaveServer		= findWidgetByName(window_, "buttonLeaveServer"		)
    

    buttonTakeControl	.onChange	= TakeControl_onChange
    buttonCancel		.onChange	= Cancel_onChange
    buttonQuit			.onChange	= Quit_onChange
    buttonBriefing		.onChange	= Briefing_onChange
    buttonManual		.onChange	= Manual_onChange
    buttonAdjustControls.onChange	= AdjustControls_onChange
    buttonChoiceSlot	.onChange	= ChoiceSlot_onChange
    buttonChoiceCaol	.onChange	= ChoiceCaol_onChange
    buttonSelectRole	.onChange	= SelectRole_onChange
    buttonAudio			.onChange	= Audio_onChange
    buttonQuitToDesktop	.onChange	= QuitToDesktop_onChange
	buttonLeaveServer	.onChange	= LeaveServer_onChange

    table.insert(listButtons, buttonCancel			)
    table.insert(listButtons, buttonTakeControl		)
    table.insert(listButtons, buttonBriefing		)
    table.insert(listButtons, buttonChoiceSlot		)
    table.insert(listButtons, buttonChoiceCaol		)
    table.insert(listButtons, buttonSelectRole		)
    table.insert(listButtons, buttonManual			)
    table.insert(listButtons, buttonAdjustControls	)
    table.insert(listButtons, buttonAudio			)    
    table.insert(listButtons, buttonQuitToDesktop	)
    table.insert(listButtons, buttonQuit			)
	table.insert(listButtons, buttonLeaveServer		)

    buttonManual.needShow = function()
        return (DCS.getManualPath() ~= nil)
    end

    buttonTakeControl.needShow = function()
        return (DCS.isTrackPlaying() and DCS.isMultiplayer() == false)
    end
    
    buttonChoiceSlot.needShow = function()
        return (ChoiceOfRoleDialog.isSelectCoalition() and DCS.isMultiplayer() == false)
    end
    
    buttonChoiceCaol.needShow = function()
        return (countCoalitions > 1 and DCS.isMultiplayer() == false)
    end
    
    buttonSelectRole.needShow = function()
        return (DCS.isTrackPlaying() ~= true and DCS.isMultiplayer() == true)
    end
	
	buttonQuit.needShow = function()
        return (DCS.isMultiplayer() ~= true or DCS.isTrackPlaying() == true)
    end
	
	buttonLeaveServer.needShow = function()
        return (DCS.isTrackPlaying() ~= true and DCS.isMultiplayer() == true)
    end
    
end

function setPause(b)
    if (DCS.isMultiplayer() ~= true) or (DCS.isTrackPlaying() == true) then
        DCS.setPause(b)
    end
end

function TakeControl_onChange()
    DCS.takeTrackControl()
    hide()
	setPause(false)
end

function Cancel_onChange()
    hide()
	setPause(false)
	DCS.onShowDialog(false)
end

function LeaveServer_onChange()
	local handler = MsgWindow.warning(cdata.msgLeaveServer, cdata.warning, cdata.yes, cdata.no)

    function handler:onChange(buttonText)
        if buttonText == cdata.yes then
            base.START_PARAMS.returnScreen = 'multiplayer'
			waitScreen.setUpdateFunction(function()
				net.stop_game()
				hide()
				UC.sleep(1000) 
			end)
			hide()
        else
        
        end
    end

    handler:show()
end

function Quit_onChange()
    if (DCS.isMultiplayer() == false) or (DCS.isTrackPlaying() == true) then
        gameMessages.hide()
        ManualDialog.hide()
        if base.__EMBEDDED__ then
            DCS.stopMission()
        else
            DCS.exitProcess()
        end
    else    
        -- показ выбора ролей
        Select_role.show(true)
    
        -- выход из игры
       -- base.START_PARAMS.returnScreen = ''
       -- net.stop_game()
    end
    
    hide()
end

function QuitToDesktop_onChange()
    local handler = MsgWindow.warning(cdata.msgExit, cdata.warning, cdata.yes, cdata.no)

    
    function handler:onChange(buttonText)
        if buttonText == cdata.yes then
            hide()
            base.START_PARAMS.returnScreen = 'quit'
            if DCS.isMultiplayer() == true then
                net.stop_game()
            end
            DCS.exitProcess()
        else
        
        end
    end

    handler:show()
end

function Close_onChange()
    hide()
	DCS.onShowDialog(false)
end

function Briefing_onChange()
    BriefingDialog.showUnpauseMessage(false)    
    hide()
    BriefingDialog.show('Menu')
end

function ChoiceSlot_onChange()
    hide()
    ChoiceOfRoleDialog.show(nil, true, "Menu")
end

function ChoiceCaol_onChange()
    hide()
    ChoiceOfCoalitionDialog.show()
end 

function SelectRole_onChange()
    hide()
    Select_role.show(true)
end 

function Audio_onChange()
    hide()
    DCS.lockAllMouseInput() 
    DCS.lockAllKeyboardInput()
    local listener = {
		onOk = function()			
            DCS.unlockKeyboardInput(true)
            DCS.unlockMouseInput()
            setPause(false)
		end,
		
		onCancel = function()
            DCS.unlockKeyboardInput(true) 
            DCS.unlockMouseInput()
            setPause(false)            
		end,
		
		onSoundSetting = function(name, value)
			local function endUpdateVoiceChatOption()
				waitScreen.showSplash(false)
			end
			if name == 'music' then
				music.setMusicVolume(value)
				music.stop()
			elseif name == 'gui' then
				music.setEffectsVolume(value)
			elseif name == 'voice_chat' then
				if (DCS.isMultiplayer() == true) 
				   and (DCS.isTrackPlaying() ~= true) then					
					waitScreen.showSplash(true)
					panel_voicechat.ChangeVoiceChatOption(value, endUpdateVoiceChatOption)						
				end
			else
				sound.updateSettings{ [name] = value }	
				sound.updateVoiceChatSettings{ [name] = value }
			end
		end,
		
		onGraphicsSetting = function(name, value)
			if name == 'outputGamma' then
				visualizer.setOutputGamma(value)
			elseif name == 'forestDistanceFactor' then
				visualizer.setForestDistanceFactor(value)
			elseif name == 'clutterMaxDistance' then
				visualizer.setGrassDistanceFactor(value/1500.0)
			end	
		end,
		
		onVRSetting = function(name, value)
			if name == 'msaaMaskSize' then
				visualizer.setMSAAMaskSize(value)
			end	
		end,
	
	}
    
    OptionsDialog.show(listener, 'sim')

end

function Manual_onChange()
    hide()    
    ManualDialog.show(DCS.getManualPath())
end

function AdjustControls_onChange()
    hide()
    AdjustControlsDialog.show(DCS.getHumanUnitInputName())
end

function show()
    updateButtons()
    
    DCS.setDebriefingShow(false)
	
    TooltipSkinHolder.saveTooltipSkin()
 --  enableTakeControlButton(DCS.isTrackPlaying())
    enableManualButton(DCS.getManualPath() ~= nil)
 --   enableChoiceSlotButton(ChoiceOfRoleDialog.isSelectCoalition())
	window_:setVisible(true)
    setPause(true)
    DCS.lockAllMouseInput()
    
end

function setCountCoalitions(a_countCoalitions)
    countCoalitions = a_countCoalitions
end

function updateButtons()
	local panelButtons	= window_.panelButtons

	-- всю работу по выравниванию кнопок делает лейаут
	-- первый виджет в panelButtons это контейнер со строкой заголовка окна и кнопкой закрытия
	local index = 1
    local offsetY = 60
	
    for i, button in base.pairs(listButtons) do
		panelButtons:removeWidget(button)
		
        if not button.needShow or button:needShow() then
            panelButtons:insertWidget(button, index)
            local width, height = button:getSize()
         --[[   if buttonQuitToDesktop == button then
                offsetY = offsetY + 18
            end]]
            button:setPosition(2, offsetY)
            offsetY = offsetY + height            
			index = index + 1
        end
    end
    
	local width, height = panelButtons:getSize()
	
	panelButtons:setSize(width, offsetY+12)
	local windowWidth, windowHeight = window_:getSize()
	
	panelButtons:setPosition((windowWidth - width) / 2, (windowHeight - offsetY-2) / 2 )
end

function hide()
    window_:close()
    TooltipSkinHolder.restoreTooltipSkin()  
    DCS.unlockMouseInput()
end

function getVisible()
    if window_ == nil then
        return false
    end
    return window_:getVisible()
end

function enableTakeControlButton(enable)
    buttonTakeControl:setEnabled(enable)
end

function enableManualButton(enable)
    buttonManual:setEnabled(enable)
end

function enableChoiceSlotButton(enable)
    buttonChoiceSlot:setEnabled(enable)
end

function kill()
	if window_ then
	   window_:setVisible(false)
	   window_:kill()
	   window_ = nil
	end
end

create_()