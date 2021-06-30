-- requires: i_18n
-- Set up paths
db = {};
db.objectIconByType = {};
db_path = db_path or "./Scripts/Database/";
local gettext = require('i_18n');

function wsTypeToString(type_table)
	return string.format("%d.%d.%d.%d",type_table[1] or 0,type_table[2] or 0,type_table[3] or 0,type_table[4] or 0)
end

function wsTypeFromString(str)
	local l1,l2,l3,l4 = str:match("(%d+)%.(%d+)%.(%d+)%.(%d+)")
	return
	{
		[1] = tonumber(l1) or 0,
		[2] = tonumber(l2) or 0,
		[3] = tonumber(l3) or 0,
		[4] = tonumber(l4) or 0,
	}
end


-- Gettext
--__DO_NOT_LOCALIZE__ = true;
if __DO_NOT_LOCALIZE__ then -- ничего не локализуем, когда конвертируем скины в ModelViewer
    _ = function(p) return p; end;
else
    if not i18n then -- mega hack whwn it called from ME we don't havee any gettext in global namespace , but have i18n
        gettext.add_package("dcs", "./l10n")
        _ = function (str)      
            return gettext.dtranslate("dcs", str), str
        end
    else
        _ = gettext.translate
    end
end

--Modulation

MODULATION_AM = 0
MODULATION_FM = 1
MODULATION_AM_AND_FM = 2

--Canopy geometry

LOOK_BAD = 1
LOOK_AVERAGE = 2
LOOK_GOOD = 3
LOOK_AVERAGE_UH = 4
LOOK_EXELLENT_B17 = 5

local sinMinElev = {
	airplane = {
		front = {
			[LOOK_BAD] = math.sin(math.rad(-5)),
			[LOOK_AVERAGE] = math.sin(math.rad(-10)),
			[LOOK_GOOD] = math.sin(math.rad(-20)),
			[LOOK_EXELLENT_B17] = math.sin(math.rad(-89)),
		},
		side = {
			[LOOK_BAD] = math.sin(math.rad(-40)),
			[LOOK_AVERAGE] = math.sin(math.rad(-55)),
			[LOOK_GOOD] = math.sin(math.rad(-70)),
			[LOOK_EXELLENT_B17] = math.sin(math.rad(-89)),
		},
		rear = {
			[LOOK_BAD] = math.sin(math.rad(60)),
			[LOOK_AVERAGE] = math.sin(math.rad(20)),
			[LOOK_GOOD] = math.sin(math.rad(-5)),
			[LOOK_EXELLENT_B17] = math.sin(math.rad(-89)),
		},
	},
	helicopter = {
		front = {
			[LOOK_BAD] = math.sin(math.rad(-15)),
			[LOOK_AVERAGE] = math.sin(math.rad(-50)),
			[LOOK_GOOD] = math.sin(math.rad(-70)),
		},
		side = {
			[LOOK_BAD] = math.sin(math.rad(-45)),
			[LOOK_AVERAGE] = math.sin(math.rad(-60)),
			[LOOK_GOOD] = math.sin(math.rad(-75)),
		},
		rear = {
			[LOOK_BAD] = math.sin(math.rad(120)),
			[LOOK_AVERAGE] = math.sin(math.rad(80)),
			[LOOK_GOOD] = math.sin(math.rad(60)),
			[LOOK_AVERAGE_UH] = math.sin(math.rad(-60)),
		},
	}
}

local function makeAircraftCanopyGeometry(tbl, lookForward, lookSide, lookRear)
	return	{ 
		tbl.front[lookForward],
		(tbl.front[lookForward] + tbl.side[lookSide]) / 2,
		tbl.side[lookSide],
		(tbl.side[lookSide] + tbl.rear[lookRear]) / 2,
		tbl.rear[lookRear]
	}
end

function makeAirplaneCanopyGeometry(lookForward, lookSide, lookRear)
	return makeAircraftCanopyGeometry(sinMinElev.airplane, lookForward, lookSide, lookRear)
end

function makeHelicopterCanopyGeometry(lookForward, lookSide, lookRear)
	return makeAircraftCanopyGeometry(sinMinElev.helicopter, lookForward, lookSide, lookRear)
end

-- 
-- declare here, because it is need to be available for mods
wstype_containers = {}
wstype_bombs	  = {}
wstype_missiles	  = {}
resource_by_unique_name = {}

-----------------------------------------------
CAT_BOMBS 	     = 1
CAT_MISSILES     = 2
CAT_ROCKETS	     = 3 --!unguided!
CAT_AIR_TO_AIR   = 4
CAT_FUEL_TANKS   = 5
CAT_PODS	 	 = 6
CAT_SHELLS		 = 7	
CAT_GUN_MOUNT	 = 8	
CAT_CLUSTER_DESC = 9
CAT_SERVICE		 = 10 
CAT_TORPEDOES	 = 11

local catNames =
{
	[CAT_BOMBS]		    	= "weapons.bombs",
	[CAT_MISSILES]  	  	= "weapons.missiles",
	[CAT_ROCKETS]	     	= "weapons.nurs",
	[CAT_AIR_TO_AIR]   		= "weapons.missiles", -- ??? 
	[CAT_FUEL_TANKS]   		= nil, --TODO: ASSIGN
	[CAT_PODS]	 	 		= nil, --TODO: ASSIGN
	[CAT_SHELLS]	 		= "weapons.shells",	
	[CAT_GUN_MOUNT] 		= nil, --TODO: ASSIGN
	[CAT_CLUSTER_DESC] 		= nil, --TODO: ASSIGN
	[CAT_SERVICE]	 		= nil, --TODO: ASSIGN
	[CAT_TORPEDOES]	 		= "weapons.torpedoes", -- ??? 
}



local log    = log
if  _TryAuthorize then
    if not log then
		log = require("log")
    end
else
	log = {  info  = function(...) end 	}
end

function registerResourceName(tbl,cat)
	if tbl._unique_resource_name ~= nil then
		return
	end
	local cat = cat or tbl.category 
	if not cat then 
		return
	end

	local cat_name = catNames[cat]
	if  cat_name  ~= nil then
		local nm = tbl.name
		if type(nm) ~= "string" then
			log.info(cat_name) 
			log.info("not string tbl.name") 
			for i,o in pairs(tbl) do
				log.info(tostring(i)..":"..tostring(o)..",")
			end
			return
		end
		local res_name = cat_name.."."..nm
		if  resource_by_unique_name[res_name] == nil then
			tbl._unique_resource_name   	   = res_name
			resource_by_unique_name[res_name]  = tbl		
		end
	end
end







dofile(db_path.."wsTypes.lua");
dofile(db_path.."Weapons/weapons_table.lua")
dofile("Scripts/wInfo.lua");
dofile(db_path.."db_countries.lua");
--dofile(db_path.."db_years.lua");
dofile(db_path.."db_weapons.lua");
dofile(db_path.."db_units.lua");
dofile(db_path.."db_roles.lua");

--------------------------------------------------------------------------------
--------------Unit Aliases------------------------------------------------------
unit_aliases = {
    ["Ural-375 APA-50"]                     = "Ural-4320 APA-5D",
	["ZiL-131 APA-80 Ground Power Unit"]  	= "ZiL-131 APA-80",
	["SKP-11 Mobile Command Post"] 	    	= "SKP-11",
	["ATZ-10 Fuel Truck"] 			    	= "ATZ-10",
	["ATZ-10 Fuel Track"] 			    	= "ATZ-10",
	["VAZ-2109"] 							= "VAZ Car",
	["Ural-4320 APA-5D Ground Power Unit"] 	= "Ural-4320 APA-5D",
	["2S19 Msta"] 							= "SAU Msta",
	["T-80U"] 								= "T-80UD",
	["2S1 Gvozdika"]					    = "SAU Gvozdika",
	["SA-8 Osa 9A33"] 						= "Osa 9A33 ln",
	["KAMAZ-43101"] 						= "KAMAZ Truck",
	["SA-9 Strela-1 9P31"] 					= "Strela-1 9P31",
	["2S9 Nona"] 							= "SAU 2-C9",
	["SR 9S80 Ovod-M-SV"] 					= "Dog Ear radar",
	["Ural-4320-31 Armored"] 				= "Ural-4320-31",
	["SA-13 Strela-10M3 9A35M3"]			= "Strela-10M3",
	["MLRS BM-21 Grad"] 					= "Grad-URAL",
	["BOMAN"] 		  						= "Grad_FDDM",
	["ATMZ-5 Fuel Truck"] 					= "ATMZ-5",
	["2S3 Akatsia"] 						= "SAU Akatsia",
	["SA-19 Tunguska 2S6"] 					= "2S6 Tunguska",
	["M1025 HMMWV"] 						= "Hummer",
	["M818"] 								= "M 818",
	["M113"] 								= "M-113" ,
	["MLRS Smerch 9A52"] 					= "Smerch",
	["BTR-RD"] 								= "BTR_D",
	["M163 Vulcan"] 						= "Vulcan",
	["M109"] 								= "M-109",
	["M1A2 Abrams"] 						= "M-1 Abrams",
	["Hawk AN/MPQ-46 TR"] 					= "Hawk tr",
	["Hawk M192 LN"]						= "Hawk ln",
	["Hawk AN/MPQ-50 SR"] 					= "Hawk sr",
	["M2A2 Bradley"] 						= "M-2 Bradley",
	["M270 MLRS"] 							= "MLRS",
	["LEO1A3"] 								= "Leopard1A3",
	["Roland rdr"] 							= "Roland Radar",
	["Neustrashimy 11540 FFG (NEUSTRASHIMY Class Frigate)"] = "NEUSTRASH",
	["Ivanov (DRY CARGO Class)"]			= "Dry-cargo ship-2",
	["M60A3"] 								= "M-60",
	["Elnya 160 (ALTAY Class Tanker)"] 		= "ELNYA",
	["SA-15 Tor 9A331"]						= "Tor 9A331",
	["EWR 55G6"] 							= "55G6 EWR",
	["EWR 1L13"]							= "1L13 EWR",
	["Ural ATsP-6 Fire-Engine"] 			= "Ural ATsP-6",
    ['Barracks 1']                          = 'house1arm', 
    ['Watchtower']                          = 'house2arm',
    ['.Block on road']                      = 'outpost_road',
    ['.Block']                              = 'outpost',                 
    ['.Bunker']                             = 'Sandbox', 
    ['.Pill-box']                           = 'Bunker',
	['Stinger manpad']						= 'Soldier stinger',
	['Stinger manpad GRG']					= 'Soldier stinger',
	['Stinger manpad dsr']					= 'Soldier stinger',
    ['Cargo1']					            = 'uh1h_cargo',
	['052B']             					= 'Type_052B',
	['052C']             					= 'Type_052C',
	['054A']             					= 'Type_054A',
	['Type071']             				= 'Type_071',
	['Type 093']             				= 'Type_093',
}
local categories = {db.Units.Planes.Plane, 
					db.Units.Helicopters.Helicopter, 
					db.Units.Cars.Car, 
					db.Units.Ships.Ship}
for x,cat in pairs( categories ) do
	for i,v in pairs(cat) do
		if v.Aliases ~= nil then		
		   for i,o in ipairs(v.Aliases) do
				unit_aliases[o] = v.Name
		   end
		end
	end
end


dofile(db_path.."db_sensors.lua");
dofile(db_path.."db_countermeasures.lua");
dofile(db_path.."db_pods.lua");

--------------------------------------------------------------------------------
dofile(db_path.."db_mods.lua");
dofile(db_path.."db_years.lua"); -- after plugins 
db.getYearsLocal = getYearsLocal
db.getHistoricalCountres = getHistoricalCountres
--------------------------------------------------------------------------------
for i,cat in pairs(db.Weapons.Categories) do
	for j,lnchr in ipairs(cat.Launchers) do
		if  db.Weapons.ByCLSID[lnchr.CLSID] ~= nil then
			print("Duplicate launcher: " .. lnchr.CLSID .. tostring(lnchr._file)) 
		else
			db.Weapons.ByCLSID[lnchr.CLSID] = lnchr
--[[
			if lnchr.attribute then 
			    local src    = lnchr._file or ""
				local wstype = "{"..tostring(lnchr.attribute[1])..','..
									string.format("%03d",lnchr.attribute[2])..','..
									string.format("%03d",lnchr.attribute[3])..','..
									string.format("%03d",lnchr.attribute[4]).."}"
				print(wstype,src,lnchr.CLSID)	
			end
--]]			
		end
	end
end
--------------------------------------------------------------------------------

dofile(db_path.."db_seasons.lua");
dofile(db_path.."db_targets.lua");
dofile(db_path.."db_callnames.lua");
dofile(db_path.."db_formations.lua");


-----------------------------------------------------------------------------------------------------------------------
function collect_unit_ws_types()
	wstype_aircrafts	= {}
	wstype_ships 		= {}
	wstype_SAMS 		= {}
	wstype_technics		= {}

	local categories = {db.Units.Planes.Plane, 
						db.Units.Helicopters.Helicopter, 
						db.Units.Cars.Car, 
						db.Units.Ships.Ship}

	-- уникальность атрибутов не гарантирована! не использовать в виде ключа для регистрации других параметров объекта!
	for x,y in pairs( categories ) do
		for i,v in pairs(y) do
			if not v.attribute then print("unit "..v.Name.. " doesn't have attribute. skipping...") else
				assert(v.attribute[1] and v.attribute[2] and v.attribute[3] and v.attribute[4])
				local lev4 = v.attribute[4]
				if	   v.attribute[1] == wsType_Air 	and (v.attribute[2] == wsType_Airplane  or  v.attribute[2] == wsType_Helicopter)	then  wstype_aircrafts[lev4] = v.attribute
				elseif v.attribute[1] == wsType_Navy 	and  v.attribute[2] == wsType_Ship													then  wstype_ships[lev4]     = v.attribute
				elseif v.attribute[1] == wsType_Ground 	and  v.attribute[2] == wsType_SAM													then  wstype_SAMS [lev4]     = v.attribute           
				elseif v.attribute[1] == wsType_Ground 	and  v.attribute[2] == wsType_Tank													then  wstype_technics[lev4]  = v.attribute
				end
			end
		end
	end
end

collect_unit_ws_types()

-------------------------------------------------------------------------------------------------------------------------------------------
--Aircraft specific callsigns
do
	local function addAircraftCallsigns(tbl)
		for i, aircraft in pairs(tbl) do
			if aircraft.SpecificCallnames ~= nil then
				for countryId, callnames in pairs(aircraft.SpecificCallnames) do
					local countryWorldId
					if type(countryId) == "string" then
						-- getting numeric world id
						countryWorldId = db.CountriesByName[countryId].WorldID
					else
						-- here we suppose it is already a numeric id
						countryWorldId = countryId
					end
					db.aircraftCallnames(countryWorldId, aircraft.Name, aircraft.InheriteCommonCallnames and aircraft.attribute or nil, callnames)
				end
			end
		end
	end
	addAircraftCallsigns(db.Units.Planes.Plane)
	addAircraftCallsigns(db.Units.Helicopters.Helicopter)
end

function collect_input_profiles()
	local cats 		 = {db.Units.Planes.Plane, 
						db.Units.Helicopters.Helicopter, 
						db.Units.Cars.Car, 
						db.Units.Ships.Ship}
	local result = {}
	for i,cat in ipairs(cats) do 
		for j,unit in ipairs(cat) do 
			if  unit.HumanInputProfilePath ~= nil then
				local nm   = unit.HumanInputProfileName or unit.Name
				result[nm] = unit.HumanInputProfilePath
				if  unit.HumanInputProfilePathEasy ~= nil then
					result[nm..'_easy'] = unit.HumanInputProfilePathEasy
				end
			end
		end
	end
		
	for i,plugin in ipairs(plugins) do
		if plugin.applied and 
		   plugin.InputProfiles then
		   for i,o in pairs(plugin.InputProfiles) do
				if type(i) == 'string' and 
				   type(o) == 'string' then
						result[i] = o
				end
		   end
		end
	end
	return result
end

custom_input_profiles = collect_input_profiles()

----- here come the contents of the former server.lua
launcher = db.Weapons.ByCLSID

Objects = {}
--objects
local categories = 
{   
    db.Units.Planes.Plane, 
    db.Units.Helicopters.Helicopter, 
    db.Units.Cars.Car, 
    db.Units.Ships.Ship, 
	db.Units.Fortifications.Fortification, 
    db.Units.GroundObjects.GroundObject, 
    db.Units.Warehouses.Warehouse, 
    db.Units.Cargos.Cargo, 
    db.Units.Effects.Effect,
    db.Units.Animals.Animal,
}

for x,y in pairs( categories ) do
	for i,v in pairs(y) do
		Objects[v.Name] = v;
	end
end
for x,y in pairs( unit_aliases ) do
	Objects[x] = Objects[y];
end

--FARP
dofile(db_path.."FARP.lua");

FARP_data = {
	FARP_objects 	= {},
	search_radius 	= farp_objects_search_radius,
	update_dt 		= farp_objects_update_dt
}

local function copyFARP_objects(subtableIndex)
	local objs =  {}
	FARP_data.FARP_objects[subtableIndex] = objs
	for i,v in pairs(objects_by_country_name) do
		objs[db.CountriesByName[i].WorldID] = v[subtableIndex]
	end
end
copyFARP_objects('groundCrew')
copyFARP_objects('ATC')
copyFARP_objects('FARP')

--GRASSAIRFIELD
dofile(db_path.."GrassAirfield.lua");

GRASSAIRFIELD_data = {
	GRASSAIRFIELD_objects 	= {},
	search_radius 	= grassairfield_objects_search_radius,
	update_dt 		= grassairfield_objects_update_dt
}

local function copyGRASSAIRFIELD_objects(subtableIndex)
	local objs =  {}
	GRASSAIRFIELD_data.GRASSAIRFIELD_objects[subtableIndex] = objs
	for i,v in pairs(objects_by_country_name) do
		objs[db.CountriesByName[i].WorldID] = v[subtableIndex]
	end
end
copyGRASSAIRFIELD_objects('groundCrew')
copyGRASSAIRFIELD_objects('ATC')
copyGRASSAIRFIELD_objects('GRASSAIRFIELD')


-------------------------------------------------------------------------------
-- this is used for "net.dostring_in()" Lua API
--serialization
local function value2string(val)
    local t = type(val)
    if t == "number" or t == "boolean" then
        return tostring(val)
    elseif t == "table" then
        local str = ''
        local k,v
        for k,v in pairs(val) do
            str = str ..'['..value2string(k)..']='..value2string(v)..','
        end
        return '{'..str..'}'
    else
        return string.format("%q", tostring(val))
    end
end

function value2code(val)
    return 'return ' .. value2string(val)
end
