module('airdefence_suppurt', package.seeall)

local counter_squad = 0
local counter_group = 0
local counter_unit = 0

local function new_group_name()
    counter_group = counter_group + 1
    counter_unit = 0
    if counter_squad == 0 then
        return string.format("Airdefence_Support_%d",counter_group)
    else
        return string.format("Airdefence_%d_Support_Group_%d",counter_squad, counter_group)
    end
end

local function new_unit_name()
    counter_unit = counter_unit + 1
    if counter_squad == 0 then
        return string.format("Airdefence_Support_%d_%d",counter_group, counter_unit)
    else
        return string.format("Airdefence_%d_Support_%d_%d",counter_squad, counter_group, counter_unit)
    end
end

local function AirdefenceGroupSupport()
    return {
        ["visible"] = false,
        ["tasks"] = 
        {
        }, -- end of ["tasks"]
        ["uncontrollable"] = false,
        ["task"] = "Ground Nothing",
        ["taskSelected"] = true,
        ["route"] = 
        {
            ["spans"] = 
            {
            }, -- end of ["spans"]
            ["points"] = 
            {
                [1] = 
                {
                    ["alt"] = 45,
                    ["type"] = "Turning Point",
                    ["ETA"] = 0,
                    ["alt_type"] = "BARO",
                    ["formation_template"] = "",
                    ["y"] = 683692.19107596,
                    ["x"] = -284067.2155356,
                    ["name"] = "DictKey_WptName_22",
                    ["ETA_locked"] = true,
                    ["speed"] = 5.5555555555556,
                    ["action"] = "Off Road",
                    ["task"] = 
                    {
                        ["id"] = "ComboTask",
                        ["params"] = 
                        {
                            ["tasks"] = 
                            {
                            }, -- end of ["tasks"]
                        }, -- end of ["params"]
                    }, -- end of ["task"]
                    ["speed_locked"] = true,
                }, -- end of [1]
            }, -- end of ["points"]
        }, -- end of ["route"]
        ["groupId"] = 3,
        ["hidden"] = false,
        ["units"] = 
        {
            [1] = 
            {
                ["type"] = "SA-18 Igla-S comm",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 1,
                ["skill"] = "Excellent",
                ["y"] = 683706.78332467,
                ["x"] = -284059.80585178,
                ["name"] = new_unit_name(),
                ["heading"] = 5.4105206811824,
                ["playerCanDrive"] = false,
            }, -- end of [1]
            [2] = 
            {
                ["type"] = "SA-18 Igla-S comm",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 2,
                ["skill"] = "Excellent",
                ["y"] = 684729.93472897,
                ["x"] = -285633.23925411,
                ["name"] = new_unit_name(),
                ["heading"] = 2.1991148575129,
                ["playerCanDrive"] = false,
            }, -- end of [2]
            [3] = 
            {
                ["type"] = "SA-18 Igla-S comm",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 3,
                ["skill"] = "Excellent",
                ["y"] = 683706.78332467,
                ["x"] = -284059.80585178,
                ["name"] = new_unit_name(),
                ["heading"] = 5.4105206811824,
                ["playerCanDrive"] = false,
            }, -- end of [3]
            [4] = 
            {
                ["type"] = "SA-18 Igla-S comm",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 4,
                ["skill"] = "Excellent",
                ["y"] = 684729.93472897,
                ["x"] = -285633.23925411,
                ["name"] = new_unit_name(),
                ["heading"] = 2.1991148575129,
                ["playerCanDrive"] = false,
            }, -- end of [4]
            [5] = 
            {
                ["type"] = "SA-18 Igla-S manpad",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 5,
                ["skill"] = "Excellent",
                ["y"] = 683692.19107596,
                ["x"] = -284067.2155356,
                ["name"] = new_unit_name(),
                ["heading"] = 5.1487212933833,
                ["playerCanDrive"] = true,
            }, -- end of [5]
            [6] = 
            {
                ["type"] = "SA-18 Igla-S manpad",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 6,
                ["skill"] = "Excellent",
                ["y"] = 684715.34248026,
                ["x"] = -285640.64893793,
                ["name"] = new_unit_name(),
                ["heading"] = 2.3911010752322,
                ["playerCanDrive"] = true,
            }, -- end of [6]
            [7] = 
            {
                ["type"] = "SA-18 Igla-S manpad",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 7,
                ["skill"] = "Excellent",
                ["y"] = 683692.19107596,
                ["x"] = -284067.2155356,
                ["name"] = new_unit_name(),
                ["heading"] = 5.1487212933833,
                ["playerCanDrive"] = true,
            }, -- end of [7]
            [8] = 
            {
                ["type"] = "SA-18 Igla-S manpad",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 8,
                ["skill"] = "Excellent",
                ["y"] = 684715.34248026,
                ["x"] = -285640.64893793,
                ["name"] = new_unit_name(),
                ["heading"] = 2.3911010752322,
                ["playerCanDrive"] = true,
            }, -- end of [8]
        }, -- end of ["units"]
        ["y"] = 683692.19107596,
        ["x"] = -284067.2155356,
        ["name"] = new_group_name(),
        ["start_time"] = 0,
    }
end

function AirdefenceGroups(squad_name, group_country, airbase_name)
    if squad_name ~= nil then
        counter_squad = squad_name
    end

    local airbase
    if airbase_name == nil then
        airbase =  Airbase.getByName("Kutaisi");
    else
        airbase =  Airbase.getByName(airbase_name);
    end

    local airbase_id = airbase:getID();
    Airbase.addAirdefence(group_country, Group.Category.GROUND, airbase_id, 3, AirdefenceGroupSupport())
end



defence = AirdefenceGroups(nul, country.id.RUSSIA, nil)