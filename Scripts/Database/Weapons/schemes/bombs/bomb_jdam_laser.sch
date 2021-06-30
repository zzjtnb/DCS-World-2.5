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
                    ["value"] = 0.01,
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
                ["can_update_target_pos"] = {
                },
                ["coalition_rnd_coeff"] = {
                },
                ["CEP"] = {
                },
                ["delay"] = {
                    ["value"] = 0,
                },
                ["dt"] = {
                    ["value"] = 0.01,
                },
            },
        },
        [7] = {
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
                    ["value"] = 0.01,
                },
            },
        },
        [8] = {
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
        [9] = {
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
                    ["value"] = 0.01,
                },
            },
        },
        [10] = {
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
        [11] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [12] = {
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
        [13] = {
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
        [14] = {
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
        [15] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [16] = {
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
        [17] = {
            ["__name"] = "",
            ["__type"] = "wSeekerLocConvDescriptor",
            ["__parameters"] = {
                ["dt"] = {
                    ["value"] = 0.01,
                },
            },
        },
        [18] = {
            ["__name"] = "laser_seeker",
            ["__type"] = "wLaserSpotSeekerDescriptor",
            ["__parameters"] = {
                ["FOV"] = {
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
        [19] = {
            ["__name"] = "autopilot",
            ["__type"] = "wAP_JDAM_Descriptor",
            ["__parameters"] = {
                ["Kx"] = {
                },
                ["Knav"] = {
                },
                ["dt"] = {
                    ["value"] = 0.01,
                },
                ["KDI"] = {
                },
                ["op_time"] = {
                },
                ["Krx"] = {
                },
                ["Ka"] = {
                },
                ["Kd"] = {
                },
                ["gload_limit"] = {
                },
                ["null_roll"] = {
                },
                ["Tf"] = {
                },
                ["KD0"] = {
                },
                ["KLM"] = {
                },
                ["fins_limit_x"] = {
                },
                ["Tc"] = {
                },
                ["delay"] = {
                },
                ["fins_limit"] = {
                },
            },
        },
    },
    ["connections"] = {
        [1] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 6,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [2] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 7,
            ["output_lead"] = "collision",
            ["output_block"] = 6,
        },
        [3] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 7,
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
            ["input_block"] = 7,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 7,
            ["output_lead"] = "normal",
            ["output_block"] = 6,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 6,
            ["output_lead"] = "check_obj",
            ["output_block"] = 9,
        },
        [8] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 7,
            ["output_lead"] = "object_id",
            ["output_block"] = 6,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 7,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 6,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 7,
            ["output_lead"] = "col. pos",
            ["output_block"] = 6,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 8,
            ["output_lead"] = "output",
            ["output_block"] = 10,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_2",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 11,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 11,
            ["output_lead"] = "output",
            ["output_block"] = 8,
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
            ["input_lead"] = "signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 5,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 5,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "Gd",
            ["input_block"] = -666,
            ["output_lead"] = "vec_0",
            ["output_block"] = 1,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 11,
            ["output_lead"] = "double_1",
            ["output_block"] = 2,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 13,
            ["output_lead"] = "vec",
            ["output_block"] = 12,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "z",
            ["input_block"] = 12,
            ["output_lead"] = "output",
            ["output_block"] = 14,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "x",
            ["input_block"] = 12,
            ["output_lead"] = "double_zero",
            ["output_block"] = 1,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "y",
            ["input_block"] = 12,
            ["output_lead"] = "double_zero",
            ["output_block"] = 1,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 14,
            ["output_lead"] = "output",
            ["output_block"] = 15,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 15,
            ["output_lead"] = "check_obj",
            ["output_block"] = 9,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 4,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 4,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 4,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 4,
            ["output_lead"] = "output",
            ["output_block"] = 13,
        },
        [30] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 4,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [31] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 4,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [32] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 4,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [33] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 4,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [34] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 4,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 4,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 6,
            ["output_lead"] = "pos",
            ["output_block"] = 4,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = 4,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 4,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 7,
            ["output_lead"] = "vel",
            ["output_block"] = 4,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 4,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 4,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 4,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "An",
            ["input_block"] = -666,
            ["output_lead"] = "An",
            ["output_block"] = 4,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 4,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 4,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 4,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 4,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 10,
            ["output_lead"] = "wings_out",
            ["output_block"] = 4,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 6,
            ["output_lead"] = "wings_out",
            ["output_block"] = 4,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 4,
            ["output_lead"] = "double_zero",
            ["output_block"] = 1,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 4,
            ["output_lead"] = "double_zero",
            ["output_block"] = 1,
        },
        [52] = {
            ["port"] = 1,
            ["input_lead"] = "fuze_delay",
            ["input_block"] = 7,
            ["output_lead"] = "fuze_delay",
            ["output_block"] = -666,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "country",
            ["input_block"] = 5,
            ["output_lead"] = "country",
            ["output_block"] = -666,
        },
        [54] = {
            ["port"] = 1,
            ["input_lead"] = "warhead_pos",
            ["input_block"] = 4,
            ["output_lead"] = "warhead_pos",
            ["output_block"] = 7,
        },
        [55] = {
            ["port"] = 1,
            ["input_lead"] = "rebound",
            ["input_block"] = 4,
            ["output_lead"] = "rebound",
            ["output_block"] = 7,
        },
        [56] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "died",
            ["output_block"] = 7,
        },
        [57] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 13,
            ["output_lead"] = "fins_cmd",
            ["output_block"] = 18,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 4,
            ["output_lead"] = "power_on",
            ["output_block"] = 18,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "accel",
            ["input_block"] = 18,
            ["output_lead"] = "An",
            ["output_block"] = 4,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 18,
            ["output_lead"] = "omega",
            ["output_block"] = 4,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 18,
            ["output_lead"] = "vel",
            ["output_block"] = 4,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 18,
            ["output_lead"] = "bool_true",
            ["output_block"] = 3,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "q",
            ["input_block"] = 18,
            ["output_lead"] = "dyn_pressure",
            ["output_block"] = 4,
        },
        [64] = {
            ["port"] = 0,
            ["input_lead"] = "tgt_pos",
            ["input_block"] = 18,
            ["output_lead"] = "sens_tg_pos",
            ["output_block"] = 5,
        },
        [65] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 18,
            ["output_lead"] = "pos",
            ["output_block"] = 4,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 18,
            ["output_lead"] = "real_rot",
            ["output_block"] = 4,
        },
        [67] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AP",
            ["input_block"] = -666,
            ["output_lead"] = "out_err",
            ["output_block"] = 18,
        },
        [68] = {
            ["port"] = 1,
            ["input_lead"] = "term_data",
            ["input_block"] = 18,
            ["output_lead"] = "term_data",
            ["output_block"] = -666,
        },
        [69] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 17,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [70] = {
            ["port"] = 0,
            ["input_lead"] = "target_ID",
            ["input_block"] = 17,
            ["output_lead"] = "target_ID",
            ["output_block"] = -666,
        },
        [71] = {
            ["port"] = 0,
            ["input_lead"] = "launcher_id",
            ["input_block"] = 17,
            ["output_lead"] = "launcher",
            ["output_block"] = -666,
        },
        [72] = {
            ["port"] = 0,
            ["input_lead"] = "directly_set_target",
            ["input_block"] = 17,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [73] = {
            ["port"] = 0,
            ["input_lead"] = "have_directly_set_target",
            ["input_block"] = 17,
            ["output_lead"] = "target",
            ["output_block"] = -666,
        },
        [74] = {
            ["port"] = 0,
            ["input_lead"] = "laser_code",
            ["input_block"] = 17,
            ["output_lead"] = "laser_code",
            ["output_block"] = -666,
        },
        [75] = {
            ["port"] = 0,
            ["input_lead"] = "elec_power",
            ["input_block"] = 17,
            ["output_lead"] = "power_on",
            ["output_block"] = 18,
        },
        [76] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 17,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [77] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 17,
            ["output_lead"] = "pos",
            ["output_block"] = 4,
        },
        [78] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 17,
            ["output_lead"] = "real_rot",
            ["output_block"] = 4,
        },
        [79] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 16,
            ["output_lead"] = "has_signal",
            ["output_block"] = 17,
        },
        [80] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 16,
            ["output_lead"] = "LOS",
            ["output_block"] = 17,
        },
        [81] = {
            ["port"] = 0,
            ["input_lead"] = "mis_rot",
            ["input_block"] = 16,
            ["output_lead"] = "real_rot",
            ["output_block"] = 4,
        },
        [82] = {
            ["port"] = 0,
            ["input_lead"] = "mis_omega",
            ["input_block"] = 16,
            ["output_lead"] = "omega",
            ["output_block"] = 4,
        },
        [83] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 17,
        },
        [84] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_FOV",
            ["input_block"] = -666,
            ["output_lead"] = "FOV",
            ["output_block"] = 17,
        },
        [85] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "LOS",
            ["output_block"] = 17,
        },
        [86] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 16,
        },
        [87] = {
            ["port"] = 0,
            ["input_lead"] = "laser_on_",
            ["input_block"] = 18,
            ["output_lead"] = "has_signal",
            ["output_block"] = 17,
        },
        [88] = {
            ["port"] = 0,
            ["input_lead"] = "LOS_angle_",
            ["input_block"] = 18,
            ["output_lead"] = "loc_LOS_dirs",
            ["output_block"] = 16,
        },
        [89] = {
            ["port"] = 0,
            ["input_lead"] = "LOS_omega_",
            ["input_block"] = 18,
            ["output_lead"] = "loc_WLOS_dirs",
            ["output_block"] = 16,
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
            [10] = {
                ["name"] = "term_data",
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
            [5] = {
                ["name"] = "target_ID",
                ["type"] = 6,
            },
            [6] = {
                ["name"] = "launcher",
                ["type"] = 6,
            },
            [7] = {
                ["name"] = "laser_code",
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
                ["name"] = "dbg_AP",
                ["type"] = 2,
            },
        },
    },
}