simulation_scheme = {
    ["blocks"] = {
        [1] = {
            ["__name"] = "",
            ["__type"] = "wAtmSamplerDescriptor",
            ["__parameters"] = {
            },
        },
        [2] = {
            ["outPorts"] = {
                [1] = {
                    ["name"] = "eng_on",
                    ["type"] = 1,
                },
            },
            ["inputs"] = {
            },
            ["__parameters"] = {
                ["delay_par"] = {
                },
                ["delay_eng"] = {
                },
                ["delay_check"] = {
                    ["value"] = 0.5,
                },
                ["File name"] = {
                    ["value"] = "bomb_concrete_script.lua",
                },
            },
            ["__type"] = "wBlockLuaDescriptor",
            ["__name"] = "control",
            ["additional_params"] = {
                [1] = {
                    ["name"] = "delay_check",
                    ["type"] = 1,
                },
                [2] = {
                    ["name"] = "delay_par",
                    ["type"] = 1,
                },
                [3] = {
                    ["name"] = "delay_eng",
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
                [2] = {
                    ["name"] = "par_open",
                    ["type"] = 1,
                },
            },
        },
        [3] = {
            ["__name"] = "engine",
            ["__type"] = "wEngineDescriptor",
            ["__parameters"] = {
                ["nozzle_orientationXYZ"] = {
                    ["value"] = {
                        [1] = {
                            [1] = 0,
                            [2] = 0,
                            [3] = 0,
                        },
                    },
                },
                ["fuel_mass"] = {
                },
                ["work_time"] = {
                },
                ["nozzle_position"] = {
                },
                ["boost_time"] = {
                },
                ["smoke_transparency"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["effect_type"] = {
                },
                ["boost_factor"] = {
                },
                ["min_start_speed"] = {
                },
                ["max_effect_length"] = {
                },
                ["custom_smoke_dissipation_factor"] = {
                    ["value"] = 0,
                },
                ["impulse"] = {
                },
                ["tail_width"] = {
                },
                ["smoke_color"] = {
                },
            },
        },
        [4] = {
            ["__name"] = "fm",
            ["__type"] = "wFMBombDragDescriptor",
            ["__parameters"] = {
                ["wind_time"] = {
                },
                ["cx_coeff"] = {
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
                ["cx_factor"] = {
                },
                ["shapeName"] = {
                    ["value"] = "",
                },
                ["L"] = {
                },
                ["Ma"] = {
                },
                ["Mw"] = {
                },
            },
        },
        [5] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [6] = {
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
        [7] = {
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
    },
    ["connections"] = {
        [1] = {
            ["port"] = 0,
            ["input_lead"] = "drag_open",
            ["input_block"] = 3,
            ["output_lead"] = "par_open",
            ["output_block"] = 1,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [3] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 5,
            ["output_lead"] = "check_obj",
            ["output_block"] = 1,
        },
        [4] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 5,
            ["output_lead"] = "check_obj",
            ["output_block"] = 1,
        },
        [5] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 3,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 3,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 3,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [8] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 3,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 3,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 4,
            ["output_lead"] = "par_open",
            ["output_block"] = 1,
        },
        [14] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 5,
        },
        [15] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 5,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [16] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 3,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [17] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 3,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [18] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 3,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [19] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 3,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 3,
            ["output_lead"] = "thrust",
            ["output_block"] = 2,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 3,
            ["output_lead"] = "fuel",
            ["output_block"] = 2,
        },
        [22] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 2,
            ["output_lead"] = "eng_on",
            ["output_block"] = 1,
        },
        [23] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 2,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [24] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 6,
            ["output_lead"] = "collision",
            ["output_block"] = 5,
        },
        [25] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 6,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 6,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_0",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 4,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 2,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 6,
            ["output_lead"] = "normal",
            ["output_block"] = 5,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 6,
            ["output_lead"] = "col. pos",
            ["output_block"] = 5,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 6,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 5,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 6,
            ["output_lead"] = "object_id",
            ["output_block"] = 5,
        },
        [33] = {
            ["port"] = 1,
            ["input_lead"] = "fuze_delay",
            ["input_block"] = 6,
            ["output_lead"] = "fuze_delay",
            ["output_block"] = -666,
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