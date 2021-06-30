module('descent_one_platoon_task_2', package.seeall)

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

local function trooperGroupFirst()
    return {
    ["visible"] = false,
    ["lateActivation"] = false,
    ["tasks"] = 
    {
    }, -- end of ["tasks"]
    ["uncontrollable"] = false,
    ["task"] = "Без задачи",
    ["route"] = 
    {
        ["spans"] = 
        {
            [1] = 
            {
                [1] = 
                {
                    ["y"] = 615831.61559154,
                    ["x"] = -270631.66545768,
                }, -- end of [1]
                [2] = 
                {
                    ["y"] = 615866.03032537,
                    ["x"] = -270599.89801107,
                }, -- end of [2]
            }, -- end of [1]
            [2] = 
            {
                [1] = 
                {
                    ["y"] = 615866.03032537,
                    ["x"] = -270599.89801107,
                }, -- end of [1]
                [2] = 
                {
                    ["y"] = 616924.94521235,
                    ["x"] = -270290.16540663,
                }, -- end of [2]
            }, -- end of [2]
            [3] = 
            {
                [1] = 
                {
                    ["y"] = 616924.94521235,
                    ["x"] = -270290.16540663,
                }, -- end of [1]
                [2] = 
                {
                    ["y"] = 616924.94521235,
                    ["x"] = -270290.16540663,
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
                ["y"] = 615831.61559154,
                ["x"] = -270631.66545768,
                ["name"] = "DictKey_WptName_184",
                ["ETA_locked"] = true,
                ["speed"] = 1.6666666666667,
                ["action"] = "Diamond",
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
                ["ETA"] = 28.101175147127,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 615866.03032537,
                ["x"] = -270599.89801107,
                ["name"] = "DictKey_WptName_185",
                ["ETA_locked"] = false,
                ["speed"] = 1.6666666666667,
                ["action"] = "Diamond",
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
                ["ETA"] = 670.40060012852,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 616924.94521235,
                ["x"] = -270290.16540663,
                ["name"] = "DictKey_WptName_186",
                ["ETA_locked"] = false,
                ["speed"] = 1.6666666666667,
                ["action"] = "Diamond",
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
    ["groupId"] = 17,
    ["hidden"] = false,
    ["units"] = 
    {
        [1] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 59,
            ["skill"] = "Average",
            ["y"] = 615831.61559154,
            ["x"] = -270631.66545768,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [1]
        [2] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 60,
            ["skill"] = "Average",
            ["y"] = 615802.22345375,
            ["x"] = -270658.79666179,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [2]
        [3] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 61,
            ["skill"] = "Average",
            ["y"] = 615772.83131597,
            ["x"] = -270685.9278659,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [3]
        [4] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 62,
            ["skill"] = "Average",
            ["y"] = 615743.43917818,
            ["x"] = -270713.05907001,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [4]
        [5] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 63,
            ["skill"] = "Average",
            ["y"] = 615714.0470404,
            ["x"] = -270740.19027412,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [5]
        [6] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 64,
            ["skill"] = "Average",
            ["y"] = 615684.65490261,
            ["x"] = -270767.32147823,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [6]
        [7] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 65,
            ["skill"] = "Average",
            ["y"] = 615655.26276483,
            ["x"] = -270794.45268234,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [7]
        [8] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 66,
            ["skill"] = "Average",
            ["y"] = 615625.87062704,
            ["x"] = -270821.58388645,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [8]
        [9] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 67,
            ["skill"] = "Average",
            ["y"] = 615596.47848926,
            ["x"] = -270848.71509056,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [9]
        [10] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 68,
            ["skill"] = "Average",
            ["y"] = 615567.08635147,
            ["x"] = -270875.84629467,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [10]
        [11] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 69,
            ["skill"] = "Average",
            ["y"] = 615537.69421369,
            ["x"] = -270902.97749878,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [11]
        [12] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 70,
            ["skill"] = "Average",
            ["y"] = 615508.3020759,
            ["x"] = -270930.10870289,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [12]
        [13] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 71,
            ["skill"] = "Average",
            ["y"] = 615478.90993812,
            ["x"] = -270957.239907,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [13]
        [14] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 72,
            ["skill"] = "Average",
            ["y"] = 615449.51780033,
            ["x"] = -270984.37111111,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [14]
        [15] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 73,
            ["skill"] = "Average",
            ["y"] = 615420.12566255,
            ["x"] = -271011.50231521,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [15]
        [16] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 74,
            ["skill"] = "Average",
            ["y"] = 615390.73352476,
            ["x"] = -271038.63351932,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [16]
        [17] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 75,
            ["skill"] = "Average",
            ["y"] = 615361.34138698,
            ["x"] = -271065.76472343,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [17]
        [18] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 76,
            ["skill"] = "Average",
            ["y"] = 615331.94924919,
            ["x"] = -271092.89592754,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [18]
        [19] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 77,
            ["skill"] = "Average",
            ["y"] = 615302.55711141,
            ["x"] = -271120.02713165,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [19]
        [20] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 78,
            ["skill"] = "Average",
            ["y"] = 615273.16497362,
            ["x"] = -271147.15833576,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [20]
        [21] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 79,
            ["skill"] = "Average",
            ["y"] = 615243.77283584,
            ["x"] = -271174.28953987,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [21]
        [22] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 80,
            ["skill"] = "Average",
            ["y"] = 615214.38069805,
            ["x"] = -271201.42074398,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [22]
        [23] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 81,
            ["skill"] = "Average",
            ["y"] = 615184.98856027,
            ["x"] = -271228.55194809,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [23]
        [24] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 82,
            ["skill"] = "Average",
            ["y"] = 615155.59642248,
            ["x"] = -271255.6831522,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [24]
        [25] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 83,
            ["skill"] = "Average",
            ["y"] = 615126.2042847,
            ["x"] = -271282.81435631,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [25]
        [26] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 84,
            ["skill"] = "Average",
            ["y"] = 615096.81214691,
            ["x"] = -271309.94556042,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [26]
        [27] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 85,
            ["skill"] = "Average",
            ["y"] = 615067.42000913,
            ["x"] = -271337.07676453,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [27]
        [28] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 86,
            ["skill"] = "Average",
            ["y"] = 615038.02787134,
            ["x"] = -271364.20796864,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [28]
        [29] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 87,
            ["skill"] = "Average",
            ["y"] = 615008.63573356,
            ["x"] = -271391.33917274,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [29]
        [30] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 88,
            ["skill"] = "Average",
            ["y"] = 614979.24359577,
            ["x"] = -271418.47037685,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [30]
        [31] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 89,
            ["skill"] = "Average",
            ["y"] = 614949.85145799,
            ["x"] = -271445.60158096,
            ["name"] = new_unit_name(),
            ["heading"] = 0.82537685052123,
            ["playerCanDrive"] = false,
        }, -- end of [31]
    }, -- end of ["units"]
    ["y"] = 615831.61559154,
    ["x"] = -270631.66545768,
    ["name"] = new_group_name(),
    ["start_time"] = 0,
    }
end

function TrooperGroups(squad_name, group_country)
    if squad_name ~= nil then
        counter_squad = squad_name
    end

    local Group_1 = coalition.addGroup(group_country, Group.Category.GROUND, trooperGroupFirst())

    return {Group_1:getID()}
end




