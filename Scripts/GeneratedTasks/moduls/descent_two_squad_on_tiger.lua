module('descent_two_squad_on_tiger', package.seeall)

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
    if counter_squad == 0 then
        return string.format("Descent unit_t %d_%d",counter_group, counter_unit)
    else
        return string.format("Descent_%d unit_t %d_%d",counter_squad, counter_group, counter_unit)
    end
end

local route_1 = {
    ["spans"] = 
    {
        [1] = 
        {
            [1] = 
            {
                ["y"] = 615762.18066783,
                ["x"] = -270559.54686342,
            }, -- end of [1]
            [2] = 
            {
                ["y"] = 615916.37807883,
                ["x"] = -270516.11096156,
            }, -- end of [2]
        }, -- end of [1]
        [2] = 
        {
            [1] = 
            {
                ["y"] = 615916.37807883,
                ["x"] = -270516.11096156,
            }, -- end of [1]
            [2] = 
            {
                ["y"] = 616860.83650022,
                ["x"] = -270201.29148776,
            }, -- end of [2]
        }, -- end of [2]
        [3] = 
        {
            [1] = 
            {
                ["y"] = 616860.83650022,
                ["x"] = -270201.29148776,
            }, -- end of [1]
            [2] = 
            {
                ["y"] = 616860.83650022,
                ["x"] = -270201.29148776,
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
            ["y"] = 615762.18066783,
            ["x"] = -270559.54686342,
            ["name"] = "DictKey_WptName_87",
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
            ["ETA"] = 115.34282950138,
            ["alt_type"] = "BARO",
            ["formation_template"] = "",
            ["y"] = 615916.37807883,
            ["x"] = -270516.11096156,
            ["name"] = "DictKey_WptName_95",
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
            ["ETA"] = 784.36142310469,
            ["alt_type"] = "BARO",
            ["formation_template"] = "",
            ["y"] = 616860.83650022,
            ["x"] = -270201.29148776,
            ["name"] = "DictKey_WptName_96",
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
    ["routeRelativeTOT"] = true,
} -- end of ["route"]

local route_2 = {
    ["spans"] = 
    {
        [1] = 
        {
            [1] = 
            {
                ["y"] = 615737.24697148,
                ["x"] = -270511.77341597,
            }, -- end of [1]
            [2] = 
            {
                ["y"] = 615777.02589286,
                ["x"] = -270497.30835365,
            }, -- end of [2]
        }, -- end of [1]
        [2] = 
        {
            [1] = 
            {
                ["y"] = 615777.02589286,
                ["x"] = -270497.30835365,
            }, -- end of [1]
            [2] = 
            {
                ["y"] = 616842.01610601,
                ["x"] = -270162.80378755,
            }, -- end of [2]
        }, -- end of [2]
        [3] = 
        {
            [1] = 
            {
                ["y"] = 616775.11519279,
                ["x"] = -270074.20528086,
            }, -- end of [1]
            [2] = 
            {
                ["y"] = 616775.11519279,
                ["x"] = -270074.20528086,
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
            ["y"] = 615737.24697148,
            ["x"] = -270511.77341597,
            ["name"] = "DictKey_WptName_133",
            ["ETA_locked"] = true,
            ["speed"] = 1.3888888888889,
            ["action"] = "Rank",
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
            ["ETA"] = 30.475658452354,
            ["alt_type"] = "BARO",
            ["formation_template"] = "",
            ["y"] = 615777.02589286,
            ["x"] = -270497.30835365,
            ["name"] = "DictKey_WptName_134",
            ["ETA_locked"] = false,
            ["speed"] = 1.3888888888889,
            ["action"] = "Rank",
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
            ["ETA"] = 834.18437533414,
            ["alt_type"] = "BARO",
            ["formation_template"] = "",
            ["y"] = 616842.01610601,
            ["x"] = -270162.80378755,
            ["name"] = "DictKey_WptName_135",
            ["ETA_locked"] = false,
            ["speed"] = 1.3888888888889,
            ["action"] = "Rank",
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
} -- end of ["route"]

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
    ["route"] = route_1,
    ["hidden"] = false,
    ["units"] = 
    {
        [1] = 
        {
            ["type"] = "Tigr_233036",
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
    ["y"] = 615762.18066783,
    ["x"] = -270559.54686342,
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
    ["route"] = route_2, 
    ["hidden"] = false,
    ["units"] = 
    {
        [1] = 
        {
            ["type"] = "Tigr_233036",
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
    ["y"] = 615737.24697148,
    ["x"] = -270511.77341597,
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



