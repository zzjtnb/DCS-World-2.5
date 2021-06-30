local base = _G

module('mul_voicechat')

local require = base.require
local tostring = base.tostring
local ipairs = base.ipairs
local pairs = base.pairs
local string = base.string
local print = base.print
local table = base.table


local i18n 			= require('i18n')
local DialogLoader	= require('DialogLoader')
local ListBoxItem	= require('ListBoxItem')
local voice_chat 	= require("VoiceChat")
local DcsWeb 		= require('DcsWeb')
local DCS    		= require('DCS')
local TabGroupItem	= require('TabGroupItem')
local Button		= require('Button')
local ScrollPane 	= require('ScrollPane')
local Static		= require('Static')
local UpdateManager	= require('UpdateManager')
local net           = require('net')
local EditBox 		= require('EditBox')
local MsgWindow		= require('MsgWindow')
local optionsEditor = require('optionsEditor')
local Gui          	= require('dxgui')
local Input			= require('Input')
local Window		= require('Window')
local Skin          = require('Skin')
local ToggleButton	= require('ToggleButton')


i18n.setup(_M)

cdata = {
	mute_mic 	= _("Mute mic"),
	voicechat 	= _("Voicechat"),
	common		= _("Common chat", "COMMON"),
	Radio		= _("Radio"),
	RadioIntercom = _("Radio/Intercom"),
	coalition	= _("COALITION"),
	
	useMic		= _("Mic on"),
	muteMic		= _("Mic off"),
	pushMic		= _("Push to talk"),
	
	Add_user	= _("Add user..."),
	CreateNewRoom = _("Click to create new room"),
	MyRoom		= _("My room"),
	Settings 	= _("Settings"),
	Remove		= _("Remove"),
	
	--Hints
	hintCollapseRooms 	= _("Minimize"),
	hintExpandRooms 	= _("Expand Rooms List"),
	hintSettings		= _("Settings"),	
	hintMicMode 		= _("Microphone mode, click to change"),
	hintClose			= _("Close window"),
	hintEnterRoom		= _("Enter new room name"),
	hintAddRoom			= _("Add room"),
	hintCollapsPeers	= _("Close Users List"),
	hintExpandPeers		= _("Expand Users List"),
	hintRoomName		= _("Room name"),
	hintDeleteRoom		= _("Delete room"),
	hintLeaveRoom		= _("Leave room"),
	hintOpenPeersList	= _("Open peers list"),
	hintDeletePeer		= _("Delete peer"),
	hintPeerName		= _("Peer name"),
	hintClosePeersList	= _("Close peers list"),
	hintAddPeer			= _("Add peer"),
	hintRemotePeerMicOn	= _("Mic. on"),
	hintRemotePeerMicOff	= _("Mic. off")	
}

local objRooms = {}
local users = {}
local deployRooms = {}
local bStart = false
local bMicState = 0 	-- Use mic - 0 по дефолту,  Mute mic - 1, Push to talk - 2
local activeRoomId
local activeGroupId
local bExpand = true
local nameMini = ""
local my_peer_id = 0
local curMode = 0
local usersVoiceOnOffbtn = {} -- кнопки индикации звука

local function create_()
	window = DialogLoader.spawnDialogFromFile("MissionEditor/modules/dialogs/mul_voicechat.dlg", cdata)
--	window:centerWindow()
	wWin, hWin = Gui.GetWindowSize()
	
	spBox 				= window.spBox
	bClose				= window.pTop.bClose	
	pNoVisible			= window.pNoVisible
	bMic				= window.pTop.bMic
	panelAddUsers		= window.panelAddUsers
	bExitAddUsers		= panelAddUsers.bExitAddUsers
	spAddUsers			= panelAddUsers.spAddUsers
	tbMini				= window.pTop.tbMini
	pDown				= window.pDown
	eCreateRoom			= pDown.eCreateRoom
	bPlusRoom			= pDown.bPlusRoom -- кнопка добавить комнату
	sRadioNA			= window.pTop.sRadioNA
	tbRadio				= window.pTop.tbRadio
	bSettings			= window.pTop.bSettings
	
	panelSettings		= window.panelSettings
	bSettCancel			= panelSettings.bSettCancel
	cbShowActiveUsers 	= panelSettings.cbShowActiveUsers 
	cbTurnRadio			= panelSettings.cbTurnRadio
	
	btnItemRedSkin		= pNoVisible.btnItemRed:getSkin()	
	btnItemRedBoldSkin	= pNoVisible.btnItemRedBold:getSkin()
	btnItemBlueSkin		= pNoVisible.btnItemBlue:getSkin()
	btnItemBlueBoldSkin	= pNoVisible.btnItemBlueBold:getSkin()
	btnItemGraySkin		= pNoVisible.btnItemGray:getSkin()
	btnItemGrayBoldSkin	= pNoVisible.btnItemGrayBold:getSkin()
	
	bExpandSkin 		= pNoVisible.bExpand:getSkin()
	bRollupSkin			= pNoVisible.bRollup:getSkin()
	bDelSkin			= pNoVisible.bDel:getSkin()
	bSettSkin			= pNoVisible.bSett:getSkin()
	bOutSkin			= pNoVisible.bOut:getSkin()
	spUsersSkin 		= pNoVisible.spUsers:getSkin()
	bUserSkin			= pNoVisible.bUser:getSkin()
	bUserActiveSkin		= pNoVisible.bUserActive:getSkin()
	bAddUserSkin		= pNoVisible.bAddUser:getSkin()
	bPlusSkin			= pNoVisible.bPlus:getSkin()
	sPlugSkin			= pNoVisible.sPlug:getSkin()
	bCloseSkin			= pNoVisible.bClose:getSkin()
	bDefaultMicSkin		= bMic:getSkin()
	bHighlightMicSkin	= pNoVisible.bHighlight:getSkin()
	tbVoiceOnSkin		= pNoVisible.tbVoiceOn:getSkin()
	tbVoiceOffSkin		= pNoVisible.tbVoiceOff:getSkin()
	
	panelSettingsUser	= window.panelSettingsUser	
	bSettUserCancel		= panelSettingsUser.bSettUserCancel
	cbMuteUser			= panelSettingsUser.cbMuteUser
	hsVolumeUser		= panelSettingsUser.hsVolumeUser
	bRemoveUser			= panelSettingsUser.bRemoveUser
	
	
	windowSettUser		= Window.new()	
	windowSettUser:setSkin(Skin.windowSkinChatMin())
	windowSettUser:setZOrder(10001)
	windowSettUser:setBounds(0, 0, 305, 215)
	window:removeWidget(panelSettingsUser)
	windowSettUser:insertWidget(panelSettingsUser)	
	panelSettingsUser:setPosition(0,0)	
	
	
	bClose:setTooltipText(cdata.hintClose)
	bClose.onChange = function()
		hidePanelAddUsers()
		window:setVisible(false)
		panelSettings:setVisible(false)
	end
	
	eCreateRoom:setText(cdata.CreateNewRoom)
	eCreateRoom:addFocusCallback(function(self, x, y, button)
		if self:getFocused() == true then
			lockKeyboardInput()
			if cdata.CreateNewRoom == self:getText() then	
				self:setText("")
			end
		else
			if "" == self:getText() then
				self:setText(cdata.CreateNewRoom)
			end
			unlockKeyboardInput()						
		end
	end)
	
	function eCreateRoom:onKeyDown(key, unicode) 
        if 'return' == key then            
            onCreateRoom()
			eCreateRoom:setFocused(false)
        end
		if 'escape' == key then            
            eCreateRoom:setText(cdata.CreateNewRoom)
			eCreateRoom:setFocused(false)
        end
    end
	
	bPlusRoom.onChange 			= onCreateRoom
	bSettings.onChange 			= onChange_bSettings
	cbShowActiveUsers.onChange 	= onChange_cbShowActiveUsers
	cbTurnRadio.onChange		= onChange_cbTurnRadio
	bSettCancel.onChange 		= onChange_bSettCancel
	tbRadio.onChange 			= onChange_tbRadio
	
	cbMuteUser.onChange 		= onChange_cbMuteUser
	hsVolumeUser.onChange 		= onChange_hsVolumeUser
	bRemoveUser.onChange 		= onChange_bRemoveUser
	
	bSettUserCancel.onChange 	= onChange_bSettUserCancel	

	
	bMic.onChange = onChange_bMic
	
	bExitAddUsers:setTooltipText(cdata.hintClosePeersList)
	bExitAddUsers.onChange = onChange_bExitAddUsers
	
	tbMini:setTooltipText(cdata.hintCollapseRooms)
	tbMini.onChange = onChange_tbMini
	
	window:setPosition(0,40)

	window:setSize(353, 768)
	spBox:setSize(353, 550)
		
	panelSettings:setPosition(30,30)
	
	windowSettUser:setVisible(false)
	panelSettings:setVisible(false)
	panelAddUsers:setVisible(false)
	
	setStateText_bMic(bMicState)
	
	tbMini:setState(false)	
	
	if not base.ED_PUBLIC_AVAILABLE then
		Gui.AddMouseCallback('down', function(x, y, button)
			if windowSettUser:getVisible() == true then
				local tmpX, tmpY, tmpW, tmpH = windowSettUser:getBounds()		
				if x < tmpX or x > (tmpX + tmpW)
				 or y < tmpY or y > (tmpY + tmpH) then
					windowSettUser:setVisible(false)
				end
			end
		end)
	else
		bSettings:setVisible(false)
		sRadioNA:setVisible(false)
		tbRadio:setVisible(false)
	end
end

function setStateText_bMic(a_bMicState)
	if a_bMicState == 0 then
		bMic:setText(cdata.useMic)
	elseif a_bMicState == 1 then
		bMic:setText(cdata.muteMic)
	else
		bMic:setText(cdata.pushMic)
	end
end

function setSkin_bMic(a_bMicState)
	if a_bMicState == 0 then
		bMic:setSkin(bHighlightMicSkin)
	else
		bMic:setSkin(bDefaultMicSkin)
	end
end

function hidePanelAddUsers()
	panelAddUsers:setVisible(false)-- при любом действии скрываем панель добавления юзеров
	local tmpX, tmpY = spBox:getSize()
	
	updateSize()
end		

function onChange_bMic()
	hidePanelAddUsers()
	bMicState = bMicState + 1
	if bMicState > 2 then
		bMicState = 0
	end
	
	setSkin_bMic(bMicState)
	setStateText_bMic(bMicState)	
	voice_chat.setMicMode(bMicState)
end

function onChange_tbMini()
	bExpand = not(tbMini:getState())
	
	if (bExpand) then
		tbMini:setTooltipText(cdata.hintCollapseRooms)	
		update()
	else
		tbMini:setTooltipText(cdata.hintExpandRooms)
		if curMode == 1 then
			voice_chat.setVoiceChatMode(0) -- ROOM	
		else
			update()
		end	
	end
end

function updateMicState()
	if not window then
		create_()
	end	
	
	bMicState = voice_chat.getMicMode()
	setSkin_bMic(bMicState)
	setStateText_bMic(bMicState)
end

function onChange_bExitAddUsers()
	hidePanelAddUsers()
end

-- show window
function show(b)
	if b then
		if not window then
			create_()
		end				
	end

	if window then
		window:setVisible(b)
	end
	
	if b then
		update()
	end
end

function updateIndication(peerID, voiceOnOff)
	base.print("--updateIndication--",peerID, voiceOnOff)
	local idRoom = voice_chat.getActiveRoom()
	if idRoom and usersVoiceOnOffbtn[idRoom] and usersVoiceOnOffbtn[idRoom][peerID] then
		if voiceOnOff == true then
			usersVoiceOnOffbtn[idRoom][peerID].on:setVisible(true)
			usersVoiceOnOffbtn[idRoom][peerID].off:setVisible(false)
		else
			usersVoiceOnOffbtn[idRoom][peerID].on:setVisible(false)
			usersVoiceOnOffbtn[idRoom][peerID].off:setVisible(true)
		end
	end
end

function update() 
	if not window then
		create_()
	end	
	
	spBox:clear()
	objRooms = {}
	yOffset = 0
	
	if not base.ED_PUBLIC_AVAILABLE then
		updateMode()
	end
	
	-- { {owner_peer_id = 0, room_id = 1, type = 0, unit_id = number, side = number, name = 'common', dispname = 'common', access_peer_list = {1,2,3 ..}}, ... }
	local listRoomsTMP = voice_chat.getRooms()

	-- { {peer_id = number, peer_name= "peer_name", side = number, owner_peer_id = 6, room_id = number, voice_enable = bool}, ... }
	users = voice_chat.getPeersList()

	if listRoomsTMP == nil then
		return
	end
	
	local listRooms ={}
	listRooms.PERSISTENT = {}
	listRooms.MULTICREW = {}
	listRooms.MANAGEABLE = {}
	
	for k, v in base.pairs(listRoomsTMP) do
		if v.type == voice_chat.RoomType.PERSISTENT then
			base.table.insert(listRooms.PERSISTENT, v)
		end
		
		if v.type == voice_chat.RoomType.MULTICREW then
			base.table.insert(listRooms.MULTICREW, v)
		end

		if v.type == voice_chat.RoomType.MANAGEABLE then
			base.table.insert(listRooms.MANAGEABLE, v)
		end
	end
	
	--base.U.traverseTable(listRooms)
	--base.U.traverseTable(users)
	--base.print("---listRooms---")

	fillRooms(listRooms)
	
end

function updateMode()
base.print("---updateMode--",voice_chat.isInLA())
	if voice_chat.isInLA() then
		curMode = voice_chat.getVoiceChatMode() --0 - ROOM, либо 1 - RADIO
		base.print("---curMode--",curMode)
		sRadioNA:setVisible(false)
		tbRadio:setVisible(true)
			
		if curMode == 0 then
			tbRadio:setState(true)	
			tbMini:setState(true)				
			bExpand = true
		else
			tbRadio:setState(false)	
			tbMini:setState(false)
			bExpand = false
		end
	else
		sRadioNA:setVisible(true)
		tbRadio:setVisible(false)
		
		curMode = 0
	end
end

function updateSize()
	local tmpX, tmpY, tmpW, tmpH = window:getBounds()
	local sizeW, sizeH 
	
	local tmpX, tmpY = spBox:getSize()
	sizeW = 353
	
	if bExpand == true then 
		sizeH = tmpY+47+50+20
	else
		sizeH = 70
	end
	
	if panelAddUsers:getVisible() == true then
		local tmpuX, tmpuY, tmpuW, tmpuH = panelAddUsers:getBounds()

		if (tmpH) < (tmpuY+tmpuH+20) then
			sizeH = tmpuY+tmpuH+20
		end
	end

	if panelSettings:getVisible() == true then		
		if tmpH < 265 then
			sizeH = 265
		end	
	end
	
	window:setSize(sizeW, sizeH)
end

function onChange_tbRadio()
	if tbRadio:getState() == true then
		voice_chat.setVoiceChatMode(0) -- RADIO
	else
		voice_chat.setVoiceChatMode(1) -- ROOM
	end
	update()
end

function onChange_bSettings()
	panelSettings:setVisible(not panelSettings:getVisible())

	updateSize()
	
	if panelSettings:getVisible() then
		local opt = voice_chat.getOptions() 
		
		base.print("---opt--",opt)
		if opt then
			cbTurnRadio:setState(opt.is_auto_switch_to_radio)
			cbShowActiveUsers:setState(opt.show_active_users)
		end
	end
end

function onChange_cbShowActiveUsers()
	voice_chat.setOptions({show_active_users = cbShowActiveUsers:getState() , is_auto_switch_to_radio = cbTurnRadio:getState()})
	update()
	updateSize()
end

function onChange_cbTurnRadio()
	voice_chat.setOptions({show_active_users = cbShowActiveUsers:getState() , is_auto_switch_to_radio = cbTurnRadio:getState()})
	update()
	updateSize()
end

function onChange_bSettCancel()
	panelSettings:setVisible(false)
	update()
	updateSize()
end

function onChange_cbMuteUser(self)
	base.print("--onChange_cbMuteUser--",self.data.peer_id, self:getState())
	voice_chat.peerVoiceEnable(self.data.peer_id, self:getState())
end

function onChange_hsVolumeUser(self)
	base.print("--onChange_hsVolumeUser--",self.data.peer_id, self:getValue())
	voice_chat.setTrackAudioVolume(self.data.peer_id, self:getValue())
end

function onChange_bRemoveUser(self)
	base.print("--onChange_bRemoveUser--",self.data.ownerPeerId, self.data.roomId, self.data.roomType, self.data.unitId, self.data.peer_id)
	voice_chat.removeUser(self.data.ownerPeerId, self.data.roomId, self.data.roomType, self.data.unitId, self.data.peer_id)
end



function onChange_bSettUserCancel()
	windowSettUser:setVisible(false)
	update()
end

function onChange_mute(self)
	if my_peer_id == self.peer_id then
		self:setState(false)
		self.pair:setState(false)
		return
	end
base.print("--onChange_mute--",self:getState())
	if self:getState() == true then
		self:setState(true)
		self.pair:setState(true)
		voice_chat.peerVoiceEnable(self.peer_id, true)
		self:setVisible(true)
		self.pair:setVisible(false)
	else
		self:setState(false)
		self.pair:setState(false)
		voice_chat.peerVoiceEnable(self.peer_id, false)
		self:setVisible(true)
		self.pair:setVisible(false)
	end	
end

--[[
enum RoomType 
{
PERSISTENT = 0, - default - rooms that cannot be deleted by the user, common rooms.
MULTICREW = 1,  - persistent rooms that are created for aircraft with crew
MANAGEABLE = 2, - managed rooms that can be deleted by the user. User is the owner of this room.
}
]]

function fillRooms(a_listRooms)
	usersVoiceOnOffbtn = {} -- очищаем кнопки индикации звука
	local offsetY = 0
	offsetY = addGroup(a_listRooms.PERSISTENT, cdata.PERSISTENT, 0, offsetY)	--PERSISTENT
	offsetY = addGroup(a_listRooms.MULTICREW, cdata.MULTICREW, 1, offsetY)		--MULTICREW
	offsetY = addGroup(a_listRooms.MANAGEABLE, cdata.MANAGEABLE, 2, offsetY)	--MANAGEABLE
		
	offsetY = offsetY + 20
		
	--	заглушка чтобы скроллпейн оставлял место под виджетами добавления комнат
	--	local sPlugTMP = Static.new()
	--	sPlugTMP:setSkin(sPlugSkin)
	--	sPlugTMP:setBounds(305,offsetY, 20, 20)
	--	spBox:insertWidget(sPlugTMP)
		
	spBox:updateWidgetsBounds()
	pDown:setVisible(true)

	local newWinH = offsetY
	if offsetY > hWin-300 then
		newWinH = hWin-300
	end
			
	if bExpand == true then 
		spBox:setSize(353, newWinH)
		pDown:setPosition(0,newWinH+47)
		
		if curMode == 1 then
			if voice_chat.isIntercom() then					
				window:setText(cdata.RadioIntercom)
			else
				window:setText(cdata.Radio)
			end
		else
			window:setText(nameMini)
		end	
	else
		spBox:setSize(353, 70)
		window:setText(nameMini)
	end
	
	updateSize()
end

function addGroup(a_data, a_title, a_id, a_offsetY)
	local id = 'group_'..a_id
	deployRooms[id] = deployRooms[id] or false
	
	activeOwnerId, activeRoomId, activeRoomType, activeUnitId = voice_chat.getActiveRoom()
--	base.print("-- activeOwnerId, activeRoomId, activeRoomType ---", activeOwnerId, activeRoomId, activeRoomType)

	for k, v in base.ipairs(a_data) do
		a_offsetY = addRoomInList(v, a_id, a_offsetY)
	end

	return a_offsetY
end

function addRoomInList(a_data, a_id, a_offsetY)
	local name = a_data.dispname or a_data.name

	local roomKey = 'key_'..a_data.owner_peer_id..a_data.room_id..a_data.type..a_data.unit_id
--	base.print("-- Room key: --", roomKey)

	usersVoiceOnOffbtn[a_data.room_id] = {}
	
	deployRooms[roomKey] = deployRooms[roomKey] or false
	
-- кнопка "развернуть комнату"
	local bRoomDownTMP = Button.new()
	bRoomDownTMP:setTooltipText(cdata.hintCollapsPeers)
	bRoomDownTMP.data = {}
	bRoomDownTMP.data.name = a_data.name
	bRoomDownTMP.data.roomKey = roomKey
	bRoomDownTMP.data.ownerPeerId = a_data.owner_peer_id
	bRoomDownTMP.data.roomId = a_data.room_id
	bRoomDownTMP.data.roomType = a_data.type
	bRoomDownTMP.data.unitId = a_data.unit_id
	bRoomDownTMP:setSkin(bRollupSkin)
	bRoomDownTMP:setBounds(15,a_offsetY, 30, 30)
	spBox:insertWidget(bRoomDownTMP)
	
	-- кнопка "свернуть комнату"
	local bRoomUpTMP = Button.new()
	bRoomUpTMP:setTooltipText(cdata.hintExpandPeers)
	bRoomUpTMP.data = {}
	bRoomUpTMP.data.name = a_data.name
	bRoomUpTMP.data.roomKey = roomKey
	bRoomUpTMP.data.ownerPeerId = a_data.owner_peer_id
	bRoomUpTMP.data.roomId = a_data.room_id
	bRoomUpTMP.data.roomType = a_data.type
	bRoomUpTMP.data.unitId = a_data.unit_id
	bRoomUpTMP:setSkin(bExpandSkin)
	bRoomUpTMP:setBounds(15,a_offsetY, 30, 30)
	spBox:insertWidget(bRoomUpTMP)			
	
	-- имя комнаты
	local bRoomTMP = Button.new()	
	bRoomTMP:setTooltipText(a_data.name)
	bRoomTMP.data = {}
	bRoomTMP.data.name = a_data.name
	bRoomTMP.data.roomKey = roomKey
	bRoomTMP.data.ownerPeerId = a_data.owner_peer_id
	bRoomTMP.data.roomId = a_data.room_id
	bRoomTMP.data.roomType = a_data.type
	bRoomTMP.data.unitId = a_data.unit_id
	
	local nameRoom = a_data.dispname
	if a_data.name == 'common' and voice_chat.RoomType.PERSISTENT then
		nameRoom = cdata.common
		nameMini = nameRoom
		bRoomTMP:setTooltipText(nameRoom)
		if a_data.owner_peer_id == activeOwnerId and a_data.room_id == activeRoomId  and
			a_data.type == activeRoomType and a_data.unit_id == activeUnitId	then
			bRoomTMP:setSkin(btnItemGrayBoldSkin)
		else
			bRoomTMP:setSkin(btnItemGraySkin)
		end		
	elseif a_data.name == 'coalition' and voice_chat.RoomType.PERSISTENT then
		local side = getPlayerSideName()
		if side == voice_chat.Side.RED then	
			nameRoom = cdata.coalition.." (".._("red")..")"
			if a_data.owner_peer_id == activeOwnerId and a_data.room_id == activeRoomId  and 
				a_data.type == activeRoomType and a_data.unit_id == activeUnitId then
				bRoomTMP:setSkin(btnItemRedBoldSkin)
				nameMini = nameRoom
			else
				bRoomTMP:setSkin(btnItemRedSkin)
			end
		elseif side == voice_chat.Side.BLUE then
			nameRoom = cdata.coalition.." (".._("blue")..")"
			if a_data.owner_peer_id == activeOwnerId and a_data.room_id == activeRoomId  and 
				a_data.type == activeRoomType and a_data.unit_id == activeUnitId then
				bRoomTMP:setSkin(btnItemBlueBoldSkin)
				nameMini = nameRoom
			else
				bRoomTMP:setSkin(btnItemBlueSkin)
			end
		end
		bRoomTMP:setTooltipText(nameRoom)
	else	
		if a_data.owner_peer_id == activeOwnerId and a_data.room_id == activeRoomId  and 
			a_data.type == activeRoomType and a_data.unit_id == activeUnitId then
			bRoomTMP:setSkin(btnItemGrayBoldSkin)
			nameMini = a_data.dispname
		else
			bRoomTMP:setSkin(btnItemGraySkin)
		end	
	end

	bRoomTMP:setText(nameRoom)
	bRoomTMP:setBounds(55,a_offsetY, 270, 30)
	spBox:insertWidget(bRoomTMP)
	
	local bRoomDelOutTMP = nil
	if a_id == voice_chat.RoomType.MANAGEABLE then
		-- кнопка "удалить/выйти"
		bRoomDelOutTMP = Button.new()
		bRoomDelOutTMP.data = {}
		bRoomDelOutTMP.data.name = a_data.name
		bRoomDelOutTMP.data.roomKey = roomKey
		bRoomDelOutTMP.data.ownerPeerId = a_data.owner_peer_id
		bRoomDelOutTMP.data.roomId = a_data.room_id
		bRoomDelOutTMP.data.roomType = a_data.type
		bRoomDelOutTMP.data.unitId = a_data.unit_id
		
		if a_data.type == voice_chat.RoomType.MANAGEABLE and 
			a_data.owner_peer_id == my_peer_id then  --MANAGEABLE - user room owner
			bRoomDelOutTMP:setTooltipText(cdata.hintDeleteRoom)
			bRoomDelOutTMP:setSkin(bDelSkin)
		else
			bRoomDelOutTMP:setTooltipText(cdata.hintLeaveRoom)
			bRoomDelOutTMP:setSkin(bOutSkin)
		end
		bRoomDelOutTMP:setBounds(305, a_offsetY, 30, 30)
		spBox:insertWidget(bRoomDelOutTMP)
		bRoomDelOutTMP.onChange = onRoomDelOut
		
		if a_id == voice_chat.RoomType.MANAGEABLE and 
			a_data.owner_peer_id == my_peer_id then --MANAGEABLE
			-- кнопка Plus у комнаты перед ведром
			local bPlusUsersRoomTMP = Button.new()
			bPlusUsersRoomTMP:setTooltipText(cdata.hintOpenPeersList)
			bPlusUsersRoomTMP:setSkin(bPlusSkin)
			bPlusUsersRoomTMP:setBounds(270,a_offsetY, 30, 30)
			spBox:insertWidget(bPlusUsersRoomTMP)
			bPlusUsersRoomTMP.data ={}
			bPlusUsersRoomTMP.data.offsetY = a_offsetY + 30
			bPlusUsersRoomTMP.data.roomKey = roomKey
			bPlusUsersRoomTMP.data.ownerPeerId = a_data.owner_peer_id
			bPlusUsersRoomTMP.data.roomId = a_data.room_id
			bPlusUsersRoomTMP.data.roomType = a_data.type
			bPlusUsersRoomTMP.data.unitId = a_data.unit_id
			bPlusUsersRoomTMP.onChange = onAddUser
		end
	end
	
	local function isAccess(a_user, a_idRoom)
		for tmp, peerId in base.pairs(a_idRoom.access_peer_list) do
			if peerId == a_user.peer_id then
				return true
			end
		end
		return false
	end
	
	if deployRooms[roomKey] == true then
		a_offsetY = a_offsetY + 30
		local spUsersTMP = ScrollPane.new()
		spUsersTMP:setTooltipText(cdata.hintTest)
		spUsersTMP:setSkin(spUsersSkin)
		local offsetUser = 0
		for k, user in base.pairs(users) do
			if isAccess(user, a_data) then
				local newItem = Button.new()
				newItem:setTooltipText(cdata.hintPeerName)
				if a_data.owner_peer_id == user.owner_peer_id and a_data.room_id == user.room_id then 
					if (a_data.side == voice_chat.Side.ALL or a_data.side == user.side) then
						newItem:setSkin(bUserActiveSkin)						
					else
						newItem:setSkin(bUserSkin)
					end
				else
					newItem:setSkin(bUserSkin)
				end
				newItem:setBounds(0, offsetUser, 250,30)
				newItem:setText(user.peer_name)		
				spUsersTMP:insertWidget(newItem)
				newItem.data ={}
				newItem.data.peer_id = user.peer_id					
				newItem.data.roomkey = roomKey
				newItem.data.ownerPeerId = a_data.owner_peer_id
				newItem.data.roomId = a_data.room_id
				newItem.data.roomType = a_data.type
				newItem.data.unitId = a_data.unit_id
				
				if not base.ED_PUBLIC_AVAILABLE then
					newItem:addMouseDownCallback(function(self, x, y, button) 
						if button == 3 and my_peer_id ~= user.peer_id then
							showSettUser(self.data, x, y)		 				
						end				
					end)
				else 
					if a_id == voice_chat.RoomType.MANAGEABLE and 
						a_data.owner_peer_id == my_peer_id and
							a_data.owner_peer_id ~= user.peer_id then --MANAGEABLE
					-- кнопка удалить игрока из комнаты
						local bDelTMP = Button.new()
						bDelTMP:setTooltipText(cdata.hintDeletePeer)
						bDelTMP:setSkin(bDelSkin)
						bDelTMP:setBounds(250,offsetUser, 30, 30)
						spUsersTMP:insertWidget(bDelTMP)
						bDelTMP.data ={}
						bDelTMP.data.peer_id = user.peer_id					
						bDelTMP.data.roomkey = roomKey
						bDelTMP.data.ownerPeerId = a_data.owner_peer_id
						bDelTMP.data.roomId = a_data.room_id
						bDelTMP.data.roomType = a_data.type
						bDelTMP.data.unitId = a_data.unit_id
						bDelTMP.onChange = onRemoveUserInRoom
					end
				end 
				
				if not base.ED_PUBLIC_AVAILABLE then
					if my_peer_id ~= user.peer_id then
						-- кнопка настроек игрока 
						local bStgTMP = Button.new()
						--	bStgTMP:setTooltipText(cdata.hintDeletePeer)
						bStgTMP:setSkin(bSettSkin)
						bStgTMP:setBounds(280,offsetUser, 30, 30)
						spUsersTMP:insertWidget(bStgTMP)
						bStgTMP.data ={}
						bStgTMP.data.peer_id = user.peer_id					
						bStgTMP.data.roomkey = roomKey
						bStgTMP.data.ownerPeerId = a_data.owner_peer_id
						bStgTMP.data.roomId = a_data.room_id
						bStgTMP.data.roomType = a_data.type
						bStgTMP.data.unitId = a_data.unit_id
						local tmpX, tmpY = spBox:getPosition()
						bStgTMP.data.x = 280
						bStgTMP.data.y = offsetUser + a_offsetY + tmpY + 20
						bStgTMP.onChange = onSettUserInRoom
					end
					
					--две кнопки друг над другом - видна только одна
					-- кнопка UserOff/UserMute 
						local tmpSettU = voice_chat.getPeerAudioState(user.peer_id)
						
						local bIconVolOffTMP = ToggleButton.new()
					--	bIconVolOffTMP:setTooltipText(cdata.hintDeletePeer)
						bIconVolOffTMP:setSkin(tbVoiceOffSkin)
						bIconVolOffTMP:setBounds(240,offsetUser, 30, 30)
						bIconVolOffTMP.peer_id = user.peer_id				
						spUsersTMP:insertWidget(bIconVolOffTMP)
						bIconVolOffTMP.onChange = onChange_mute
						
						
					-- кнопка UserOn/UserMute 
						local bIconVolOnTMP = ToggleButton.new()
					--	bIconVolOnTMP:setTooltipText(cdata.hintDeletePeer)
						bIconVolOnTMP:setSkin(tbVoiceOnSkin)
						bIconVolOnTMP:setBounds(240,offsetUser, 30, 30)
						bIconVolOnTMP.peer_id = user.peer_id	
						spUsersTMP:insertWidget(bIconVolOnTMP)
						bIconVolOnTMP.onChange = onChange_mute
						
						bIconVolOffTMP.pair = bIconVolOnTMP
						bIconVolOnTMP.pair = bIconVolOffTMP
						
						usersVoiceOnOffbtn[a_data.room_id][user.peer_id] = {off = bIconVolOffTMP, on = bIconVolOnTMP}

						bIconVolOffTMP:setVisible(true)
						bIconVolOnTMP:setVisible(false)						
				end
					
				offsetUser = offsetUser + 30
			end
		end		
		spUsersTMP:setBounds(0, a_offsetY, 320, offsetUser + 2)
		a_offsetY = a_offsetY + offsetUser
		spBox:insertWidget(spUsersTMP)
		bRoomUpTMP:setVisible(false)
		bRoomDownTMP:setVisible(true)
		

		if a_id == voice_chat.RoomType.MANAGEABLE and
			a_data.owner_peer_id == my_peer_id then --MANAGEABLE
			--кнопка добавления юзеров
			local addUserItem = Button.new()
			addUserItem:setTooltipText(cdata.hintOpenPeersList)
			addUserItem:setSkin(bAddUserSkin)
			addUserItem:setBounds(50, a_offsetY, 200,30)
			addUserItem:setText(cdata.Add_user)		
			spBox:insertWidget(addUserItem)
			addUserItem.data = {}
			addUserItem.data.offsetY = a_offsetY
			addUserItem.data.roomKey = roomKey
			addUserItem.data.ownerPeerId = a_data.owner_peer_id
			addUserItem.data.roomId = a_data.room_id
			addUserItem.data.roomType = a_data.type
			addUserItem.data.unitId = a_data.unit_id
			addUserItem.onChange = onAddUser
				
			-- кнопка Plus
			local bPlusUsersTMP = Button.new()
			bPlusUsersTMP:setTooltipText(cdata.hintOpenPeersList)
			bPlusUsersTMP:setSkin(bPlusSkin)
			bPlusUsersTMP:setBounds(250,a_offsetY, 30, 30)
			spBox:insertWidget(bPlusUsersTMP)
			bPlusUsersTMP.data ={}
			bPlusUsersTMP.data.offsetY = a_offsetY
			bPlusUsersTMP.data.roomKey = roomKey
			bPlusUsersTMP.data.ownerPeerId = a_data.owner_peer_id
			bPlusUsersTMP.data.roomId = a_data.room_id
			bPlusUsersTMP.data.roomType = a_data.type
			bPlusUsersTMP.data.unitId = a_data.unit_id
			bPlusUsersTMP.onChange = onAddUser
			
			a_offsetY = a_offsetY + 30	
		end

	else
		a_offsetY = a_offsetY + 30
		bRoomDownTMP:setVisible(false)
		bRoomUpTMP:setVisible(true)
	end
	
	objRooms[a_data.name] = {name = bRoomTMP, btnDown = bRoomDownTMP, btnUp = bRoomUpTMP, btnDelOut = bRoomDelOutTMP, spUsers = spUsersTMP}	

	bRoomDownTMP.onChange = onRoomDown
	bRoomUpTMP.onChange = onRoomUp
	bRoomTMP:addChangeCallback(onActiveRoom)
	
	
	return a_offsetY 
end

function onSettUserInRoom(self)
	local x, y = window:getPosition()
	showSettUser(self.data, self.data.x + x, self.data.y + y)
end

				
function showSettUser(data, x, y)
	windowSettUser:setPosition(x, y)
	windowSettUser:setVisible(true)
	
	local tmpSettU = voice_chat.getPeerAudioState(data.peer_id)
	cbMuteUser.data = data
	cbMuteUser:setState(tmpSettU.voice_enabled)
	hsVolumeUser:setValue(tmpSettU.track_audio_volume)
	hsVolumeUser.data = data
	bRemoveUser.data = data
end

function updateAddUserList()
	--base.print("---onAddUser---", AddUserList.roomKey)
	spAddUsers:clear()
	--local listUsers = voice_chat.getAccessPeersList(AddUserList.room_id)
	local listUsers = voice_chat.getAccessPeersList(AddUserList.ownerPeerId, AddUserList.roomId, AddUserList.roomType)
	---TEST--
--[[	listUsers ={
			{peer_id = 1, peer_name = "xxx1"},
			{peer_id = 2, peer_name = "xxx2"},
			{peer_id = 3, peer_name = "xxx3"},
			{peer_id = 4, peer_name = "xxx4"},
			{peer_id = 5, peer_name = "xxx5"},
			{peer_id = 6, peer_name = "xxx6"},
			{peer_id = 7, peer_name = "xxx7"},
			{peer_id = 8, peer_name = "xxx8"},
			{peer_id = 9, peer_name = "xxx9"},
			{peer_id = 15, peer_name = "xxx15"},
			{peer_id = 16, peer_name = "xxx16"},
			{peer_id = 17, peer_name = "xxx17"},
			{peer_id = 18, peer_name = "xxx18"},
			{peer_id = 19, peer_name = "xxx19"},
		}
]]	
	---
	local offsetUser = 0
	for k, user in base.pairs(listUsers) do
		if id == user.room_id then
			local newItem = Button.new()
			newItem:setTooltipText(cdata.hintPeerName)
			newItem:setSkin(bUserSkin)
			newItem:setBounds(0, offsetUser, 200,30)
			newItem:setText(user.peer_name)	
			newItem.data ={}
			newItem.data.peer_id = user.peer_id
			spAddUsers:insertWidget(newItem)
					
			-- кнопка добавить комнату
			local bPlusTMP = Button.new()
			bPlusTMP:setTooltipText(cdata.hintAddPeer)
			bPlusTMP:setSkin(bPlusSkin)
			bPlusTMP:setBounds(250,offsetUser, 30, 30)
			spAddUsers:insertWidget(bPlusTMP)
			bPlusTMP.data ={}
			bPlusTMP.data.peer_id = user.peer_id
			bPlusTMP.data.roomKey = AddUserList.roomKey
			bPlusTMP.data.ownerPeerId = AddUserList.ownerPeerId
			bPlusTMP.data.roomId = AddUserList.roomId
			bPlusTMP.data.roomType = AddUserList.roomType			
			bPlusTMP.onChange = onAddUserInRoom
	
			offsetUser = offsetUser + 30
		end
	end	
	
	offsetUser = offsetUser + 30
	if offsetUser > 150 then
		offsetUser = 150
	end
	spAddUsers:setBounds(0, 30, 290, offsetUser)
	
	panelAddUsers:setBounds(30, AddUserList.offsetY+50-spBox:getVertScrollValue(), 305, offsetUser+50) -- +50- spBox offset
	panelAddUsers:setVisible(true)
	panelAddUsers:setZIndex(10)
	
	updateSize()
end

function onAddUser(self)
	AddUserList = {}
	AddUserList.offsetY = self.data.offsetY
	AddUserList.roomKey = self.data.roomKey
	AddUserList.ownerPeerId = self.data.ownerPeerId
	AddUserList.roomId = self.data.roomId
	AddUserList.roomType = self.data.roomType
	updateAddUserList()
end

function onRoomDown(self)
--	base.print("---onRoomDown---", self.data.roomKey, self.data.ownerPeerId, self.data.roomId, self.data.roomType)
	hidePanelAddUsers()
	deployRooms[self.data.roomKey] = false
	UpdateManager.add(function()
							update()
							return true
						end
					)
end

function onRoomUp(self)
--	base.print("--- onRoomUp ---",self.data.roomKey, self.data.ownerPeerId, self.data.roomId, self.data.roomType)
	hidePanelAddUsers()
	deployRooms[self.data.roomKey] = true
	UpdateManager.add(function()
							update()
							return true
						end
					)
	
end

function onActiveRoom(self)
--	base.print("--- onActiveRoom ---", self.data.roomKey, self.data.ownerPeerId, self.data.roomId, self.data.roomType)
	hidePanelAddUsers()
	voice_chat.setActiveRoom(self.data.ownerPeerId, self.data.roomId, self.data.roomType, self.data.unitId)
	UpdateManager.add(function()
							update()
							return true
						end
					)
end

function onAddUserInRoom(self)
--	base.print("--- onAddUserInRoom ---",self.data.roomKey, self.data.ownerPeerId, self.data.roomId, self.data.roomType, self.data.peer_id)
	voice_chat.addUser(self.data.ownerPeerId, self.data.roomId, self.data.roomType, self.data.unitId, self.data.peer_id)
	UpdateManager.add(function()
							updateAddUserList()
							return true
						end
					)
end

function onRemoveUserInRoom(self)
--	base.print("--- onRemoveUserUserInRoom ---",self.data.roomKey, self.data.ownerPeerId, self.data.roomId, self.data.roomType, self.data.peer_id)
	voice_chat.removeUser(self.data.ownerPeerId, self.data.roomId, self.data.roomType, self.data.unitId, self.data.peer_id)
end

function onRoomDelOut(self)
--	base.print("--- bRoomDelOutTMP.onChange ---",self.data.roomKey, self.data.ownerPeerId, self.data.roomId, self.data.roomType, self.data.name)
	hidePanelAddUsers()
	if self.data.roomType == voice_chat.RoomType.MANAGEABLE and 
		self.data.ownerPeerId == my_peer_id then --MANAGEABLE, - user room owner
		voice_chat.deleteRoom(self.data.ownerPeerId, self.data.roomId, self.data.roomType, self.data.unitId)
		--base.print("--- deleteRoom ---")
	else
		voice_chat.leaveRoom(self.data.ownerPeerId, self.data.roomId, self.data.roomType, self.data.unitId)
		--base.print("--- leaveRoom ---")
	end	
end

function onCreateRoom()
	hidePanelAddUsers() -- any action hides the add user panel
	local newNameRoom = eCreateRoom:getText()
	if newNameRoom == cdata.CreateNewRoom then
		newNameRoom = cdata.MyRoom
	end
	local result = voice_chat.createRoom(newNameRoom, voice_chat.Side.ALL, voice_chat.RoomType.MANAGEABLE) -- createRoom("ROOM_NAME", SIDE, <ROOM_TYPE>)
	
	if result == 0 or result == nil then
		eCreateRoom:setText(cdata.CreateNewRoom)
		UpdateManager.add(function()
							update()
							return true
						end
					)
	elseif result == 1 then
		MsgWindow.warning(_("Attempt to add a room with wrong room type"), _("Create room"), _("OK")):show()
	elseif result == 2 then		
		MsgWindow.warning(_("Attempt to add an empty room name"), _("Create room"), _("OK")):show()
	end
end

function changeSlot(a_side, a_unit_id)
--	base.print("--- mul_voicechat.lua--ChangeSlot ---",a_side)
	voice_chat.changeSlot(a_side, a_unit_id)
end

function getPlayerSideName()
	local playerName = "player"
	local side = 0
	
	local player_info = net.get_player_info(net.get_my_player_id())
	if player_info then
		playerName = player_info.name
		side = player_info.side
	end
	
	return side, playerName
end

function start_stream()
	if bStart == false then
		bStart = true
--		base.print("--- Start voice chat panel ---")
		voice_chat.startStream()
	end
end

function stop_stream(a_bExit)
--	base.print("--- Stop voice chat panel ---",a_bExit)
	voice_chat.stopStream(a_bExit)
	
	if window then
		hidePanelAddUsers()
		window:setVisible(false)
	end	
	
	bStart = false
end

function ChangeVoiceChatOption(a_value, a_endUpdateVoiceChatOption)	
	voice_chat.changeVoiceChatOption(a_value, a_endUpdateVoiceChatOption)
end

function PushToTalkHighlight(do_highlight)
	if bMicState == 2 then
		if (do_highlight) then
			bMic:setSkin(bHighlightMicSkin)
			--base.print("highlight ON")
		else
			bMic:setSkin(bDefaultMicSkin)
			--base.print("highlight OFF")
		end		
	end
end

function isVisible()
	if not window then
		return false
	end
	return window:getVisible()
end


function onPeerConnect(id)	
	local is_local = true
	
	my_peer_id = net.get_my_player_id()
	if (id ~= my_peer_id) then
		is_local = false
	end
	
	local peer_info = net.get_player_info(id)
	
	if peer_info then
		local peerName = peer_info.name
		local peerSide = peer_info.side		
		local tmp_bMicState = optionsEditor.getOption("sound.microphone_use")
		local serverSettings = net.get_server_settings()
		
		voice_chat.onPeerConnect(serverSettings.advanced.voice_chat_server, net.get_server_id(), is_local, id, peerName, peerSide, tmp_bMicState)
	else
		base.print("[ERROR]:OnPeerConnect: peer info undefined peerID = ", id)
	end

end

function onPeerDisconnect(id)
	voice_chat.onPeerDisconnect(id)
end

function unlockKeyboardInput()
	if keyboardLocked then
		DCS.unlockKeyboardInput(true)
		keyboardLocked = false
	end
end

function lockKeyboardInput()
	if keyboardLocked then
		return
	end

	local keyboardEvents	= Input.getDeviceKeys(Input.getKeyboardDeviceName())

	DCS.lockKeyboardInput(keyboardEvents)
	keyboardLocked = true
end

