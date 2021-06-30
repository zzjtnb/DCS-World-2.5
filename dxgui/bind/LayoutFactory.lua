module('LayoutFactory', package.seeall)

local HorzLayout = require('HorzLayout')
local VertLayout = require('VertLayout')
local FormLayout = require('FormLayout')
local BorderLayout = require('BorderLayout')
local AnchorLayout = require('AnchorLayout')

-- layoutPtr ��� layout, ��������� ������ GUI 
-- ������� ��� ���� ������������� � ��������
function createLayout(layoutType, layoutPtr)
	local layout
	
	if HorzLayout.getType() == layoutType then
		layout = HorzLayout.new(nil, layoutPtr)
	elseif VertLayout.getType() == layoutType then
		layout = VertLayout.new(nil, layoutPtr)
	elseif FormLayout.getType() == layoutType then
		layout = FormLayout.new(nil, nil, layoutPtr)
	elseif BorderLayout.getType() == layoutType then
		layout = BorderLayout.new(nil, nil, layoutPtr)		
	elseif AnchorLayout.getType() == layoutType then
		layout = AnchorLayout.new(layoutPtr)			
	end
	
	return layout
end
