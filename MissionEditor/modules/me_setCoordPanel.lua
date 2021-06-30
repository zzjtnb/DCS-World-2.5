local base = _G

module('me_setCoordPanel')

local require = base.require
local string = base.string
local os = base.os

local loader			= require('DialogLoader')
local U					= require('me_utilities')
local MapWindow			= require('me_map_window')
local Terrain			= require('terrain')
local UpdateManager		= require('UpdateManager')
local OptionsData		= require('Options.Data')
local UC				= require('utils_common')

require('i18n').setup(_M)

cdata =
{
	unknownFormat  	= 	_("Unknown format"),
	setCoord		=	_("Set position"),
	ok				=	_("ok"),
	info			=	_("Type required coordinates here (geographical or MGRS)"),
}


	---форматы:
	
	--МГРС   37 T CK 12345 12345
	--       X-12345678 Z-12345678
	--	     44°12'12'' N 44°12'12'' E		
	--		 N41 5.378 E43 13.639

function create(x, y, w, h)
	window = loader.spawnDialogFromFile('MissionEditor/modules/dialogs/me_setCoordPanel.dlg', cdata)
	window:setBounds(x, y, w, h)

	eEdit = window.eEdit
	btnOk = window.btnOk
	sError = window.sError
	sHint = window.sHint
	
	btnOk.onChange = btnOk_onChange

	eEdit:addChangeCallback(function(self)
		if "" == self:getText() or nil == self:getText()then		
			sHint:setText(cdata.info)
		else			
			sHint:setText("")
		end
	end)
end    


function show(visible)
    window:setVisible(visible)	
	eEdit:setText("")
	sError:setVisible(false)
	
	if visible == true then
		eEdit:setFocused(true)
	end
end

function getVisible()
	return window:getVisible()
end


function btnOk_onChange()
	local str = eEdit:getText()
	sError:setVisible(false)

	if base.string.find(str,"^%s*%d+°%d+'%d+'' %a %s*%d+°%d+'%d+'' %a%s*$") ~= nil then   -- 44°12'12'' N 44°12'12'' E		 -- 41°3'12'' N 43°11'12'' E    
		local x,y = convertStrLatLongToMeters(str)
		if x == nil or y == nil then
			sError:setText(cdata.unknownFormat)
			sError:setVisible(true)
		else
			local lat, long = MapWindow.convertMetersToLatLon(x, y)
			MapWindow.focusPointMap(x,y)
		end
		
	elseif base.string.find(str,"^%s*[Xx][+-]%d+ %s*[Zz][+-]%d+%s*$") ~= nil then
		local x = base.string.gmatch(str,"%d+")
		local y = base.string.gmatch(str,"%d+")
		local res = {}
		local i = 1
		for w in base.string.gmatch(str,"[+-]%d+") do 
			res[i] = w
			i = i+1
		end

		if MapWindow.getPointInMap(res[1], res[2]) == true then
			MapWindow.focusPointMap(res[1], res[2])
		else
			sError:setText(cdata.unknownFormat)
			sError:setVisible(true)
		end	
	elseif base.string.find(str,"^%s*[NnSs]%d+ %d+.%d+ %s*[EeWw]%d+ %d+.%d+%s*$") ~= nil then --		 N41 5.378 E43 13.639
		local x,y = convertStrLatLongDToMeters(str)
		if x == nil or y == nil then
			sError:setText(cdata.unknownFormat)
			sError:setVisible(true)
		else
			local lat, long = MapWindow.convertMetersToLatLon(x, y)
			MapWindow.focusPointMap(x,y)
		end
		
	elseif base.string.find(str,"^%s*%d+%s*%a%s*%a+ %d+ %d+%s*$") ~= nil then	-- 38 T LL 49930 49350	-- 36 T WR 34150 40302
		local x,y = Terrain.convertMGRStoMeters(str)
		MapWindow.focusPointMap(x,y)
		
--[[	elseif base.string.find(str,"^%d+%a%a+ %d+ %d+%s*$") ~= nil then  --37TDH 53453 54232
		sError:setText("mgrs2")	]]
	else	
		sError:setText(cdata.unknownFormat)
		sError:setVisible(true)
	end
end	


function stringLatLongToDegrees(str) -- 44°12'12'' N
	local value = {} 
	local i = 1
	for w in base.string.gmatch(str,"%d+") do 
		value[i] = w
		i = i+1
	end
	
	local degrees = value[3]/3600 + value[2]/60 + value[1]
	value[4] = base.string.match(str,"%s")
	
	if value[4] == 'W' or value[4] == 'w' or value[4] == 'S' or value[4] == 's' then
		degrees = -degrees
	end

	return degrees
end


function stringLatLongDToDegrees(str) --  E45 84.343
	local value = {} 
	local i = 1
	for w in base.string.gmatch(str,"%d+") do 
		value[i] = w
		i = i+1
	end
	
	value[3] = setMant(base.tonumber(value[3]))
	
	local degrees = (value[3] + value[2])/60 + value[1]
	value[4] = base.string.match(str,"%s")
	
	if value[4] == 'W' or value[4] == 'w' or value[4] == 'S' or value[4] == 's' then
		degrees = -degrees
	end

	return degrees
end


function convertStrLatLongDToMeters(str) -- N41 5.378 E43 13.639
	local res = {}
	local i = 1

	for w in base.string.gmatch(str,"%a%d+ %d+.%d+") do 
		res[i] = w
		i = i+1
	end
	
	local lat  = stringLatLongDToDegrees(res[1])
	local long = stringLatLongDToDegrees(res[2])
	
	if long == nil or lat == nil then
		return nil
	end
	
	local x,y = Terrain.convertLatLonToMeters(lat, long)	
	
	return x,y	
end

function convertStrLatLongToMeters(str) -- 44°12'12'' N 44°12'12'' E	
	local res = {}
	local i = 1

	for w in base.string.gmatch(str,"%d+°%d+'%d+'' %a") do 
		res[i] = w
		i = i+1
	end
	
	local lat  = stringLatLongToDegrees(res[1])
	local long = stringLatLongToDegrees(res[2])
	
	if long == nil or lat == nil then
		return nil
	end
	
	local x,y = Terrain.convertLatLonToMeters(lat, long)	
	
	return x,y	
end


function setMant(number)

	while number > 1 do
		number = number / 10
	end

	return number
end




