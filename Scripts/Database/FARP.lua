
local WESTERN_FARP = 1
local RUSSIAN_FARP = 2

--Ground Crew
local RESOURCE_AMMO = 0
local RESOURCE_ELEC_POWER = 1
local RESOURCE_GROUND_SERVICE = 2

--ATC
local RESOURCE_ATC = 0
--FARP
local RESOURCE_NIGHT_ILLUMINATION = 0

--model file names are case independent


local objects_by_type = {
	[RUSSIAN_FARP] = {
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
		FARP = {
			[RESOURCE_NIGHT_ILLUMINATION] = { "Zil_SKP-11" }
		}
	},
	[WESTERN_FARP] = {
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
		FARP = {
			[RESOURCE_NIGHT_ILLUMINATION] = { "HMMWV_M1025" }
		}
	}
}


local fuel_units_red = { "URAL_ATZ-10", "ATZ-10", "ATZ-60", "GSM Rus" }
local fuel_units_blue = { "HEMTT", "GSM Rus"  }

local RESOURCE_FUEL = 3
local RESOURCE_FUEL_MAX = 8

for i = RESOURCE_FUEL, RESOURCE_FUEL_MAX do
	objects_by_type[RUSSIAN_FARP].groundCrew[i] = fuel_units_red
	objects_by_type[WESTERN_FARP].groundCrew[i] = fuel_units_blue
end

objects_by_country_name = {
	["Russia"] = objects_by_type[RUSSIAN_FARP],
	["Ukraine"] = objects_by_type[RUSSIAN_FARP],
	["USA"] = objects_by_type[WESTERN_FARP],
	["Switzerland"] = objects_by_type[WESTERN_FARP],	
	["Turkey"] = objects_by_type[WESTERN_FARP],
	["Germany"] = objects_by_type[WESTERN_FARP],
	["Canada"] = objects_by_type[WESTERN_FARP],
	["UK"] = objects_by_type[WESTERN_FARP],
	["France"] = objects_by_type[WESTERN_FARP],
	["Spain"] = objects_by_type[WESTERN_FARP],
	["The Netherlands"] = objects_by_type[WESTERN_FARP],
	["Belgium"] = objects_by_type[WESTERN_FARP],
	["Norway"] = objects_by_type[WESTERN_FARP],
	["Denmark"] = objects_by_type[WESTERN_FARP],
	["Georgia"] = objects_by_type[RUSSIAN_FARP],
	["Israel"] = objects_by_type[WESTERN_FARP],
	["Insurgents"] = objects_by_type[RUSSIAN_FARP],
	["Italy"] = objects_by_type[WESTERN_FARP],
	["Australia"] = objects_by_type[WESTERN_FARP]
}

farp_objects_search_radius = 150.0
farp_objects_update_dt = 1.0