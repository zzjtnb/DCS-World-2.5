simulation_scheme = {
    ["blocks"] = {
        [1] = {
            ["__name"] = "",
            ["__type"] = "wAtmSamplerDescriptor",
            ["__parameters"] = {
            },
        },
        [2] = {
            ["__name"] = "const",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "double_0",
                    ["type"] = 1,
                },
            },
            ["__parameters"] = {
                ["double_0"] = {
                    ["value"] = 0,
                },
            },
        },
        [3] = {
            ["__name"] = "const2",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "double_1",
                    ["type"] = 1,
                },
            },
            ["__parameters"] = {
                ["double_1"] = {
                    ["value"] = 1,
                },
            },
        },
        [4] = {
            ["__name"] = "fm",
            ["__type"] = "wAFMGuidedWeapon2Descriptor",
            ["__parameters"] = {
                ["addDeplCx0"] = {
                },
                ["dCydA"] = {
                },
                ["caliber"] = {
                },
                ["table_scale"] = {
                },
                ["model_roll"] = {
                },
                ["old_cx_coeff"] = {
                },
                ["draw_fins_conv"] = {
                },
                ["Cx0"] = {
                },
                ["ideal_fins"] = {
                },
                ["Sw"] = {
                },
                ["wingsDeplDelay"] = {
                },
                ["A"] = {
                },
                ["wind_time"] = {
                },
                ["Mx0"] = {
                },
                ["maxAoa"] = {
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
                ["Mx_eng"] = {
                },
                ["fins_gain"] = {
                },
                ["stop_fins"] = {
                },
                ["cx_coeff"] = {
                },
                ["Ma_z"] = {
                },
                ["Ma"] = {
                },
                ["shapeName"] = {
                    ["value"] = "",
                },
                ["Kw_x"] = {
                },
                ["no_wings_A_mlt"] = {
                },
                ["Mw_x"] = {
                },
                ["finsTau"] = {
                },
                ["wingsDeplProcTime"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["I"] = {
                },
                ["I_x"] = {
                },
            },
        },
        [5] = {
            ["__name"] = "conv",
            ["__type"] = "wSimpleGyroStabSeekerDescriptor",
            ["__parameters"] = {
                ["omega_max"] = {
                    ["value"] = 999,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [6] = {
            ["__name"] = "autopilot",
            ["__type"] = "wTMAutopilotDescriptor",
            ["__parameters"] = {
                ["loft_add_val"] = {
                    ["value"] = 0,
                },
                ["J_Power_K"] = {
                    ["value"] = 0,
                },
                ["J_Trigger_Vert"] = {
                    ["value"] = 0,
                },
                ["J_Int_K"] = {
                    ["value"] = 0,
                },
                ["bang_bang"] = {
                    ["value"] = 1,
                },
                ["delay"] = {
                    ["value"] = 2,
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
        [7] = {
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
        [8] = {
            ["__name"] = "collider",
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
        [9] = {
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
        [10] = {
            ["__name"] = "",
            ["__type"] = "wPowerSourceDescriptor",
            ["__parameters"] = {
                ["work_time_max"] = {
                    ["value"] = 55,
                },
            },
        },
        [11] = {
            ["__name"] = "seeker",
            ["__type"] = "wLaserSpotSeekerDescriptor",
            ["__parameters"] = {
                ["FOV"] = {
                    ["value"] = 0.78,
                },
                ["max_dist_to_emitter"] = {
                },
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
                ["max_seeker_range"] = {
                },
                ["delay"] = {
                    ["value"] = 0,
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
            },
        },
        [12] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [13] = {
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
        [14] = {
            ["__name"] = "incTimer",
            ["__type"] = "wBlockGo2doubleOntimerDescriptor",
            ["__parameters"] = {
                ["use_start_val"] = {
                    ["value"] = 1,
                },
                ["loop"] = {
                    ["value"] = 0,
                },
                ["start_val"] = {
                    ["value"] = 0,
                },
                ["activate_by_port"] = {
                    ["value"] = 0,
                },
                ["K_t"] = {
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
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 7,
        },
        [2] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 7,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [3] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 8,
            ["output_lead"] = "collision",
            ["output_block"] = 7,
        },
        [4] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 8,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [5] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 8,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 8,
            ["output_lead"] = "normal",
            ["output_block"] = 7,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 7,
            ["output_lead"] = "check_obj",
            ["output_block"] = 6,
        },
        [8] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 8,
            ["output_lead"] = "object_id",
            ["output_block"] = 7,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 8,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 7,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 8,
            ["output_lead"] = "col. pos",
            ["output_block"] = 7,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 10,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "laser_code",
            ["input_block"] = 10,
            ["output_lead"] = "laser_code",
            ["output_block"] = -666,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "directly_set_target",
            ["input_block"] = 10,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "have_directly_set_target",
            ["input_block"] = 10,
            ["output_lead"] = "target",
            ["output_block"] = -666,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "elec_power",
            ["input_block"] = 10,
            ["output_lead"] = "elec_power",
            ["output_block"] = 9,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "LOS",
            ["output_block"] = 10,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_FOV",
            ["input_block"] = -666,
            ["output_lead"] = "FOV",
            ["output_block"] = 10,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos_out",
            ["input_block"] = -666,
            ["output_lead"] = "target_pos",
            ["output_block"] = 10,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "target_id_out",
            ["input_block"] = -666,
            ["output_lead"] = "target_id",
            ["output_block"] = 10,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 10,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "Gd",
            ["input_block"] = -666,
            ["output_lead"] = "Gd",
            ["output_block"] = 10,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 10,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 13,
            ["output_lead"] = "output",
            ["output_block"] = 11,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_2",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 12,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 12,
            ["output_lead"] = "output",
            ["output_block"] = 13,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "omega_LOS",
            ["input_block"] = 5,
            ["output_lead"] = "omega_LOS",
            ["output_block"] = 4,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 4,
            ["output_lead"] = "LOS",
            ["output_block"] = 10,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 4,
            ["output_lead"] = "has_signal",
            ["output_block"] = 10,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 5,
            ["output_lead"] = "has_signal",
            ["output_block"] = 10,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "vLOS",
            ["input_block"] = 5,
            ["output_lead"] = "LOS",
            ["output_block"] = 10,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 10,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 4,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 3,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [33] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 3,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [34] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 3,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 7,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 8,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 10,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 3,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 5,
            ["output_lead"] = "omega",
            ["output_block"] = 3,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 3,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "An",
            ["input_block"] = -666,
            ["output_lead"] = "An",
            ["output_block"] = 3,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 3,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 3,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 3,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 3,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 7,
            ["output_lead"] = "wings_out",
            ["output_block"] = 3,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 11,
            ["output_lead"] = "wings_out",
            ["output_block"] = 3,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 4,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 4,
            ["output_lead"] = "vel_rot",
            ["output_block"] = 3,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 5,
            ["output_lead"] = "vel_rot",
            ["output_block"] = 3,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 3,
        },
        [54] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 3,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [55] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 3,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [56] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 3,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [57] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 3,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [58] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 3,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 3,
            ["output_lead"] = "fins",
            ["output_block"] = 5,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 3,
            ["output_lead"] = "has_signal",
            ["output_block"] = 10,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 3,
            ["output_lead"] = "double_0",
            ["output_block"] = 1,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 3,
            ["output_lead"] = "double_0",
            ["output_block"] = 1,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 12,
            ["output_lead"] = "double_1",
            ["output_block"] = 2,
        },
        [64] = {
            ["port"] = 0,
            ["input_lead"] = "launcher_id",
            ["input_block"] = 10,
            ["output_lead"] = "launcher",
            ["output_block"] = -666,
        },
        [65] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 10,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "target_ID",
            ["input_block"] = 10,
            ["output_lead"] = "target_ID",
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
                ["name"] = "suppress_explosion",
                ["type"] = 1,
            },
            [7] = {
                ["name"] = "constraint",
                ["type"] = 5,
            },
            [8] = {
                ["name"] = "owner",
                ["type"] = 5,
            },
        },
        ["outputWires"] = {
            [1] = {
                ["name"] = "active",
                ["type"] = 1,
            },
            [2] = {
                ["name"] = "laser_code",
                ["type"] = 6,
            },
            [3] = {
                ["name"] = "target",
                ["type"] = 1,
            },
            [4] = {
                ["name"] = "target_pos",
                ["type"] = 3,
            },
            [5] = {
                ["name"] = "launcher",
                ["type"] = 6,
            },
            [6] = {
                ["name"] = "target_ID",
                ["type"] = 6,
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
                ["name"] = "seeker_rot",
                ["type"] = 4,
            },
            [6] = {
                ["name"] = "seeker_FOV",
                ["type"] = 2,
            },
            [7] = {
                ["name"] = "target_LOS",
                ["type"] = 3,
            },
            [8] = {
                ["name"] = "has_signal",
                ["type"] = 1,
            },
            [9] = {
                ["name"] = "target_id_out",
                ["type"] = 6,
            },
            [10] = {
                ["name"] = "target_pos_out",
                ["type"] = 3,
            },
            [11] = {
                ["name"] = "An",
                ["type"] = 3,
            },
            [12] = {
                ["name"] = "Gd",
                ["type"] = 3,
            },
            [13] = {
                ["name"] = "signal",
                ["type"] = 1,
            },
            [14] = {
                ["name"] = "dbg_AoA",
                ["type"] = 3,
            },
            [15] = {
                ["name"] = "dbg_Thrust",
                ["type"] = 2,
            },
            [16] = {
                ["name"] = "dbg_Mass",
                ["type"] = 2,
            },
            [17] = {
                ["name"] = "dbg_N",
                ["type"] = 2,
            },
            [18] = {
                ["name"] = "draw_arg_2",
                ["type"] = 2,
            },
        },
    },
}