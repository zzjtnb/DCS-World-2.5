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
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [3] = {
            ["__name"] = "fm",
            ["__type"] = "wFMBombRocketDescriptor",
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
        [4] = {
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
            },
            ["__parameters"] = {
                ["bool_true"] = {
                    ["value"] = 1,
                },
                ["double_zero"] = {
                    ["value"] = 0,
                },
            },
        },
        [5] = {
            ["__name"] = "launcher",
            ["__type"] = "wBlockClusterLauncherDescriptor",
            ["__parameters"] = {
                ["server"] = {
                },
            },
        },
        [6] = {
            ["__name"] = "puff",
            ["__type"] = "wWarheadPuffDescriptor",
            ["__parameters"] = {
                ["scale"] = {
                    ["value"] = 1,
                },
            },
        },
        [7] = {
            ["__name"] = "",
            ["__type"] = "wOpenSuppressorDescriptor",
            ["__parameters"] = {
            },
        },
        [8] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [9] = {
            ["__name"] = "control_bock",
            ["__type"] = "wCbuControlBlockDescriptor",
            ["__parameters"] = {
                ["max_time_delay"] = {
                    ["value"] = 10,
                },
                ["min_time_delay"] = {
                    ["value"] = 1e-06,
                },
                ["default_delay"] = {
                    ["value"] = 3,
                },
                ["check_obj_delay"] = {
                    ["value"] = 1,
                },
                ["min_open_height"] = {
                    ["value"] = 1e-06,
                },
                ["default_open_height"] = {
                    ["value"] = 457.2,
                },
                ["max_open_height"] = {
                    ["value"] = 914.4,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [10] = {
            ["__name"] = "",
            ["__type"] = "wBlockRampDescriptor",
            ["__parameters"] = {
                ["slope"] = {
                    ["value"] = 1,
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
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [3] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 2,
        },
        [4] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 2,
        },
        [5] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 2,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 2,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 2,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [8] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 2,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [9] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 2,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [10] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 2,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [11] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 2,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 1,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 2,
            ["output_lead"] = "double_zero",
            ["output_block"] = 3,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 2,
            ["output_lead"] = "double_zero",
            ["output_block"] = 3,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 1,
            ["output_lead"] = "bool_true",
            ["output_block"] = 3,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 4,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 4,
            ["output_lead"] = "vel",
            ["output_block"] = 2,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 4,
            ["output_lead"] = "rot",
            ["output_block"] = 2,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "country",
            ["input_block"] = 4,
            ["output_lead"] = "country",
            ["output_block"] = -666,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
            ["output_lead"] = "vel",
            ["output_block"] = 2,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "launcher_id",
            ["input_block"] = 4,
            ["output_lead"] = "launcher",
            ["output_block"] = -666,
        },
        [24] = {
            ["port"] = 1,
            ["input_lead"] = "suppress",
            ["input_block"] = 6,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [25] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 1,
        },
        [26] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "openOut",
            ["output_block"] = 6,
        },
        [27] = {
            ["port"] = 1,
            ["input_lead"] = "fire",
            ["input_block"] = 5,
            ["output_lead"] = "openOut",
            ["output_block"] = 6,
        },
        [28] = {
            ["port"] = 1,
            ["input_lead"] = "fire",
            ["input_block"] = 4,
            ["output_lead"] = "openOut",
            ["output_block"] = 6,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 1,
            ["output_lead"] = "chk_obj",
            ["output_block"] = 8,
        },
        [30] = {
            ["port"] = 1,
            ["input_lead"] = "openIn",
            ["input_block"] = 6,
            ["output_lead"] = "open",
            ["output_block"] = 8,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 8,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 8,
            ["output_lead"] = "rot",
            ["output_block"] = 2,
        },
        [33] = {
            ["port"] = 1,
            ["input_lead"] = "open_h",
            ["input_block"] = 8,
            ["output_lead"] = "open_h",
            ["output_block"] = -666,
        },
        [34] = {
            ["port"] = 1,
            ["input_lead"] = "des_om",
            ["input_block"] = 8,
            ["output_lead"] = "ang_vel",
            ["output_block"] = -666,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 2,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 4,
            ["output_lead"] = "des_om",
            ["output_block"] = 8,
        },
        [37] = {
            ["port"] = 1,
            ["input_lead"] = "fzu39",
            ["input_block"] = 8,
            ["output_lead"] = "fzu39",
            ["output_block"] = -666,
        },
        [38] = {
            ["port"] = 1,
            ["input_lead"] = "time_del",
            ["input_block"] = 8,
            ["output_lead"] = "time_del",
            ["output_block"] = -666,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 7,
            ["output_lead"] = "bool_true",
            ["output_block"] = 3,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 9,
            ["output_lead"] = "output",
            ["output_block"] = 7,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_0",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 9,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "state",
            ["input_block"] = 4,
            ["output_lead"] = "state",
            ["output_block"] = -666,
        },
        [43] = {
            ["port"] = 1,
            ["input_lead"] = "owner",
            ["input_block"] = 4,
            ["output_lead"] = "owner",
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
                ["name"] = "suppress_explosion",
                ["type"] = 1,
            },
            [8] = {
                ["name"] = "open_h",
                ["type"] = 2,
            },
            [9] = {
                ["name"] = "ang_vel",
                ["type"] = 3,
            },
            [10] = {
                ["name"] = "fzu39",
                ["type"] = 1,
            },
            [11] = {
                ["name"] = "time_del",
                ["type"] = 2,
            },
        },
        ["outputWires"] = {
            [1] = {
                ["name"] = "country",
                ["type"] = 0,
            },
            [2] = {
                ["name"] = "launcher",
                ["type"] = 6,
            },
            [3] = {
                ["name"] = "state",
                ["type"] = 0,
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
                ["name"] = "draw_arg_0",
                ["type"] = 2,
            },
        },
    },
}