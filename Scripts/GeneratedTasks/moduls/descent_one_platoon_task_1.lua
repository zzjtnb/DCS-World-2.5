module('descent_one_platoon_task_1', package.seeall)

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
                    ["y"] = 615590.78821551,
                    ["x"] = -270282.14055168,
                }, -- end of [1]
                [2] = 
                {
                    ["y"] = 615646.30548632,
                    ["x"] = -270258.39796002,
                }, -- end of [2]
            }, -- end of [1]
            [2] = 
            {
                [1] = 
                {
                    ["y"] = 615646.30548632,
                    ["x"] = -270258.39796002,
                }, -- end of [1]
                [2] = 
                {
                    ["y"] = 616657.56920339,
                    ["x"] = -269848.06844131,
                }, -- end of [2]
            }, -- end of [2]
            [3] = 
            {
                [1] = 
                {
                    ["y"] = 615646.840332,
                    ["x"] = -270260.4429582,
                }, -- end of [1]
                [2] = 
                {
                    ["y"] = 616511.96840643,
                    ["x"] = -270576.07242611,
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
                ["y"] = 615590.78821551,
                ["x"] = -270282.14055168,
                ["name"] = "DictKey_WptName_148",
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
                ["alt"] = 6,
                ["type"] = "Turning Point",
                ["ETA"] = 36.228663869702,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 615646.30548632,
                ["x"] = -270258.39796002,
                ["name"] = "DictKey_WptName_159",
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
                ["alt"] = 7,
                ["type"] = "Turning Point",
                ["ETA"] = 691.03311023355,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 616657.56920339,
                ["x"] = -269848.06844131,
                ["name"] = "DictKey_WptName_149",
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
            ["unitId"] = 28,
            ["skill"] = "Average",
            ["y"] = 615590.78821551,
            ["x"] = -270282.14055168,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [1]
        [2] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 29,
            ["skill"] = "Average",
            ["y"] = 615553.48549158,
            ["x"] = -270296.58031578,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [2]
        [3] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 30,
            ["skill"] = "Average",
            ["y"] = 615516.18276765,
            ["x"] = -270311.02007988,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [3]
        [4] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 31,
            ["skill"] = "Average",
            ["y"] = 615478.88004372,
            ["x"] = -270325.45984399,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [4]
        [5] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 32,
            ["skill"] = "Average",
            ["y"] = 615441.57731979,
            ["x"] = -270339.89960809,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [5]
        [6] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 33,
            ["skill"] = "Average",
            ["y"] = 615404.27459586,
            ["x"] = -270354.33937219,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [6]
        [7] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 34,
            ["skill"] = "Average",
            ["y"] = 615366.97187193,
            ["x"] = -270368.77913629,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [7]
        [8] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 35,
            ["skill"] = "Average",
            ["y"] = 615329.669148,
            ["x"] = -270383.2189004,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [8]
        [9] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 36,
            ["skill"] = "Average",
            ["y"] = 615292.36642407,
            ["x"] = -270397.6586645,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [9]
        [10] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 37,
            ["skill"] = "Average",
            ["y"] = 615255.06370014,
            ["x"] = -270412.0984286,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [10]
        [11] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 38,
            ["skill"] = "Average",
            ["y"] = 615223.00912655,
            ["x"] = -270439.42545788,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [11]
        [12] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 39,
            ["skill"] = "Average",
            ["y"] = 615186.23121765,
            ["x"] = -270455.1539485,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [12]
        [13] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 40,
            ["skill"] = "Average",
            ["y"] = 615149.45330876,
            ["x"] = -270470.88243912,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [13]
        [14] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 41,
            ["skill"] = "Average",
            ["y"] = 615112.67539986,
            ["x"] = -270486.61092975,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [14]
        [15] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 42,
            ["skill"] = "Average",
            ["y"] = 615075.89749096,
            ["x"] = -270502.33942037,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [15]
        [16] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 43,
            ["skill"] = "Average",
            ["y"] = 615039.11958207,
            ["x"] = -270518.06791099,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [16]
        [17] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 44,
            ["skill"] = "Average",
            ["y"] = 615002.34167317,
            ["x"] = -270533.79640161,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [17]
        [18] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 45,
            ["skill"] = "Average",
            ["y"] = 614965.56376427,
            ["x"] = -270549.52489223,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [18]
        [19] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 46,
            ["skill"] = "Average",
            ["y"] = 614928.78585538,
            ["x"] = -270565.25338285,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [19]
        [20] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 47,
            ["skill"] = "Average",
            ["y"] = 614892.00794648,
            ["x"] = -270580.98187347,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [20]
        [21] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 48,
            ["skill"] = "Average",
            ["y"] = 614855.23003758,
            ["x"] = -270596.71036409,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [21]
        [22] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 49,
            ["skill"] = "Average",
            ["y"] = 614818.45212869,
            ["x"] = -270612.43885471,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [22]
        [23] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 50,
            ["skill"] = "Average",
            ["y"] = 614781.67421979,
            ["x"] = -270628.16734533,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [23]
        [24] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 51,
            ["skill"] = "Average",
            ["y"] = 614744.89631089,
            ["x"] = -270643.89583595,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [24]
        [25] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 52,
            ["skill"] = "Average",
            ["y"] = 614708.118402,
            ["x"] = -270659.62432657,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [25]
        [26] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 53,
            ["skill"] = "Average",
            ["y"] = 614671.3404931,
            ["x"] = -270675.35281719,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [26]
        [27] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 54,
            ["skill"] = "Average",
            ["y"] = 614634.5625842,
            ["x"] = -270691.08130781,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [27]
        [28] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 55,
            ["skill"] = "Average",
            ["y"] = 614597.78467531,
            ["x"] = -270706.80979843,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [28]
        [29] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 56,
            ["skill"] = "Average",
            ["y"] = 614561.00676641,
            ["x"] = -270722.53828905,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [29]
        [30] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 57,
            ["skill"] = "Average",
            ["y"] = 614524.22885751,
            ["x"] = -270738.26677967,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [30]
        [31] = 
        {
            ["type"] = "Infantry AK",
            ["transportable"] = 
            {
                ["randomTransportable"] = false,
            }, -- end of ["transportable"]
            ["unitId"] = 58,
            ["skill"] = "Average",
            ["y"] = 614487.45094862,
            ["x"] = -270753.99527029,
            ["name"] = new_unit_name(),
            ["heading"] = 1.1666736428928,
            ["playerCanDrive"] = false,
        }, -- end of [31]
    }, -- end of ["units"]
    ["y"] = 615590.78821551,
    ["x"] = -270282.14055168,
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




