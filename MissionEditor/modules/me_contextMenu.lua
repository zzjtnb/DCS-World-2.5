local base = _G

module('me_contextMenu')

local require       = base.require
local pairs         = base.pairs
local ipairs        = base.ipairs
local table         = base.table
local math          = base.math
local loadfile      = base.loadfile
local setfenv       = base.setfenv
local string        = base.string
local assert        = base.assert
local io            = base.io
local loadstring    = base.loadstring
local print         = base.print
local os            = base.os


local U 					= require('me_utilities')	
local MapWindow 			= require('me_map_window')
local DialogLoader			= require('DialogLoader')
local Gui               	= require('dxgui')
local ListBoxItem			= require('ListBoxItem')
local Static            	= require('Static')
local TextUtil          	= require('textutil')
local i18n					= require('i18n')
local Terrain         		= require('terrain')
local TriggerZoneController	= require('Mission.TriggerZoneController')
local MapController			= require('Mission.MapController')

i18n.setup(_M)

local cdata = 
{

}

local X = 0
local Y = 0
local winW
local winH
local objects

function command_assignAs(a_item)
	base.print("---command_assignAs---")
	
	local radius = objects[1].radius
	
	local properties = {}
	base.table.insert(properties, {["key"] = "ROLE",["value"] = ""})
	base.table.insert(properties, {["key"] = "VALUE",["value"] = ""})
	base.table.insert(properties, {["key"] = "OBJECT ID",["value"] = objects[1].id})
	base.table.insert(properties, {["key"] = "NAME"     ,["value"] = objects[1].model})


	local triggerZoneId = TriggerZoneController.addTriggerZone(objects[1].model,objects[1].center[1], objects[1].center[2], radius, properties)
	
	MapController.onToolbarTriggerZone(true)
	TriggerZoneController.selectTriggerZone(triggerZoneId)
	
end

local listCommands = 
{
	{command  = "assignAs", displayName = _("assign as ..."), func = command_assignAs}
}

function create()
	window = DialogLoader.spawnDialogFromFile('MissionEditor/modules/dialogs/me_contextMenu.dlg', cdata)
	
	winW, winH = Gui.GetWindowSize()
	window:setBounds(0, 0, winW, winH)
	listBox = window.listBox
	sTest = window.sTest
	
	window:addMouseDownCallback(function(wnd, x, y, button)
		local widgetPtr = Gui.FindWidgetAtScreenPoint(x, y)
		local widget = window.widgets[widgetPtr] -- перевести из указателя С++ в виджет Lua

		if widget == nil then
			show(false)
		end
	end) 
	
	listBox.onChange = listBox_onChange
end

function listBox_onChange(self)
	item = self:getSelectedItem()
	
	if item.func then
		item.func(item)
	end
	show(false)
end


function show(b, x, y)
	if not window then
		create()
	end
	
	objects = nil
	
	if b == false or x == nil or y == nil then
		window:setVisible(false)
		return
	end
	
	mapX, mapY = base.me_map_window.getMapPoint(x, y)
	objects = Terrain.getObjectsAtMapPoint(mapX, mapY)
	
	if objects then 
		base.print("---getObjectsAtMapPoint---",mapX, mapY)
		base.U.traverseTable(objects)
		base.print("---getObjectsAtMapPoint---",x, y)
	end
	
	window:setPosition(x, y)

	
	if mapX == nil or mapY == nil or objects == nil or #objects == 0 then
		window:setVisible(false)
		return
	end
	
	updateList(listCommands)
	window:setVisible(true)

end

local function compareUnits(left, right)
	return TextUtil.Utf8Compare(left.displayName, right.displayName) 
end

function updateList(listCommands)
	listBox:clear()
	
	if listCommands and # listCommands > 0 then
		local w = 100
		local h = 2
		base.table.sort(listCommands, compareUnits)
		for k,v in base.pairs(listCommands) do
			local newItem = ListBoxItem.new(v.displayName)
			sTest:setText(v.displayName)
			local nw,nh = sTest:calcSize()
			if (nw+30) > w then
				w = nw + 30
			end
			h = h + 20
			newItem.data = v
			newItem.command = v.command
			base.print("--v.func--",v.func,command_assignAs)
			newItem.func = v.func
			listBox:insertItem(newItem)
		end
		if h > 202 then
			h = 202
		end
		listBox:setSize(w, h)
		if (Y+h+30) > winH then
			Y = winH - h-30
		end
	end
end

