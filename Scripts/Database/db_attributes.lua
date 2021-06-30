global_attributes_list = {
["plane_carrier"] = {},
["no_tail_trail"] = {},
["cord"] = {},
["ski_jump"] = {},
["catapult"] = {},
["low_reflection_vessel"] = {},
["AA_flak"] = {},
["AA_missile"] = {},
["SS_missile"] = {},
["Cruise missiles"] = { "Missiles", },
["Anti-Ship missiles"] = { "Missiles", },
["Missiles"] = { "Planes", },
["Fighters"] = { "Planes", "Battle airplanes", },
["Interceptors"] = { "Planes", "Battle airplanes", },
["Multirole fighters"] = { "Planes", "Battle airplanes", },
["Bombers"] = { "Planes", "Battle airplanes", },
["Battleplanes"] = { "Planes", "Battle airplanes", },
["AWACS"] = { "Planes", },
["Tankers"] = { "Planes", },
["Aux"] = { "Planes", },
["Transports"] = { "Planes", },
["Strategic bombers"] = { "Bombers", },
["UAVs"] = { "Planes", },
["Attack helicopters"] = {"Helicopters", },
["Transport helicopters"]   = {"Helicopters", },
["Planes"] = {"Air",},
["Helicopters"] = {"Air",},
["Cars"] = {"Unarmed vehicles",},
["Trucks"] = {"Unarmed vehicles",},
["Infantry"] = {"Armed ground units", "NonArmoredUnits"},
["Tanks"] = {"Armored vehicles","Armed vehicles","AntiAir Armed Vehicles","HeavyArmoredUnits",},
["Artillery"] = {"Armed vehicles","Indirect fire","LightArmoredUnits",},
["MLRS"] = {"Artillery",},
["IFV"] = {"Infantry carriers","Armored vehicles","Armed vehicles","AntiAir Armed Vehicles","LightArmoredUnits",},
["APC"] = {"Infantry carriers","Armored vehicles","Armed vehicles","AntiAir Armed Vehicles","LightArmoredUnits",},
["Fortifications"] = {"Armed ground units","AntiAir Armed Vehicles","HeavyArmoredUnits",},
["Armed vehicles"] = {"Armed ground units","Ground vehicles",},
["Static AAA"] = {"AAA", "Ground vehicles",},
["Mobile AAA"] = {"AAA", "Ground vehicles",},
["SAM SR"] = {"SAM elements",}, -- Search Radar
["SAM TR"] = {"SAM elements"}, -- Track Radar
["SAM LL"] = {"SAM elements","Armed Air Defence"},  -- Launcher
["SAM CC"] = {"SAM elements",}, -- Command Center
["SAM AUX"] = {"SAM elements",}, -- Auxilary Elements (not included in dependencies)
["SR SAM"] = {}, -- short range
["MR SAM"] = {}, -- medium range
["LR SAM"] = {}, -- long range
["SAM elements"] = {"Ground vehicles", "SAM related"}, --elements of composite SAM site
["IR Guided SAM"] = {"SAM"},
["SAM"] = {"SAM related", "Armed Air Defence", "Ground vehicles"}, --autonomous SAM unit (surveillance + guidance + launcher(s))
["SAM related"] = {"Air Defence"}, --all units those related to SAM
["AAA"] = {"Air Defence", "Armed Air Defence", "Rocket Attack Valid AirDefence",},
["EWR"] = {"Air Defence vehicles",},
["Air Defence vehicles"] = {"Air Defence","Ground vehicles",},
["MANPADS"] = {"IR Guided SAM","Infantry","Rocket Attack Valid AirDefence",},
["MANPADS AUX"] = {"Infantry","Rocket Attack Valid AirDefence","SAM AUX"},
["NO_SAM"] = {}, -- present if there is no any SAM system onboard the __ship__
["Unarmed vehicles"] = {"Ground vehicles","Ground Units Non Airdefence","NonArmoredUnits",},
["Armed ground units"] = {"Ground Units","Ground Units Non Airdefence",},
["Armed Air Defence"] = {}, --air-defence units those have weapon onboard (SAM or AAA)
["Air Defence"] = {"NonArmoredUnits"},
["Aircraft Carriers"] = {"Heavy armed ships",},
["Cruisers"] = {"Heavy armed ships",},
["Destroyers"] = {"Heavy armed ships",},
["Frigates"] = {"Heavy armed ships",},
["Corvettes"] = {"Heavy armed ships",},
["Submarines"] = {"Heavy armed ships",},
["Heavy armed ships"] = {"Armed ships", "Armed Air Defence", "HeavyArmoredUnits",},
["Light armed ships"] = {"Armed ships","NonArmoredUnits"},
["Armed ships"] = {"Ships"},
["Unarmed ships"] = {"Ships","HeavyArmoredUnits",},
["Air"] = {"All","NonArmoredUnits",},
["Ground vehicles"] = {"Ground Units", "Vehicles"},
["Ships"] = {"All",},
["Buildings"] = {"HeavyArmoredUnits",},
["HeavyArmoredUnits"] = {},
["ATGM"] = {},
["Old Tanks"] = {},
["Modern Tanks"] = {},
["LightArmoredUnits"] = {"NonAndLightArmoredUnits",},
["Rocket Attack Valid AirDefence"] = {},
["Battle airplanes"] = {},
["All"] = {},
["Infantry carriers"] = {},
["Vehicles"] = {},
["Ground Units"] = {"All",},
["Ground Units Non Airdefence"] = {},
["Armored vehicles"] = {},
["AntiAir Armed Vehicles"] = {}, --ground vehicles those capable of effective fire at aircrafts
["Airfields"] = {},
["Heliports"] = {},
["Grass Airfields"] = {},
["Point"] = {},
["NonArmoredUnits"] = {"NonAndLightArmoredUnits",},
["NonAndLightArmoredUnits"] = {},
["human_vehicle"] = {}, -- player controlable vehicle
["RADAR_BAND1_FOR_ARM"] = {},
["RADAR_BAND2_FOR_ARM"] = {},
["Prone"] = {},
["DetectionByAWACS"] = {}, -- for navy\ground units with external target detection
["Datalink"] = {}, -- for air\navy\ground units with on-board datalink station
["CustomAimPoint"] = {}, -- unit has custom aiming point
["Indirect fire"] = {},
["Refuelable"] = {},
["Weapon"] = {"Shell", "Rocket", "Bomb", "Missile"},
}

function findAttribute(tbl, attribute)
    for __i, __v in pairs(tbl) do
        if __v == attribute then
            return true
        else
            local above = global_attributes_list[__v]
            if above then
                if findAttribute(above, attribute) then
                    return true
                end
            end
        end
    end
    return false
end

function hasAttribute(category, attribute)
    if category == attribute then
        return true
    else
        local above = global_attributes_list[category]
        if above then
            if findAttribute(above, attribute) then
                return true
            end
        end
    end
    return false
end

function hasAttributes(category, attributes)
    for attributeIndex, attribute in pairs(attributes) do
        if hasAttribute(category, attribute) then
            return true;
        end
    end
    return false
end