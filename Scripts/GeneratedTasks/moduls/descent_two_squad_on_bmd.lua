module('descent_two_squad_on_bmd', package.seeall)

local counter_squad = 0
local counter_group = 0
local counter_unit = 0

local function new_group_name()
    counter_group = counter_group + 1
    counter_unit = 0
    if counter_squad == 0 then
        return string.format("Descent group_bmd %d",counter_group)
    else
        return string.format("Descent_%d group_bmd %d",counter_squad, counter_group)
    end
end

local function new_unit_name()
    counter_unit = counter_unit + 1
    return string.format("Descent unit_bmd %d_%d",counter_group, counter_unit)
end

local function trooperGroupFirst()
    return {
    ["visible"] = false,
    ["lateActivation"] = false,
    ["tasks"] = 
    {
    }, -- end of ["tasks"]
    ["uncontrollable"] = false,
    ["task"] = "Без задачи",
    ["taskSelected"] = true,
    ["route"] = 
    {
        ["spans"] = 
        {
            [1] = 
            {
                [1] = 
                {
                    ["y"] = 615683.00298779,
                    ["x"] = -270415.94237812,
                }, -- end of [1]
                [2] = 
                {
                    ["y"] = 615733.6307059,
                    ["x"] = -270401.4773158,
                }, -- end of [2]
            }, -- end of [1]
            [2] = 
            {
                [1] = 
                {
                    ["y"] = 615733.6307059,
                    ["x"] = -270401.4773158,
                }, -- end of [1]
                [2] = 
                {
                    ["y"] = 616731.72000584,
                    ["x"] = -270000.07183648,
                }, -- end of [2]
            }, -- end of [2]
            [3] = 
            {
                [1] = 
                {
                    ["y"] = 616022.93195226,
                    ["x"] = -270092.28660875,
                }, -- end of [1]
                [2] = 
                {
                    ["y"] = 616022.93195226,
                    ["x"] = -270092.28660875,
                }, -- end of [2]
            }, -- end of [3]
        }, -- end of ["spans"]
        ["points"] = 
        {
            [1] = 
            {
                ["alt"] = 5,
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 615683.00298779,
                ["x"] = -270415.94237812,
                ["name"] = "DictKey_WptName_138",
                ["ETA_locked"] = true,
                ["speed"] = 1.3888888888889,
                ["action"] = "Cone",
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
            [2] = 
            {
                ["alt"] = 5,
                ["type"] = "Turning Point",
                ["ETA"] = 37.91060756276,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 615733.6307059,
                ["x"] = -270401.4773158,
                ["name"] = "DictKey_WptName_139",
                ["ETA_locked"] = false,
                ["speed"] = 1.3888888888889,
                ["action"] = "Cone",
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
            }, -- end of [2]
            [3] = 
            {
                ["alt"] = 6,
                ["type"] = "Turning Point",
                ["ETA"] = 801.32887824726,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 616731.72000584,
                ["x"] = -270000.07183648,
                ["name"] = "DictKey_WptName_140",
                ["ETA_locked"] = false,
                ["speed"] = 1.3888888888889,
                ["action"] = "Cone",
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
            }, -- end of [3]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["hidden"] = false,
    ["units"] = 
    {
        [1] = 
        {
            ["type"] = "BMD-1",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["skill"] = "Average",
            ["y"] = 615762.18066783,
            ["x"] = -270559.54686342,
            ["name"] = new_unit_name(),
            ["heading"] = 1.2962209766339,
            ["playerCanDrive"] = false,
        }, -- end of [1]
        [2] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["skill"] = "Average",
            ["y"] = 615722.78835771,
            ["x"] = -270566.49279053,
            ["name"] =  new_unit_name(),
            ["heading"] = 1.2962209766339,
            ["playerCanDrive"] = false,
        }, -- end of [2]
        [3] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["skill"] = "Average",
            ["y"] = 615683.39604759,
            ["x"] = -270573.43871763,
            ["name"] =  new_unit_name(),
            ["heading"] = 1.2962209766339,
            ["playerCanDrive"] = false,
        }, -- end of [3]
        [4] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["skill"] = "Average",
            ["y"] = 615644.00373747,
            ["x"] = -270580.38464474,
            ["name"] =  new_unit_name(),
            ["heading"] = 1.2962209766339,
            ["playerCanDrive"] = false,
        }, -- end of [4]
        [5] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["skill"] = "Average",
            ["y"] = 615604.61142735,
            ["x"] = -270587.33057185,
            ["name"] =  new_unit_name(),
            ["heading"] = 1.2962209766339,
            ["playerCanDrive"] = false,
        }, -- end of [5]
        [6] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["skill"] = "Average",
            ["y"] = 615565.21911722,
            ["x"] = -270594.27649895,
            ["name"] =  new_unit_name(),
            ["heading"] = 1.2962209766339,
            ["playerCanDrive"] = false,
        }, -- end of [6]
        [7] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["skill"] = "Average",
            ["y"] = 615525.8268071,
            ["x"] = -270601.22242606,
            ["name"] =  new_unit_name(),
            ["heading"] = 1.2962209766339,
            ["playerCanDrive"] = false,
        }, -- end of [7]
    }, -- end of ["units"]
    ["y"] = 615683.00298779,
    ["x"] = -270415.94237812,
    ["name"] = new_group_name(),
    ["start_time"] = 0,
    ["hiddenOnPlanner"] = false,
}
end

local function trooperGroupSecond()
    return {
    ["visible"] = false,
    ["lateActivation"] = false,
    ["tasks"] = 
    {
    }, -- end of ["tasks"]
    ["uncontrollable"] = false,
    ["task"] = "Без задачи",
    ["taskSelected"] = true,
    ["route"] = 
    {
        ["spans"] = 
        {
            [1] = 
            {
                [1] = 
                {
                    ["y"] = 615661.30539431,
                    ["x"] = -270370.73905837,
                }, -- end of [1]
                [2] = 
                {
                    ["y"] = 615715.54937801,
                    ["x"] = -270352.65773048,
                }, -- end of [2]
            }, -- end of [1]
            [2] = 
            {
                [1] = 
                {
                    ["y"] = 615715.54937801,
                    ["x"] = -270352.65773048,
                }, -- end of [1]
                [2] = 
                {
                    ["y"] = 616719.06307631,
                    ["x"] = -269962.10104789,
                }, -- end of [2]
            }, -- end of [2]
            [3] = 
            {
                [1] = 
                {
                    ["y"] = 616326.69826094,
                    ["x"] = -270012.728766,
                }, -- end of [1]
                [2] = 
                {
                    ["y"] = 616326.69826094,
                    ["x"] = -270012.728766,
                }, -- end of [2]
            }, -- end of [3]
        }, -- end of ["spans"]
        ["points"] = 
        {
            [1] = 
            {
                ["alt"] = 5,
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 615661.30539431,
                ["x"] = -270370.73905837,
                ["name"] = "DictKey_WptName_143",
                ["ETA_locked"] = true,
                ["speed"] = 1.3888888888889,
                ["action"] = "Cone",
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
            [2] = 
            {
                ["alt"] = 6,
                ["type"] = "Turning Point",
                ["ETA"] = 41.168289078846,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 615715.54937801,
                ["x"] = -270352.65773048,
                ["name"] = "DictKey_WptName_144",
                ["ETA_locked"] = false,
                ["speed"] = 1.3888888888889,
                ["action"] = "Cone",
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
            }, -- end of [2]
            [3] = 
            {
                ["alt"] = 7,
                ["type"] = "Turning Point",
                ["ETA"] = 802.04470812716,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 616719.06307631,
                ["x"] = -269962.10104789,
                ["name"] = "DictKey_WptName_145",
                ["ETA_locked"] = false,
                ["speed"] = 1.3888888888889,
                ["action"] = "Cone",
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
            }, -- end of [3]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["hidden"] = false,
    ["units"] = 
    {
        [1] = 
        {
            ["type"] = "BMD-1",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["skill"] = "Average",
            ["y"] = 615762.18066783,
            ["x"] = -270559.54686342,
            ["name"] =  new_unit_name(),
            ["heading"] = 1.2962209766339,
            ["playerCanDrive"] = false,
        }, -- end of [1]
        [2] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["skill"] = "Average",
            ["y"] = 615722.78835771,
            ["x"] = -270566.49279053,
            ["name"] =  new_unit_name(),
            ["heading"] = 1.2962209766339,
            ["playerCanDrive"] = false,
        }, -- end of [2]
        [3] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["skill"] = "Average",
            ["y"] = 615683.39604759,
            ["x"] = -270573.43871763,
            ["name"] =  new_unit_name(),
            ["heading"] = 1.2962209766339,
            ["playerCanDrive"] = false,
        }, -- end of [3]
        [4] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["skill"] = "Average",
            ["y"] = 615644.00373747,
            ["x"] = -270580.38464474,
            ["name"] =  new_unit_name(),
            ["heading"] = 1.2962209766339,
            ["playerCanDrive"] = false,
        }, -- end of [4]
        [5] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["skill"] = "Average",
            ["y"] = 615604.61142735,
            ["x"] = -270587.33057185,
            ["name"] =  new_unit_name(),
            ["heading"] = 1.2962209766339,
            ["playerCanDrive"] = false,
        }, -- end of [5]
        [6] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["skill"] = "Average",
            ["y"] = 615565.21911722,
            ["x"] = -270594.27649895,
            ["name"] =  new_unit_name(),
            ["heading"] = 1.2962209766339,
            ["playerCanDrive"] = false,
        }, -- end of [6]
        [7] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["skill"] = "Average",
            ["y"] = 615525.8268071,
            ["x"] = -270601.22242606,
            ["name"] =  new_unit_name(),
            ["heading"] = 1.2962209766339,
            ["playerCanDrive"] = false,
        }, -- end of [7]
    }, -- end of ["units"]
    ["y"] = 615661.30539431,
    ["x"] = -270370.73905837,
    ["name"] = new_group_name(),
    ["start_time"] = 0,
    ["hiddenOnPlanner"] = false,
}
end


function TrooperGroups(squad_name, group_country)
    if squad_name ~= nil then
        counter_squad = squad_name
    end

    local Group_1 = coalition.addGroup(group_country, Group.Category.GROUND, trooperGroupFirst())
    local Group_2 = coalition.addGroup(group_country, Group.Category.GROUND, trooperGroupSecond())

    counter_squad = 0
    return {Group_1:getID(), Group_2:getID()}
end

--groups_mission_id = TrooperGroups()


