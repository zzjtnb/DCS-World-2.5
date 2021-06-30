-- ��������
local Align = require('Align')
local Size = require('Size')
local Rect = require('Rect')
local ModuleLocker = require('ModuleLocker')

module('Picture')

-- filename - ���� � ����� �������� (���� �� ������, �� �������� �� ��������)
-- color - ����, � ������� ����� ����������� ����� ��������
-- horzAlign - ������������ �������� �� ����������� ������ �������
-- vertAlign - ������������ �������� �� ��������� ������ �������
-- size - ������ �������� (���� �� ������, �� ������ �������� �������� filename)
-- rect - ������������� ������� ������ �������� filename � ��������
function new(filename, color, horzAlign, vertAlign, size, rect, userTexSampler, resizeToFill)
	return {
		file = filename,
		color = color or getDefaultColor(),
		horzAlign = horzAlign or getDefaultHorzAlign(),
		vertAlign = vertAlign or getDefaultVertAlign(),
		size = size or getDefaultSize(),
		rect = rect or getDefaultRect(),
		userTexSampler = userTexSampler or 0,
		resizeToFill = resizeToFill,
	}
end		

function getNilValue(nilValue)
	return new(nilValue, -- file
			   nilValue, -- color
			   Align.getNilValue(nilValue), -- horzAlign
			   Align.getNilValue(nilValue), -- vertAlign
			   Size.getNilValue(nilValue), -- size
			   Rect.getNilValue(nilValue), -- rect
			   nilValue) -- userTexSampler
end

function getDefaultColor()
	return '0xffffffff'
end

function getDefaultHorzAlign()
	return Align.new(Align.left)
end

function getDefaultVertAlign()
	return Align.new(Align.center)
end

function getDefaultSize()
	return Size.new(0, 0)
end

function getDefaultRect()
	return nil
end

ModuleLocker.lock(_M)
