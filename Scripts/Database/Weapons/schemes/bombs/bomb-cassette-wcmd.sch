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
            ["__type"] = "wAFMGuidedWeaponDescriptor",
            ["__parameters"] = {
                ["A"] = {
                },
                ["wind_time"] = {
                },
                ["Sw"] = {
                },
                ["cx_coeff"] = {
                },
                ["maxAoa"] = {
                },
                ["dCydA"] = {
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
                ["finsTau"] = {
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
            ["__name"] = "control_block",
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
                    ["value"] = 670.56,
                },
                ["max_open_height"] = {
                    ["value"] = 914.4,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [9] = {
            ["__name"] = "WCMD_guidence",
            ["__type"] = "wWCMDGuidanceDescriptor",
            ["__parameters"] = {
                ["PID_differ"] = {
                },
                ["PID_koef"] = {
                },
                ["PID_integr"] = {
                },
                ["bomblet_char_time"] = {
                },
                ["char_time"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [10] = {
            ["__name"] = "",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "true",
                    ["type"] = 4,
                },
            },
            ["__parameters"] = {
                ["true"] = {
                    ["value"] = 1,
                },
            },
        },
        [11] = {
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
        [12] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
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
            ["input_lead"] = "country",
            ["input_block"] = 4,
            ["output_lead"] = "country",
            ["output_block"] = -666,
        },
        [3] = {
            ["port"] = 0,
            ["input_lead"] = "launcher_id",
            ["input_block"] = 4,
            ["output_lead"] = "launcher",
            ["output_block"] = -666,
        },
        [4] = {
            ["port"] = 1,
            ["input_lead"] = "suppress",
            ["input_block"] = 6,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [5] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 1,
        },
        [6] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "openOut",
            ["output_block"] = 6,
        },
        [7] = {
            ["port"] = 1,
            ["input_lead"] = "fire",
            ["input_block"] = 5,
            ["output_lead"] = "openOut",
            ["output_block"] = 6,
        },
        [8] = {
            ["port"] = 1,
            ["input_lead"] = "fire",
            ["input_block"] = 4,
            ["output_lead"] = "openOut",
            ["output_block"] = 6,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 1,
            ["output_lead"] = "chk_obj",
            ["output_block"] = 7,
        },
        [10] = {
            ["port"] = 1,
            ["input_lead"] = "openIn",
            ["input_block"] = 6,
            ["output_lead"] = "open",
            ["output_block"] = 7,
        },
        [11] = {
            ["port"] = 1,
            ["input_lead"] = "open_h",
            ["input_block"] = 7,
            ["output_lead"] = "open_h",
            ["output_block"] = -666,
        },
        [12] = {
            ["port"] = 1,
            ["input_lead"] = "des_om",
            ["input_block"] = 7,
            ["output_lead"] = "ang_vel",
            ["output_block"] = -666,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 4,
            ["output_lead"] = "des_om",
            ["output_block"] = 7,
        },
        [14] = {
            ["port"] = 1,
            ["input_lead"] = "fzu39",
            ["input_block"] = 7,
            ["output_lead"] = "fzu39",
            ["output_block"] = -666,
        },
        [15] = {
            ["port"] = 1,
            ["input_lead"] = "time_del",
            ["input_block"] = 7,
            ["output_lead"] = "time_del",
            ["output_block"] = -666,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 2,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 2,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 2,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 2,
            ["output_lead"] = "double_zero",
            ["output_block"] = 3,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 2,
            ["output_lead"] = "double_zero",
            ["output_block"] = 3,
        },
        [21] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 2,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [22] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 2,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [23] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 2,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [24] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 2,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 7,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 7,
            ["output_lead"] = "rot",
            ["output_block"] = 2,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 2,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 2,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 2,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 1,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 4,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [33] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [34] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
            ["output_lead"] = "vel",
            ["output_block"] = 2,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 4,
            ["output_lead"] = "vel",
            ["output_block"] = 2,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 4,
            ["output_lead"] = "rot",
            ["output_block"] = 2,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 8,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 8,
            ["output_lead"] = "vel",
            ["output_block"] = 2,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 2,
            ["output_lead"] = "fins",
            ["output_block"] = 8,
        },
        [40] = {
            ["port"] = 1,
            ["input_lead"] = "target_pos",
            ["input_block"] = 8,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [41] = {
            ["port"] = 1,
            ["input_lead"] = "has_wcmd",
            ["input_block"] = 8,
            ["output_lead"] = "has_wcmd",
            ["output_block"] = -666,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 2,
            ["output_lead"] = "true",
            ["output_block"] = 9,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 8,
            ["output_lead"] = "vel_rot",
            ["output_block"] = 2,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_0",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 10,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 10,
            ["output_lead"] = "output",
            ["output_block"] = 11,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 11,
            ["output_lead"] = "bool_true",
            ["output_block"] = 3,
        },
        [47] = {
            ["port"] = 1,
            ["input_lead"] = "drop_height",
            ["input_block"] = 8,
            ["output_lead"] = "open_h",
            ["output_block"] = -666,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "state",
            ["input_block"] = 4,
            ["output_lead"] = "state",
            ["output_block"] = -666,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 2,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 2,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 2,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 2,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 2,
        },
        [54] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 1,
            ["output_lead"] = "wings_out",
            ["output_block"] = 2,
        },
        [55] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 2,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [56] = {
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
            [12] = {
                ["name"] = "target_pos",
                ["type"] = 3,
            },
            [13] = {
                ["name"] = "has_wcmd",
                ["type"] = 1,
            },
            [14] = {
                ["name"] = "constraint",
                ["type"] = 5,
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
            [6] = {
                ["name"] = "dbg_AoA",
                ["type"] = 3,
            },
            [7] = {
                ["name"] = "dbg_Thrust",
                ["type"] = 2,
            },
            [8] = {
                ["name"] = "dbg_Mass",
                ["type"] = 2,
            },
            [9] = {
                ["name"] = "dbg_N",
                ["type"] = 2,
            },
        },
    },
}