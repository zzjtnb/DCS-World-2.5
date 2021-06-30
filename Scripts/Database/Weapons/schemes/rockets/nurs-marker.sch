simulation_scheme = {
    ["blocks"] = {
        [1] = {
            ["__name"] = "",
            ["__type"] = "wAtmSamplerDescriptor",
            ["__parameters"] = {
            },
        },
        [2] = {
            ["__name"] = "engine",
            ["__type"] = "wEngineDescriptor",
            ["__parameters"] = {
                ["nozzle_orientationXYZ"] = {
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
                ["boost_factor"] = {
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
        [3] = {
            ["__name"] = "fm",
            ["__type"] = "wFMNursDescriptor",
            ["__parameters"] = {
                ["wind_time"] = {
                },
                ["cx_coeff"] = {
                },
                ["freq"] = {
                    ["value"] = 7,
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
                ["rail_open"] = {
                },
                ["shapeName"] = {
                },
                ["L"] = {
                },
                ["Ma"] = {
                },
                ["Mw"] = {
                },
            },
        },
        [4] = {
            ["__name"] = "",
            ["__type"] = "wColliderBlockDescriptor",
            ["__parameters"] = {
                ["dt"] = {
                    ["value"] = 0.02,
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
            ["__type"] = "wBlockSummatorDescriptor<double>",
            ["inputs"] = {
                [1] = {
                    ["name"] = "input1",
                    ["coeff"] = 1,
                },
                [2] = {
                    ["name"] = "input2",
                    ["coeff"] = -1,
                },
            },
            ["__parameters"] = {
            },
        },
        [7] = {
            ["__name"] = "const",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "one_dbl",
                    ["type"] = 1,
                },
            },
            ["__parameters"] = {
                ["one_dbl"] = {
                    ["value"] = 1,
                },
            },
        },
        [8] = {
            ["__name"] = "warhead",
            ["__type"] = "wWarheadSmokeBlockDescriptor",
            ["__parameters"] = {
                ["transparency"] = {
                },
                ["intensity"] = {
                },
                ["color"] = {
                },
                ["duration"] = {
                },
                ["flare"] = {
                },
            },
        },
    },
    ["connections"] = {
        [1] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 2,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 2,
        },
        [3] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 2,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [4] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 2,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [5] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 2,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 3,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [8] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 2,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 2,
            ["output_lead"] = "thrust",
            ["output_block"] = 1,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 2,
            ["output_lead"] = "fuel",
            ["output_block"] = 1,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 1,
            ["output_lead"] = "vel",
            ["output_block"] = 2,
        },
        [12] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 2,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [13] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 2,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [14] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 2,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [15] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 2,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 3,
            ["output_lead"] = "wings_out",
            ["output_block"] = 2,
        },
        [17] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 3,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [18] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 1,
            ["output_lead"] = "eng_on",
            ["output_block"] = -666,
        },
        [19] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 2,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [20] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 1,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 3,
            ["output_lead"] = "wings_out",
            ["output_block"] = 2,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 4,
            ["output_lead"] = "wings_out",
            ["output_block"] = 2,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_2",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 5,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 5,
            ["output_lead"] = "output",
            ["output_block"] = 4,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 5,
            ["output_lead"] = "one_dbl",
            ["output_block"] = 6,
        },
        [27] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 7,
            ["output_lead"] = "collision",
            ["output_block"] = 3,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 7,
            ["output_lead"] = "object_id",
            ["output_block"] = 3,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 7,
            ["output_lead"] = "col. pos",
            ["output_block"] = 3,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 7,
            ["output_lead"] = "vel",
            ["output_block"] = 2,
        },
        [31] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 3,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "rail_passed",
            ["input_block"] = -666,
            ["output_lead"] = "rail_passed",
            ["output_block"] = 2,
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
                ["name"] = "id",["type"] = 6,
            },
            [6] = {
                ["name"] = "constraint",
                ["type"] = 5,
            },
            [7] = {
                ["name"] = "eng_on",
                ["type"] = 1,
            },
            [8] = {
                ["name"] = "owner",
                ["type"] = 5,
            },
        },
        ["outputWires"] = {
            [1] = {
                ["name"] = "country",
                ["type"] = 2,
            },
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
                ["name"] = "draw_arg_2",
                ["type"] = 2,
            },
            [6] = {
                ["name"] = "rail_passed",
                ["type"] = 2,
            },
        },
    },
}