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
                    ["name"] = "double_1",
                    ["type"] = 1,
                },
                [2] = {
                    ["name"] = "bool_true",
                    ["type"] = 4,
                },
            },
            ["__parameters"] = {
                ["double_1"] = {
                    ["value"] = 1,
                },
                ["bool_true"] = {
                    ["value"] = 1,
                },
            },
        },
        [4] = {
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
                    ["value"] = 0,
                },
                ["boost_factor"] = {
                    ["value"] = 0,
                },
                ["min_start_speed"] = {
                    ["value"] = -1,
                },
                ["max_effect_length"] = {
                    ["value"] = -1,
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
        [5] = {
            ["__name"] = "march",
            ["__type"] = "wRegEngineDescriptor",
            ["__parameters"] = {
                ["fuel_mass"] = {
                },
                ["work_time"] = {
                },
                ["boost_time"] = {
                    ["value"] = 0,
                },
                ["min_fuel_rate"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["boost_factor"] = {
                    ["value"] = 0,
                },
                ["max_thrust"] = {
                },
                ["impulse"] = {
                },
                ["thrust_Tau"] = {
                },
                ["min_thrust"] = {
                },
            },
        },
        [6] = {
            ["__name"] = "play_booster_animation",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "val",
                    ["type"] = 4,
                },
            },
            ["__parameters"] = {
                ["val"] = {
                },
            },
        },
        [7] = {
            ["__name"] = "",
            ["leads"] = {
                [1] = {
                    ["name"] = "acv",
                    ["type"] = 1,
                },
            },
            ["__parameters"] = {
            },
            ["__type"] = "wBlockWireToPortDescriptor",
        },
        [8] = {
            ["__name"] = "booster_animation",
            ["__type"] = "wBlockGo2doubleOntimerDescriptor",
            ["__parameters"] = {
                ["use_start_val"] = {
                    ["value"] = 1,
                },
                ["loop"] = {
                },
                ["start_val"] = {
                },
                ["activate_by_port"] = {
                    ["value"] = 1,
                },
                ["K_t"] = {
                    ["value"] = 1,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [9] = {
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
        [10] = {
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
        [11] = {
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
        [12] = {
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
        [13] = {
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
        [14] = {
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
        [15] = {
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
        [16] = {
            ["__name"] = "seeker",
            ["__type"] = "wDSatSeekerDescriptor",
            ["__parameters"] = {
                ["coalition"] = {
                },
                ["FOV"] = {
                    ["value"] = 3.14,
                },
                ["opTime"] = {
                    ["value"] = 9000,
                },
                ["can_update_target_pos"] = {
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
        [17] = {
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
        [18] = {
            ["__name"] = "final_ap_trigger",
            ["__type"] = "wSimpleDistTriggerDescriptor",
            ["__parameters"] = {
                ["trigger_dist"] = {
                    ["value"] = 15000,
                },
                ["use_horiz_dist"] = {
                    ["value"] = 1,
                },
                ["inactivation_dist"] = {
                    ["value"] = 500,
                },
                ["delay"] = {
                    ["value"] = 0,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [19] = {
            ["__name"] = "final_autopilot",
            ["__type"] = "wXZAxisAutopilotDescriptor",
            ["__parameters"] = {
                ["J_Int_K"] = {
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
                ["err_new_wlos_k"] = {
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
                },
                ["delay"] = {
                },
                ["Ki"] = {
                },
                ["J_Diff_K"] = {
                },
            },
        },
        [20] = {
            ["__name"] = "cruise_autopilot",
            ["__type"] = "wCruiseAutopilotDescriptor",
            ["__parameters"] = {
                ["Kd_ver_st2"] = {
                },
                ["eng_min_thrust"] = {
                },
                ["stab_vel"] = {
                },
                ["Kp_ver_st2"] = {
                },
                ["eng_max_thrust"] = {
                },
                ["alg_calc_time"] = {
                },
                ["estimated_N_max"] = {
                },
                ["Kii_ver"] = {
                },
                ["Kd_ver_st1"] = {
                },
                ["finsLimit"] = {
                },
                ["alg_section_temp_points"] = {
                },
                ["auto_terrain_following"] = {
                },
                ["max_roll"] = {
                },
                ["alg_div_k"] = {
                },
                ["alg_vel_k"] = {
                },
                ["no_alg_vel_k"] = {
                },
                ["Kd_eng"] = {
                },
                ["Kd_ver"] = {
                },
                ["alg_tmp_point_vel_k"] = {
                },
                ["Kp_hor_err"] = {
                },
                ["alg_max_sin_climb"] = {
                },
                ["alg_points_num"] = {
                },
                ["auto_terrain_following_height"] = {
                },
                ["max_start_y_vel"] = {
                },
                ["Kd_hor"] = {
                },
                ["Kp_eng"] = {
                },
                ["Kp_ver"] = {
                },
                ["Kp_ver_st1"] = {
                },
                ["Kp_hor_err_croll"] = {
                },
                ["Ki_eng"] = {
                },
                ["delay"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [21] = {
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
        [22] = {
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
        [23] = {
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
        [24] = {
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
        [25] = {
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
        [26] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<double CMA bool>",
            ["__parameters"] = {
            },
        },
        [27] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [28] = {
            ["__name"] = "",
            ["__type"] = "wBlockANDDescriptor",
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
        [29] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [30] = {
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
        [31] = {
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
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 10,
            ["output_lead"] = "col. pos",
            ["output_block"] = 9,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 10,
            ["output_lead"] = "object_id",
            ["output_block"] = 9,
        },
        [3] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 10,
            ["output_lead"] = "collision",
            ["output_block"] = 9,
        },
        [4] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 10,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [5] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 9,
        },
        [6] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 9,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [7] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 8,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [8] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 12,
            ["output_lead"] = "explode",
            ["output_block"] = 8,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 12,
            ["output_lead"] = "explosion_pos",
            ["output_block"] = 8,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 12,
            ["output_lead"] = "int_zero",
            ["output_block"] = 1,
        },
        [11] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 12,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [12] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "explode",
            ["output_block"] = 8,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "armed",
            ["input_block"] = 8,
            ["output_lead"] = "fuse_armed",
            ["output_block"] = -666,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "delay",
            ["input_block"] = 8,
            ["output_lead"] = "fuse_delay",
            ["output_block"] = -666,
        },
        [15] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 12,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [16] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 10,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [17] = {
            ["port"] = 1,
            ["input_lead"] = "suppres_march",
            ["input_block"] = 11,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 10,
            ["output_lead"] = "normal",
            ["output_block"] = 9,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 12,
            ["output_lead"] = "vec_zero",
            ["output_block"] = 1,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 10,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 9,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 12,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 9,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 9,
            ["output_lead"] = "check_obj",
            ["output_block"] = 20,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 16,
        },
        [24] = {
            ["port"] = 1,
            ["input_lead"] = "path_point",
            ["input_block"] = 19,
            ["output_lead"] = "path_point",
            ["output_block"] = 14,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 14,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 14,
            ["output_lead"] = "target",
            ["output_block"] = -666,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 14,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 13,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 13,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 13,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 9,
            ["output_lead"] = "pos",
            ["output_block"] = 13,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 8,
            ["output_lead"] = "pos",
            ["output_block"] = 13,
        },
        [33] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 14,
            ["output_lead"] = "pos",
            ["output_block"] = 13,
        },
        [34] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 19,
            ["output_lead"] = "pos",
            ["output_block"] = 13,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 13,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 13,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 10,
            ["output_lead"] = "vel",
            ["output_block"] = 13,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 12,
            ["output_lead"] = "vel",
            ["output_block"] = 13,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 19,
            ["output_lead"] = "vel",
            ["output_block"] = 13,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 13,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 16,
            ["output_lead"] = "real_rot",
            ["output_block"] = 13,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 19,
            ["output_lead"] = "omega",
            ["output_block"] = 13,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 13,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 13,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 13,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 13,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 13,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 9,
            ["output_lead"] = "wings_out",
            ["output_block"] = 13,
        },
        [49] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 13,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [50] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 13,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [51] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 13,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [52] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 13,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 13,
            ["output_lead"] = "output",
            ["output_block"] = 21,
        },
        [54] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 13,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [55] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "real_rot",
            ["output_block"] = 13,
        },
        [56] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 4,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [57] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 4,
            ["output_lead"] = "march",
            ["output_block"] = 11,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 4,
            ["output_lead"] = "vel",
            ["output_block"] = 13,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 4,
            ["output_lead"] = "engine active",
            ["output_block"] = 19,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "ctrl",
            ["input_block"] = 4,
            ["output_lead"] = "engine ctrl",
            ["output_block"] = 19,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 19,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 13,
            ["output_lead"] = "output",
            ["output_block"] = 22,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 21,
            ["output_lead"] = "fins",
            ["output_block"] = 19,
        },
        [64] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 22,
            ["output_lead"] = "cruise_active",
            ["output_block"] = 14,
        },
        [65] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 22,
            ["output_lead"] = "seeker_active",
            ["output_block"] = 14,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "engine active",
            ["input_block"] = 19,
            ["output_lead"] = "bool_true",
            ["output_block"] = 2,
        },
        [67] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 18,
            ["output_lead"] = "vel",
            ["output_block"] = 13,
        },
        [68] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 18,
            ["output_lead"] = "omega",
            ["output_block"] = 13,
        },
        [69] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 18,
            ["output_lead"] = "real_rot",
            ["output_block"] = 13,
        },
        [70] = {
            ["port"] = 0,
            ["input_lead"] = "omega_LOS",
            ["input_block"] = 18,
            ["output_lead"] = "omega_LOS",
            ["output_block"] = 16,
        },
        [71] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 21,
            ["output_lead"] = "fins",
            ["output_block"] = 18,
        },
        [72] = {
            ["port"] = 1,
            ["input_lead"] = "near_ground",
            ["input_block"] = 19,
            ["output_lead"] = "near_ground",
            ["output_block"] = 14,
        },
        [73] = {
            ["port"] = 0,
            ["input_lead"] = "path_point",
            ["input_block"] = -666,
            ["output_lead"] = "path_point",
            ["output_block"] = 19,
        },
        [74] = {
            ["port"] = 0,
            ["input_lead"] = "terrain_following",
            ["input_block"] = -666,
            ["output_lead"] = "near_ground",
            ["output_block"] = 19,
        },
        [75] = {
            ["port"] = 0,
            ["input_lead"] = "alg_point",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_alg_point",
            ["output_block"] = 19,
        },
        [76] = {
            ["port"] = 0,
            ["input_lead"] = "yerr",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_y_err",
            ["output_block"] = 19,
        },
        [77] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 19,
            ["output_lead"] = "real_rot",
            ["output_block"] = 13,
        },
        [78] = {
            ["port"] = 1,
            ["input_lead"] = "sensor_on",
            ["input_block"] = 19,
            ["output_lead"] = "sensor_on",
            ["output_block"] = 14,
        },
        [79] = {
            ["port"] = 1,
            ["input_lead"] = "point_num",
            ["input_block"] = 14,
            ["output_lead"] = "point_num",
            ["output_block"] = -666,
        },
        [80] = {
            ["port"] = 1,
            ["input_lead"] = "path_point",
            ["input_block"] = 14,
            ["output_lead"] = "path_point",
            ["output_block"] = -666,
        },
        [81] = {
            ["port"] = 1,
            ["input_lead"] = "tfollow",
            ["input_block"] = 14,
            ["output_lead"] = "follow_terrain",
            ["output_block"] = -666,
        },
        [82] = {
            ["port"] = 1,
            ["input_lead"] = "sensor_on",
            ["input_block"] = 14,
            ["output_lead"] = "sensor_on",
            ["output_block"] = -666,
        },
        [83] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_active",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_active",
            ["output_block"] = 14,
        },
        [84] = {
            ["port"] = 0,
            ["input_lead"] = "inters_point",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_inters_point",
            ["output_block"] = 19,
        },
        [85] = {
            ["port"] = 0,
            ["input_lead"] = "wings_state",
            ["input_block"] = 18,
            ["output_lead"] = "double_1",
            ["output_block"] = 2,
        },
        [86] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 23,
            ["output_lead"] = "thrust",
            ["output_block"] = 4,
        },
        [87] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 23,
            ["output_lead"] = "thrust",
            ["output_block"] = 3,
        },
        [88] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 24,
            ["output_lead"] = "fuel",
            ["output_block"] = 3,
        },
        [89] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 24,
            ["output_lead"] = "fuel",
            ["output_block"] = 4,
        },
        [90] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 3,
            ["output_lead"] = "booster",
            ["output_block"] = 11,
        },
        [91] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 3,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [92] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 3,
            ["output_lead"] = "vel",
            ["output_block"] = 13,
        },
        [93] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 13,
            ["output_lead"] = "output",
            ["output_block"] = 23,
        },
        [94] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 13,
            ["output_lead"] = "output",
            ["output_block"] = 24,
        },
        [95] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 25,
            ["output_lead"] = "fuel",
            ["output_block"] = 3,
        },
        [96] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 7,
            ["output_lead"] = "output",
            ["output_block"] = 26,
        },
        [97] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_1",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 7,
        },
        [98] = {
            ["port"] = 1,
            ["input_lead"] = "activate",
            ["input_block"] = 7,
            ["output_lead"] = "acv",
            ["output_block"] = 6,
        },
        [99] = {
            ["port"] = 1,
            ["input_lead"] = "latch",
            ["input_block"] = 6,
            ["output_lead"] = "booster",
            ["output_block"] = 11,
        },
        [100] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 26,
            ["output_lead"] = "output",
            ["output_block"] = 25,
        },
        [101] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 27,
            ["output_lead"] = "output",
            ["output_block"] = 25,
        },
        [102] = {
            ["port"] = 0,
            ["input_lead"] = "acv",
            ["input_block"] = 6,
            ["output_lead"] = "output",
            ["output_block"] = 27,
        },
        [103] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 27,
            ["output_lead"] = "val",
            ["output_block"] = 5,
        },
        [104] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 29,
            ["output_lead"] = "output",
            ["output_block"] = 28,
        },
        [105] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 28,
            ["output_lead"] = "wings_out",
            ["output_block"] = 13,
        },
        [106] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_25",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 29,
        },
        [107] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 16,
            ["output_lead"] = "LOS",
            ["output_block"] = 15,
        },
        [108] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 16,
            ["output_lead"] = "has_signal",
            ["output_block"] = 15,
        },
        [109] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "LOS",
            ["output_block"] = 15,
        },
        [110] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 15,
        },
        [111] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_FOV",
            ["input_block"] = -666,
            ["output_lead"] = "FOV",
            ["output_block"] = 15,
        },
        [112] = {
            ["port"] = 0,
            ["input_lead"] = "vLOS",
            ["input_block"] = 18,
            ["output_lead"] = "LOS",
            ["output_block"] = 15,
        },
        [113] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 15,
            ["output_lead"] = "seeker_active",
            ["output_block"] = 14,
        },
        [114] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 15,
            ["output_lead"] = "target_",
            ["output_block"] = 14,
        },
        [115] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 15,
            ["output_lead"] = "target_pos_",
            ["output_block"] = 14,
        },
        [116] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 15,
            ["output_lead"] = "pos",
            ["output_block"] = 13,
        },
        [117] = {
            ["port"] = 0,
            ["input_lead"] = "country",
            ["input_block"] = 15,
            ["output_lead"] = "country",
            ["output_block"] = -666,
        },
        [118] = {
            ["port"] = 1,
            ["input_lead"] = "upd_target",
            ["input_block"] = 14,
            ["output_lead"] = "upd_target",
            ["output_block"] = -666,
        },
        [119] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 17,
            ["output_lead"] = "seeker_active",
            ["output_block"] = 14,
        },
        [120] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 17,
            ["output_lead"] = "pos",
            ["output_block"] = 13,
        },
        [121] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 17,
            ["output_lead"] = "target_pos_",
            ["output_block"] = 14,
        },
        [122] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 18,
            ["output_lead"] = "w_dist_trigger",
            ["output_block"] = 17,
        },
        [123] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 30,
            ["output_lead"] = "w_dist_trigger",
            ["output_block"] = 17,
        },
        [124] = {
            ["port"] = 0,
            ["input_lead"] = "fins active",
            ["input_block"] = 19,
            ["output_lead"] = "output",
            ["output_block"] = 30,
        },
        [125] = {
            ["port"] = 0,
            ["input_lead"] = "sat_seeker_dist",
            ["input_block"] = -666,
            ["output_lead"] = "target_dist",
            ["output_block"] = 15,
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
                ["name"] = "path_point",
                ["type"] = 3,
            },
            [10] = {
                ["name"] = "point_num",
                ["type"] = 0,
            },
            [11] = {
                ["name"] = "follow_terrain",
                ["type"] = 1,
            },
            [12] = {
                ["name"] = "sensor_on",
                ["type"] = 1,
            },
            [13] = {
                ["name"] = "upd_target",
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
                ["name"] = "yerr",
                ["type"] = 2,
            },
            [14] = {
                ["name"] = "path_point",
                ["type"] = 3,
            },
            [15] = {
                ["name"] = "terrain_following",
                ["type"] = 1,
            },
            [16] = {
                ["name"] = "alg_point",
                ["type"] = 3,
            },
            [17] = {
                ["name"] = "seeker_active",
                ["type"] = 1,
            },
            [18] = {
                ["name"] = "inters_point",
                ["type"] = 3,
            },
            [19] = {
                ["name"] = "draw_arg_1",
                ["type"] = 2,
            },
            [20] = {
                ["name"] = "draw_arg_25",
                ["type"] = 2,
            },
            [21] = {
                ["name"] = "sat_seeker_dist",
                ["type"] = 2,
            },
        },
    },
}