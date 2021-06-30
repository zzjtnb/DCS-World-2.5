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
                    ["name"] = "vec_zero",
                    ["type"] = 3,
                },
                [2] = {
                    ["name"] = "int_zero",
                    ["type"] = 5,
                },
            },
            ["__parameters"] = {
                ["vec_zero"] = {
                    ["value"] = {
                        [1] = 0,
                        [2] = 0,
                        [3] = 0,
                    },
                },
                ["int_zero"] = {
                    ["value"] = 0,
                },
            },
        },
        [3] = {
            ["outPorts"] = {
                [1] = {
                    ["name"] = "booster",
                    ["type"] = 1,
                },
                [2] = {
                    ["name"] = "march",
                    ["type"] = 1,
                },
            },
            ["inputs"] = {
            },
            ["__parameters"] = {
                ["march_start"] = {
                    ["value"] = 0.002,
                },
                ["boost_start"] = {
                    ["value"] = 0.001,
                },
                ["File name"] = {
                    ["value"] = "control_vikhr.lua",
                },
            },
            ["__type"] = "wBlockLuaDescriptor",
            ["__name"] = "controller",
            ["additional_params"] = {
                [1] = {
                    ["name"] = "boost_start",
                    ["type"] = 1,
                },
                [2] = {
                    ["name"] = "march_start",
                    ["type"] = 1,
                },
            },
            ["inPorts"] = {
                [1] = {
                    ["name"] = "suppres_march",
                    ["type"] = 1,
                },
            },
            ["outputs"] = {
            },
        },
        [4] = {
            ["__name"] = "march",
            ["__type"] = "wEngineSFDescriptor",
            ["__parameters"] = {
                ["smoke_color"] = {
                },
                ["custom_smoke_dissipation_factor"] = {
                    ["value"] = 0.2,
                },
                ["nozzle_position"] = {
                    ["value"] = {
                        [1] = {
                            [1] = -1.28,
                            [2] = 0,
                            [3] = 0,
                        },
                    },
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["effect_type"] = {
                },
                ["impulse"] = {
                    ["value"] = 189.84,
                },
                ["tail_width"] = {
                    ["value"] = 0.25,
                },
                ["nozzle_exit_area"] = {
                },
                ["fuel_mass"] = {
                    ["value"] = 28.58,
                },
                ["work_time"] = {
                    ["value"] = 3.5,
                },
                ["boost_time"] = {
                    ["value"] = 0.5,
                },
                ["smoke_transparency"] = {
                },
                ["boost_factor"] = {
                    ["value"] = 5.055,
                },
                ["fuel_rate_data"] = {
                },
                ["min_start_speed"] = {
                },
                ["nozzle_orientationXYZ"] = {
                    ["value"] = {
                        [1] = {
                            [1] = 0,
                            [2] = 0,
                            [3] = 0,
                        },
                    },
                },
                ["max_effect_length"] = {
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
            ["__type"] = "wDTVSeekerDescriptor",
            ["__parameters"] = {
                ["max_target_speed"] = {
                },
                ["max_w_LOS"] = {
                },
                ["ship_track_board_vis_angle"] = {
                },
                ["ship_track_by_default"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["aim_sigma"] = {
                },
                ["FOV"] = {
                },
                ["max_target_speed_rnd_coeff"] = {
                },
                ["op_time"] = {
                },
                ["flag_dist"] = {
                },
                ["max_w_LOS_surf"] = {
                },
                ["delay"] = {
                },
                ["send_off_data"] = {
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
                    ["value"] = "missile_script.lua",
                },
            },
            ["__type"] = "wBlockLuaDescriptor",
            ["__name"] = "",
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
            ["__type"] = "wFuzeProximityDescriptor",
            ["__parameters"] = {
                ["radius"] = {
                    ["value"] = 7,
                },
                ["delay_large"] = {
                    ["value"] = 0.02,
                },
                ["ignore_inp_armed"] = {
                    ["value"] = 0,
                },
                ["arm_delay"] = {
                    ["value"] = 0.8,
                },
                ["delay_small"] = {
                    ["value"] = 0,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [11] = {
            ["__name"] = "warhead_air",
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
        [12] = {
            ["__name"] = "fins_rot",
            ["__type"] = "wVec3dModDescriptor",
            ["__parameters"] = {
                ["rotate_y"] = {
                    ["value"] = 0,
                },
                ["mult_x"] = {
                    ["value"] = 0,
                },
                ["rotate_x"] = {
                    ["value"] = 2.3562,
                },
                ["rotate_z"] = {
                    ["value"] = 0,
                },
                ["mult_z"] = {
                    ["value"] = 5,
                },
                ["mult_y"] = {
                    ["value"] = -5,
                },
            },
        },
        [13] = {
            ["__name"] = "fins_to_args",
            ["__type"] = "wVec3dToDoubleDescriptor",
            ["__parameters"] = {
                ["mult_z"] = {
                    ["value"] = 1,
                },
                ["mult_y"] = {
                    ["value"] = 1,
                },
                ["mult_x"] = {
                    ["value"] = 0,
                },
            },
        },
        [14] = {
            ["__name"] = "",
            ["__type"] = "wSeekerLocConvDescriptor",
            ["__parameters"] = {
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [15] = {
            ["__name"] = "PN_autopilot",
            ["__type"] = "wMaverickAutopilotDescriptor",
            ["__parameters"] = {
                ["NR"] = {
                    ["value"] = 10,
                },
                ["Kx"] = {
                },
                ["GBias_after_target_drop"] = {
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
                    ["value"] = 105,
                },
                ["Krx"] = {
                    ["value"] = 2,
                },
                ["use_w_diff"] = {
                },
                ["Kg"] = {
                },
                ["Kdx"] = {
                },
                ["PN_dist_data"] = {
                },
                ["conv_input"] = {
                    ["value"] = 1,
                },
                ["vert_refenence_at_lockon"] = {
                },
                ["Ac_limit"] = {
                    ["value"] = 25,
                },
                ["pow2_output_k"] = {
                },
                ["Ki"] = {
                },
                ["delay"] = {
                    ["value"] = 0.3,
                },
                ["fins_limit"] = {
                },
            },
        },
    },
    ["connections"] = {
        [1] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 8,
            ["output_lead"] = "col. pos",
            ["output_block"] = 7,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 8,
            ["output_lead"] = "object_id",
            ["output_block"] = 7,
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
            ["input_lead"] = "gr_parent",
            ["input_block"] = 3,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [6] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 3,
            ["output_lead"] = "march",
            ["output_block"] = 2,
        },
        [7] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 7,
        },
        [8] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 7,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [9] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 9,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [10] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 10,
            ["output_lead"] = "explode",
            ["output_block"] = 9,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 10,
            ["output_lead"] = "explosion_pos",
            ["output_block"] = 9,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 10,
            ["output_lead"] = "int_zero",
            ["output_block"] = 1,
        },
        [13] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 10,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [14] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "explode",
            ["output_block"] = 9,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "armed",
            ["input_block"] = 9,
            ["output_lead"] = "fuse_armed",
            ["output_block"] = -666,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "delay",
            ["input_block"] = 9,
            ["output_lead"] = "fuse_delay",
            ["output_block"] = -666,
        },
        [17] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 10,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [18] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 8,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [19] = {
            ["port"] = 1,
            ["input_lead"] = "suppres_march",
            ["input_block"] = 2,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 8,
            ["output_lead"] = "normal",
            ["output_block"] = 7,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 10,
            ["output_lead"] = "vec_zero",
            ["output_block"] = 1,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 8,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 7,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 10,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 7,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 7,
            ["output_lead"] = "check_obj",
            ["output_block"] = 6,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 5,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "LOS",
            ["output_block"] = 5,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_FOV",
            ["input_block"] = -666,
            ["output_lead"] = "FOV",
            ["output_block"] = 5,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 5,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 5,
            ["output_lead"] = "target",
            ["output_block"] = -666,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 5,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "target_id",
            ["input_block"] = 5,
            ["output_lead"] = "target_ID",
            ["output_block"] = -666,
        },
        [32] = {
            ["port"] = 1,
            ["input_lead"] = "ship_track",
            ["input_block"] = 5,
            ["output_lead"] = "ship_track",
            ["output_block"] = -666,
        },
        [33] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 4,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [34] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 4,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 4,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 4,
            ["output_lead"] = "thrust",
            ["output_block"] = 3,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 4,
            ["output_lead"] = "fuel",
            ["output_block"] = 3,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 4,
            ["output_lead"] = "has_signal",
            ["output_block"] = 5,
        },
        [39] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 4,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [40] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 4,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [41] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 4,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [42] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 4,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [43] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 4,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 7,
            ["output_lead"] = "pos",
            ["output_block"] = 4,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 9,
            ["output_lead"] = "pos",
            ["output_block"] = 4,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = 4,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 4,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 3,
            ["output_lead"] = "pos",
            ["output_block"] = 4,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 8,
            ["output_lead"] = "vel",
            ["output_block"] = 4,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 3,
            ["output_lead"] = "vel",
            ["output_block"] = 4,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 4,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 10,
            ["output_lead"] = "vel",
            ["output_block"] = 4,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 4,
        },
        [54] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 4,
        },
        [55] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 4,
        },
        [56] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 4,
        },
        [57] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 4,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 4,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 7,
            ["output_lead"] = "wings_out",
            ["output_block"] = 4,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 4,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "vec",
            ["input_block"] = 12,
            ["output_lead"] = "mvec",
            ["output_block"] = 11,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_20",
            ["input_block"] = -666,
            ["output_lead"] = "y",
            ["output_block"] = 12,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_22",
            ["input_block"] = -666,
            ["output_lead"] = "z",
            ["output_block"] = 12,
        },
        [64] = {
            ["port"] = 1,
            ["input_lead"] = "lockon_roll_diff",
            ["input_block"] = 14,
            ["output_lead"] = "lockon_roll_diff",
            ["output_block"] = -666,
        },
        [65] = {
            ["port"] = 1,
            ["input_lead"] = "base_roll",
            ["input_block"] = 14,
            ["output_lead"] = "base_roll",
            ["output_block"] = -666,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "dist",
            ["input_block"] = 14,
            ["output_lead"] = "dist",
            ["output_block"] = 5,
        },
        [67] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 13,
        },
        [68] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 5,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 13,
        },
        [69] = {
            ["port"] = 0,
            ["input_lead"] = "mis_rot",
            ["input_block"] = 13,
            ["output_lead"] = "real_rot",
            ["output_block"] = 4,
        },
        [70] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 13,
            ["output_lead"] = "has_signal",
            ["output_block"] = 5,
        },
        [71] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 13,
            ["output_lead"] = "LOS",
            ["output_block"] = 5,
        },
        [72] = {
            ["port"] = 0,
            ["input_lead"] = "loc_LOS",
            ["input_block"] = 14,
            ["output_lead"] = "loc_LOS",
            ["output_block"] = 13,
        },
        [73] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 4,
            ["output_lead"] = "fins",
            ["output_block"] = 14,
        },
        [74] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 14,
            ["output_lead"] = "vel",
            ["output_block"] = 4,
        },
        [75] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 14,
            ["output_lead"] = "omega",
            ["output_block"] = 4,
        },
        [76] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 14,
            ["output_lead"] = "real_rot",
            ["output_block"] = 4,
        },
        [77] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 14,
            ["output_lead"] = "has_signal",
            ["output_block"] = 5,
        },
        [78] = {
            ["port"] = 0,
            ["input_lead"] = "loc_W_LOS",
            ["input_block"] = 14,
            ["output_lead"] = "loc_cLWLOS",
            ["output_block"] = 13,
        },
        [79] = {
            ["port"] = 0,
            ["input_lead"] = "mis_omega",
            ["input_block"] = 13,
            ["output_lead"] = "omega",
            ["output_block"] = 4,
        },
        [80] = {
            ["port"] = 0,
            ["input_lead"] = "vec",
            ["input_block"] = 11,
            ["output_lead"] = "draw_fins",
            ["output_block"] = 4,
        },
    },
    ["io"] = {
        ["outputPorts"] = {
            [1] = {
                ["name"] = "id",
                ["type"] = 6,
            },
            [2] = {
                ["name"] = "owner",
                ["type"] = 5,
            },
            [3] = {
                ["name"] = "pos",
                ["type"] = 3,
            },
            [4] = {
                ["name"] = "vel",
                ["type"] = 3,
            },
            [5] = {
                ["name"] = "omega",
                ["type"] = 3,
            },
            [6] = {
                ["name"] = "rot",
                ["type"] = 4,
            },
            [7] = {
                ["name"] = "suppress_explosion",
                ["type"] = 1,
            },
            [8] = {
                ["name"] = "lockon_roll_diff",
                ["type"] = 2,
            },
            [9] = {
                ["name"] = "base_roll",
                ["type"] = 2,
            },
            [10] = {
                ["name"] = "constraint",
                ["type"] = 5,
            },
            [11] = {
                ["name"] = "ship_track",
                ["type"] = 1,
            },
        },
        ["outputWires"] = {
            [1] = {
                ["name"] = "fuse_armed",
                ["type"] = 1,
            },
            [2] = {
                ["name"] = "fuse_delay",
                ["type"] = 1,
            },
            [3] = {
                ["name"] = "active",
                ["type"] = 1,
            },
            [4] = {
                ["name"] = "target_pos",
                ["type"] = 3,
            },
            [5] = {
                ["name"] = "target",
                ["type"] = 1,
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
                ["name"] = "rot",
                ["type"] = 4,
            },
            [4] = {
                ["name"] = "omega",
                ["type"] = 3,
            },
            [5] = {
                ["name"] = "seeker_FOV",
                ["type"] = 2,
            },
            [6] = {
                ["name"] = "target_LOS",
                ["type"] = 3,
            },
            [7] = {
                ["name"] = "has_signal",
                ["type"] = 1,
            },
            [8] = {
                ["name"] = "seeker_rot",
                ["type"] = 4,
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
                ["name"] = "draw_arg_20",
                ["type"] = 2,
            },
            [14] = {
                ["name"] = "draw_arg_22",
                ["type"] = 2,
            },
        },
    },
}