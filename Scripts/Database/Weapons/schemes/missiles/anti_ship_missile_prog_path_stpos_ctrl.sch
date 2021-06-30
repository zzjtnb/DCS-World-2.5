simulation_scheme = {
    ["blocks"] = {
        [1] = {
            ["__name"] = "",
            ["__type"] = "wAtmSamplerDescriptor",
            ["__parameters"] = {
            },
        },
        [2] = {
            ["__name"] = "const3",
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
        [3] = {
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
        [4] = {
            ["__name"] = "const2",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "vec_0",
                    ["type"] = 3,
                },
                [2] = {
                    ["name"] = "obj_id_0",
                    ["type"] = 5,
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
                ["obj_id_0"] = {
                    ["value"] = 0,
                },
            },
        },
        [5] = {
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
        [6] = {
            ["__name"] = "boost",
            ["__type"] = "wEngineDescriptor",
            ["__parameters"] = {
                ["nozzle_orientationXYZ"] = {
                },
                ["fuel_mass"] = {
                },
                ["work_time"] = {
                },
                ["nozzle_position"] = {
                },
                ["boost_time"] = {
                    ["value"] = 0,
                },
                ["smoke_transparency"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["effect_type"] = {
                },
                ["boost_factor"] = {
                    ["value"] = 0,
                },
                ["min_start_speed"] = {
                },
                ["max_effect_length"] = {
                },
                ["custom_smoke_dissipation_factor"] = {
                },
                ["impulse"] = {
                },
                ["tail_width"] = {
                },
                ["smoke_color"] = {
                },
            },
        },
        [7] = {
            ["__name"] = "march",
            ["__type"] = "wEngineTJDescriptor",
            ["__parameters"] = {
                ["smoke_color"] = {
                },
                ["custom_smoke_dissipation_factor"] = {
                },
                ["nozzle_position"] = {
                },
                ["min_fuel_rate"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["thrust_Tau"] = {
                },
                ["start_effect_x_dist"] = {
                },
                ["start_effect_smoke"] = {
                },
                ["impulse"] = {
                },
                ["tail_width"] = {
                },
                ["min_thrust"] = {
                },
                ["fuel_mass"] = {
                },
                ["work_time"] = {
                },
                ["start_effect_x_pow"] = {
                },
                ["boost_time"] = {
                    ["value"] = 0,
                },
                ["start_effect_delay"] = {
                },
                ["smoke_transparency"] = {
                },
                ["start_effect_size"] = {
                },
                ["boost_factor"] = {
                    ["value"] = 0,
                },
                ["start_effect_x_shift"] = {
                },
                ["max_thrust"] = {
                },
                ["start_effect_time"] = {
                },
                ["start_burn_effect"] = {
                },
                ["max_effect_length"] = {
                },
                ["nozzle_orientationXYZ"] = {
                },
            },
        },
        [8] = {
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
        [9] = {
            ["__name"] = "control_block",
            ["__type"] = "wCruiseMissileControlBlockDescriptor",
            ["__parameters"] = {
                ["vel_calc_delay"] = {
                },
                ["min_turn_calc_vel"] = {
                },
                ["turn_max_calc_angle_deg"] = {
                    ["value"] = 90,
                },
                ["stab_aim_diff"] = {
                },
                ["seeker_activation_dist"] = {
                    ["value"] = 8000,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["turn_hor_N"] = {
                    ["value"] = 2,
                },
                ["can_update_target_pos"] = {
                    ["value"] = 1,
                },
                ["obj_sensor"] = {
                    ["value"] = 1,
                },
                ["turn_point_trigger_dist"] = {
                    ["value"] = 111,
                },
                ["use_horiz_dist"] = {
                    ["value"] = 1,
                },
                ["default_cruise_height"] = {
                    ["value"] = 50,
                },
                ["stab_vert_diff"] = {
                },
                ["turn_before_point_reach"] = {
                    ["value"] = 1,
                },
            },
        },
        [10] = {
            ["__name"] = "triggers_control",
            ["__type"] = "wAntiShipMissileTrCtrlDescriptor",
            ["__parameters"] = {
                ["action_wait_timer"] = {
                },
                ["straight_nav_trigger_mlt"] = {
                },
                ["default_destruct_tg_dist"] = {
                },
                ["pre_maneuver_glide_height"] = {
                },
                ["min_cruise_height_trigger_mlt"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["trigger_by_path"] = {
                },
                ["min_cruise_height"] = {
                },
                ["final_maneuver_trig_v_lim"] = {
                },
                ["default_straight_nav_tg_dist"] = {
                },
                ["use_horiz_dist"] = {
                },
                ["min_cruise_height_trigger_sum"] = {
                },
                ["default_sensor_tg_dist"] = {
                },
                ["default_final_maneuver_tg_dist"] = {
                },
            },
        },
        [11] = {
            ["__name"] = "seeker",
            ["__type"] = "wDACVSeekerDescriptor",
            ["__parameters"] = {
                ["max_target_speed"] = {
                },
                ["add_y"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["aim_sigma"] = {
                },
                ["op_time"] = {
                },
                ["flag_dist"] = {
                },
                ["send_off_data"] = {
                },
                ["max_w_LOS"] = {
                },
                ["sens_near_dist"] = {
                },
                ["ship_track_by_default"] = {
                },
                ["max_target_speed_rnd_coeff"] = {
                },
                ["FOV"] = {
                },
                ["ship_track_y_mlt"] = {
                },
                ["sens_far_dist"] = {
                },
                ["ship_track_board_vis_angle"] = {
                },
                ["delay"] = {
                },
                ["primary_target_filter"] = {
                },
            },
        },
        [12] = {
            ["__name"] = "conv",
            ["__type"] = "wSimpleGyroStabSeekerDescriptor",
            ["__parameters"] = {
                ["omega_max"] = {
                    ["value"] = 9999,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [13] = {
            ["__name"] = "final_autopilot",
            ["__type"] = "wTMAutopilotDescriptor",
            ["__parameters"] = {
                ["loft_add_val"] = {
                },
                ["J_Power_K"] = {
                },
                ["J_Trigger_Vert"] = {
                },
                ["J_Int_K"] = {
                },
                ["bang_bang"] = {
                },
                ["delay"] = {
                },
                ["J_FinAngle_K"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["Kg"] = {
                },
                ["finsLimit"] = {
                },
                ["useJumpByDefault"] = {
                },
                ["J_Angle_K"] = {
                },
                ["K"] = {
                },
                ["J_Angle_W"] = {
                },
                ["Ki"] = {
                },
                ["J_Diff_K"] = {
                },
            },
        },
        [14] = {
            ["__name"] = "autopilot",
            ["__type"] = "wInertialGlideFPAutopilotDescriptor",
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
                ["comfort_vel"] = {
                },
                ["Kiv"] = {
                },
                ["max_heading_err_val"] = {
                },
                ["hKp_err_croll"] = {
                },
                ["use_start_bar_height"] = {
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
        [15] = {
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
        [16] = {
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
        [17] = {
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
        [18] = {
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
        [19] = {
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
        [20] = {
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
        [21] = {
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
        [22] = {
            ["__name"] = "engine_control",
            ["__type"] = "wEngineCtrlDescriptor",
            ["__parameters"] = {
                ["default_speed"] = {
                },
                ["K"] = {
                },
                ["Kd"] = {
                },
                ["Ki"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [23] = {
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
        [24] = {
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
        [25] = {
            ["__name"] = "",
            ["__type"] = "wBlockMinValDescriptor<Vec3d>",
            ["inputs"] = {
                [1] = {
                    ["name"] = "input1",
                },
                [2] = {
                    ["name"] = "active1",
                },
                [3] = {
                    ["name"] = "input2",
                },
                [4] = {
                    ["name"] = "active2",
                },
            },
            ["__parameters"] = {
            },
        },
        [26] = {
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
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 14,
        },
        [2] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 14,
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
            ["input_block"] = 7,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [5] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 7,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 7,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [7] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 7,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [8] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 7,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [9] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 7,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [10] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 7,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 7,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 7,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 7,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 14,
            ["output_lead"] = "pos",
            ["output_block"] = 7,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 7,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "An",
            ["input_block"] = -666,
            ["output_lead"] = "An",
            ["output_block"] = 7,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 7,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 7,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 7,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 7,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 7,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 14,
            ["output_lead"] = "wings_out",
            ["output_block"] = 7,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 13,
            ["output_lead"] = "vel",
            ["output_block"] = 7,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 13,
            ["output_lead"] = "pos",
            ["output_block"] = 7,
        },
        [25] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 7,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 14,
            ["output_lead"] = "wings_out",
            ["output_block"] = 7,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 13,
            ["output_lead"] = "omega",
            ["output_block"] = 7,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_K",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_K",
            ["output_block"] = 7,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 15,
            ["output_lead"] = "col. pos",
            ["output_block"] = 14,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 17,
            ["output_lead"] = "vel",
            ["output_block"] = 7,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 17,
            ["output_lead"] = "explosion_pos",
            ["output_block"] = 16,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 15,
            ["output_lead"] = "vel",
            ["output_block"] = 7,
        },
        [33] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 15,
            ["output_lead"] = "normal",
            ["output_block"] = 14,
        },
        [34] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 15,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [35] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 15,
            ["output_lead"] = "collision",
            ["output_block"] = 14,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 15,
            ["output_lead"] = "object_id",
            ["output_block"] = 14,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 15,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 14,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 16,
            ["output_lead"] = "pos",
            ["output_block"] = 7,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "armed",
            ["input_block"] = 16,
            ["output_lead"] = "fuse_armed",
            ["output_block"] = -666,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "delay",
            ["input_block"] = 16,
            ["output_lead"] = "fuse_delay",
            ["output_block"] = -666,
        },
        [41] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 16,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 17,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 14,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 17,
            ["output_lead"] = "vec_0",
            ["output_block"] = 3,
        },
        [44] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "explode",
            ["output_block"] = 16,
        },
        [45] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 17,
            ["output_lead"] = "explode",
            ["output_block"] = 16,
        },
        [46] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 17,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [47] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 17,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [48] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 15,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 7,
            ["output_lead"] = "output",
            ["output_block"] = 18,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 7,
            ["output_lead"] = "output",
            ["output_block"] = 19,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 18,
            ["output_lead"] = "thrust",
            ["output_block"] = 5,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 19,
            ["output_lead"] = "fuel",
            ["output_block"] = 5,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
            ["output_lead"] = "vel",
            ["output_block"] = 7,
        },
        [54] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 5,
            ["output_lead"] = "booster",
            ["output_block"] = 4,
        },
        [55] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 5,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [56] = {
            ["port"] = 1,
            ["input_lead"] = "suppres_march",
            ["input_block"] = 4,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [57] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 13,
            ["output_lead"] = "output",
            ["output_block"] = 20,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 21,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "omega_LOS",
            ["input_block"] = 12,
            ["output_lead"] = "omega_LOS",
            ["output_block"] = 11,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 11,
            ["output_lead"] = "real_rot",
            ["output_block"] = 7,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 21,
            ["output_lead"] = "vel",
            ["output_block"] = 7,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 21,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 12,
            ["output_lead"] = "real_rot",
            ["output_block"] = 7,
        },
        [64] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 12,
            ["output_lead"] = "omega",
            ["output_block"] = 7,
        },
        [65] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 22,
            ["output_lead"] = "fins",
            ["output_block"] = 12,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 22,
            ["output_lead"] = "fins",
            ["output_block"] = 13,
        },
        [67] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 7,
            ["output_lead"] = "output",
            ["output_block"] = 22,
        },
        [68] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 7,
            ["output_lead"] = "true",
            ["output_block"] = 1,
        },
        [69] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 13,
            ["output_lead"] = "vel_rot",
            ["output_block"] = 7,
        },
        [70] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 8,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [71] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 8,
            ["output_lead"] = "target",
            ["output_block"] = -666,
        },
        [72] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 8,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [73] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 8,
            ["output_lead"] = "pos",
            ["output_block"] = 7,
        },
        [74] = {
            ["port"] = 1,
            ["input_lead"] = "path_point",
            ["input_block"] = 13,
            ["output_lead"] = "path_point",
            ["output_block"] = 8,
        },
        [75] = {
            ["port"] = 1,
            ["input_lead"] = "pos_error",
            ["input_block"] = 8,
            ["output_lead"] = "inertial_err",
            ["output_block"] = 13,
        },
        [76] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 23,
            ["output_lead"] = "seeker_active",
            ["output_block"] = 8,
        },
        [77] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 23,
            ["output_lead"] = "cruise_active",
            ["output_block"] = 8,
        },
        [78] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 23,
        },
        [79] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 24,
            ["output_lead"] = "route_point",
            ["output_block"] = 8,
        },
        [80] = {
            ["port"] = 0,
            ["input_lead"] = "active1",
            ["input_block"] = 24,
            ["output_lead"] = "output",
            ["output_block"] = 25,
        },
        [81] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 13,
            ["output_lead"] = "output",
            ["output_block"] = 24,
        },
        [82] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_active",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_active",
            ["output_block"] = 8,
        },
        [83] = {
            ["port"] = 0,
            ["input_lead"] = "path_point",
            ["input_block"] = -666,
            ["output_lead"] = "route_point",
            ["output_block"] = 8,
        },
        [84] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_19",
            ["input_block"] = -666,
            ["output_lead"] = "double_one",
            ["output_block"] = 2,
        },
        [85] = {
            ["port"] = 1,
            ["input_lead"] = "path_point",
            ["input_block"] = 8,
            ["output_lead"] = "path_point",
            ["output_block"] = -666,
        },
        [86] = {
            ["port"] = 1,
            ["input_lead"] = "point_num",
            ["input_block"] = 8,
            ["output_lead"] = "point_num",
            ["output_block"] = -666,
        },
        [87] = {
            ["port"] = 1,
            ["input_lead"] = "tfollow",
            ["input_block"] = 8,
            ["output_lead"] = "point_tfollow",
            ["output_block"] = -666,
        },
        [88] = {
            ["port"] = 1,
            ["input_lead"] = "sensor_on",
            ["input_block"] = 8,
            ["output_lead"] = "point_sensor_on",
            ["output_block"] = -666,
        },
        [89] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 17,
            ["output_lead"] = "obj_id_0",
            ["output_block"] = 3,
        },
        [90] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 9,
            ["output_lead"] = "pos",
            ["output_block"] = 7,
        },
        [91] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 9,
            ["output_lead"] = "target_pos",
            ["output_block"] = 13,
        },
        [92] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "p_destruct_trigger",
            ["output_block"] = 9,
        },
        [93] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 15,
            ["output_lead"] = "p_destruct_trigger",
            ["output_block"] = 9,
        },
        [94] = {
            ["port"] = 1,
            ["input_lead"] = "destruct_range",
            ["input_block"] = 9,
            ["output_lead"] = "destruct_range",
            ["output_block"] = -666,
        },
        [95] = {
            ["port"] = 1,
            ["input_lead"] = "sensor_on_range",
            ["input_block"] = 9,
            ["output_lead"] = "search_range",
            ["output_block"] = -666,
        },
        [96] = {
            ["port"] = 1,
            ["input_lead"] = "heading_cmd",
            ["input_block"] = 13,
            ["output_lead"] = "heading_cmd",
            ["output_block"] = -666,
        },
        [97] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 6,
            ["output_lead"] = "vel",
            ["output_block"] = 7,
        },
        [98] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 6,
            ["output_lead"] = "true",
            ["output_block"] = 1,
        },
        [99] = {
            ["port"] = 0,
            ["input_lead"] = "ctrl",
            ["input_block"] = 6,
            ["output_lead"] = "signal",
            ["output_block"] = 21,
        },
        [100] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 6,
            ["output_lead"] = "march",
            ["output_block"] = 4,
        },
        [101] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 6,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [102] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 18,
            ["output_lead"] = "thrust",
            ["output_block"] = 6,
        },
        [103] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 19,
            ["output_lead"] = "fuel",
            ["output_block"] = 6,
        },
        [104] = {
            ["port"] = 0,
            ["input_lead"] = "active_sensor",
            ["input_block"] = 10,
            ["output_lead"] = "w_sensor_trigger",
            ["output_block"] = 9,
        },
        [105] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 10,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [106] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 10,
            ["output_lead"] = "pos",
            ["output_block"] = 7,
        },
        [107] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 10,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 11,
        },
        [108] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 11,
            ["output_lead"] = "has_signal",
            ["output_block"] = 10,
        },
        [109] = {
            ["port"] = 0,
            ["input_lead"] = "upd_target",
            ["input_block"] = 13,
            ["output_lead"] = "has_signal",
            ["output_block"] = 10,
        },
        [110] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_FOV",
            ["input_block"] = -666,
            ["output_lead"] = "FOV",
            ["output_block"] = 10,
        },
        [111] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "LOS",
            ["output_block"] = 10,
        },
        [112] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 11,
            ["output_lead"] = "LOS",
            ["output_block"] = 10,
        },
        [113] = {
            ["port"] = 0,
            ["input_lead"] = "vLOS",
            ["input_block"] = 12,
            ["output_lead"] = "LOS",
            ["output_block"] = 10,
        },
        [114] = {
            ["port"] = 0,
            ["input_lead"] = "active2",
            ["input_block"] = 24,
            ["output_lead"] = "has_signal",
            ["output_block"] = 10,
        },
        [115] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 25,
            ["output_lead"] = "has_signal",
            ["output_block"] = 10,
        },
        [116] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 10,
            ["output_lead"] = "target_pos_",
            ["output_block"] = 8,
        },
        [117] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 10,
            ["output_lead"] = "target_",
            ["output_block"] = 8,
        },
        [118] = {
            ["port"] = 0,
            ["input_lead"] = "target_id",
            ["input_block"] = 10,
            ["output_lead"] = "target_ID",
            ["output_block"] = -666,
        },
        [119] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_target_id",
            ["input_block"] = -666,
            ["output_lead"] = "s_target_id_",
            ["output_block"] = 10,
        },
        [120] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 10,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [121] = {
            ["port"] = 0,
            ["input_lead"] = "final_point",
            ["input_block"] = 13,
            ["output_lead"] = "reached_point1",
            ["output_block"] = 8,
        },
        [122] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 24,
            ["output_lead"] = "s_target_pos_",
            ["output_block"] = 10,
        },
        [123] = {
            ["port"] = 1,
            ["input_lead"] = "glide_height",
            ["input_block"] = 13,
            ["output_lead"] = "cruise_height",
            ["output_block"] = -666,
        },
        [124] = {
            ["port"] = 1,
            ["input_lead"] = "X_Loft_mode",
            ["input_block"] = 12,
            ["output_lead"] = "loft",
            ["output_block"] = -666,
        },
        [125] = {
            ["port"] = 1,
            ["input_lead"] = "loft",
            ["input_block"] = 9,
            ["output_lead"] = "loft",
            ["output_block"] = -666,
        },
        [126] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 20,
            ["output_lead"] = "w_maneuver_trigger_",
            ["output_block"] = 9,
        },
        [127] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 12,
            ["output_lead"] = "w_maneuver_trigger_",
            ["output_block"] = 9,
        },
        [128] = {
            ["port"] = 1,
            ["input_lead"] = "skim_sign_",
            ["input_block"] = 13,
            ["output_lead"] = "p_maneuver_trigger_",
            ["output_block"] = 9,
        },
        [129] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 9,
            ["output_lead"] = "reached_point1",
            ["output_block"] = 8,
        },
        [130] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_target_pos",
            ["input_block"] = 9,
            ["output_lead"] = "s_target_pos_",
            ["output_block"] = 10,
        },
        [131] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "s_rot_",
            ["output_block"] = 10,
        },
        [132] = {
            ["port"] = 1,
            ["input_lead"] = "target_locked_",
            ["input_block"] = 13,
            ["output_lead"] = "target_locked",
            ["output_block"] = 10,
        },
        [133] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_on",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 10,
        },
        [134] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 6,
            ["output_lead"] = "pos",
            ["output_block"] = 7,
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
            [8] = {
                ["name"] = "suppress_explosion",
                ["type"] = 1,
            },
            [9] = {
                ["name"] = "path_point",
                ["type"] = 3,
            },
            [10] = {
                ["name"] = "point_num",
                ["type"] = 0,
            },
            [11] = {
                ["name"] = "point_tfollow",
                ["type"] = 1,
            },
            [12] = {
                ["name"] = "point_sensor_on",
                ["type"] = 1,
            },
            [13] = {
                ["name"] = "search_range",
                ["type"] = 2,
            },
            [14] = {
                ["name"] = "destruct_range",
                ["type"] = 2,
            },
            [15] = {
                ["name"] = "heading_cmd",
                ["type"] = 2,
            },
            [16] = {
                ["name"] = "loft",
                ["type"] = 0,
            },
            [17] = {
                ["name"] = "cruise_height",
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
            [5] = {
                ["name"] = "launcher",
                ["type"] = 6,
            },
            [6] = {
                ["name"] = "state",
                ["type"] = 0,
            },
            [7] = {
                ["name"] = "fuse_armed",
                ["type"] = 1,
            },
            [8] = {
                ["name"] = "fuse_delay",
                ["type"] = 1,
            },
            [9] = {
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
            [15] = {
                ["name"] = "seeker_FOV",
                ["type"] = 2,
            },
            [16] = {
                ["name"] = "seeker_active",
                ["type"] = 1,
            },
            [17] = {
                ["name"] = "path_point",
                ["type"] = 3,
            },
            [18] = {
                ["name"] = "draw_arg_19",
                ["type"] = 2,
            },
            [19] = {
                ["name"] = "seeker_target_id",
                ["type"] = 6,
            },
            [20] = {
                ["name"] = "seeker_on",
                ["type"] = 1,
            },
        },
    },
}