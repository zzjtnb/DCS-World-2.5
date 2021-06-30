-- ������������
local ModuleLocker = require('ModuleLocker')

module('Align')

-- ���������� ���� ������������:
-- ������������ �� ����������� ������� ���������
min = 'min'

-- ������������ �� �������� ���������
middle = 'middle'

-- ������������ �� ������������ ������� ���������
max = 'max'

-- ������������ ������ ���������
stretch = 'stretch'

-- ��� ��������������� ������������ ������� ��������
left = min
center = middle
right = max

-- ��� ������������� ������������ ������� ��������
top = min
center = middle
bottom = max

function parseAlignType(text)
	local result
	
	if min == text or
	   middle == text or
	   max == text or
	   stretch == text or
	   left == text or
	   right == text or
	   center == text or
	   top == text or
	   bottom == text then
		result = text
	end	 
	
	return result
end

-- ���� offset �� �������, �� 0
function new(alignType, offset)
	return {
		type = parseAlignType(alignType), 
		offset = offset,
	}
end

function getNilValue(nilValue)
	return new(nilValue, nilValue)
end

ModuleLocker.lock(_M)