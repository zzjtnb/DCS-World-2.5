module('airdefence_mobile', package.seeall)

local counter_squad = 0
local counter_group = 0
local counter_unit = 0

local function new_group_name()
    counter_group = counter_group + 1
    counter_unit = 0
    if counter_squad == 0 then
        return string.format("Airdefence_Mobile_%d",counter_group)
    else
        return string.format("Airdefence_%d_Mobile_Group_%d",counter_squad, counter_group)
    end
end

local function new_unit_name()
    counter_unit = counter_unit + 1
    if counter_squad == 0 then
        return string.format("Airdefence_Mobile_%d_%d",counter_group, counter_unit)
    else
        return string.format("Airdefence_%d_Mobile_%d_%d",counter_squad, counter_group, counter_unit)
    end
end

local function AirdefenceGroupFirst()
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
                [1] = 
                {
                    [1] = 
                    {
                        ["y"] = 682505.19296608,
                        ["x"] = -285094.71866409,
                    }, -- end of [1]
                    [2] = 
                    {
                        ["y"] = 684911.98218144,
                        ["x"] = -284801.29592989,
                    }, -- end of [2]
                }, -- end of [1]
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
                    ["y"] = 682505.19296608,
                    ["x"] = -285094.71866409,
                    ["name"] = "DictKey_WptName_8",
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
        ["groupId"] = 1,
        ["hidden"] = false,
        ["units"] = 
        {
            [1] = 
            {
                ["type"] = "Tor 9A331",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 1,
                ["skill"] = "High",
                ["y"] = 682505.19296608,
                ["x"] = -285094.71866409,
                ["name"] = new_unit_name(),
                ["heading"] = 3.7873644768277,
                ["playerCanDrive"] = true,
            }, -- end of [1]
            [2] = 
            {
                ["type"] = "Tor 9A331",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 17,
                ["skill"] = "High",
                ["y"] = 685040.83494115,
                ["x"] = -284852.15711595,
                ["name"] = new_unit_name(),
                ["heading"] = 1.9896753472735,
                ["playerCanDrive"] = true,
            }, -- end of [2]
            [3] = 
            {
                ["type"] = "Tor 9A331",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 29,
                ["skill"] = "Excellent",
                ["y"] = 682297.13955398,
                ["x"] = -284803.3672075,
                ["name"] = new_unit_name(),
                ["heading"] = 5.0789081233035,
                ["playerCanDrive"] = true,
            }, -- end of [3]
            [4] = 
            {
                ["type"] = "Tor 9A331",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 30,
                ["skill"] = "Excellent",
                ["y"] = 685305.5847858,
                ["x"] = -285148.96105286,
                ["name"] = new_unit_name(),
                ["heading"] = 1.7278759594744,
                ["playerCanDrive"] = true,
            }, -- end of [4]
            [5] = 
            {
                ["type"] = "2S6 Tunguska",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 18,
                ["skill"] = "Excellent",
                ["y"] = 683152.13283852,
                ["x"] = -285716.64761325,
                ["name"] = new_unit_name(),
                ["heading"] = 3.7873644768277,
                ["playerCanDrive"] = true,
            }, -- end of [5]
            [6] = 
            {
                ["type"] = "2S6 Tunguska",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 19,
                ["skill"] = "Excellent",
                ["y"] = 685238.48981236,
                ["x"] = -284045.56552032,
                ["name"] = new_unit_name(),
                ["heading"] = 0.59341194567807,
                ["playerCanDrive"] = true,
            }, -- end of [6]
            [7] = 
            {
                ["type"] = "2S6 Tunguska",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 31,
                ["skill"] = "Excellent",
                ["y"] = 684108.74471397,
                ["x"] = -285498.22557129,
                ["name"] = new_unit_name(),
                ["heading"] = 2.3038346126325,
                ["playerCanDrive"] = true,
            }, -- end of [7]
            [8] = 
            {
                ["type"] = "2S6 Tunguska",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 32,
                ["skill"] = "Excellent",
                ["y"] = 683899.66488705,
                ["x"] = -283983.89025343,
                ["name"] = new_unit_name(),
                ["heading"] = 0.59341194567807,
                ["playerCanDrive"] = true,
            }, -- end of [8]
        }, -- end of ["units"]
        ["y"] = 682505.19296608,
        ["x"] = -285094.71866409,
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
    Airbase.addAirdefence(group_country, Group.Category.GROUND, airbase_id, 1, AirdefenceGroupFirst())
end

defence = AirdefenceGroups(nul, country.id.RUSSIA, nil)