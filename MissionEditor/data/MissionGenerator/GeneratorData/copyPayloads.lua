local base = _G
local loadout = require('me_loadout')
local loadoutUtils = require('me_loadoututils')
local ConfigHelper = require('ConfigHelper')
local TableUtils	= require('TableUtils')
local loadfile = base.loadfile

local defaultUnitsPayloads
local unitPayloadsFilenames

local function loadPayloads()
	-- загрузка базы данных	
	local unitPayloadsFolder = ConfigHelper.getUnitPayloadsSysPath()
	local filenames = loadoutUtils.getUnitPayloadFileNames()
	
	defaultUnitsPayloads = {}
    unitsPayloads = {}
	unitPayloadsFilenames = {}
    
	for i, filename in pairs(filenames) do
		local path = loadoutUtils.getUnitPayloadsReadPath(filename)
		local f, err = loadfile(path)
		
		if f then
			local ok, res = base.pcall(f)
			if ok then
				local unitPayloads = res
				local unitType = unitPayloads.unitType or unitPayloads.name
				defaultUnitsPayloads[unitType] = unitPayloads
				unitPayloadsFilenames[unitType] = filename
			else
				log.error('ERROR: loadPayloads_() failed to pcall "'..filename..'": '..res)
			end				              
		else
			print('Cannot load payloads!',filename,path, err)
		end
	end
    
    TableUtils.recursiveCopyTable(unitsPayloads, defaultUnitsPayloads)

	return unitsPayloads
end

unitsPayloads = loadPayloads()