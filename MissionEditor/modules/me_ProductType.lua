local base = _G

module('me_ProductType')

local data

function loadTypeOfSale()
    local bool_opts = {'enableModulesManager', 'enableTrainingLinks', 'noNews', 'noOffline'}
    local ValidTypes =
    {
        ED          = {enableModulesManager = true, enableTrainingLinks = true},
        STEAM       = {noOffline = true}, 
        DCSPRO      = {noNews = true, noOffline = true},
        PREVIEW     = {noOffline = true},
		MCS			= {noNews = true, noOffline = true},
		LOFAC		= {noNews = true, noOffline = true},
    }

    local typesSales
    local file = base.io.open("Config/retail.cfg", 'r')
    if file then
        typesSales = file:read('*line')
        file:close()
    end
    if not typesSales or not ValidTypes[typesSales] then
        typesSales = 'ED'
    end

    data = ValidTypes[typesSales]
    data.type = typesSales -- NOTE: this modifies ValidTypes[typesSales]

    -- fix the options which are explicitly checked against false
    for i,k in base.ipairs(bool_opts) do
        if not data[k] then data[k] = false end
    end

    return data
end

function getType()
	return data.type
end

function getOpt(a_opt)
	return data[a_opt]
end
 
loadTypeOfSale() 