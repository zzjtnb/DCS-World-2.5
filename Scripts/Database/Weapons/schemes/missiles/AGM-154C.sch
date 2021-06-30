simulation_scheme = {
    ["blocks"] = {
        [1] = {
            ["__name"] = "",
            ["__type"] = "wAtmSamplerDescriptor",
            ["__parameters"] = {
            },
        },
        [2] = {
            ["__name"] = "const1",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "double_zero",
                    ["type"] = 1,
                },
            },
            ["__parameters"] = {
                ["double_zero"] = {
                    ["value"] = 0,
                },
            },
        },
        [3] = {
            ["__name"] = "const_power_1",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "power",
                    ["type"] = 4,
                },
            },
            ["__parameters"] = {
                ["power"] = {
                    ["value"] = 1,
                },
            },
        },
        [4] = {
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
        [5] = {
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
        [6] = {
            ["__name"] = "simple_seeker",
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
                    ["value"] = 3.1416,
                },
                ["opTime"] = {
                },
                ["flag_dist"] = {
                },
                ["max_target_speed"] = {
                    ["value"] = 999999999,
                },
                ["delay"] = {
                },
                ["maxW"] = {
                    ["value"] = 1e+34,
                },
            },
        },
        [7] = {
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
        [8] = {
            ["__name"] = "control_block",
            ["__type"] = "wCruiseMissileControlBlockDescriptor",
            ["__parameters"] = {
                ["vel_calc_delay"] = {
                },
                ["min_turn_calc_vel"] = {
                },
                ["turn_max_calc_angle_deg"] = {
                },
                ["stab_aim_diff"] = {
                },
                ["seeker_activation_dist"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["turn_hor_N"] = {
                },
                ["can_update_target_pos"] = {
                },
                ["obj_sensor"] = {
                },
                ["turn_point_trigger_dist"] = {
                },
                ["use_horiz_dist"] = {
                },
                ["default_cruise_height"] = {
                },
                ["stab_vert_diff"] = {
                },
                ["turn_before_point_reach"] = {
                },
            },
        },
        [9] = {
            ["__name"] = "",
            ["__type"] = "wBlockORDescriptor",
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
        [10] = {
            ["__name"] = "control_block2",
            ["__type"] = "wAGM154ControlBlockDescriptor",
            ["__parameters"] = {
                ["use_snake_maneuver"] = {
                    ["value"] = 0,
                },
                ["max_wing_deployment_dyn_pressure"] = {
                    ["value"] = 51250,
                },
                ["separation_maneuver_max_height"] = {
                    ["value"] = 10363.2,
                },
                ["separation_g_command_min_pitch"] = {
                    ["value"] = -0.174533,
                },
                ["separation_const_ctrl_val"] = {
                    ["value"] = -0.26,
                },
                ["separation_const_ctrl_time"] = {
                    ["value"] = 1.1,
                },
                ["separation_skid_side_dist"] = {
                    ["value"] = 18.28,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["separation_skid_max_dyn_pressure"] = {
                    ["value"] = 42000,
                },
                ["max_no_vert_offset_open_h"] = {
                    ["value"] = 0,
                },
                ["no_wings_calc_vern_N"] = {
                    ["value"] = 9,
                },
                ["end_game_maneuver_min_dist"] = {
                    ["value"] = 3704,
                },
                ["no_wings_sep_ctl_k"] = {
                    ["value"] = 600,
                },
                ["wind_k"] = {
                    ["value"] = 3.9,
                },
                ["separation_skid_max_mach"] = {
                    ["value"] = 0.75,
                },
                ["add_y"] = {
                    ["value"] = 0,
                },
                ["end_game_entry_altitude"] = {
                    ["value"] = 200,
                },
                ["max_dyn_pressure_calc_h"] = {
                    ["value"] = 20000,
                },
                ["wing_deployment_time"] = {
                    ["value"] = 5,
                },
                ["wing_deployment_dyn_pressure_dec_k"] = {
                    ["value"] = 1.725,
                },
                ["separation_skid_hor_angle"] = {
                    ["value"] = 0.09,
                },
                ["vert_offset_before_end_game_k"] = {
                    ["value"] = 0.8,
                },
                ["snake_maneuver_hor_angle"] = {
                    ["value"] = 0.14,
                },
                ["separation_skid_min_alt_diff"] = {
                    ["value"] = 304.8,
                },
                ["end_game_maneuver_max_dive"] = {
                    ["value"] = -0.65,
                },
                ["correction_dist_k"] = {
                    ["value"] = 10000,
                },
                ["end_game_maneuver_undershoot_dist"] = {
                    ["value"] = 2200,
                },
                ["separation_popup_max_height"] = {
                    ["value"] = 9144,
                },
                ["calc_vern_N"] = {
                    ["value"] = 3,
                },
                ["separation_skid_safe_side_dist"] = {
                    ["value"] = 30.48,
                },
                ["delay"] = {
                    ["value"] = 0.5,
                },
                ["vert_control_trigger_LOS"] = {
                    ["value"] = 0.15,
                },
            },
        },
        [11] = {
            ["__name"] = "simple_gyrostab_seeker",
            ["__type"] = "wSimpleGyroStabSeekerDescriptor",
            ["__parameters"] = {
                ["omega_max"] = {
                    ["value"] = 0.5,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [12] = {
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
        [13] = {
            ["__name"] = "autopilot",
            ["__type"] = "wAGM154AutopilotDescriptor",
            ["__parameters"] = {
                ["egm_add_power_K"] = {
                },
                ["actv_process_time_K"] = {
                    ["value"] = 5,
                },
                ["J_Int_K"] = {
                },
                ["err_new_wlos_k"] = {
                },
                ["egm_FinAngle_K"] = {
                },
                ["egm_Angle_K"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["nw_Ki"] = {
                },
                ["finsLimit"] = {
                },
                ["K"] = {
                },
                ["nw_Kg"] = {
                },
                ["J_Angle_K"] = {
                },
                ["J_Angle_W"] = {
                },
                ["wings_depl_fins_limit_K"] = {
                },
                ["nw_K"] = {
                },
                ["hKp_err_croll"] = {
                },
                ["Kg"] = {
                },
                ["err_aoaz_sign_k"] = {
                },
                ["J_Trigger_Vert"] = {
                    ["value"] = 1,
                },
                ["bang_bang"] = {
                },
                ["hKd"] = {
                },
                ["J_FinAngle_K"] = {
                },
                ["J_Power_K"] = {
                },
                ["err_aoaz_k"] = {
                },
                ["max_roll"] = {
                },
                ["useJumpByDefault"] = {
                },
                ["hKp_err"] = {
                },
                ["global_hor_ctrl_val"] = {
                    ["value"] = 1,
                },
                ["delay"] = {
                },
                ["Ki"] = {
                },
                ["J_Diff_K"] = {
                },
            },
        },
        [14] = {
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
        [15] = {
            ["__name"] = "",
            ["__type"] = "wFuzeProximityDescriptor",
            ["__parameters"] = {
                ["radius"] = {
                    ["value"] = 5,
                },
                ["delay_large"] = {
                    ["value"] = 0.02,
                },
                ["ignore_inp_armed"] = {
                    ["value"] = 0,
                },
                ["arm_delay"] = {
                    ["value"] = 0.5,
                },
                ["delay_small"] = {
                    ["value"] = 0,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [16] = {
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
        [17] = {
            ["__name"] = "const2",
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
    },
    ["connections"] = {
        [1] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 4,
        },
        [2] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 4,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [3] = {
            ["port"] = 0,
            ["input_lead"] = "elec_power",
            ["input_block"] = 5,
            ["output_lead"] = "power",
            ["output_block"] = 2,
        },
        [4] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 4,
            ["output_lead"] = "check_obj",
            ["output_block"] = 3,
        },
        [5] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 5,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_FOV",
            ["input_block"] = -666,
            ["output_lead"] = "FOV",
            ["output_block"] = 5,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "LOS",
            ["output_block"] = 5,
        },
        [8] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 10,
            ["output_lead"] = "LOS",
            ["output_block"] = 5,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 10,
            ["output_lead"] = "has_signal",
            ["output_block"] = 5,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 5,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 10,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 10,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 7,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 7,
            ["output_lead"] = "target",
            ["output_block"] = -666,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 7,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 5,
            ["output_lead"] = "target_",
            ["output_block"] = 7,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 6,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 6,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 6,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 4,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 7,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 6,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 10,
            ["output_lead"] = "real_rot",
            ["output_block"] = 6,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 6,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 6,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 6,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 6,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 6,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 4,
            ["output_lead"] = "wings_out",
            ["output_block"] = 6,
        },
        [31] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 6,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [32] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 6,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [33] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 6,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [34] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 6,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [35] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 6,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "real_rot",
            ["output_block"] = 6,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 6,
            ["output_lead"] = "output",
            ["output_block"] = 8,
        },
        [38] = {
            ["port"] = 1,
            ["input_lead"] = "point_num",
            ["input_block"] = 7,
            ["output_lead"] = "point_num",
            ["output_block"] = -666,
        },
        [39] = {
            ["port"] = 1,
            ["input_lead"] = "path_point",
            ["input_block"] = 7,
            ["output_lead"] = "path_point",
            ["output_block"] = -666,
        },
        [40] = {
            ["port"] = 1,
            ["input_lead"] = "tfollow",
            ["input_block"] = 7,
            ["output_lead"] = "follow_terrain",
            ["output_block"] = -666,
        },
        [41] = {
            ["port"] = 1,
            ["input_lead"] = "sensor_on",
            ["input_block"] = 7,
            ["output_lead"] = "sensor_on",
            ["output_block"] = -666,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_active",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_active",
            ["output_block"] = 7,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 6,
            ["output_lead"] = "double_zero",
            ["output_block"] = 1,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 6,
            ["output_lead"] = "double_zero",
            ["output_block"] = 1,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 8,
            ["output_lead"] = "cruise_active",
            ["output_block"] = 7,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 8,
            ["output_lead"] = "seeker_active",
            ["output_block"] = 7,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "omega_LOS",
            ["input_block"] = 12,
            ["output_lead"] = "omega_LOS",
            ["output_block"] = 10,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 12,
            ["output_lead"] = "omega",
            ["output_block"] = 6,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 12,
            ["output_lead"] = "real_rot",
            ["output_block"] = 6,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "vLOS",
            ["input_block"] = 12,
            ["output_lead"] = "LOS",
            ["output_block"] = 5,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 5,
            ["output_lead"] = "output",
            ["output_block"] = 8,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 9,
            ["output_lead"] = "target_pos_",
            ["output_block"] = 7,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 5,
            ["output_lead"] = "target_pos",
            ["output_block"] = 9,
        },
        [54] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 9,
            ["output_lead"] = "output",
            ["output_block"] = 8,
        },
        [55] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 9,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [56] = {
            ["port"] = 1,
            ["input_lead"] = "path_point",
            ["input_block"] = 9,
            ["output_lead"] = "path_point",
            ["output_block"] = 7,
        },
        [57] = {
            ["port"] = 1,
            ["input_lead"] = "X_Loft_mode",
            ["input_block"] = 12,
            ["output_lead"] = "X_Loft_mode",
            ["output_block"] = 9,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 12,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "v_maneuver_sign",
            ["input_block"] = 9,
            ["output_lead"] = "vert_maneuver",
            ["output_block"] = 12,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 9,
            ["output_lead"] = "real_rot",
            ["output_block"] = 6,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 9,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 9,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "final_point",
            ["input_block"] = 9,
            ["output_lead"] = "seeker_active",
            ["output_block"] = 7,
        },
        [64] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 9,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [65] = {
            ["port"] = 0,
            ["input_lead"] = "fin_target_pos",
            ["input_block"] = 9,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 9,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [67] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 11,
            ["output_lead"] = "fins_signal",
            ["output_block"] = 9,
        },
        [68] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 6,
            ["output_lead"] = "output",
            ["output_block"] = 11,
        },
        [69] = {
            ["port"] = 0,
            ["input_lead"] = "launcher_id",
            ["input_block"] = 9,
            ["output_lead"] = "launcher",
            ["output_block"] = -666,
        },
        [70] = {
            ["port"] = 1,
            ["input_lead"] = "pop-up",
            ["input_block"] = 9,
            ["output_lead"] = "enable_pop_up",
            ["output_block"] = -666,
        },
        [71] = {
            ["port"] = 0,
            ["input_lead"] = "path_point",
            ["input_block"] = -666,
            ["output_lead"] = "target_pos",
            ["output_block"] = 9,
        },
        [72] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 13,
            ["output_lead"] = "col. pos",
            ["output_block"] = 4,
        },
        [73] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 13,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [74] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 13,
            ["output_lead"] = "normal",
            ["output_block"] = 4,
        },
        [75] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 13,
            ["output_lead"] = "object_id",
            ["output_block"] = 4,
        },
        [76] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 13,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 4,
        },
        [77] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 13,
            ["output_lead"] = "collision",
            ["output_block"] = 4,
        },
        [78] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 13,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [79] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 13,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [80] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 14,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [81] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 14,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [82] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 15,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [83] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 15,
            ["output_lead"] = "explode",
            ["output_block"] = 14,
        },
        [84] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 15,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [85] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 15,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 4,
        },
        [86] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 15,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [87] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 15,
            ["output_lead"] = "explosion_pos",
            ["output_block"] = 14,
        },
        [88] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "explode",
            ["output_block"] = 14,
        },
        [89] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 15,
            ["output_lead"] = "vec_zero",
            ["output_block"] = 16,
        },
        [90] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 15,
            ["output_lead"] = "int_zero",
            ["output_block"] = 16,
        },
        [91] = {
            ["port"] = 0,
            ["input_lead"] = "armed",
            ["input_block"] = 14,
            ["output_lead"] = "fuse_armed",
            ["output_block"] = -666,
        },
        [92] = {
            ["port"] = 0,
            ["input_lead"] = "delay",
            ["input_block"] = 14,
            ["output_lead"] = "fuse_delay",
            ["output_block"] = -666,
        },
        [93] = {
            ["port"] = 0,
            ["input_lead"] = "wings_state",
            ["input_block"] = 12,
            ["output_lead"] = "wings",
            ["output_block"] = 9,
        },
        [94] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [95] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 12,
            ["output_lead"] = "autopilot_active",
            ["output_block"] = 9,
        },
        [96] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 11,
            ["output_lead"] = "fins",
            ["output_block"] = 12,
        },
        [97] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_25",
            ["input_block"] = -666,
            ["output_lead"] = "wings",
            ["output_block"] = 9,
        },
        [98] = {
            ["port"] = 1,
            ["input_lead"] = "deploy_wings",
            ["input_block"] = 6,
            ["output_lead"] = "deploy_wings",
            ["output_block"] = 9,
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
                ["name"] = "constraint",
                ["type"] = 5,
            },
            [8] = {
                ["name"] = "path_point",
                ["type"] = 3,
            },
            [9] = {
                ["name"] = "point_num",
                ["type"] = 0,
            },
            [10] = {
                ["name"] = "follow_terrain",
                ["type"] = 1,
            },
            [11] = {
                ["name"] = "sensor_on",
                ["type"] = 1,
            },
            [12] = {
                ["name"] = "enable_pop_up",
                ["type"] = 1,
            },
            [13] = {
                ["name"] = "suppress_explosion",
                ["type"] = 1,
            },
            [14] = {
                ["name"] = "X_Loft_power",
                ["type"] = 0,
            },
        },
        ["outputWires"] = {
            [1] = {
                ["name"] = "active",
                ["type"] = 1,
            },
            [2] = {
                ["name"] = "target_pos",
                ["type"] = 3,
            },
            [3] = {
                ["name"] = "target",
                ["type"] = 1,
            },
            [4] = {
                ["name"] = "launcher",
                ["type"] = 6,
            },
            [5] = {
                ["name"] = "fuse_armed",
                ["type"] = 1,
            },
            [6] = {
                ["name"] = "fuse_delay",
                ["type"] = 1,
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
                ["name"] = "seeker_active",
                ["type"] = 1,
            },
            [14] = {
                ["name"] = "draw_arg_25",
                ["type"] = 2,
            },
            [15] = {
                ["name"] = "path_point",
                ["type"] = 3,
            },
        },
    },
}