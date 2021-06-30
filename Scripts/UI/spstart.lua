local base = _G

module('spstart')

local DialogLoader		= base.require('DialogLoader')
local ListBoxItem		= base.require('ListBoxItem')
local i18n				= base.require('i18n')

i18n.setup(_M)

local function dtransl(s) 
	if s and s ~= '' then return i18n.gettext.dtranslate('missioneditor', s) end
	return ''
end

local window = nil
local lbClients = nil
local dbUnits = nil

local onStartPressed = nil
local onVisibleChange = nil

local function createListBoxItem(clt, role, country, groupName, callsign, unitType, clientMisId)
	local lbSkin = lbClients:getSkin()
	
	local result =  ListBoxItem.new('')
	local skin = lbSkin.skinData.skins.item
	local pict  = 'FUI/Common/Flags/flag-Coalition0.png'
	
	if country ~= nil and country ~= '' then
		pict = 'FUI/Common/Flags/'..country.. '.png'	
	elseif clt == 'red' then
		pict = 'FUI/Common/Flags/flag-Coalition1.png'
	elseif clt == 'blue' then
		pict = 'FUI/Common/Flags/flag-Coalition2.png'
	end

	skin.skinData.states.released[1].picture.file = pict
	skin.skinData.states.released[2].picture.file = pict
	skin.skinData.states.hover[1].picture.file = pict
	skin.skinData.states.hover[2].picture.file = pict
	
	result:setSkin(skin)

	local text = ''
	if role == 'pilot' then
		local dispName = (dbUnits and dbUnits[unitType]) and dbUnits[unitType].DisplayName or unitType
		text =  _('PILOT') .. ' ' .. dispName .. ' (' .. groupName .. ', ' .. callsign .. ')'
	else
		text = base.db.roles[role] or role
	end
	
	result.clientId = clientMisId
	result:setText(text)
	
	return result
end

local function callOnStart()
	local selClient = lbClients:getSelectedItem()
	if selClient and selClient.clientId then 
		base.print(selClient.clientId)
		onStartPressed(selClient.clientId)
	end
end

function create()
	if window then return end
	
	local localization = {
		chooseRole = _('CHOOSE ROLE'),
		start = _('START'),
		cancel = _('CANCEL'),
	}
	
    window = DialogLoader.spawnDialogFromFile("./Scripts/UI/SPStart.dlg", localization)
	window:centerWindow()
	
	
	lbClients = window.lbClients;
	function lbClients:onItemMouseDoubleClick()		
		callOnStart()
	end

	function window.btnStart:onChange()
		callOnStart()
	end
	
	function window.btnClose:onChange()
		show(false)
	end
	
	function window.btnCancel:onChange()
		show(false)
	end
	
	function window:onKeyDown(name, number)
		if number == 27 then --esc
			show(false)
		end
	end
end

function setDBUnitsByType(unitsTable)
	 dbUnits = unitsTable
end

function updateData(clients)
	lbClients:clear()
	
	for i, v in base.ipairs(clients) do
		lbClients:insertItem(createListBoxItem(v.coalition, v.role, v.country, v.groupName, v.callsign, v.type, v.id), nil)
	end
	
	-- local newGridHeight = base.math.min((rowHeight+1) * lbClients:getRowCount() + 2, 500)
	-- local x, y, w, h =  lbClients:getBounds()
	-- lbClients:setBounds(x,y,w,newGridHeight)
	
	-- setBtnY(window.btnStart, y + newGridHeight + 20)
	-- setBtnY(window.btnCancel, y + newGridHeight + 20)
end

function setCallbacks(funcVisibleChange, funcStartSim)
	onStartPressed = funcStartSim
	onVisibleChange = funcVisibleChange
end

function destroy()
	if not window then return end

	window:kill()
	window = nil
end

function show(b)
	base.print('onShow')
	window:setVisible(b)
	if onVisibleChange then onVisibleChange(b) end
end

function isVisible()
	return window:isVisible()
end