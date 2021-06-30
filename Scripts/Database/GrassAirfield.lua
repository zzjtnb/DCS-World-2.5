
local WESTERN_GRASSAIRFIELD = 1
local RUSSIAN_GRASSAIRFIELD = 2

--Ground Crew
local RESOURCE_AMMO = 0
local RESOURCE_ELEC_POWER = 1
local RESOURCE_GROUND_SERVICE = 2

--ATC
local RESOURCE_ATC = 0
--GRASSAIRFIELD
local RESOURCE_NIGHT_ILLUMINATION = 0

--model file names are case independent


local objects_by_type = {
	[RUSSIAN_GRASSAIRFIELD] = {
		groundCrew = {
			[RESOURCE_AMMO] = { "URAL_4320_B", "SetkaKP" },
			[RESOURCE_ELEC_POWER] = {"Zil_APA-80", "URAL-APA" },
			[RESOURCE_GROUND_SERVICE] = { 
								"UAZ-469", "Ural_4320-31", "Ural_4320_T", "Zil_KUNG", "KAMAZ-TENT", "PalatkaB", --self
								"URAL_4320_B", "SetkaKP",  -- ammo
								"URAL_ATZ-10", "ATZ-10", "ATZ-60", "GSM Rus", --fuel
								"Zil_APA-80", "URAL-APA", --elec power
								"Zil_SKP-11", "KP_UG" -- control point
								},
		},
		ATC = {
			[RESOURCE_ATC] = { "Zil_SKP-11", "KP_UG" }
		},
		GRASSAIRFIELD = {
			[RESOURCE_NIGHT_ILLUMINATION] = { "Zil_SKP-11" }
		}
	},
	[WESTERN_GRASSAIRFIELD] = {
		groundCrew = {
			[RESOURCE_AMMO] = { "M-818" },
			[RESOURCE_ELEC_POWER] = { "M-818" },
			[RESOURCE_GROUND_SERVICE] = { 
								"M-818", "PalatkaB", --self
								"M-818", --ammo
								"HEMTT", "GSM Rus", --fuel
								"M-818", -- elec power
								"HMMWV_M1025", "KP_UG" --control point
								}
		},
		ATC = {
			[RESOURCE_ATC] = { "HMMWV_M1025", "KP_UG" }
		},
		GRASSAIRFIELD = {
			[RESOURCE_NIGHT_ILLUMINATION] = { "HMMWV_M1025" }
		}
	}
}


local fuel_units_red = { "URAL_ATZ-10", "ATZ-10", "ATZ-60", "GSM Rus" }
local fuel_units_blue = { "HEMTT", "GSM Rus"  }

local RESOURCE_FUEL = 3
local RESOURCE_FUEL_MAX = 8

for i = RESOURCE_FUEL, RESOURCE_FUEL_MAX do
	objects_by_type[RUSSIAN_GRASSAIRFIELD].groundCrew[i] = fuel_units_red
	objects_by_type[WESTERN_GRASSAIRFIELD].groundCrew[i] = fuel_units_blue
end

objects_by_country_name = {
	["Russia"] = objects_by_type[RUSSIAN_GRASSAIRFIELD],
	["Ukraine"] = objects_by_type[RUSSIAN_GRASSAIRFIELD],
	["USA"] = objects_by_type[WESTERN_GRASSAIRFIELD],
	["Switzerland"] = objects_by_type[WESTERN_GRASSAIRFIELD],	
	["Turkey"] = objects_by_type[WESTERN_GRASSAIRFIELD],
	["Germany"] = objects_by_type[WESTERN_GRASSAIRFIELD],
	["Canada"] = objects_by_type[WESTERN_GRASSAIRFIELD],
	["UK"] = objects_by_type[WESTERN_GRASSAIRFIELD],
	["France"] = objects_by_type[WESTERN_GRASSAIRFIELD],
	["Spain"] = objects_by_type[WESTERN_GRASSAIRFIELD],
	["The Netherlands"] = objects_by_type[WESTERN_GRASSAIRFIELD],
	["Belgium"] = objects_by_type[WESTERN_GRASSAIRFIELD],
	["Norway"] = objects_by_type[WESTERN_GRASSAIRFIELD],
	["Denmark"] = objects_by_type[WESTERN_GRASSAIRFIELD],
	["Georgia"] = objects_by_type[RUSSIAN_GRASSAIRFIELD],
	["Israel"] = objects_by_type[WESTERN_GRASSAIRFIELD],
	["Insurgents"] = objects_by_type[RUSSIAN_GRASSAIRFIELD],
	["Italy"] = objects_by_type[WESTERN_GRASSAIRFIELD],
	["Australia"] = objects_by_type[WESTERN_GRASSAIRFIELD]
}

grassairfield_objects_search_radius = 150.0
grassairfield_objects_update_dt = 1.0