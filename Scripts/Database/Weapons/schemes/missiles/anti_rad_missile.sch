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
            ["__name"] = "const2",
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
        [4] = {
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
                },
                ["boost_start"] = {
                },
                ["File name"] = {
                    ["value"] = "control_missile.lua",
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
        [5] = {
            ["__name"] = "boost",
            ["__type"] = "wEngineSFDescriptor",
            ["__parameters"] = {
                ["smoke_color"] = {
                },
                ["custom_smoke_dissipation_factor"] = {
                },
                ["nozzle_position"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["effect_type"] = {
                },
                ["impulse"] = {
                },
                ["tail_width"] = {
                },
                ["nozzle_exit_area"] = {
                },
                ["fuel_mass"] = {
                },
                ["work_time"] = {
                },
                ["boost_time"] = {
                    ["value"] = 0,
                },
                ["smoke_transparency"] = {
                },
                ["boost_factor"] = {
                    ["value"] = 0,
                },
                ["fuel_rate_data"] = {
                },
                ["min_start_speed"] = {
                },
                ["nozzle_orientationXYZ"] = {
                },
                ["max_effect_length"] = {
                },
            },
        },
        [6] = {
            ["__name"] = "march",
            ["__type"] = "wEngineSFDescriptor",
            ["__parameters"] = {
                ["smoke_color"] = {
                },
                ["custom_smoke_dissipation_factor"] = {
                },
                ["nozzle_position"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["effect_type"] = {
                },
                ["impulse"] = {
                },
                ["tail_width"] = {
                },
                ["nozzle_exit_area"] = {
                },
                ["fuel_mass"] = {
                },
                ["work_time"] = {
                },
                ["boost_time"] = {
                    ["value"] = 0,
                },
                ["smoke_transparency"] = {
                },
                ["boost_factor"] = {
                    ["value"] = 0,
                },
                ["fuel_rate_data"] = {
                },
                ["min_start_speed"] = {
                },
                ["nozzle_orientationXYZ"] = {
                },
                ["max_effect_length"] = {
                },
            },
        },
        [7] = {
            ["__name"] = "fm",
            ["__type"] = "wAFMGuidedWeaponExtFinsCalcDescriptor",
            ["__parameters"] = {
                ["tail_first"] = {
                },
                ["Cx0_Coeff"] = {
                },
                ["Cya"] = {
                },
                ["fins_stall"] = {
                },
                ["table_scale"] = {
                },
                ["model_roll"] = {
                },
                ["Ix"] = {
                },
                ["Iz"] = {
                },
                ["shape_name"] = {
                },
                ["Cx0"] = {
                },
                ["Mxw"] = {
                },
                ["A1trim"] = {
                },
                ["K2"] = {
                },
                ["CxB"] = {
                },
                ["Mya"] = {
                },
                ["wind_time"] = {
                },
                ["Cza"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["mass"] = {
                },
                ["wind_sigma"] = {
                },
                ["Iy"] = {
                },
                ["L"] = {
                },
                ["Mxd"] = {
                },
                ["Myw"] = {
                },
                ["fins_part_val"] = {
                },
                ["K1"] = {
                },
                ["A2trim"] = {
                },
                ["draw_fins_conv"] = {
                },
                ["rotated_fins_inp"] = {
                },
                ["Cz_Coeff"] = {
                },
                ["Cy_Coeff"] = {
                },
                ["Mza"] = {
                },
                ["Mzw"] = {
                },
                ["delta_max"] = {
                },
                ["S"] = {
                },
                ["table_degree_values"] = {
                },
            },
        },
        [8] = {
            ["__name"] = "seeker",
            ["__type"] = "wDRadioSeekerDescriptor",
            ["__parameters"] = {
                ["sens_far_dist"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["aim_sigma"] = {
                },
                ["ang_err_val"] = {
                },
                ["op_time"] = {
                },
                ["keep_aim_time"] = {
                },
                ["max_vis_targets"] = {
                },
                ["send_off_data"] = {
                },
                ["abs_err_val"] = {
                },
                ["max_w_LOS"] = {
                },
                ["sens_near_dist"] = {
                },
                ["err_correct_time"] = {
                },
                ["blind_rad_val"] = {
                },
                ["FOV"] = {
                },
                ["target_select_center_coeff"] = {
                },
                ["target_select_side_coeff"] = {
                },
                ["lock_manual_target_types_only"] = {
                },
                ["calc_aim_dist"] = {
                },
                ["delay"] = {
                },
                ["aim_y_offset"] = {
                },
            },
        },
        [9] = {
            ["__name"] = "",
            ["__type"] = "wSeekerLocConvDescriptor",
            ["__parameters"] = {
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [10] = {
            ["__name"] = "autopilot",
            ["__type"] = "wACangLoftAutopilotDescriptor",
            ["__parameters"] = {
                ["K_loft"] = {
                },
                ["loft_min_dist"] = {
                },
                ["Areq_limit"] = {
                },
                ["rotated_WLOS_input"] = {
                },
                ["op_time"] = {
                },
                ["Krx"] = {
                },
                ["loft_trig_change_min_dist"] = {
                },
                ["loft_min_add_pitch"] = {
                },
                ["Kd"] = {
                },
                ["loft_active_by_default"] = {
                },
                ["K_heading_hor"] = {
                },
                ["loft_add_pitch"] = {
                },
                ["fins_limit"] = {
                },
                ["rotate_fins_output"] = {
                },
                ["x_channel_delay"] = {
                },
                ["Knv"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["inp_signal_lim"] = {
                },
                ["alg"] = {
                },
                ["min_horiz_time"] = {
                },
                ["loft_trig_change_max_dist"] = {
                },
                ["Kconv"] = {
                },
                ["loft_min_trig_ang"] = {
                },
                ["PN_dist_data"] = {
                },
                ["fins_limit_x"] = {
                },
                ["Kx"] = {
                },
                ["null_roll"] = {
                },
                ["Kout"] = {
                },
                ["inp_sin_val"] = {
                },
                ["K_heading_ver"] = {
                },
                ["loft_trig_ang"] = {
                },
                ["bang_bang"] = {
                },
                ["dist_check_delay"] = {
                },
                ["Ki"] = {
                },
                ["delay"] = {
                },
                ["max_signal_Fi"] = {
                },
            },
        },
        [11] = {
            ["outPorts"] = {
            },
            ["inputs"] = {
            },
            ["__parameters"] = {
                ["delay"] = {
                    ["value"] = 2,
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
        [12] = {
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
        [13] = {
            ["__name"] = "proximity_fuze",
            ["__type"] = "wFuzeProximityDescriptor",
            ["__parameters"] = {
                ["radius"] = {
                },
                ["delay_large"] = {
                    ["value"] = 0.02,
                },
                ["ignore_inp_armed"] = {
                    ["value"] = 1,
                },
                ["arm_delay"] = {
                },
                ["delay_small"] = {
                    ["value"] = 0,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [14] = {
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
        [15] = {
            ["__name"] = "warhead_air",
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
        [16] = {
            ["__name"] = "",
            ["__type"] = "wBlockSummatorDescriptor<double>",
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
            ["__type"] = "wBlockSummatorDescriptor<double>",
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
        [18] = {
            ["__name"] = "Vec2Dbl",
            ["__type"] = "wVec3dToDoubleDescriptor",
            ["__parameters"] = {
                ["mult_z"] = {
                    ["value"] = 1,
                },
                ["mult_y"] = {
                    ["value"] = 1,
                },
                ["mult_x"] = {
                    ["value"] = 1,
                },
            },
        },
    },
    ["connections"] = {
        [1] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 13,
            ["output_lead"] = "col. pos",
            ["output_block"] = 11,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 13,
            ["output_lead"] = "object_id",
            ["output_block"] = 11,
        },
        [3] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 13,
            ["output_lead"] = "collision",
            ["output_block"] = 11,
        },
        [4] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 13,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [5] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 5,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [6] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 5,
            ["output_lead"] = "march",
            ["output_block"] = 3,
        },
        [7] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 11,
        },
        [8] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 11,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [9] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 12,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [10] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 14,
            ["output_lead"] = "explode",
            ["output_block"] = 12,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 14,
            ["output_lead"] = "explosion_pos",
            ["output_block"] = 12,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 14,
            ["output_lead"] = "int_zero",
            ["output_block"] = 1,
        },
        [13] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 14,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [14] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "explode",
            ["output_block"] = 12,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "armed",
            ["input_block"] = 12,
            ["output_lead"] = "fuse_armed",
            ["output_block"] = -666,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "delay",
            ["input_block"] = 12,
            ["output_lead"] = "fuse_delay",
            ["output_block"] = -666,
        },
        [17] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 14,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [18] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 13,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 13,
            ["output_lead"] = "normal",
            ["output_block"] = 11,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 14,
            ["output_lead"] = "vec_zero",
            ["output_block"] = 1,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 13,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 11,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 14,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 11,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 11,
            ["output_lead"] = "check_obj",
            ["output_block"] = 10,
        },
        [24] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 4,
            ["output_lead"] = "booster",
            ["output_block"] = 3,
        },
        [25] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 4,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 16,
            ["output_lead"] = "thrust",
            ["output_block"] = 5,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 16,
            ["output_lead"] = "thrust",
            ["output_block"] = 4,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 15,
            ["output_lead"] = "fuel",
            ["output_block"] = 4,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 15,
            ["output_lead"] = "fuel",
            ["output_block"] = 5,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 6,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 6,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 6,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [33] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 6,
            ["output_lead"] = "output",
            ["output_block"] = 16,
        },
        [34] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 6,
            ["output_lead"] = "output",
            ["output_block"] = 15,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 6,
            ["output_lead"] = "fins",
            ["output_block"] = 9,
        },
        [36] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 6,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [37] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 6,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [38] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 6,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [39] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 6,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [40] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 6,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 12,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 11,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 4,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 14,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 13,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 6,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 9,
            ["output_lead"] = "omega",
            ["output_block"] = 6,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 9,
            ["output_lead"] = "real_rot",
            ["output_block"] = 6,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 6,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "AoA",
            ["output_block"] = 6,
        },
        [54] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "current_mass",
            ["output_block"] = 6,
        },
        [55] = {
            ["port"] = 0,
            ["input_lead"] = "N",
            ["input_block"] = 9,
            ["output_lead"] = "An",
            ["output_block"] = 6,
        },
        [56] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 11,
            ["output_lead"] = "wings_out",
            ["output_block"] = 6,
        },
        [57] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 16,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 8,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "mis_rot",
            ["input_block"] = 8,
            ["output_lead"] = "real_rot",
            ["output_block"] = 6,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "loc_LOS",
            ["input_block"] = 9,
            ["output_lead"] = "loc_LOS_dirs",
            ["output_block"] = 8,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "loc_W_LOS",
            ["input_block"] = 9,
            ["output_lead"] = "loc_WLOS_dirs",
            ["output_block"] = 8,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "side_N",
            ["output_block"] = 6,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_22",
            ["input_block"] = -666,
            ["output_lead"] = "z",
            ["output_block"] = 17,
        },
        [64] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_23",
            ["input_block"] = -666,
            ["output_lead"] = "z",
            ["output_block"] = 17,
        },
        [65] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_20",
            ["input_block"] = -666,
            ["output_lead"] = "y",
            ["output_block"] = 17,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_21",
            ["input_block"] = -666,
            ["output_lead"] = "y",
            ["output_block"] = 17,
        },
        [67] = {
            ["port"] = 0,
            ["input_lead"] = "q",
            ["input_block"] = 9,
            ["output_lead"] = "dyn_pressure",
            ["output_block"] = 6,
        },
        [68] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AP",
            ["input_block"] = -666,
            ["output_lead"] = "out_err",
            ["output_block"] = 9,
        },
        [69] = {
            ["port"] = 0,
            ["input_lead"] = "An_",
            ["input_block"] = -666,
            ["output_lead"] = "An",
            ["output_block"] = 6,
        },
        [70] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = -666,
            ["output_lead"] = "fins",
            ["output_block"] = 9,
        },
        [71] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 6,
        },
        [72] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [73] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 6,
            ["output_lead"] = "has_signal",
            ["output_block"] = 9,
        },
        [74] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 4,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [75] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 15,
        },
        [76] = {
            ["port"] = 1,
            ["input_lead"] = "loft",
            ["input_block"] = 9,
            ["output_lead"] = "Loft",
            ["output_block"] = -666,
        },
        [77] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 7,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [78] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 7,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [79] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 7,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 8,
        },
        [80] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 7,
            ["output_lead"] = "target",
            ["output_block"] = -666,
        },
        [81] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 7,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [82] = {
            ["port"] = 0,
            ["input_lead"] = "target_id",
            ["input_block"] = 7,
            ["output_lead"] = "target_ID",
            ["output_block"] = -666,
        },
        [83] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 7,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [84] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 7,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [85] = {
            ["port"] = 0,
            ["input_lead"] = "signal",
            ["input_block"] = 9,
            ["output_lead"] = "has_signal",
            ["output_block"] = 7,
        },
        [86] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 7,
        },
        [87] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 8,
            ["output_lead"] = "has_signal",
            ["output_block"] = 7,
        },
        [88] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 8,
            ["output_lead"] = "LOS",
            ["output_block"] = 7,
        },
        [89] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "LOS",
            ["output_block"] = 7,
        },
        [90] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_FOV",
            ["input_block"] = -666,
            ["output_lead"] = "FOV",
            ["output_block"] = 7,
        },
        [91] = {
            ["port"] = 0,
            ["input_lead"] = "FOV",
            ["input_block"] = 9,
            ["output_lead"] = "FOV",
            ["output_block"] = 7,
        },
        [92] = {
            ["port"] = 0,
            ["input_lead"] = "dist",
            ["input_block"] = 9,
            ["output_lead"] = "dist",
            ["output_block"] = 7,
        },
        [93] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_on",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_on",
            ["output_block"] = 7,
        },
        [94] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_target_id",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_target_id",
            ["output_block"] = 7,
        },
        [95] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_error",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_error",
            ["output_block"] = 7,
        },
        [96] = {
            ["port"] = 1,
            ["input_lead"] = "loft_pitch",
            ["input_block"] = 9,
            ["output_lead"] = "Loft_add_pitch",
            ["output_block"] = -666,
        },
        [97] = {
            ["port"] = 1,
            ["input_lead"] = "loft_trig",
            ["input_block"] = 9,
            ["output_lead"] = "Loft_trig",
            ["output_block"] = -666,
        },
        [98] = {
            ["port"] = 1,
            ["input_lead"] = "heading_cmd",
            ["input_block"] = 7,
            ["output_lead"] = "heading_cmd",
            ["output_block"] = -666,
        },
        [99] = {
            ["port"] = 1,
            ["input_lead"] = "heading_cmd",
            ["input_block"] = 9,
            ["output_lead"] = "heading_cmd",
            ["output_block"] = -666,
        },
        [100] = {
            ["port"] = 1,
            ["input_lead"] = "WLOS_jump",
            ["input_block"] = 8,
            ["output_lead"] = "WLOS_jump",
            ["output_block"] = 7,
        },
        [101] = {
            ["port"] = 0,
            ["input_lead"] = "rad_attack",
            ["input_block"] = 9,
            ["output_lead"] = "seeker_on",
            ["output_block"] = 7,
        },
        [102] = {
            ["port"] = 0,
            ["input_lead"] = "vec",
            ["input_block"] = 17,
            ["output_lead"] = "draw_fins",
            ["output_block"] = 6,
        },
        [103] = {
            ["port"] = 0,
            ["input_lead"] = "mis_omega",
            ["input_block"] = 8,
            ["output_lead"] = "omega",
            ["output_block"] = 6,
        },
        [104] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 9,
            ["output_lead"] = "bool_true",
            ["output_block"] = 2,
        },
        [105] = {
            ["port"] = 1,
            ["input_lead"] = "target_num",
            ["input_block"] = 7,
            ["output_lead"] = "target_num",
            ["output_block"] = -666,
        },
        [106] = {
            ["port"] = 1,
            ["input_lead"] = "type_lvl",
            ["input_block"] = 7,
            ["output_lead"] = "type_lvl",
            ["output_block"] = -666,
        },
        [107] = {
            ["port"] = 1,
            ["input_lead"] = "type_val",
            ["input_block"] = 7,
            ["output_lead"] = "type_val",
            ["output_block"] = -666,
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
                ["name"] = "constraint",
                ["type"] = 5,
            },
            [9] = {
                ["name"] = "Loft",
                ["type"] = 0,
            },
            [10] = {
                ["name"] = "Loft_trig",
                ["type"] = 2,
            },
            [11] = {
                ["name"] = "Loft_add_pitch",
                ["type"] = 2,
            },
            [12] = {
                ["name"] = "heading_cmd",
                ["type"] = 2,
            },
            [13] = {
                ["name"] = "target_num",
                ["type"] = 0,
            },
            [14] = {
                ["name"] = "type_lvl",
                ["type"] = 0,
            },
            [15] = {
                ["name"] = "type_val",
                ["type"] = 0,
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
                ["name"] = "draw_arg_21",
                ["type"] = 2,
            },
            [15] = {
                ["name"] = "draw_arg_22",
                ["type"] = 2,
            },
            [16] = {
                ["name"] = "draw_arg_23",
                ["type"] = 2,
            },
            [17] = {
                ["name"] = "dbg_AP",
                ["type"] = 2,
            },
            [18] = {
                ["name"] = "An_",
                ["type"] = 3,
            },
            [19] = {
                ["name"] = "fins",
                ["type"] = 3,
            },
            [20] = {
                ["name"] = "fuel_mass",
                ["type"] = 2,
            },
            [21] = {
                ["name"] = "seeker_target_id",
                ["type"] = 6,
            },
            [22] = {
                ["name"] = "seeker_error",
                ["type"] = 3,
            },
            [23] = {
                ["name"] = "seeker_on",
                ["type"] = 1,
            },
        },
    },
}