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
                    ["name"] = "double_zero",
                    ["type"] = 1,
                },
                [2] = {
                    ["name"] = "vec_0",
                    ["type"] = 3,
                },
            },
            ["__parameters"] = {
                ["vec_0"] = {
                    ["value"] = {
                        [1] = 0,
                        [2] = 0,
                        [3] = 0,
                    },
                },
                ["double_zero"] = {
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
            ["__name"] = "const3",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "bool_true",
                    ["type"] = 4,
                },
            },
            ["__parameters"] = {
                ["bool_true"] = {
                    ["value"] = 1,
                },
            },
        },
        [5] = {
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
                ["old_cx_coeff"] = {
                },
                ["Cx0"] = {
                },
                ["Sw"] = {
                },
                ["wingsDeplDelay"] = {
                },
                ["calcAirFins"] = {
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
                ["stop_fins"] = {
                },
                ["no_wings_A_mlt"] = {
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
                ["cx_coeff"] = {
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
        [6] = {
            ["__name"] = "seeker",
            ["__type"] = "wDSatSeekerDescriptor",
            ["__parameters"] = {
                ["coalition"] = {
                },
                ["FOV"] = {
                    ["value"] = 3.14,
                },
                ["opTime"] = {
                    ["value"] = 90000,
                },
                ["coalition_rnd_coeff"] = {
                },
                ["delay"] = {
                    ["value"] = 0,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [7] = {
            ["__name"] = "pos_conv",
            ["__type"] = "wBallisticLOSLocConvDescriptor",
            ["__parameters"] = {
                ["update_target_pos"] = {
                },
                ["max_yLOS_ang"] = {
                    ["value"] = 1.26,
                },
                ["max_dist_calc"] = {
                },
                ["straight_nav_pitch"] = {
                },
                ["straight_nav_dist"] = {
                },
                ["caliber"] = {
                },
                ["char_time"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["I"] = {
                },
                ["mass"] = {
                },
                ["aim_dt"] = {
                },
                ["LOS_conv_forward_mult"] = {
                },
                ["Ma"] = {
                },
                ["L"] = {
                },
                ["cx_coeff"] = {
                },
                ["Mw"] = {
                },
            },
        },
        [8] = {
            ["__name"] = "autopilot",
            ["__type"] = "wJDAMAutopilotDescriptor",
            ["__parameters"] = {
                ["NR"] = {
                },
                ["Kx"] = {
                },
                ["st_nav_time"] = {
                },
                ["K_GBias"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["rotated_WLOS_input"] = {
                    ["value"] = 1,
                },
                ["K"] = {
                },
                ["op_time"] = {
                    ["value"] = 9000,
                },
                ["use_w_diff"] = {
                },
                ["Kg"] = {
                },
                ["Kdx"] = {
                },
                ["PN_dist_data"] = {
                },
                ["Kiy"] = {
                },
                ["Kgy"] = {
                },
                ["Ky"] = {
                },
                ["conv_input"] = {
                },
                ["side_6deg_table"] = {
                },
                ["side_3deg_table"] = {
                },
                ["Ac_limit"] = {
                },
                ["pow2_output_k"] = {
                },
                ["Ki"] = {
                },
                ["delay"] = {
                },
                ["fins_limit"] = {
                },
            },
        },
        [9] = {
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
        [10] = {
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
        [11] = {
            ["__name"] = "inc_to_dbl",
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
        [12] = {
            ["outPorts"] = {
            },
            ["inputs"] = {
            },
            ["__parameters"] = {
                ["delay"] = {
                    ["value"] = 2,
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
        [13] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [14] = {
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
        [15] = {
            ["__name"] = "start_signal",
            ["__type"] = "wDoubleToVec3dDescriptor",
            ["__parameters"] = {
                ["mult_z"] = {
                    ["value"] = -0.25,
                },
                ["mult_y"] = {
                    ["value"] = 0,
                },
                ["mult_x"] = {
                    ["value"] = 0,
                },
            },
        },
        [16] = {
            ["__name"] = "",
            ["__type"] = "wBlockSummatorDescriptor<Vec3d>",
            ["inputs"] = {
                [1] = {
                    ["name"] = "input1",
                    ["coeff"] = 1,
                },
                [2] = {
                    ["name"] = "input2",
                    ["coeff"] = 1,
                },
            },
            ["__parameters"] = {
            },
        },
        [17] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [18] = {
            ["__name"] = "",
            ["__type"] = "wBlockNOTDescriptor",
            ["inputs"] = {
                [1] = {
                    ["name"] = "input1",
                },
                [2] = {
                    ["name"] = "input2",
                },
            },
            ["__parameters"] = {
            },
        },
    },
    ["connections"] = {
        [1] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 8,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [2] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 9,
            ["output_lead"] = "collision",
            ["output_block"] = 8,
        },
        [3] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 9,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [4] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_0",
            ["input_block"] = -666,
            ["output_lead"] = "double_zero",
            ["output_block"] = 1,
        },
        [5] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 9,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 9,
            ["output_lead"] = "normal",
            ["output_block"] = 8,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 8,
            ["output_lead"] = "check_obj",
            ["output_block"] = 11,
        },
        [8] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 9,
            ["output_lead"] = "object_id",
            ["output_block"] = 8,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 9,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 8,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 9,
            ["output_lead"] = "col. pos",
            ["output_block"] = 8,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 10,
            ["output_lead"] = "output",
            ["output_block"] = 12,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_2",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 13,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 13,
            ["output_lead"] = "output",
            ["output_block"] = 10,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 5,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 5,
            ["output_lead"] = "target",
            ["output_block"] = -666,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 5,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 5,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "LOS",
            ["output_block"] = 5,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 5,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_FOV",
            ["input_block"] = -666,
            ["output_lead"] = "FOV",
            ["output_block"] = 5,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "Gd",
            ["input_block"] = -666,
            ["output_lead"] = "vec_0",
            ["output_block"] = 1,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 13,
            ["output_lead"] = "double_1",
            ["output_block"] = 2,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 15,
            ["output_lead"] = "vec",
            ["output_block"] = 14,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "z",
            ["input_block"] = 14,
            ["output_lead"] = "output",
            ["output_block"] = 16,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "x",
            ["input_block"] = 14,
            ["output_lead"] = "double_zero",
            ["output_block"] = 1,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "y",
            ["input_block"] = 14,
            ["output_lead"] = "double_zero",
            ["output_block"] = 1,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 16,
            ["output_lead"] = "output",
            ["output_block"] = 17,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 17,
            ["output_lead"] = "check_obj",
            ["output_block"] = 11,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 4,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 4,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 4,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 4,
            ["output_lead"] = "has_signal",
            ["output_block"] = 5,
        },
        [33] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 4,
            ["output_lead"] = "output",
            ["output_block"] = 15,
        },
        [34] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 4,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [35] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 4,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [36] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 4,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [37] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 4,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [38] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 4,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 4,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 8,
            ["output_lead"] = "pos",
            ["output_block"] = 4,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = 4,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 4,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 9,
            ["output_lead"] = "vel",
            ["output_block"] = 4,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 4,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 4,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "real_rot",
            ["output_block"] = 4,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 4,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "An",
            ["input_block"] = -666,
            ["output_lead"] = "An",
            ["output_block"] = 4,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 4,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 4,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 4,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 4,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 12,
            ["output_lead"] = "wings_out",
            ["output_block"] = 4,
        },
        [54] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 8,
            ["output_lead"] = "wings_out",
            ["output_block"] = 4,
        },
        [55] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 4,
            ["output_lead"] = "double_zero",
            ["output_block"] = 1,
        },
        [56] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 4,
            ["output_lead"] = "double_zero",
            ["output_block"] = 1,
        },
        [57] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 6,
            ["output_lead"] = "has_signal",
            ["output_block"] = 5,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 6,
            ["output_lead"] = "LOS",
            ["output_block"] = 5,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 6,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 6,
            ["output_lead"] = "vel",
            ["output_block"] = 4,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "tg_dist",
            ["input_block"] = 6,
            ["output_lead"] = "target_dist",
            ["output_block"] = 5,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "path_point",
            ["input_block"] = -666,
            ["output_lead"] = "point",
            ["output_block"] = 6,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 7,
            ["output_lead"] = "bool_true",
            ["output_block"] = 3,
        },
        [64] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 7,
            ["output_lead"] = "vel",
            ["output_block"] = 4,
        },
        [65] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 7,
            ["output_lead"] = "omega",
            ["output_block"] = 4,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "loc_LOS",
            ["input_block"] = 7,
            ["output_lead"] = "loc_LOS",
            ["output_block"] = 6,
        },
        [67] = {
            ["port"] = 0,
            ["input_lead"] = "loc_W_LOS",
            ["input_block"] = 7,
            ["output_lead"] = "loc_cLWLOS",
            ["output_block"] = 6,
        },
        [68] = {
            ["port"] = 0,
            ["input_lead"] = "dist",
            ["input_block"] = 7,
            ["output_lead"] = "target_dist",
            ["output_block"] = 5,
        },
        [69] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 15,
            ["output_lead"] = "fins",
            ["output_block"] = 7,
        },
        [70] = {
            ["port"] = 1,
            ["input_lead"] = "side_add_ang",
            ["input_block"] = 7,
            ["output_lead"] = "side_add_ang",
            ["output_block"] = -666,
        },
        [71] = {
            ["port"] = 1,
            ["input_lead"] = "vert_add_ang",
            ["input_block"] = 7,
            ["output_lead"] = "vert_add_ang",
            ["output_block"] = -666,
        },
        [72] = {
            ["port"] = 0,
            ["input_lead"] = "pn_coeff",
            ["input_block"] = -666,
            ["output_lead"] = "pn_coeff",
            ["output_block"] = 7,
        },
        [73] = {
            ["port"] = 1,
            ["input_lead"] = "fuze_delay",
            ["input_block"] = 9,
            ["output_lead"] = "fuze_delay",
            ["output_block"] = -666,
        },
        [74] = {
            ["port"] = 0,
            ["input_lead"] = "country",
            ["input_block"] = 5,
            ["output_lead"] = "country",
            ["output_block"] = -666,
        },
        [75] = {
            ["port"] = 0,
            ["input_lead"] = "q",
            ["input_block"] = 7,
            ["output_lead"] = "dyn_pressure",
            ["output_block"] = 4,
        },
        [76] = {
            ["port"] = 0,
            ["input_lead"] = "N",
            ["input_block"] = 7,
            ["output_lead"] = "An",
            ["output_block"] = 4,
        },
        [77] = {
            ["port"] = 0,
            ["input_lead"] = "mis_omega",
            ["input_block"] = 6,
            ["output_lead"] = "omega",
            ["output_block"] = 4,
        },
        [78] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 7,
            ["output_lead"] = "real_rot",
            ["output_block"] = 4,
        },
        [79] = {
            ["port"] = 0,
            ["input_lead"] = "mis_rot",
            ["input_block"] = 6,
            ["output_lead"] = "real_rot",
            ["output_block"] = 4,
        },
        [80] = {
            ["port"] = 0,
            ["input_lead"] = "tg_pos",
            ["input_block"] = 6,
            ["output_lead"] = "sens_tg_pos",
            ["output_block"] = 5,
        },
        [81] = {
            ["port"] = 1,
            ["input_lead"] = "warhead_pos",
            ["input_block"] = 4,
            ["output_lead"] = "warhead_pos",
            ["output_block"] = 9,
        },
        [82] = {
            ["port"] = 1,
            ["input_lead"] = "rebound",
            ["input_block"] = 4,
            ["output_lead"] = "rebound",
            ["output_block"] = 9,
        },
        [83] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "died",
            ["output_block"] = 9,
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
                ["name"] = "side_add_ang",
                ["type"] = 2,
            },
            [10] = {
                ["name"] = "vert_add_ang",
                ["type"] = 2,
            },
            [11] = {
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
            [4] = {
                ["name"] = "country",
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
            [18] = {
                ["name"] = "path_point",
                ["type"] = 3,
            },
            [19] = {
                ["name"] = "pn_coeff",
                ["type"] = 2,
            },
        },
    },
}