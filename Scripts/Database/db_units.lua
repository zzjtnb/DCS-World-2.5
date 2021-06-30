db = db or {}
db_path = db_path or "./Scripts/Database/";

db.Units = {}

dofile(db_path.."db_units_planes.lua");
dofile(db_path.."db_units_helicopters.lua");

-- Ground Units
dofile(db_path..'/scripts/GT_t.lua'); -- GT_t, GT_t.CH_t
dofile(db_path..'/scripts/sensors.lua') -- GT_t.WSN_t
dofile(db_path..'/scripts/ship_sensors.lua'); -- GT_t.SS_t
GT_t.LN_t = {};
GT_t.WS_t = {};
-- begin GT_t.LN_t, GT_t.WS_t
dofile(db_path..'/scripts/automaticgun.lua')
dofile(db_path..'/scripts/missile.lua')
dofile(db_path..'/scripts/cannon.lua')
dofile(db_path..'/scripts/weapon_systems.lua')
-- end GT_t.LN_t, GT_t.WS_t

dofile(db_path.."db_units_ships.lua");
dofile(db_path.."db_units_cars.lua");

dofile(db_path.."db_units_ground.lua");
dofile(db_path.."db_units_misc.lua");

db.Units.GT_t = GT_t;

dofile(db_path.."db_attributes.lua");


function add_single_attribute(to_table,attribute) -- check for duplication and add single attribute
	if to_table == nil  then
	   error(attribute)
	end
    assert(type(attribute)=="string")
    for __k,__v in pairs(to_table) do 
        if __v == attribute then return end 
    end
    table.insert(to_table,attribute)
end

function add_attributes(to_table,from_table) -- recursive
    assert(type(from_table) == "string")
    if type(from_table) == "string" then
		local t = global_attributes_list[from_table]
        if type(t) ~= "table" then print("type ~= table "..from_table,type(t),t,from_table) 
        else
            for _tmp,___v in pairs(t) do 
                add_attributes(to_table,___v)
            end
        end
        add_single_attribute(to_table,from_table)
    end
end

function fixUnit(v)
    assert(v.Rate)
    db.rates[v.Name] = v.Rate
    assert(v.DisplayName)
    db.localization.types[v.Name] = v.DisplayName
    -- validate and expand attributes using sets from db_attributes.lua

	if v.Categories then 
		for i,cat in pairs(v.Categories) do
			local nm = cat.name
			if nm ~= nil then
				add_single_attribute(v.attribute,nm)
			end
		end	
	end
		
	for att_k,att_v in pairs(v.attribute) do
        if type(att_v) == "string" then -- expanding only string values to include old wsType-like attributes
            -- validate
			local t =  global_attributes_list[att_v]
			if  t and type(t) == "table"  then
                add_attributes(v.attribute,att_v)
            end
        end
    end

    -- debug check
	--[[
	print("expanded attributes for "..v.Name)
	for att_k,att_v in pairs(v.attribute) do
		assert(type(att_v)=="string" or type(att_v)=="number")
		if type(att_v)=="string" then print(att_v) end
	end]]

end

-- do 'rates' helper -- do localization helper

db.rates = db.rates or {}

db.localization = db.localization or {}
db.localization.types = db.localization.types or {}

local categories = {db.Units.Planes.Plane, db.Units.Helicopters.Helicopter, db.Units.Cars.Car, db.Units.Ships.Ship}

for x,y in pairs( categories ) do
    for i,v in pairs(y) do
		fixUnit(v)
    end
end

for i,v in pairs(db.Units.GroundObjects.GroundObject) do
    if v.Rate then db.rates[v.Name] = v.Rate end
    assert(v.DisplayName)
	db.localization.types[v.Name] = v.DisplayName
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
  