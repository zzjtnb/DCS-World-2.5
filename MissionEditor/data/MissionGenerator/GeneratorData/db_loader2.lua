
local base = _G
dofile(db_path.."db_years.lua");
dofile(db_path.."db_attributes.lua");


-------------------------------------------------------------------
-- Fill DB
-------------------------------------------------------------------
-- replays name with display name
function hackNames(unitsList)
    for i,v in pairs(unitsList) do
        displayNameByName[v.Name] = v.DisplayName
        nameByDisplayName[v.DisplayName] = v.Name
        v.type = v.Name
        v.Name = v.DisplayName
    end
end

unit_by_name = {}
unit_by_type = {}
  
displayNameByName = {}
nameByDisplayName = {}
  
seaPlane = {}
seaHelicopter = {}


plane_by_type = {}
--base.print('seaPlanes:')
--hackNames(db.Units.Planes.Plane)
for i,v in pairs(db.Units.Planes.Plane) do
	plane_by_type[v.type] = v
	unit_by_name[v.Name] = v    
	unit_by_type[v.type] = v
	local rwc = v.TakeOffRWCategories or v.LandRWCategories
	if rwc then
		for j,u in pairs(rwc) do
			if u.Name == 'AircraftCarrier' or u.Name == 'AircraftCarrier With Catapult' or u.Name == 'AircraftCarrier With Tramplin' then
				seaPlane[v.Name] = true
				break
			end
		end
	end
end

  
helicopter_by_type = {}
--hackNames(db.Units.Helicopters.Helicopter)
for i,v in pairs(db.Units.Helicopters.Helicopter) do
	helicopter_by_type[v.type] = v
	unit_by_name[v.Name] = v
	unit_by_type[v.type] = v
	local rwc = v.TakeOffRWCategories or v.LandRWCategories
	if rwc then
		for j,u in pairs(rwc) do
			if u.Name == 'Carrier' or u.Name == 'HelicopterCarrier' then
				seaHelicopter[v.Name] = true
				break
			end
		end
	end
end
  
--hackNames(db.Units.Ships.Ship)
ship_by_type = {}
for i,v in pairs(db.Units.Ships.Ship) do
	ship_by_type[v.type] = v
	unit_by_name[v.Name] = v
	unit_by_type[v.type] = v
end
 
--hackNames(db.Units.Cars.Car)
car_by_name = {}
local isNeedAddTrain = false
for i,v in pairs(db.Units.Cars.Car) do
	car_by_name[v.Name] = v
	unit_by_name[v.Name] = v
	unit_by_type[v.type] = v
	if v.category == 'Locomotive' or v.category == 'Carriage' then
		isNeedAddTrain = true
	end
end

if isNeedAddTrain == true then
	local unit = {}
	unit.category = "Train"	
	unit.DisplayName = "Train_loc"
	unit.Name = unit.DisplayName
	unit.type = "Train"
	unit.mapclasskey = "P91000108";
	db.Units.Cars.Train = unit
	unit_by_name[unit.Name] = unit
	unit_by_type[unit.type] = unit
end

--hackNames(db.Units.GroundObjects.GroundObject)
ground_object_by_name = {}
for i,v in pairs(db.Units.GroundObjects.GroundObject) do
	ground_object_by_name[v.Name] = v
end

--hackNames(db.Units.Fortifications.Fortification)
fortification_by_name = {}
for i,v in pairs(db.Units.Fortifications.Fortification) do
	fortification_by_name[v.Name] = v
	unit_by_name[v.Name] = v
	unit_by_type[v.type] = v
end

--hackNames(db.Units.Heliports.Heliport)
heliport_by_type = {}
for i,v in pairs(db.Units.Heliports.Heliport) do
	heliport_by_type[v.type] = v
	unit_by_name[v.Name] = v
	unit_by_type[v.type] = v
end
  
--hackNames(db.Units.GrassAirfields.GrassAirfield)
grassairfield_by_name = {}
for i,v in pairs(db.Units.GrassAirfields.GrassAirfield) do
	grassairfield_by_name[v.Name] = v
	unit_by_name[v.Name] = v
	unit_by_type[v.type] = v
end
  
--hackNames(db.Units.Warehouses.Warehouse)
warehouse_by_name = {}
for i,v in pairs(db.Units.Warehouses.Warehouse) do
	warehouse_by_name[v.Name] = v
	unit_by_name[v.Name] = v
	unit_by_type[v.type] = v
end
  
--hackNames(db.Units.Cargos.Cargo)
cargo_by_name = {}
for i,v in pairs(db.Units.Cargos.Cargo) do
	cargo_by_name[v.Name] = v
	unit_by_name[v.Name] = v
	unit_by_type[v.type] = v
end
  
--hackNames(db.Units.Effects.Effect)
for i,v in pairs(db.Units.Effects.Effect) do
	unit_by_name[v.Name] = v
	unit_by_type[v.type] = v
end
  
--hackNames(db.Units.LTAvehicles.LTAvehicle)
LTAvehicle_by_name = {}
for i,v in pairs(db.Units.LTAvehicles.LTAvehicle) do
	LTAvehicle_by_name[v.Name] = v
	unit_by_name[v.Name] = v
	unit_by_type[v.type] = v
end
  
--hackNames(db.Units.Animals.Animal)
Animal_by_name = {}
for i,v in pairs(db.Units.Animals.Animal) do
	Animal_by_name[v.Name] = v
	unit_by_name[v.Name] = v
	unit_by_type[v.type] = v
end
  
--hackNames(db.Units.Personnel.Personnel)
Personnel_by_name = {}
for i,v in pairs(db.Units.Personnel.Personnel) do
	Personnel_by_name[v.Name] = v
	unit_by_name[v.Name] = v
	unit_by_type[v.type] = v
end
  
--hackNames(db.Units.ADEquipments.ADEquipment)
ADEquipment_by_name = {}
for i,v in pairs(db.Units.ADEquipments.ADEquipment) do
	ADEquipment_by_name[v.Name] = v
	unit_by_name[v.Name] = v
	unit_by_type[v.type] = v
end
  
--hackNames(db.Units.WWIIstructures.WWIIstructure)
WWIIstructure_by_name = {}
for i,v in pairs(db.Units.WWIIstructures.WWIIstructure) do
	WWIIstructure_by_name[v.Name] = v
	unit_by_name[v.Name] = v
	unit_by_type[v.type] = v
end
-------------------------------------------------------------------



function getCountriesTable()
    local countries = {}
    for i, country in ipairs(db.Countries) do
        table.insert(countries, {name = country.OldID, id = country.WorldID})
    end
    return countries
end

function getPylonsEnumeration(unitName)
	local unitTypeDesc = unit_by_type[unitName]
	if unitTypeDesc and unitTypeDesc.pylons_enumeration then
		return unitTypeDesc.pylons_enumeration
	end
	return 0
end

function getTypeUnitsLevel1(unitName)
	local unitTypeDesc = unit_by_type[unitName]
	if unitTypeDesc and unitTypeDesc.attribute and unitTypeDesc.attribute[1] then
		return unitTypeDesc.attribute[1]
	end
	return 0
end

function getAttributes(unitName)
	local result = {}
	local unitTypeDesc = unit_by_type[unitName]
	if unitTypeDesc and unitTypeDesc.attribute then
		result = unitTypeDesc.attribute
	end
	return result;
end

function getTypeUnitsLevel2(unitName)
	local unitTypeDesc = unit_by_type[unitName]
	if unitTypeDesc and unitTypeDesc.attribute and unitTypeDesc.attribute[2] then
		return unitTypeDesc.attribute[2]
	end
	return 0
end

function getTypeUnitsLevel3(unitName)
	local unitTypeDesc = unit_by_type[unitName]
	if unitTypeDesc and unitTypeDesc.attribute and unitTypeDesc.attribute[3] then
		return unitTypeDesc.attribute[3]
	end
	return 0
end

function getTypeUnitsLevel4(unitName)
	local unitTypeDesc = unit_by_type[unitName]
	if unitTypeDesc and unitTypeDesc.attribute and unitTypeDesc.attribute[4] then
		return unitTypeDesc.attribute[4]
	end
	return 0
end

function getCountryOfOrigin(unitName)
	local unitTypeDesc = unit_by_type[unitName]
	if unitTypeDesc and unitTypeDesc.country_of_origin then
		return unitTypeDesc.country_of_origin
	end
	return ""
end

function getSingleInFlight(unitName)
	local unitTypeDesc = unit_by_type[unitName]
	if unitTypeDesc and unitTypeDesc.singleInFlight then
		return unitTypeDesc.singleInFlight
	end
	return 0
end

function getMobile(unitName)
	local unitTypeDesc = unit_by_type[unitName]
	if unitTypeDesc and unitTypeDesc.mobile then
		return unitTypeDesc.mobile
	end
	return false
end

function getCategory(unitName)
	local unitTypeDesc = unit_by_type[unitName]
	if unitTypeDesc and unitTypeDesc.category then
		return unitTypeDesc.category
	end
	return ""
end

function getArdDistanceMin(unitName)
	local unitTypeDesc = unit_by_type[unitName]
	if unitTypeDesc and unitTypeDesc.ThreatRangeMin then
		return unitTypeDesc.ThreatRangeMin
	end
	return 0
end
function getArdDistanceMax(unitName)
	local unitTypeDesc = unit_by_type[unitName]
	if unitTypeDesc and unitTypeDesc.ThreatRange then
		return unitTypeDesc.ThreatRange
	end
	return 0
end

function getPayloadsUseTaskDB(unitType,taskWorldID)
	local unit = unitsPayloads[unitType]	
	if not unit then 
		unit = 	{ 
			tasks 	 = {},
			name  	 = unitType,
			unitType = unitType,
			payloads = {}
		}
		unitsPayloads[unitType] = unit
	end
	
	local payloads = unit.payloads
	local pylons = {}

	for i, payload in pairs(payloads) do
		local taskIds = payload.tasks		
		for j, tasksId in pairs(taskIds) do
			if taskWorldID == tasksId then
				pylons = {}
				for j, pylon in pairs(payload.pylons) do
					pylons[pylon.num] = pylon.CLSID
				end
				break
			end
		end
	end

	return pylons
end
--[[
local unitPayloadsPaths = {}
local lfs = require('lfs')
local function loadUnitPayloads(a_filenames,a_dir)
    if lfs.attributes(a_dir) then
        for filename in lfs.dir(a_dir) do
            if filename ~= '.' and filename ~= '..' then
                a_filenames[filename] = filename
                unitPayloadsPaths[filename] = a_dir..'/'..filename
                --base.print("----unitPayloadsPaths]",filename,unitPayloadsPaths[filename] )  
            end
        end
    end
end
]]
--[[
function getPayloadsUseTaskDB(unitType,taskWorldID)
	local pylons = {}
	local payloads = loadoutUtils.getUnitPayloads(unitType)
	for i, payload in pairs(payloads) do
		local taskIds = payload.tasks		
		for j, tasksId in pairs(taskIds) do
			if taskWorldID == tasksId then
				pylons = {}
				for j, pylon in pairs(payload.pylons) do
					pylons[pylon.num] = pylon.CLSID
				end
				break
			end
		end
	end

	return pylons
end
]]
function getTasksTable(unitName)
    local tasks = {}
	local utasks = {}
	local unitTypeDesc = unit_by_type[unitName]
	if unitTypeDesc and unitTypeDesc.Tasks then
		for i, task in pairs(unitTypeDesc.Tasks) do
			utasks = task
			utasks.payloads = getPayloadsUseTaskDB(unitName,task.WorldID)
			table.insert(tasks, utasks)
		end
	end
    return tasks
end

function getPylonsTable(unitName)
	local pylons = {}
	local unitTypeDesc = unit_by_type[unitName]
	if unitTypeDesc then
		for i, pylon in pairs(unitTypeDesc.Pylons) do
			table.insert(pylons, pylon)
		end
	end
	return pylons
end

function getDefaultTaskID(unitName)
	local unitTypeDesc = unit_by_type[unitName]
	if unitTypeDesc and unitTypeDesc.DefaultTask and unitTypeDesc.DefaultTask.WorldID >= 0 then
		return unitTypeDesc.DefaultTask.WorldID
	end
	return -1
end



function getDefaultRadioFor(unitTypeDesc, player)
	if unitTypeDesc ~= nil then
		if player then
			assert(unitTypeDesc.HumanRadio ~= nil)
			return unitTypeDesc.HumanRadio.frequency, unitTypeDesc.HumanRadio.modulation
		else
            if unitTypeDesc.HumanRadio then
                return unitTypeDesc.HumanRadio.frequency, unitTypeDesc.HumanRadio.modulation
            end
			
			if findAttribute(unitTypeDesc.attribute, 'AWACS') then
				return 124.0, MODULATION_AM
			elseif findAttribute(unitTypeDesc.attribute, 'Tankers') then
				return 150.0, MODULATION_AM
			else
				return 124.0, MODULATION_AM
			end
		end
	end
end




function getFrequencyDB(unitType, isHuman)
	local unitTypeDesc = unit_by_type[unitType]
	return getDefaultRadioFor(unitTypeDesc, isHuman)
end

function getDefaultRadioDB(a_type)
    local unitTypeDesc = unit_by_type[a_type]
    local Radio = {}
    
	if (unitTypeDesc and unitTypeDesc.panelRadio ~= nil) then
        for k, radio in ipairs(unitTypeDesc.panelRadio) do
            Radio[k] = {}
            Radio[k].channels = {}
            if radio.channels then
                for kk, channel in ipairs(radio.channels) do
                    Radio[k].channels[kk] = channel.default
                end
            end
        end
    end 
    return Radio
end

function getCountryByOldID(oldId)
    for _tmp,v in pairs(db.Countries) do
        if v.OldID == oldId then
            return v
        end
    end
end

--[[
function getLiveryDB(unitType, countryOldName)
    local country 		= getCountryByOldID(countryOldName)
	if country == nil then
		return ""
	end
	local unitTypeDesc  = unit_by_type[unitType]
	
	local liveryEntry = unitType
	if  unitTypeDesc and unitTypeDesc.livery_entry then 
		liveryEntry = unitTypeDesc.livery_entry
	end

	local schemes = loadLiveries.loadSchemes(liveryEntry,country.ShortName)
    if #schemes > 0 then
        return schemes[math.random(#schemes)].itemId
    end
    return ""
end
--]]
function getLiveryEntryDB(unitType)
	local livery_entry = ""
	local unitTypeDesc  = unit_by_type[unitType]
	if  unitTypeDesc and unitTypeDesc.livery_entry then
		livery_entry =  unitTypeDesc.livery_entry
	end
	return livery_entry
end

function getOptimalSpeedAircraft(unitType,plane)
	local speed= 240.0
	if not plane then
		speed= 45.0
	end
	local unitTypeDesc  = unit_by_type[unitType]
	if  unitTypeDesc and unitTypeDesc.V_opt then
		return unitTypeDesc.V_opt
	elseif unitTypeDesc and (unitTypeDesc.V_max_h or unitTypeDesc.V_max) then
		return math.min(speed, 0.7 * (unitTypeDesc.V_max_h or unitTypeDesc.V_max))
	end
	return speed
end

function fillAircraftsData(unitsType, result)
    local subtable1, subtable2, plane
    if (unitsType == "planes") then
        subtable1 = "Planes"
        subtable2 = "Plane"
		plane = true
    else
        subtable1 = "Helicopters"
        subtable2 = "Helicopter"
		plane = false
    end        
    
    for i, unit in ipairs(db.Units[subtable1][subtable2]) do
		local ChaffDefault = 0
		local FlareDefault = 0
		local TypeUnit3 = 0
		local TypeUnit2 = 0
		local TypeUnit1 = 0

		if unit.passivCounterm ~= nil then
			ChaffDefault = unit.passivCounterm.chaff.default
			FlareDefault = unit.passivCounterm.flare.default
		end
		
		TypeUnit3 = getTypeUnitsLevel3(unit.type)
		TypeUnit2 = getTypeUnitsLevel2(unit.type)
		TypeUnit1 = getTypeUnitsLevel1(unit.type)
		local cof = getCountryOfOrigin(unit.type)
		local sif = getSingleInFlight(unit.type)

		local unitData = 
		{
			fuel = 0.8*tonumber(unit.MaxFuelWeight),
			chaff = ChaffDefault, 
			flare = FlareDefault,
			wTypeUnit1 = TypeUnit1,
			wTypeUnit2 = TypeUnit2,
			wTypeUnit3 = TypeUnit3,
			country_of_origin = cof,
			sName = unit.type,
			singleInFlight = sif,
			countries = {},
			tasks = getTasksTable(unit.type),
			pylons = getPylonsTable(unit.type),
			pylons_enumeration = getPylonsEnumeration(unit.type),
			attributes = getAttributes(unit.type),
			defTaskId = getDefaultTaskID(unit.type),
			dFrequency = getFrequencyDB(unit.type, false),
			dFrequencyIsHuman = getFrequencyDB(unit.type, true),
			radio = getDefaultRadioDB(unit.type),
			livery_entry = getLiveryEntryDB(unit.type),
			speed_optimal = getOptimalSpeedAircraft(unit.type, plane),
		}
		
		--TODO почему unit.Name - локализовано?
		--откуда взялся unit.type
		result[unit.type] = unitData
	end
	
	for i, country in ipairs(db.Countries) do
        for j, unit in ipairs(country.Units[subtable1][subtable2]) do
            if result[unit.Name] ~= nil then
				local nStart, nEnd = getYearsLocal( unit.Name, country.OldID)
				result[unit.Name].countries[country.OldID] = {}
				result[unit.Name].countries[country.OldID].nDateStart = nStart
				result[unit.Name].countries[country.OldID].nDateEnd = nEnd
				result[unit.Name].countries[country.OldID].sName = country.OldID
				result[unit.Name].countries[country.OldID].WorldID = country.WorldID
				local countryDB = getCountryByOldID(country.OldID)
				if countryDB and countryDB.ShortName then
					result[unit.Name].countries[country.OldID].ShortName = country.ShortName
				end
            end
        end
    end
    
end

function getAircraftsData()
	local result = {}
    fillAircraftsData("planes", result)
    fillAircraftsData("helicopters", result)
	return result
end

function getChassis(unitName)
	local result = {}
	local unitTypeDesc = unit_by_type[unitName]
	if unitTypeDesc and unitTypeDesc.chassis then
		result = unitTypeDesc.chassis
	end
	return result;
end

function getVehiclesData()
	local result = {}

	for i, unit in ipairs(db.Units.Cars.Car) do
		local unitData = {
			countries = {},
			unitTable = unit,
			radio = getDefaultRadioDB(unit.type),
		}
		result[unit.type] = unitData
	end

	for i, country in ipairs(db.Countries) do
        for j, unit in ipairs(country.Units.Cars.Car) do
            if result[unit.Name] ~= nil then
				local nStart, nEnd = getYearsLocal( unit.Name, country.OldID)
				result[unit.Name].countries[country.OldID] = {}
				result[unit.Name].countries[country.OldID].nDateStart = nStart
				result[unit.Name].countries[country.OldID].nDateEnd = nEnd
				result[unit.Name].countries[country.OldID].sName = country.OldID
				result[unit.Name].countries[country.OldID].WorldID = country.WorldID
				local countryDB = getCountryByOldID(country.OldID)
				if countryDB and countryDB.ShortName then
					result[unit.Name].countries[country.OldID].ShortName = country.ShortName
				end
            end
        end
    end


	return result
end

--[[
function getVehiclesData()
    local result = {}
	for i, country in ipairs(db.Countries) do
        for j, unit in ipairs(country.Units.Cars.Car) do
			local unitData = result[unit.Name]
			if unitData == nil then 
				unitData = {
					countries = {},
					wType1 = getTypeUnitsLevel1(unit.Name),
					wType2 = getTypeUnitsLevel2(unit.Name),
					wType3 = getTypeUnitsLevel3(unit.Name),
					wType4 = getTypeUnitsLevel4(unit.Name),
					country_of_origin = getCountryOfOrigin(unit.Name),
					attributes = getAttributes(unit.Name),
					tasks = getTasksTable(unit.Name),
					mobile = getMobile(unit.Name),
					category = getCategory(unit.Name),
					threatRangeMin = getArdDistanceMin(unit.Name),
					threatRangeMax = getArdDistanceMax(unit.Name),
					chassis = getChassis(unit.Name),
				} 

				result[unit.Name] = unitData
			end
			--table.insert(unitData.countries, country.OldID)
			local nStart, nEnd = getYearsLocal( unit.Name, country.OldID)
			result[unit.Name].countries[country.OldID] = {}
			result[unit.Name].countries[country.OldID].nDateStart = nStart
			result[unit.Name].countries[country.OldID].nDateEnd = nEnd
			result[unit.Name].countries[country.OldID].sName = country.OldID
			result[unit.Name].countries[country.OldID].WorldID = country.WorldID
        end
    end
	return result
end
]]
function getShipsData()
    local result = {}
	for i, country in ipairs(db.Countries) do
        for j, unit in ipairs(country.Units.Ships.Ship) do
			local unitData = result[unit.Name]
			local TypeUnit1 = getTypeUnitsLevel1(unit.Name)
			local TypeUnit2 = getTypeUnitsLevel2(unit.Name)
			local TypeUnit3 = getTypeUnitsLevel3(unit.Name)
			local TypeUnit4 = getTypeUnitsLevel4(unit.Name)
			local cof = getCountryOfOrigin(unit.Name)
			local nStart, nEnd = getYearsLocal( unit.Name, country.OldID)
			if unitData == nil then 
				unitData = {
					countries = {},
					wType1 = TypeUnit1,
					wType2 = TypeUnit2,
					wType3 = TypeUnit3,
					wType4 = TypeUnit4,
					country_of_origin = cof,
					attributes = getAttributes(unit.Name),
					tasks = getTasksTable(unit.Name),
					category = getCategory(unit.Name),
					threatRangeMin = getArdDistanceMin(unit.Name),
					threatRangeMax = getArdDistanceMax(unit.Name),
				} 
				result[unit.Name] = unitData
			end
			result[unit.Name].countries[country.OldID] = {}
			result[unit.Name].countries[country.OldID].nDateStart = nStart
			result[unit.Name].countries[country.OldID].nDateEnd = nEnd
			result[unit.Name].countries[country.OldID].sName = country.OldID
			result[unit.Name].countries[country.OldID].WorldID = country.WorldID
        end
    end
	return result
end

countriesData = getCountriesTable()
aircraftsData = getAircraftsData()
vehiclesData = getVehiclesData()
shipsData = getShipsData()