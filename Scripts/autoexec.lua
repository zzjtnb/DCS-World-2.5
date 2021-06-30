--Initialization script for the Main lua Environment (globalL)

print('DCS started')

local imagesPath = {'./MissionEditor/themes/main/images/',
                './MissionEditor/data/images/Loadout/Units',
                './MissionEditor/data/images/Loadout/Weapon',
             }
for k, plugin in pairs(plugins) do
    local pathTex = plugin.dirName.."/".."ImagesGui/"
    local a, err = lfs.attributes(pathTex)
    if a and a.mode == 'directory' then
        table.insert(imagesPath, pathTex)
    end
end 

package.path = package.path..';./Scripts/?.lua;'
	..'./Scripts/Common/?.lua;./Scripts/UI/?.lua;'
	.. './Scripts/UI/F10View/?.lua;'
	.. './Scripts/UI/RadioCommandDialogPanel/?.lua;'
	.. './Scripts/Speech/?.lua;'
	.. './dxgui/bind/?.lua;./dxgui/loader/?.lua;./dxgui/skins/skinME/?.lua;./dxgui/skins/common/?.lua;'
	.. './MissionEditor/modules/?.lua;'
	.. './Scripts/Debug/?.lua;'
	.. './Scripts/Input/?.lua;'
 --[[ загрузка опций отсюда невозможна из-за sound.dll
local OptionsData	= require('Options.Data')
OptionsData.load()
]]
local Gui					= require("dxgui")
local GuiWin				= require('dxguiWin')

setmetatable(Gui, {__index = GuiWin})

Gui.SetPictureSearchPathes(imagesPath)

if console ~= nil then
	dofile('Scripts/UI/ConsoleCommands.lua') --Console command processor
	print('DCS shell loaded')
end	
 
dofile('Scripts/ScriptingSystem.lua')

class(Message)
class(Message.Object)
class(Message.Sender,		Message.Object)
class(Communicator,			Message.Sender)
if not ED_FINAL_VERSION then
	class(DebugCommunicator, 	Communicator)
end

--База данных загружается в server.lua из симулятора
assert(db.Callnames ~= nil)

--world event handlers
dofile('Scripts/World/EventHandlers.lua')

--speech
dofile('Scripts/Speech/speech.lua')

--UI
dofile('Scripts/UI/CarCommands.lua')
dofile('Scripts/UI/RadioCommandDialogPanel/RadioCommandDialogsPanel.lua')
dofile('Scripts/UI/uiUtils.lua')

function dofileEx(fileName, ...)
	local func, errorMsg = loadfile(fileName)
	if func == nil then
		error(errorMsg)
	else
		func(...)
	end
end

function beforeStart()

end

function afterStart()
	assert(speech.protocols.common.airdromeNames ~= nil)	
	if console ~= nil then
		console.toggle(false)
	end
end

local debriefing = require('debriefing')
local spstart = require('spstart')
local AWACSInfo = require('AWACSInfo')
local AWACSInfo2 = require('AWACSInfo2')
local AirdromeData = require('AirdromeData')
local Serializer = require('Serializer')
local WarehouseStatusDialog  = require('WarehouseStatusDialog')
local MarkPanel = require('MarkPanel')

function serialize(tbl, fName)
	local f, err = io.open(fName, 'w');
	if f == nil then
		error(err);
	end;
	
	local serializer = Serializer.new(f)
	for name, value in pairs(tbl) do
		serializer:serialize_compact(name, value)
	end
	f:close();
end
