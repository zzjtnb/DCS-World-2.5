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
            ["__name"] = "const",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "double_zero",
                    ["type"] = 1,
                },
                [2] = {
                    ["name"] = "double_one",
                    ["type"] = 1,
                },
            },
            ["__parameters"] = {
                ["double_one"] = {
                    ["value"] = 1,
                },
                ["double_zero"] = {
                    ["value"] = 0,
                },
            },
        },
        [5] = {
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
        [6] = {
            ["__name"] = "",
            ["__type"] = "wPowerSourceDescriptor",
            ["__parameters"] = {
                ["work_time_max"] = {
                    ["value"] = 55,
                },
            },
        },
        [7] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [8] = {
            ["__name"] = "",
            ["__type"] = "wBlockSummatorDescriptor<double>",
            ["inputs"] = {
                [1] = {
                    ["name"] = "input1",
                    ["coeff"] = -1,
                },
                [2] = {
                    ["name"] = "input2",
                    ["coeff"] = 1,
                },
            },
            ["__parameters"] = {
            },
        },
        [9] = {
            ["__name"] = "fm",
            ["__type"] = "wFMGyrostGuidedWDescriptor",
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
                ["lockRoll"] = {
                    ["value"] = 1,
                },
                ["L"] = {
                },
                ["Mw"] = {
                },
                ["Sw"] = {
                },
                ["Ma"] = {
                },
                ["shapeName"] = {
                    ["value"] = "",
                },
                ["finsTau"] = {
                },
                ["maxAoa"] = {
                },
            },
        },
        [10] = {
            ["__name"] = "",
            ["__type"] = "wBlockGo2doubleOntimerDescriptor",
            ["__parameters"] = {
                ["use_start_val"] = {
                    ["value"] = 1,
                },
                ["loop"] = {
                },
                ["start_val"] = {
                    ["value"] = 0,
                },
                ["activate_by_port"] = {
                },
                ["K_t"] = {
                    ["value"] = 2.6,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [11] = {
            ["__name"] = "",
            ["__type"] = "wSimpleSeekerDescriptor",
            ["__parameters"] = {
                ["sensitivity"] = {
                    ["value"] = 0,
                },
                ["DGF"] = {
                    ["value"] = {
                        [1] = 0,
                        [2] = 0.11,
                        [3] = 0.22,
                        [4] = 0.33,
                        [5] = 0.44,
                        [6] = 0.55,
                        [7] = 0.66,
                        [8] = 0.77,
                        [9] = 0.88,
                        [10] = 1,
                    },
                },
                ["RWF"] = {
                    ["value"] = {
                        [1] = 1,
                        [2] = 1,
                        [3] = 1,
                        [4] = 1,
                        [5] = 1,
                        [6] = 1,
                        [7] = 0.8,
                        [8] = 0.7,
                        [9] = 0.6,
                        [10] = 0.1,
                    },
                },
                ["max_target_speed_rnd_coeff"] = {
                },
                ["FOV"] = {
                    ["value"] = 2.6,
                },
                ["opTime"] = {
                    ["value"] = 90000,
                },
                ["flag_dist"] = {
                    ["value"] = 0,
                },
                ["max_target_speed"] = {
                },
                ["delay"] = {
                    ["value"] = 0,
                },
                ["maxW"] = {
                    ["value"] = 0.1,
                },
            },
        },
        [12] = {
            ["__name"] = "",
            ["__type"] = "wSimpleGyroStabSeekerDescriptor",
            ["__parameters"] = {
                ["omega_max"] = {
                    ["value"] = 1,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [13] = {
            ["__name"] = "bang_bang_autopilot",
            ["__type"] = "wTMAutopilotDescriptor",
            ["__parameters"] = {
                ["loft_add_val"] = {
                },
                ["J_Power_K"] = {
                    ["value"] = 0,
                },
                ["J_Trigger_Vert"] = {
                },
                ["J_Int_K"] = {
                    ["value"] = 0,
                },
                ["bang_bang"] = {
                    ["value"] = 1,
                },
                ["delay"] = {
                },
                ["J_FinAngle_K"] = {
                    ["value"] = 0,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["Kg"] = {
                },
                ["finsLimit"] = {
                },
                ["useJumpByDefault"] = {
                    ["value"] = 0,
                },
                ["J_Angle_K"] = {
                    ["value"] = 0,
                },
                ["K"] = {
                },
                ["J_Angle_W"] = {
                    ["value"] = 0,
                },
                ["Ki"] = {
                },
                ["J_Diff_K"] = {
                    ["value"] = 0,
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
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 2,
            ["output_lead"] = "collision",
            ["output_block"] = 1,
        },
        [4] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 2,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [5] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_0",
            ["input_block"] = -666,
            ["output_lead"] = "double_zero",
            ["output_block"] = 3,
        },
        [6] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 2,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 2,
            ["output_lead"] = "normal",
            ["output_block"] = 1,
        },
        [8] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 1,
            ["output_lead"] = "check_obj",
            ["output_block"] = 4,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 2,
            ["output_lead"] = "object_id",
            ["output_block"] = 1,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 2,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 1,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 2,
            ["output_lead"] = "col. pos",
            ["output_block"] = 1,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 9,
            ["output_lead"] = "output",
            ["output_block"] = 6,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_2",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 7,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 7,
            ["output_lead"] = "output",
            ["output_block"] = 9,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 7,
            ["output_lead"] = "double_one",
            ["output_block"] = 3,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 10,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 10,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "elec_power",
            ["input_block"] = 10,
            ["output_lead"] = "elec_power",
            ["output_block"] = 5,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 10,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 10,
            ["output_lead"] = "target",
            ["output_block"] = -666,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 10,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "Gd",
            ["input_block"] = -666,
            ["output_lead"] = "Gd",
            ["output_block"] = 10,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "LOS",
            ["output_block"] = 10,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_FOV",
            ["input_block"] = -666,
            ["output_lead"] = "FOV",
            ["output_block"] = 10,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "omega_LOS",
            ["input_block"] = 12,
            ["output_lead"] = "omega_LOS",
            ["output_block"] = 11,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "vLOS",
            ["input_block"] = 12,
            ["output_lead"] = "LOS",
            ["output_block"] = 10,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 12,
            ["output_lead"] = "has_signal",
            ["output_block"] = 10,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 11,
            ["output_lead"] = "LOS",
            ["output_block"] = 10,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 10,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 11,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 11,
            ["output_lead"] = "has_signal",
            ["output_block"] = 10,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 8,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 8,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [33] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 8,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [34] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 8,
            ["output_lead"] = "double_zero",
            ["output_block"] = 3,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 8,
            ["output_lead"] = "double_zero",
            ["output_block"] = 3,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 8,
            ["output_lead"] = "has_signal",
            ["output_block"] = 10,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 8,
            ["output_lead"] = "fins",
            ["output_block"] = 12,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 8,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 8,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 2,
            ["output_lead"] = "vel",
            ["output_block"] = 8,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 8,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 11,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 8,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 12,
            ["output_lead"] = "omega",
            ["output_block"] = 8,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 11,
            ["output_lead"] = "vel_rot",
            ["output_block"] = 8,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 12,
            ["output_lead"] = "vel_rot",
            ["output_block"] = 8,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 8,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "An",
            ["input_block"] = -666,
            ["output_lead"] = "An",
            ["output_block"] = 8,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 1,
            ["output_lead"] = "wings_out",
            ["output_block"] = 8,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 6,
            ["output_lead"] = "wings_out",
            ["output_block"] = 8,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 1,
            ["output_lead"] = "pos",
            ["output_block"] = 8,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 10,
            ["output_lead"] = "pos",
            ["output_block"] = 8,
        },
        [53] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 8,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [54] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 8,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [55] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 8,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [56] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 8,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [57] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 8,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 8,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 8,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 8,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 8,
        },
        [62] = {
            ["port"] = 1,
            ["input_lead"] = "fuze_delay",
            ["input_block"] = 2,
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
                ["name"] = "suppress_explosion",
                ["type"] = 1,
            },
            [8] = {
                ["name"] = "constraint",
                ["type"] = 5,
            },
            [9] = {
                ["name"] = "fuze_delay",
                ["type"] = 2,
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
                ["name"] = "seeker_FOV",
                ["type"] = 2,
            },
            [8] = {
                ["name"] = "target_LOS",
                ["type"] = 3,
            },
            [9] = {
                ["name"] = "has_signal",
                ["type"] = 1,
            },
            [10] = {
                ["name"] = "An",
                ["type"] = 3,
            },
            [11] = {
                ["name"] = "Gd",
                ["type"] = 3,
            },
            [12] = {
                ["name"] = "signal",
                ["type"] = 1,
            },
            [13] = {
                ["name"] = "dbg_AoA",
                ["type"] = 3,
            },
            [14] = {
                ["name"] = "dbg_Thrust",
                ["type"] = 2,
            },
            [15] = {
                ["name"] = "dbg_Mass",
                ["type"] = 2,
            },
            [16] = {
                ["name"] = "dbg_N",
                ["type"] = 2,
            },
            [17] = {
                ["name"] = "draw_arg_2",
                ["type"] = 2,
            },
        },
    },
}