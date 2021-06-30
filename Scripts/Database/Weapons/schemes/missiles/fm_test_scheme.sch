simulation_scheme = {
    ["blocks"] = {
        [1] = {
            ["__name"] = "",
            ["__type"] = "wAtmSamplerDescriptor",
            ["__parameters"] = {
            },
        },
        [2] = {
            ["__name"] = "const0",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "bool true",
                    ["type"] = 4,
                },
            },
            ["__parameters"] = {
                ["bool true"] = {
                    ["value"] = 1,
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
        [4] = {
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
        [5] = {
            ["__name"] = "const3",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "pi",
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
                ["pi"] = {
                    ["value"] = 3.14,
                },
            },
        },
        [6] = {
            ["__name"] = "fm",
            ["__type"] = "wAFMGuidedWeapon2Descriptor",
            ["__parameters"] = {
                ["A"] = {
                },
                ["wind_time"] = {
                    ["value"] = 0,
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
                    ["value"] = 0,
                },
                ["Ma_x"] = {
                    ["value"] = 0.001,
                },
                ["L"] = {
                },
                ["Mw"] = {
                },
                ["addDeplSw"] = {
                    ["value"] = 0,
                },
                ["Sw"] = {
                },
                ["Ma"] = {
                },
                ["shapeName"] = {
                    ["value"] = "",
                },
                ["Kw_x"] = {
                    ["value"] = 0.001,
                },
                ["I_x"] = {
                    ["value"] = 40,
                },
                ["finsTau"] = {
                },
                ["wingsDeplProcTime"] = {
                    ["value"] = 0,
                },
                ["wingsDeplDelay"] = {
                    ["value"] = 0,
                },
                ["calcAirFins"] = {
                    ["value"] = 0,
                },
                ["maxAoa"] = {
                },
            },
        },
        [7] = {
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
        [8] = {
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
        [9] = {
            ["__name"] = "pos_conv",
            ["__type"] = "wBallisticLOSLocConvDescriptor",
            ["__parameters"] = {
                ["max_yLOS_ang"] = {
                    ["value"] = 1.26,
                },
                ["max_dist_calc"] = {
                    ["value"] = 4000,
                },
                ["straight_nav_pitch"] = {
                    ["value"] = -1.32,
                },
                ["straight_nav_dist"] = {
                    ["value"] = 900,
                },
                ["char_time"] = {
                    ["value"] = 20.22,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["mass"] = {
                },
                ["aim_dt"] = {
                },
                ["caliber"] = {
                },
                ["cx_coeff"] = {
                },
                ["LOS_conv_forward_mult"] = {
                    ["value"] = 10,
                },
            },
        },
        [10] = {
            ["__name"] = "autopilot",
            ["__type"] = "wJDAMAutopilotDescriptor",
            ["__parameters"] = {
                ["NR"] = {
                    ["value"] = 10,
                },
                ["Kx"] = {
                    ["value"] = 0.05,
                },
                ["st_nav_time"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["rotated_WLOS_input"] = {
                    ["value"] = 1,
                },
                ["K"] = {
                    ["value"] = 0.08,
                },
                ["op_time"] = {
                    ["value"] = 9000,
                },
                ["use_w_diff"] = {
                    ["value"] = 1,
                },
                ["Kg"] = {
                    ["value"] = 9,
                },
                ["Kdx"] = {
                    ["value"] = 0.01,
                },
                ["PN_dist_data"] = {
                    ["value"] = {
                        [1] = 0,
                        [2] = 1,
                    },
                },
                ["Kgy"] = {
                },
                ["Ky"] = {
                    ["value"] = 0.08,
                },
                ["conv_input"] = {
                    ["value"] = 1,
                },
                ["side_6deg_table"] = {
                    ["value"] = {
                    },
                },
                ["side_3deg_table"] = {
                    ["value"] = {
                    },
                },
                ["Ac_limit"] = {
                    ["value"] = 5,
                },
                ["pow2_output_k"] = {
                    ["value"] = 0.1,
                },
                ["Ki"] = {
                    ["value"] = 0,
                },
                ["delay"] = {
                    ["value"] = 0.1,
                },
                ["fins_limit"] = {
                    ["value"] = 0.28,
                },
            },
        },
        [11] = {
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
        [15] = {
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
        [16] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [17] = {
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
        [18] = {
            ["__name"] = "warhead",
            ["__type"] = "wWarheadStandardBlockDescriptor",
            ["__parameters"] = {
                ["time_self_destruct"] = {
                    ["value"] = 9000,
                },
                ["cumulative_thickness"] = {
                    ["value"] = 0,
                },
                ["cumulative_factor"] = {
                    ["value"] = 0,
                },
                ["caliber"] = {
                    ["value"] = 100,
                },
                ["obj_factors"] = {
                    ["value"] = {
                        [1] = 1,
                        [2] = 1,
                    },
                },
                ["piercing_mass"] = {
                    ["value"] = 0.2,
                },
                ["concrete_factors"] = {
                    ["value"] = {
                        [1] = 0,
                        [2] = 0,
                        [3] = 0,
                    },
                },
                ["other_factors"] = {
                    ["value"] = {
                        [1] = 1,
                        [2] = 1,
                        [3] = 1,
                    },
                },
                ["expl_mass"] = {
                    ["value"] = 1,
                },
                ["fantom"] = {
                    ["value"] = 0,
                },
                ["mass"] = {
                    ["value"] = 1,
                },
                ["concrete_obj_factor"] = {
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
            ["output_block"] = 10,
        },
        [2] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 10,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [3] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 17,
            ["output_lead"] = "collision",
            ["output_block"] = 10,
        },
        [4] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 17,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [5] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_0",
            ["input_block"] = -666,
            ["output_lead"] = "double_zero",
            ["output_block"] = 2,
        },
        [6] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 17,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 17,
            ["output_lead"] = "normal",
            ["output_block"] = 10,
        },
        [8] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 17,
            ["output_lead"] = "object_id",
            ["output_block"] = 10,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 17,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 10,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 17,
            ["output_lead"] = "col. pos",
            ["output_block"] = 10,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 6,
            ["output_lead"] = "output",
            ["output_block"] = 11,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_2",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 12,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 12,
            ["output_lead"] = "output",
            ["output_block"] = 6,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 7,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 7,
            ["output_lead"] = "target",
            ["output_block"] = -666,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 7,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 7,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "LOS",
            ["output_block"] = 7,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 7,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_FOV",
            ["input_block"] = -666,
            ["output_lead"] = "FOV",
            ["output_block"] = 7,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "Gd",
            ["input_block"] = -666,
            ["output_lead"] = "vec_0",
            ["output_block"] = 2,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 12,
            ["output_lead"] = "double_1",
            ["output_block"] = 3,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 14,
            ["output_lead"] = "vec",
            ["output_block"] = 13,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "z",
            ["input_block"] = 13,
            ["output_lead"] = "output",
            ["output_block"] = 15,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "x",
            ["input_block"] = 13,
            ["output_lead"] = "double_zero",
            ["output_block"] = 2,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "y",
            ["input_block"] = 13,
            ["output_lead"] = "double_zero",
            ["output_block"] = 2,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 15,
            ["output_lead"] = "output",
            ["output_block"] = 16,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 5,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 5,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 5,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 5,
            ["output_lead"] = "has_signal",
            ["output_block"] = 7,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 5,
            ["output_lead"] = "output",
            ["output_block"] = 14,
        },
        [33] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [34] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [35] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 5,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [36] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 5,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [37] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 5,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 5,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 10,
            ["output_lead"] = "pos",
            ["output_block"] = 5,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 7,
            ["output_lead"] = "pos",
            ["output_block"] = 5,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 5,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 17,
            ["output_lead"] = "vel",
            ["output_block"] = 5,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 5,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 5,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "real_rot",
            ["output_block"] = 5,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 5,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "An",
            ["input_block"] = -666,
            ["output_lead"] = "An",
            ["output_block"] = 5,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 5,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 5,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 5,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 5,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 11,
            ["output_lead"] = "wings_out",
            ["output_block"] = 5,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 10,
            ["output_lead"] = "wings_out",
            ["output_block"] = 5,
        },
        [54] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 5,
            ["output_lead"] = "double_zero",
            ["output_block"] = 2,
        },
        [55] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 5,
            ["output_lead"] = "double_zero",
            ["output_block"] = 2,
        },
        [56] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 8,
            ["output_lead"] = "has_signal",
            ["output_block"] = 7,
        },
        [57] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 8,
            ["output_lead"] = "LOS",
            ["output_block"] = 7,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "mis_rot",
            ["input_block"] = 8,
            ["output_lead"] = "real_rot",
            ["output_block"] = 5,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 8,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 8,
            ["output_lead"] = "vel",
            ["output_block"] = 5,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "tg_dist",
            ["input_block"] = 8,
            ["output_lead"] = "target_dist",
            ["output_block"] = 7,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "tg_pos",
            ["input_block"] = 8,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "path_point",
            ["input_block"] = -666,
            ["output_lead"] = "point",
            ["output_block"] = 8,
        },
        [64] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 9,
            ["output_lead"] = "bool_true",
            ["output_block"] = 4,
        },
        [65] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 9,
            ["output_lead"] = "vel",
            ["output_block"] = 5,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 9,
            ["output_lead"] = "omega",
            ["output_block"] = 5,
        },
        [67] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 9,
            ["output_lead"] = "real_rot",
            ["output_block"] = 5,
        },
        [68] = {
            ["port"] = 0,
            ["input_lead"] = "loc_LOS",
            ["input_block"] = 9,
            ["output_lead"] = "loc_LOS",
            ["output_block"] = 8,
        },
        [69] = {
            ["port"] = 0,
            ["input_lead"] = "loc_W_LOS",
            ["input_block"] = 9,
            ["output_lead"] = "loc_cLWLOS",
            ["output_block"] = 8,
        },
        [70] = {
            ["port"] = 0,
            ["input_lead"] = "dist",
            ["input_block"] = 9,
            ["output_lead"] = "target_dist",
            ["output_block"] = 7,
        },
        [71] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 14,
            ["output_lead"] = "fins",
            ["output_block"] = 9,
        },
        [72] = {
            ["port"] = 1,
            ["input_lead"] = "side_add_ang",
            ["input_block"] = 9,
            ["output_lead"] = "side_add_ang",
            ["output_block"] = -666,
        },
        [73] = {
            ["port"] = 1,
            ["input_lead"] = "vert_add_ang",
            ["input_block"] = 9,
            ["output_lead"] = "vert_add_ang",
            ["output_block"] = -666,
        },
        [74] = {
            ["port"] = 0,
            ["input_lead"] = "pn_coeff",
            ["input_block"] = -666,
            ["output_lead"] = "pn_coeff",
            ["output_block"] = 9,
        },
        [75] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 16,
            ["output_lead"] = "bool true",
            ["output_block"] = 1,
        },
        [76] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 10,
            ["output_lead"] = "bool true",
            ["output_block"] = 1,
        },
        [77] = {
            ["port"] = 1,
            ["input_lead"] = "dbg_request",
            ["input_block"] = 5,
            ["output_lead"] = "dbg_request",
            ["output_block"] = -666,
        },
        [78] = {
            ["port"] = 0,
            ["input_lead"] = "test_info",
            ["input_block"] = -666,
            ["output_lead"] = "tst_info",
            ["output_block"] = 5,
        },
        [79] = {
            ["port"] = 0,
            ["input_lead"] = "country",
            ["input_block"] = 7,
            ["output_lead"] = "country",
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
                ["name"] = "side_add_ang",
                ["type"] = 2,
            },
            [10] = {
                ["name"] = "vert_add_ang",
                ["type"] = 2,
            },
            [11] = {
                ["name"] = "dbg_request",
                ["type"] = 3,
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
            [20] = {
                ["name"] = "test_info",
                ["type"] = 3,
            },
        },
    },
}