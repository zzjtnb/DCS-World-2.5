local base = _G

module('Chart')
mtab = { __index = _M }

local require = base.require

local Factory = 	require('Factory')
local Widget = 		require('Widget')
local gui = 		require('dxgui')

Factory.setBaseClass(_M, Widget)

function new(text)
	return Factory.create(_M, text)
end

function construct(self, text)
	Widget.construct(self, text)
end

function newWidget(self)
	return gui.NewChart()
end

-- values - массив значений
function setValues(self, values)
	gui.ChartSetValues(self.widget, values)
end