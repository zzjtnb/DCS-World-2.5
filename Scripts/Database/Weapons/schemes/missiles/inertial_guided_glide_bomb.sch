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
            ["__name"] = "const",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "double_zero",
                    ["type"] = 1,
                },
                [2] = {
                    ["name"] = "bool_false",
                    ["type"] = 4,
                },
            },
            ["__parameters"] = {
                ["bool_false"] = {
                    ["value"] = 0,
                },
                ["double_zero"] = {
                    ["value"] = 0,
                },
            },
        },
        [4] = {
            ["__name"] = "fm",
            ["__type"] = "wAFMGuidedWeapon2Descriptor",
            ["__parameters"] = {
                ["A"] = {
                },
                ["wind_time"] = {
                },
                ["cx_coeff"] = {
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
                ["Ma_x"] = {
                },
                ["L"] = {
                },
                ["Mw"] = {
                },
                ["addDeplSw"] = {
                },
                ["Sw"] = {
                },
                ["Ma"] = {
                },
                ["shapeName"] = {
                    ["value"] = "",
                },
                ["Kw_x"] = {
                },
                ["I_x"] = {
                },
                ["finsTau"] = {
                },
                ["wingsDeplProcTime"] = {
                },
                ["wingsDeplDelay"] = {
                },
                ["calcAirFins"] = {
                },
                ["maxAoa"] = {
                },
            },
        },
        [5] = {
            ["__name"] = "autopilot",
            ["__type"] = "wInertialGlideAutopilotDescriptor",
            ["__parameters"] = {
                ["pre_maneuver_glide_height"] = {
                },
                ["altim_vel_k"] = {
                },
                ["Kdh"] = {
                },
                ["use_current_height"] = {
                },
                ["Kdv"] = {
                },
                ["Kiv"] = {
                },
                ["max_heading_err_val"] = {
                },
                ["hKp_err_croll"] = {
                },
                ["vel_proj_div"] = {
                },
                ["Kph"] = {
                },
                ["skim_glide_height"] = {
                },
                ["cmd_Kd"] = {
                },
                ["finsLimit"] = {
                },
                ["inertial_km_error"] = {
                },
                ["cmd_K"] = {
                },
                ["Kih"] = {
                },
                ["max_vert_speed"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["glide_height"] = {
                },
                ["delay"] = {
                },
                ["Kpv"] = {
                },
            },
        },
        [6] = {
            ["__name"] = "open_trigger",
            ["__type"] = "wInertialClusterOpenerDescriptor",
            ["__parameters"] = {
                ["trigger_dist_k"] = {
                },
                ["delay"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [7] = {
            ["__name"] = "launcher",
            ["__type"] = "wBlockClusterLauncherDescriptor",
            ["__parameters"] = {
                ["server"] = {
                },
            },
        },
    },
    ["connections"] = {
        [1] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 1,
        },
        [2] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 1,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [3] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_0",
            ["input_block"] = -666,
            ["output_lead"] = "double_zero",
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
            ["input_lead"] = "wind",
            ["input_block"] = 3,
            ["output_lead"] = "wind",
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
            ["input_lead"] = "thrust",
            ["input_block"] = 3,
            ["output_lead"] = "double_zero",
            ["output_block"] = 2,
        },
        [8] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 3,
            ["output_lead"] = "double_zero",
            ["output_block"] = 2,
        },
        [9] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 3,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [10] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 3,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [11] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 3,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [12] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 3,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 3,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 3,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 1,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "vel_rot",
            ["output_block"] = 3,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "An",
            ["input_block"] = -666,
            ["output_lead"] = "An",
            ["output_block"] = 3,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 3,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 3,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 3,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 3,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 3,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 1,
            ["output_lead"] = "wings_out",
            ["output_block"] = 3,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "active",
            ["output_block"] = 4,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 3,
            ["output_lead"] = "active",
            ["output_block"] = 4,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 3,
            ["output_lead"] = "fins",
            ["output_block"] = 4,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 4,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 4,
            ["output_lead"] = "real_rot",
            ["output_block"] = 3,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 4,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 4,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [33] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 4,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [34] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 3,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 6,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 6,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 6,
            ["output_lead"] = "rot",
            ["output_block"] = 3,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 6,
            ["output_lead"] = "omega",
            ["output_block"] = 3,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "country",
            ["input_block"] = 6,
            ["output_lead"] = "country",
            ["output_block"] = -666,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "launcher_id",
            ["input_block"] = 6,
            ["output_lead"] = "launcher",
            ["output_block"] = -666,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "state",
            ["input_block"] = 6,
            ["output_lead"] = "state",
            ["output_block"] = -666,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 1,
            ["output_lead"] = "wings_out",
            ["output_block"] = 3,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "target_LOS",
            ["output_block"] = 4,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 4,
            ["output_lead"] = "omega",
            ["output_block"] = 3,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_K",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_K",
            ["output_block"] = 3,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 5,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 5,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [50] = {
            ["port"] = 1,
            ["input_lead"] = "fire",
            ["input_block"] = 6,
            ["output_lead"] = "dist_trigger",
            ["output_block"] = 5,
        },
        [51] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "dist_trigger",
            ["output_block"] = 5,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "upd_target",
            ["input_block"] = 4,
            ["output_lead"] = "bool_false",
            ["output_block"] = 2,
        },
        [53] = {
            ["port"] = 1,
            ["input_lead"] = "owner",
            ["input_block"] = 6,
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
                ["name"] = "constraint",
                ["type"] = 5,
            },
        },
        ["outputWires"] = {
            [1] = {
                ["name"] = "active",
                ["type"] = 1,
            },
            [2] = {
                ["name"] = "target",
                ["type"] = 1,
            },
            [3] = {
                ["name"] = "target_pos",
                ["type"] = 3,
            },
            [4] = {
                ["name"] = "country",
                ["type"] = 0,
            },
            [5] = {
                ["name"] = "launcher",
                ["type"] = 6,
            },
            [6] = {
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
                ["name"] = "seeker_rot",
                ["type"] = 4,
            },
            [7] = {
                ["name"] = "has_signal",
                ["type"] = 1,
            },
            [8] = {
                ["name"] = "An",
                ["type"] = 3,
            },
            [9] = {
                ["name"] = "dbg_AoA",
                ["type"] = 3,
            },
            [10] = {
                ["name"] = "dbg_Thrust",
                ["type"] = 2,
            },
            [11] = {
                ["name"] = "dbg_Mass",
                ["type"] = 2,
            },
            [12] = {
                ["name"] = "dbg_N",
                ["type"] = 2,
            },
            [13] = {
                ["name"] = "target_LOS",
                ["type"] = 3,
            },
            [14] = {
                ["name"] = "dbg_K",
                ["type"] = 2,
            },
        },
    },
}