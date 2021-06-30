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
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [3] = {
            ["outPorts"] = {
                [1] = {
                    ["name"] = "open",
                    ["type"] = 1,
                },
            },
            ["inputs"] = {
            },
            ["__parameters"] = {
                ["open_delay"] = {
                },
                ["check_delay"] = {
                    ["value"] = 0.1,
                },
                ["File name"] = {
                    ["value"] = "bomb_cassette_script.lua",
                },
            },
            ["__type"] = "wBlockLuaDescriptor",
            ["__name"] = "control",
            ["additional_params"] = {
                [1] = {
                    ["name"] = "check_delay",
                    ["type"] = 1,
                },
                [2] = {
                    ["name"] = "open_delay",
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
        [4] = {
            ["__name"] = "fm",
            ["__type"] = "wFMBombDragDescriptor",
            ["__parameters"] = {
                ["wind_time"] = {
                },
                ["cx_factor"] = {
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
        [6] = {
            ["__name"] = "warhead",
            ["__type"] = "wWarheadStandardBlockDescriptor",
            ["__parameters"] = {
                ["time_self_destruct"] = {
                },
                ["max_fuze_delay"] = {
                },
                ["cumulative_thickness"] = {
                },
                ["cumulative_factor"] = {
                },
                ["caliber"] = {
                },
                ["water_explosion_factor"] = {
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
        [7] = {
            ["__name"] = "const",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "double_zero",
                    ["type"] = 1,
                },
            },
            ["__parameters"] = {
                ["double_zero"] = {
                    ["value"] = 0,
                },
            },
        },
        [8] = {
            ["__name"] = "",
            ["__type"] = "wBalluteSuppressorDescriptor",
            ["__parameters"] = {
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [9] = {
            ["__name"] = "",
            ["__type"] = "wBlockRampDescriptor",
            ["__parameters"] = {
                ["slope"] = {
                    ["value"] = 2,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
    },
    ["connections"] = {
        [1] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 4,
            ["output_lead"] = "check_obj",
            ["output_block"] = 2,
        },
        [3] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 4,
            ["output_lead"] = "check_obj",
            ["output_block"] = 2,
        },
        [4] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 3,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [5] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 3,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 3,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [8] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 3,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 3,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 4,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [12] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 4,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [13] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 3,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [14] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 3,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [15] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 3,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [16] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 3,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [17] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 5,
            ["output_lead"] = "collision",
            ["output_block"] = 4,
        },
        [18] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 5,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 5,
            ["output_lead"] = "object_id",
            ["output_block"] = 4,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "col. pos",
            ["output_block"] = 4,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 3,
            ["output_lead"] = "double_zero",
            ["output_block"] = 6,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 3,
            ["output_lead"] = "double_zero",
            ["output_block"] = 6,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 5,
            ["output_lead"] = "normal",
            ["output_block"] = 4,
        },
        [25] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 5,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "drag_open",
            ["input_block"] = 3,
            ["output_lead"] = "ballute_open",
            ["output_block"] = 7,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 1,
            ["output_lead"] = "ballute_open",
            ["output_block"] = 7,
        },
        [28] = {
            ["port"] = 1,
            ["input_lead"] = "suppress",
            ["input_block"] = 7,
            ["output_lead"] = "suppress_ballute",
            ["output_block"] = -666,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 5,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 4,
        },
        [30] = {
            ["port"] = 1,
            ["input_lead"] = "openIn",
            ["input_block"] = 7,
            ["output_lead"] = "open",
            ["output_block"] = 2,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 8,
            ["output_lead"] = "output",
            ["output_block"] = 1,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_0",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 8,
        },
        [33] = {
            ["port"] = 1,
            ["input_lead"] = "fuze_delay",
            ["input_block"] = 5,
            ["output_lead"] = "fuze_delay",
            ["output_block"] = -666,
        },
        [34] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "died",
            ["output_block"] = 5,
        },
        [35] = {
            ["port"] = 1,
            ["input_lead"] = "warhead_pos",
            ["input_block"] = 3,
            ["output_lead"] = "warhead_pos",
            ["output_block"] = 5,
        },
        [36] = {
            ["port"] = 1,
            ["input_lead"] = "rebound",
            ["input_block"] = 3,
            ["output_lead"] = "rebound",
            ["output_block"] = 5,
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
                ["name"] = "suppress_ballute",
                ["type"] = 1,
            },
            [9] = {
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
        },
    },
}