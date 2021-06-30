simulation_scheme = {
    ["blocks"] = {
        [1] = {
            ["__name"] = "",
            ["__type"] = "wAtmSamplerDescriptor",
            ["__parameters"] = {
            },
        },
        [2] = {
            ["__name"] = "",
            ["__type"] = "wColliderBlockDescriptor",
            ["__parameters"] = {
                ["coll_delay"] = {
                },
                ["del_y"] = {
                },
                ["check_water"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [3] = {
            ["__name"] = "warhead",
            ["__type"] = "wWarheadStandardBlockDescriptor",
            ["__parameters"] = {
                ["time_self_destruct"] = {
                },
                ["cumulative_thickness"] = {
                },
                ["cumulative_factor"] = {
                },
                ["caliber"] = {
                },
                ["obj_factors"] = {
                },
                ["piercing_mass"] = {
                },
                ["concrete_factors"] = {
                },
                ["other_factors"] = {
                },
                ["expl_mass"] = {
                },
                ["fantom"] = {
                },
                ["mass"] = {
                },
                ["concrete_obj_factor"] = {
                },
            },
        },
        [4] = {
            ["__name"] = "fm",
            ["__type"] = "wFMBombRocketDescriptor",
            ["__parameters"] = {
                ["wind_time"] = {
                },
                ["cx_coeff"] = {
                },
                ["Ma"] = {
                },
                ["Cx0"] = {
                },
                ["caliber"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["I"] = {
                },
                ["mass"] = {
                },
                ["wind_sigma"] = {
                },
                ["table_scale"] = {
                },
                ["shapeName"] = {
                    ["value"] = "",
                },
                ["L"] = {
                },
                ["old_cx_coeff"] = {
                },
                ["Mw"] = {
                },
            },
        },
        [5] = {
            ["__name"] = "const",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "double_zero",
                    ["type"] = 1,
                },
                [2] = {
                    ["name"] = "bool_true",
                    ["type"] = 4,
                },
                [3] = {
                    ["name"] = "double_1",
                    ["type"] = 1,
                },
            },
            ["__parameters"] = {
                ["double_1"] = {
                    ["value"] = 1,
                },
                ["double_zero"] = {
                    ["value"] = 0,
                },
                ["bool_true"] = {
                    ["value"] = 1,
                },
            },
        },
        [6] = {
            ["outPorts"] = {
            },
            ["inputs"] = {
            },
            ["__parameters"] = {
                ["delay"] = {
                    ["value"] = 1,
                },
                ["File name"] = {
                    ["value"] = "bomb_script.lua",
                },
            },
            ["__type"] = "wBlockLuaDescriptor",
            ["__name"] = "delay",
            ["additional_params"] = {
                [1] = {
                    ["name"] = "delay",
                    ["type"] = 1,
                },
            },
            ["inPorts"] = {
            },
            ["outputs"] = {
                [1] = {
                    ["name"] = "check_obj",
                    ["type"] = 1,
                },
            },
        },
        [7] = {
            ["__name"] = "",
            ["__type"] = "wBlockORtriggerDescriptor",
            ["__parameters"] = {
            },
        },
        [8] = {
            ["__name"] = "",
            ["__type"] = "wBlockNOTtriggerDescriptor",
            ["__parameters"] = {
            },
        },
        [9] = {
            ["__name"] = "",
            ["__type"] = "wBlockANDtriggerDescriptor",
            ["__parameters"] = {
            },
        },
        [10] = {
            ["__name"] = "arming_vane",
            ["__type"] = "wFuzeArmingVaneDescriptor",
            ["__parameters"] = {
                ["enabled"] = {
                },
                ["velK"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [11] = {
            ["__name"] = "arming_delay",
            ["__type"] = "wBlockDelayTriggerDescriptor",
            ["__parameters"] = {
                ["enabled"] = {
                },
                ["delay_time"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [12] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [13] = {
            ["__name"] = "inc_anim",
            ["__type"] = "wBlockGo2doubleOntimerDescriptor",
            ["__parameters"] = {
                ["use_start_val"] = {
                    ["value"] = 1,
                },
                ["loop"] = {
                    ["value"] = 1,
                },
                ["start_val"] = {
                    ["value"] = 0,
                },
                ["activate_by_port"] = {
                    ["value"] = 0,
                },
                ["K_t"] = {
                    ["value"] = 5,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
    },
    ["connections"] = {
        [1] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 1,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [2] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 2,
            ["output_lead"] = "collision",
            ["output_block"] = 1,
        },
        [3] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 2,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [4] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [5] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 3,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 3,
        },
        [8] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 3,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 3,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 3,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [11] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 3,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [12] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 3,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [13] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 3,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [14] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 3,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 1,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 3,
            ["output_lead"] = "double_zero",
            ["output_block"] = 4,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 2,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 1,
            ["output_lead"] = "check_obj",
            ["output_block"] = 5,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 3,
            ["output_lead"] = "double_zero",
            ["output_block"] = 4,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_0",
            ["input_block"] = -666,
            ["output_lead"] = "double_zero",
            ["output_block"] = 4,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 2,
            ["output_lead"] = "col. pos",
            ["output_block"] = 1,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 2,
            ["output_lead"] = "normal",
            ["output_block"] = 1,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 2,
            ["output_lead"] = "object_id",
            ["output_block"] = 1,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 2,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 1,
        },
        [26] = {
            ["port"] = 1,
            ["input_lead"] = "fuze_delay",
            ["input_block"] = 2,
            ["output_lead"] = "fuze_delay",
            ["output_block"] = -666,
        },
        [27] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "died",
            ["output_block"] = 2,
        },
        [28] = {
            ["port"] = 1,
            ["input_lead"] = "warhead_pos",
            ["input_block"] = 3,
            ["output_lead"] = "warhead_pos",
            ["output_block"] = 2,
        },
        [29] = {
            ["port"] = 1,
            ["input_lead"] = "rebound",
            ["input_block"] = 3,
            ["output_lead"] = "rebound",
            ["output_block"] = 2,
        },
        [30] = {
            ["port"] = 1,
            ["input_lead"] = "input1",
            ["input_block"] = 6,
            ["output_lead"] = "output",
            ["output_block"] = 7,
        },
        [31] = {
            ["port"] = 1,
            ["input_lead"] = "input2",
            ["input_block"] = 6,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 9,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [33] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 2,
            ["output_lead"] = "output",
            ["output_block"] = 6,
        },
        [34] = {
            ["port"] = 1,
            ["input_lead"] = "input1",
            ["input_block"] = 8,
            ["output_lead"] = "armed",
            ["output_block"] = 9,
        },
        [35] = {
            ["port"] = 1,
            ["input_lead"] = "input2",
            ["input_block"] = 8,
            ["output_lead"] = "timed_out",
            ["output_block"] = 10,
        },
        [36] = {
            ["port"] = 1,
            ["input_lead"] = "input",
            ["input_block"] = 7,
            ["output_lead"] = "output",
            ["output_block"] = 8,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 1,
            ["output_lead"] = "bool_true",
            ["output_block"] = 4,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_19",
            ["input_block"] = -666,
            ["output_lead"] = "double_1",
            ["output_block"] = 4,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_28",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 12,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_56",
            ["input_block"] = -666,
            ["output_lead"] = "double_zero",
            ["output_block"] = 4,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 11,
            ["output_lead"] = "check_obj",
            ["output_block"] = 5,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 12,
            ["output_lead"] = "output",
            ["output_block"] = 11,
        },
    },
    ["io"] = {
        ["outputPorts"] = {
            [1] = {
                ["name"] = "pos",
                ["type"] = 3,
            },
            [2] = {
                ["name"] = "vel",
                ["type"] = 3,
            },
            [3] = {
                ["name"] = "rot",
                ["type"] = 4,
            },
            [4] = {
                ["name"] = "omega",
                ["type"] = 3,
            },
            [5] = {
                ["name"] = "id",
                ["type"] = 6,
            },
            [6] = {
                ["name"] = "owner",
                ["type"] = 5,
            },
            [7] = {
                ["name"] = "suppress_explosion",
                ["type"] = 1,
            },
            [8] = {
                ["name"] = "fuze_delay",
                ["type"] = 2,
            },
        },
        ["outputWires"] = {
        },
        ["inputPorts"] = {
            [1] = {
                ["name"] = "died",
                ["type"] = 1,
            },
        },
        ["inputWires"] = {
            [1] = {
                ["name"] = "pos",
                ["type"] = 3,
            },
            [2] = {
                ["name"] = "vel",
                ["type"] = 3,
            },
            [3] = {
                ["name"] = "omega",
                ["type"] = 3,
            },
            [4] = {
                ["name"] = "rot",
                ["type"] = 4,
            },
            [5] = {
                ["name"] = "draw_arg_0",
                ["type"] = 2,
            },
            [6] = {
                ["name"] = "draw_arg_19",
                ["type"] = 2,
            },
            [7] = {
                ["name"] = "draw_arg_28",
                ["type"] = 2,
            },
            [8] = {
                ["name"] = "draw_arg_56",
                ["type"] = 2,
            },
        },
    },
}