local base = _G

module('Menu')
mtab = { __index = _M }

local Factory	= base.require('Factory')
local Widget	= base.require('Widget')
local gui		= base.require('dxgui')

Factory.setBaseClass(_M, Widget)

function new()
	return Factory.create(_M)
end

function construct(self)
	Widget.construct(self)
	
	self:addChangeCallback(function()
		self:onChange(self:getSelectedItem())
	end)
	
	local hotKey = base.require('Window').parseHotKey('escape')
	
	gui.WindowAddHotKeyCallback(self.widget, hotKey, function()
		self:setVisible(false)
	end)
end

function newWidget(self)
	return gui.NewMenu()
end

function clone(self)
	return Factory.clone(_M, self)
end

function createClone(self)
	return gui.MenuClone(self.widget, Factory.registerWidget)
end

function register(self, widgetPtr)
	Widget.register(self, widgetPtr)
	
	local count = self:getItemCount()
	
	for i = 1, count do
		local itemPtr = gui.MenuGetItem(self.widget, i - 1)
		local typeName = gui.WidgetGetTypeName(itemPtr)
		
		Factory.registerWidget(typeName, itemPtr)
	end
end

-- index - опционально
-- если index = -1 или index = nil то item добавляется в конец списка
function insertItem(self, item, index)
	gui.MenuInsertItem(self.widget, item.widget, index)
end

function getItem(self, index)
	return widgets[gui.MenuGetItem(self.widget, index)]
end

function removeItem(self, item)
	gui.MenuRemoveItem(self.widget, item.widget)	
end

function removeAllItems(self)
	gui.MenuRemoveAllItems(self.widget)
end

function clear(self)
	gui.MenuClear(self.widget)
end

function getItemIndex(self, item)
	return gui.MenuGetItemIndex(self.widget, item.widget)
end

function getItemCount(self)
	return gui.MenuGetItemCount(self.widget)
end

-- получить выбранный пользователем итем в onChange
function getSelectedItem(self)
	return widgets[gui.MenuGetSelectedItem(self.widget)]
end

-- получить активный итем в калбеке addItemMouseInCallback
function getMouseInsideItem(self)
	return widgets[gui.MenuGetMouseInsideItem(self.widget)]
end

function setAsWidget(self, asWidget)
	gui.WindowSetAsWidget(self.widget, asWidget)
end

function getAsWidget(self)
	return gui.WindowGetAsWidget(self.widget)
end

function addItemMouseInCallback(self, callback)
	self:addCallback('menu item mouse in', callback)
end

function addItemMouseOutCallback(self, callback)
	self:addCallback('menu item mouse out', callback)
end