
local base = _G

module('loadLiveries')

local i18n = base.require('i18n')
local log      = base.require('log')
local DCS    = base.require('DCS')
i18n.setup(_M)


-- заменяет "/" на "_"
function fixUnitType(typeName)
    local typeName = base.string.gsub(typeName, '/', '_');
    return typeName
end


function loadSchemes(livery_entry_point,countryShortName)
	local schemes = {}
	local fixed_unit   = fixUnitType(livery_entry_point)

	local liveriesData = DCS.getObjectLiveriesNames(fixed_unit, countryShortName, base.string.lower(i18n.getLocale()))

	if liveriesData then
		for k,v in base.ipairs(liveriesData) do
			base.table.insert(schemes, {itemId = v[1], name = v[2]})  
		end 
	end
	 
	return schemes
end