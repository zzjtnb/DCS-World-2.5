module('airdefence_stand', package.seeall)

local counter_squad = 0
local counter_group = 0
local counter_unit = 0

local function new_group_name()
    counter_group = counter_group + 1
    counter_unit = 0
    if counter_squad == 0 then
        return string.format("Airdefence_Stand_Group_%d",counter_group)
    else
        return string.format("Airdefence_%d_Stand_Group_%d",counter_squad, counter_group)
    end
end

local function new_unit_name()
    counter_unit = counter_unit + 1
    if counter_squad == 0 then
        return string.format("Airdefence_Stand_%d_%d",counter_group, counter_unit)
    else
        return string.format("Airdefence_%d_Stand_%d_%d",counter_squad, counter_group, counter_unit)
    end
end

local function AirdefenceGroupSecond()
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
                        ["y"] = 682639.9034438,
                        ["x"] = -284892.41808999,
                    }, -- end of [1]
                    [2] = 
                    {
                        ["y"] = 682678.37725351,
                        ["x"] = -284886.26228043,
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
                    ["y"] = 682639.9034438,
                    ["x"] = -284892.41808999,
                    ["name"] = "DictKey_WptName_30",
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
        ["groupId"] = 7,
        ["hidden"] = false,
        ["units"] = 
        {
            [1] = 
            {
                ["type"] = "ZU-23 Emplacement Closed",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 9,
                ["skill"] = "Excellent",
                ["y"] = 682639.9034438,
                ["x"] = -284892.41808999,
                ["name"] = new_unit_name(),
                ["heading"] = 4.6774823953448,
                ["playerCanDrive"] = false,
            }, -- end of [1]
            [2] = 
            {
                ["type"] = "ZU-23 Emplacement Closed",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 10,
                ["skill"] = "Excellent",
                ["y"] = 682693.76677739,
                ["x"] = -285581.86875991,
                ["name"] = new_unit_name(),
                ["heading"] = 4.014257279587,
                ["playerCanDrive"] = false,
            }, -- end of [2]
            [3] = 
            {
                ["type"] = "ZU-23 Emplacement Closed",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 11,
                ["skill"] = "Excellent",
                ["y"] = 685195.10767845,
                ["x"] = -284818.06750659,
                ["name"] = new_unit_name(),
                ["heading"] = 1.412141064608,
                ["playerCanDrive"] = false,
            }, -- end of [3]
            [4] = 
            {
                ["type"] = "ZU-23 Emplacement Closed",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 12,
                ["skill"] = "Excellent",
                ["y"] = 685268.71907531,
                ["x"] = -283885.65647971,
                ["name"] = new_unit_name(),
                ["heading"] = 1.412141064608,
                ["playerCanDrive"] = false,
            }, -- end of [4]
            [5] = 
            {
                ["type"] = "ZU-23 Emplacement Closed",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 13,
                ["skill"] = "Excellent",
                ["y"] = 682350.34145188,
                ["x"] = -284518.10867612,
                ["name"] = new_unit_name(),
                ["heading"] = 5.0265482457437,
                ["playerCanDrive"] = false,
            }, -- end of [5]
            [6] = 
            {
                ["type"] = "ZU-23 Emplacement Closed",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 14,
                ["skill"] = "Excellent",
                ["y"] = 682812.3659113,
                ["x"] = -286172.99628531,
                ["name"] = new_unit_name(),
                ["heading"] = 3.8048177693476,
                ["playerCanDrive"] = false,
            }, -- end of [6]
            [7] = 
            {
                ["type"] = "ZU-23 Emplacement Closed",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 15,
                ["skill"] = "Excellent",
                ["y"] = 685231.69398972,
                ["x"] = -285582.86504396,
                ["name"] = new_unit_name(),
                ["heading"] = 2.2514747350727,
                ["playerCanDrive"] = false,
            }, -- end of [7]
            [8] = 
            {
                ["type"] = "ZU-23 Emplacement Closed",
                ["transportable"] = 
                {
                    ["randomTransportable"] = false,
                }, -- end of ["transportable"]
                ["unitId"] = 16,
                ["skill"] = "Excellent",
                ["y"] = 684843.17342157,
                ["x"] = -283869.17432175,
                ["name"] = new_unit_name(),
                ["heading"] = 6.0213859193804,
                ["playerCanDrive"] = false,
            }, -- end of [8]
        }, -- end of ["units"]
        ["y"] = 682639.9034438,
        ["x"] = -284892.41808999,
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
    Airbase.addAirdefence(group_country, Group.Category.GROUND, airbase_id,  2, AirdefenceGroupSecond())
end



defence = AirdefenceGroups(nul, country.id.RUSSIA, nil)