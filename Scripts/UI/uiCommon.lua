local base = _G

module('UICommon')

local metricSystemEnabled = true
function setMetricSystem(sys)
	metricSystemEnabled = sys
end

function isMetricSystem()
	return metricSystemEnabled
end