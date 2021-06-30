local base = _G

module('AirdromeData')

local Window = base.require('Window')
local loader = base.require('DialogLoader')
local i18n = base.require('i18n')
local Gui = base.require("dxgui")
local UICommon = base.require('UICommon')

i18n.setup(_M)
local function dtransl(s) 
	if s and s ~= '' then return i18n.gettext.dtranslate('missioneditor', s) end
	return ''
end

local window = nil
local cdata = 
{
	airdomeData = _('AIRDROME DATA'),
	coalition = _('COALITION'),
	coordinates = _('COORDINATES'),
	elevation = _('ELEVATION'),
	name = _('NAME'),
	rwylength = _('RWY Length'),
	tacan = _('TACAN'),
	atc = _('ATC'),				
	vor = _('VOR'),				
	rsbn = _('RSBN'),
	rwys = _('RWYs'),
	ils = _('ILS'),
	outerndb = _('OUTER NDB'),
	innerndb = _('INNER NDB'),
	rpmg = _('PRMG'),
	icaocode = _('ICAO'),
	Resources = _('RESOURCES'),
}

function create()
	if window then return end
	window = loader.spawnDialogFromFile("./Scripts/UI/F10View/AirdromeData.dlg", cdata)
	
	local mw, mh = Gui.GetWindowSize()
	local x, y, w, h = window:getBounds()
	window:setBounds(15, mh-h-15, w, h)
	
	function window.Panel1.bClose:onChange()
		--base.print('asdasdasd')
		if onClose ~= nil then
		   onClose()
		end
		show( false )
	end

	function window.Panel1.Panel1.bResources:onChange()
		--base.print('asdasdasd')
		if onShowStatsAirdrome ~= nil then
		   onShowStatsAirdrome()
		end
	end

end

function setCallbacks(funcOnClose,funcOnStats)
	onClose = funcOnClose
	onShowStatsAirdrome = funcOnStats
end

function move(dx,dy)
	local x, y, w, h = window:getBounds()
	window:setBounds(x + dx, y + dy, w, h)
end
	
function updateStaticData(name,atc,country,tacan,rsbn,vor,rwy1,rwy2,rwylen,ils1,ils2,outer1,outer2,inner1,inner2,alt,coordsStr,callsign,prmg1,prmg2)	
	local sfx = UICommon.isMetricSystem() and _('m') or _('ft')
	window.Panel1.Panel1.sName:setText(name)
	window.Panel1.Panel1.sAtc:setText(atc)
	window.Panel1.Panel1.sCoalition:setText(country)
	window.Panel1.Panel1.sTacan:setText(tacan)
	window.Panel1.Panel1.sRsbn:setText(rsbn)
	window.Panel1.Panel1.sVor:setText(vor)
	window.Panel1.Panel1.sRwys1:setText(base.tostring(rwy1))
	window.Panel1.Panel1.sRwys2:setText(base.tostring(rwy2))
	window.Panel1.Panel1.sRwylenght:setText(base.tostring(rwylen)..' '..sfx)
	window.Panel1.Panel1.sIls1:setText(ils1)
	window.Panel1.Panel1.sIls2:setText(ils2)
	window.Panel1.Panel1.sOuterndb1:setText(outer1)
	window.Panel1.Panel1.sOuterndb2:setText(outer2)
	window.Panel1.Panel1.sInnerndb1:setText(inner1)
	window.Panel1.Panel1.sInnerndb2:setText(inner2)
	window.Panel1.Panel1.sElevation:setText(base.tostring(alt)..' '..sfx)
	window.Panel1.Panel1.sCoordinates:setText(coordsStr)
	window.Panel1.Panel1.sRpmg1:setText(prmg1)
	window.Panel1.Panel1.sRpmg2:setText(prmg2)
	window.Panel1.Panel1.sIcaoCode:setText(callsign)
end

function updateDynamicData( alt, coordsStr )
end

function destroy()
	if not window then return end

	window:kill()
	window = nil
end

function show(b)
	window:setVisible(b)
end