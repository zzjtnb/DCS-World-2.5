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
            },
            ["__parameters"] = {
                ["double_1"] = {
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
                },
                ["opTime"] = {
                },
                ["flag_dist"] = {
                },
                ["max_target_speed"] = {
                },
                ["delay"] = {
                },
                ["maxW"] = {
                },
            },
        },
        [15] = {
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
        [16] = {
            ["__name"] = "power_source",
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
        [17] = {
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
        [18] = {
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
        [19] = {
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
        [20] = {
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
        [21] = {
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
        [22] = {
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
        [23] = {
            ["__name"] = "const3",
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
        [24] = {
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
        [27] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<double CMA bool>",
            ["__parameters"] = {
            },
        },
        [28] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [29] = {
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
        [30] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [31] = {
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
            ["input_lead"] = "elec_power",
            ["input_block"] = 13,
            ["output_lead"] = "power",
            ["output_block"] = 15,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 9,
            ["output_lead"] = "check_obj",
            ["output_block"] = 17,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 13,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_FOV",
            ["input_block"] = -666,
            ["output_lead"] = "FOV",
            ["output_block"] = 13,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "LOS",
            ["output_block"] = 13,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 20,
            ["output_lead"] = "LOS",
            ["output_block"] = 13,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 20,
            ["output_lead"] = "has_signal",
            ["output_block"] = 13,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 13,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 20,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 20,
        },
        [31] = {
            ["port"] = 1,
            ["input_lead"] = "path_point",
            ["input_block"] = 23,
            ["output_lead"] = "path_point",
            ["output_block"] = 16,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 16,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [33] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 16,
            ["output_lead"] = "target",
            ["output_block"] = -666,
        },
        [34] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 16,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 13,
            ["output_lead"] = "seeker_active",
            ["output_block"] = 16,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 13,
            ["output_lead"] = "target_",
            ["output_block"] = 16,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 13,
            ["output_lead"] = "target_pos_",
            ["output_block"] = 16,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 14,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 14,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 14,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 9,
            ["output_lead"] = "pos",
            ["output_block"] = 14,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 13,
            ["output_lead"] = "pos",
            ["output_block"] = 14,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 8,
            ["output_lead"] = "pos",
            ["output_block"] = 14,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 16,
            ["output_lead"] = "pos",
            ["output_block"] = 14,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 23,
            ["output_lead"] = "pos",
            ["output_block"] = 14,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 14,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 14,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 10,
            ["output_lead"] = "vel",
            ["output_block"] = 14,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 12,
            ["output_lead"] = "vel",
            ["output_block"] = 14,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 23,
            ["output_lead"] = "vel",
            ["output_block"] = 14,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 14,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 20,
            ["output_lead"] = "real_rot",
            ["output_block"] = 14,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 23,
            ["output_lead"] = "omega",
            ["output_block"] = 14,
        },
        [54] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 14,
        },
        [55] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 14,
        },
        [56] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 14,
        },
        [57] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 14,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 14,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 9,
            ["output_lead"] = "wings_out",
            ["output_block"] = 14,
        },
        [60] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 14,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [61] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 14,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [62] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 14,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [63] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 14,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [64] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 14,
            ["output_lead"] = "output",
            ["output_block"] = 18,
        },
        [65] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 14,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "real_rot",
            ["output_block"] = 14,
        },
        [67] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 4,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [68] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 4,
            ["output_lead"] = "march",
            ["output_block"] = 11,
        },
        [69] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 4,
            ["output_lead"] = "vel",
            ["output_block"] = 14,
        },
        [70] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 4,
            ["output_lead"] = "engine active",
            ["output_block"] = 23,
        },
        [71] = {
            ["port"] = 0,
            ["input_lead"] = "ctrl",
            ["input_block"] = 4,
            ["output_lead"] = "engine ctrl",
            ["output_block"] = 23,
        },
        [72] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 23,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [73] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 14,
            ["output_lead"] = "output",
            ["output_block"] = 19,
        },
        [74] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 18,
            ["output_lead"] = "fins",
            ["output_block"] = 23,
        },
        [75] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 19,
            ["output_lead"] = "cruise_active",
            ["output_block"] = 16,
        },
        [76] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 19,
            ["output_lead"] = "seeker_active",
            ["output_block"] = 16,
        },
        [77] = {
            ["port"] = 0,
            ["input_lead"] = "fins active",
            ["input_block"] = 23,
            ["output_lead"] = "cruise_active",
            ["output_block"] = 16,
        },
        [78] = {
            ["port"] = 0,
            ["input_lead"] = "engine active",
            ["input_block"] = 23,
            ["output_lead"] = "bool_true",
            ["output_block"] = 22,
        },
        [79] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 21,
            ["output_lead"] = "has_signal",
            ["output_block"] = 13,
        },
        [80] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 21,
            ["output_lead"] = "vel",
            ["output_block"] = 14,
        },
        [81] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 21,
            ["output_lead"] = "omega",
            ["output_block"] = 14,
        },
        [82] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 21,
            ["output_lead"] = "real_rot",
            ["output_block"] = 14,
        },
        [83] = {
            ["port"] = 0,
            ["input_lead"] = "omega_LOS",
            ["input_block"] = 21,
            ["output_lead"] = "omega_LOS",
            ["output_block"] = 20,
        },
        [84] = {
            ["port"] = 0,
            ["input_lead"] = "vLOS",
            ["input_block"] = 21,
            ["output_lead"] = "LOS",
            ["output_block"] = 13,
        },
        [85] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 18,
            ["output_lead"] = "fins",
            ["output_block"] = 21,
        },
        [86] = {
            ["port"] = 1,
            ["input_lead"] = "near_ground",
            ["input_block"] = 23,
            ["output_lead"] = "near_ground",
            ["output_block"] = 16,
        },
        [87] = {
            ["port"] = 0,
            ["input_lead"] = "path_point",
            ["input_block"] = -666,
            ["output_lead"] = "path_point",
            ["output_block"] = 23,
        },
        [88] = {
            ["port"] = 0,
            ["input_lead"] = "terrain_following",
            ["input_block"] = -666,
            ["output_lead"] = "near_ground",
            ["output_block"] = 23,
        },
        [89] = {
            ["port"] = 0,
            ["input_lead"] = "alg_point",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_alg_point",
            ["output_block"] = 23,
        },
        [90] = {
            ["port"] = 0,
            ["input_lead"] = "yerr",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_y_err",
            ["output_block"] = 23,
        },
        [91] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 23,
            ["output_lead"] = "real_rot",
            ["output_block"] = 14,
        },
        [92] = {
            ["port"] = 1,
            ["input_lead"] = "sensor_on",
            ["input_block"] = 23,
            ["output_lead"] = "sensor_on",
            ["output_block"] = 16,
        },
        [93] = {
            ["port"] = 1,
            ["input_lead"] = "point_num",
            ["input_block"] = 16,
            ["output_lead"] = "point_num",
            ["output_block"] = -666,
        },
        [94] = {
            ["port"] = 1,
            ["input_lead"] = "path_point",
            ["input_block"] = 16,
            ["output_lead"] = "path_point",
            ["output_block"] = -666,
        },
        [95] = {
            ["port"] = 1,
            ["input_lead"] = "tfollow",
            ["input_block"] = 16,
            ["output_lead"] = "follow_terrain",
            ["output_block"] = -666,
        },
        [96] = {
            ["port"] = 1,
            ["input_lead"] = "sensor_on",
            ["input_block"] = 16,
            ["output_lead"] = "sensor_on",
            ["output_block"] = -666,
        },
        [97] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_active",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_active",
            ["output_block"] = 16,
        },
        [98] = {
            ["port"] = 0,
            ["input_lead"] = "inters_point",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_inters_point",
            ["output_block"] = 23,
        },
        [99] = {
            ["port"] = 0,
            ["input_lead"] = "wings_state",
            ["input_block"] = 21,
            ["output_lead"] = "double_1",
            ["output_block"] = 22,
        },
        [100] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 24,
            ["output_lead"] = "thrust",
            ["output_block"] = 4,
        },
        [101] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 24,
            ["output_lead"] = "thrust",
            ["output_block"] = 3,
        },
        [102] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 25,
            ["output_lead"] = "fuel",
            ["output_block"] = 3,
        },
        [103] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 25,
            ["output_lead"] = "fuel",
            ["output_block"] = 4,
        },
        [104] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 3,
            ["output_lead"] = "booster",
            ["output_block"] = 11,
        },
        [105] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 3,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [106] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 3,
            ["output_lead"] = "vel",
            ["output_block"] = 14,
        },
        [107] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 14,
            ["output_lead"] = "output",
            ["output_block"] = 24,
        },
        [108] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 14,
            ["output_lead"] = "output",
            ["output_block"] = 25,
        },
        [109] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 26,
            ["output_lead"] = "fuel",
            ["output_block"] = 3,
        },
        [110] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 7,
            ["output_lead"] = "output",
            ["output_block"] = 27,
        },
        [111] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_1",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 7,
        },
        [112] = {
            ["port"] = 1,
            ["input_lead"] = "activate",
            ["input_block"] = 7,
            ["output_lead"] = "acv",
            ["output_block"] = 6,
        },
        [113] = {
            ["port"] = 1,
            ["input_lead"] = "latch",
            ["input_block"] = 6,
            ["output_lead"] = "booster",
            ["output_block"] = 11,
        },
        [114] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 27,
            ["output_lead"] = "output",
            ["output_block"] = 26,
        },
        [115] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 28,
            ["output_lead"] = "output",
            ["output_block"] = 26,
        },
        [116] = {
            ["port"] = 0,
            ["input_lead"] = "acv",
            ["input_block"] = 6,
            ["output_lead"] = "output",
            ["output_block"] = 28,
        },
        [117] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 28,
            ["output_lead"] = "val",
            ["output_block"] = 5,
        },
        [118] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 30,
            ["output_lead"] = "output",
            ["output_block"] = 29,
        },
        [119] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 29,
            ["output_lead"] = "wings_out",
            ["output_block"] = 14,
        },
        [120] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_25",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 30,
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
                ["name"] = "X_Loft_mode",
                ["type"] = 0,
            },
            [9] = {
                ["name"] = "constraint",
                ["type"] = 5,
            },
            [10] = {
                ["name"] = "path_point",
                ["type"] = 3,
            },
            [11] = {
                ["name"] = "point_num",
                ["type"] = 0,
            },
            [12] = {
                ["name"] = "follow_terrain",
                ["type"] = 1,
            },
            [13] = {
                ["name"] = "sensor_on",
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
        },
    },
}