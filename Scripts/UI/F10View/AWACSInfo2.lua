local base = _G

module('AWACSInfo2')

local Window = base.require('Window')
local loader = base.require('DialogLoader')
local i18n = base.require('i18n')
local Gui = base.require("dxgui")

i18n.setup(_M)
local function dtransl(s) 
	if s and s ~= '' then return i18n.gettext.dtranslate('missioneditor', s) end
	return ''
end

local window = nil
local cdata = 
{
	altitude = _('ALT'),
	speed = _('SPEED'),
	heading = _('HEADING'),
	coord = _('COORD'),
	country = _('COUNTRY'),
	group = _('GROUP'),
	type = _('TYPE'),
	task = _('TASK'),
	callsign = _('CALLSIGN'),
}

function create()
	if window then return end
	window = loader.spawnDialogFromFile("./Scripts/UI/F10View/AWACSInfo2.dlg", cdata)
	
	local mw, mh = Gui.GetWindowSize()
	local x, y, w, h = window:getBounds()
	window:setBounds(15, mh-h-35, w, h)
	
	function window.btnStats:onChange()
		if onShowStats ~= nil then
		   onShowStats()
		end
	end
end

function setCallbacks(funcOnShowStats)
	onShowStats = funcOnShowStats
end

function move(dx,dy)
	local x, y, w, h = window:getBounds()
	window:setBounds(x + dx, y + dy, w, h)
end
	
function updateStaticData(country, group, unitType, callsign)
	window.sCountryValue:setText(country)
	window.sGroupValue:setText(group)
	window.sTypeValue:setText(unitType)
	window.sCallsignValue:setText(callsign)
end

function updateDynamicData(alt, speed, hdg, coordsStr, task)
	window.sAltValue:setText(base.tostring(alt))
	window.sSpeedValue:setText(base.tostring(speed))
	window.sHeadingValue:setText(base.tostring(hdg))
	window.sCoordsValue:setText(coordsStr)
	window.sTaskValue:setText(task)
end

function destroy()
	if not window then return end

	window:kill()
	window = nil
end

function show(b)
	window:setVisible(b)
end