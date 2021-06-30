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
                    ["name"] = "bool_1",
                    ["type"] = 4,
                },
            },
            ["__parameters"] = {
                ["bool_1"] = {
                    ["value"] = 1,
                },
            },
        },
        [3] = {
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
                    ["value"] = 0.005,
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
                    ["value"] = 0.005,
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
                    ["value"] = 0.005,
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
            ["__type"] = "wDActiveSeekerDescriptor",
            ["__parameters"] = {
                ["hoj"] = {
                },
                ["sens_far_dist"] = {
                },
                ["dt"] = {
                    ["value"] = 0.005,
                },
                ["aim_sigma"] = {
                },
                ["ccm_k0"] = {
                },
                ["height_error_k"] = {
                },
                ["send_off_data"] = {
                    ["value"] = 0,
                },
                ["active_radar_lock_dist"] = {
                },
                ["height_error_max_h"] = {
                },
                ["max_w_LOS"] = {
                },
                ["sens_near_dist"] = {
                },
                ["FOV"] = {
                },
                ["height_error_max_vel"] = {
                },
                ["active_dist_trig_by_default"] = {
                },
                ["rad_correction"] = {
                },
                ["delay"] = {
                },
                ["op_time"] = {
                },
            },
        },
        [9] = {
            ["__name"] = "",
            ["__type"] = "wSeekerLocConvDescriptor",
            ["__parameters"] = {
                ["dt"] = {
                    ["value"] = 0.005,
                },
            },
        },
        [10] = {
            ["__name"] = "autopilot",
            ["__type"] = "wAP_AMRAAM_Descriptor",
            ["__parameters"] = {
                ["Kx"] = {
                },
                ["Knav"] = {
                },
                ["dt"] = {
                    ["value"] = 0.005,
                },
                ["loft_active"] = {
                },
                ["op_time"] = {
                },
                ["Krx"] = {
                },
                ["loft_factor"] = {
                },
                ["Ka"] = {
                },
                ["Kd"] = {
                },
                ["gload_limit"] = {
                },
                ["dV0"] = {
                },
                ["null_roll"] = {
                },
                ["loft_sin"] = {
                },
                ["loft_off_range"] = {
                },
                ["Tf"] = {
                },
                ["accel_coeffs"] = {
                },
                ["T1"] = {
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
        [11] = {
            ["__name"] = "actuator",
            ["__type"] = "wAC_EM_Descriptor",
            ["__parameters"] = {
                ["T2"] = {
                },
                ["T1"] = {
                },
                ["D"] = {
                },
                ["max_omega"] = {
                },
                ["dt"] = {
                    ["value"] = 0.005,
                },
                ["Tf"] = {
                },
                ["sim_count"] = {
                },
                ["max_delta"] = {
                },
                ["fin_stall"] = {
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
        [13] = {
            ["__name"] = "no_signal_destruct",
            ["__type"] = "wBlockFlagOnSignalTimerDescriptor",
            ["__parameters"] = {
                ["control_signal"] = {
                    ["value"] = 0,
                },
                ["activation_check_delay"] = {
                },
                ["flag_timer"] = {
                },
                ["activate_by_port"] = {
                },
                ["activate_by_not_control_signal"] = {
                    ["value"] = 0,
                },
                ["dt"] = {
                    ["value"] = 0.005,
                },
            },
        },
        [14] = {
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
                    ["value"] = 0.005,
                },
            },
        },
        [15] = {
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
                    ["value"] = 0.005,
                },
            },
        },
        [16] = {
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
        [17] = {
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
        [18] = {
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
            ["input_block"] = 15,
            ["output_lead"] = "col. pos",
            ["output_block"] = 13,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 15,
            ["output_lead"] = "object_id",
            ["output_block"] = 13,
        },
        [3] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 15,
            ["output_lead"] = "collision",
            ["output_block"] = 13,
        },
        [4] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 15,
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
            ["output_block"] = 13,
        },
        [8] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 13,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [9] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 14,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [10] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 16,
            ["output_lead"] = "explode",
            ["output_block"] = 14,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 16,
            ["output_lead"] = "explosion_pos",
            ["output_block"] = 14,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 16,
            ["output_lead"] = "int_zero",
            ["output_block"] = 2,
        },
        [13] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 16,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [14] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "explode",
            ["output_block"] = 14,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "armed",
            ["input_block"] = 14,
            ["output_lead"] = "fuse_armed",
            ["output_block"] = -666,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "delay",
            ["input_block"] = 14,
            ["output_lead"] = "fuse_delay",
            ["output_block"] = -666,
        },
        [17] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 16,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [18] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 15,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [19] = {
            ["port"] = 1,
            ["input_lead"] = "suppres_march",
            ["input_block"] = 3,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 15,
            ["output_lead"] = "normal",
            ["output_block"] = 13,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 16,
            ["output_lead"] = "vec_zero",
            ["output_block"] = 2,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 15,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 13,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 16,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 13,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 13,
            ["output_lead"] = "check_obj",
            ["output_block"] = 11,
        },
        [25] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 4,
            ["output_lead"] = "booster",
            ["output_block"] = 3,
        },
        [26] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 4,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 18,
            ["output_lead"] = "thrust",
            ["output_block"] = 5,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 18,
            ["output_lead"] = "thrust",
            ["output_block"] = 4,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 17,
            ["output_lead"] = "fuel",
            ["output_block"] = 4,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 17,
            ["output_lead"] = "fuel",
            ["output_block"] = 5,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 6,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 6,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [33] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 6,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [34] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 6,
            ["output_lead"] = "output",
            ["output_block"] = 18,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 6,
            ["output_lead"] = "output",
            ["output_block"] = 17,
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
            ["input_block"] = 14,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 13,
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
            ["input_block"] = 16,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 15,
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
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 6,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "AoA",
            ["output_block"] = 6,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "current_mass",
            ["output_block"] = 6,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 13,
            ["output_lead"] = "wings_out",
            ["output_block"] = 6,
        },
        [54] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 18,
        },
        [55] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "side_N",
            ["output_block"] = 6,
        },
        [56] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_22",
            ["input_block"] = -666,
            ["output_lead"] = "z",
            ["output_block"] = 19,
        },
        [57] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_23",
            ["input_block"] = -666,
            ["output_lead"] = "z",
            ["output_block"] = 19,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_20",
            ["input_block"] = -666,
            ["output_lead"] = "y",
            ["output_block"] = 19,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_21",
            ["input_block"] = -666,
            ["output_lead"] = "y",
            ["output_block"] = 19,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 6,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 4,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 17,
        },
        [64] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 7,
        },
        [65] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "LOS",
            ["output_block"] = 7,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_FOV",
            ["input_block"] = -666,
            ["output_lead"] = "FOV",
            ["output_block"] = 7,
        },
        [67] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 7,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [68] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 7,
            ["output_lead"] = "target",
            ["output_block"] = -666,
        },
        [69] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 7,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [70] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 7,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [71] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 7,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [72] = {
            ["port"] = 0,
            ["input_lead"] = "target_id",
            ["input_block"] = 7,
            ["output_lead"] = "target_ID",
            ["output_block"] = -666,
        },
        [73] = {
            ["port"] = 0,
            ["input_lead"] = "launcher_id",
            ["input_block"] = 7,
            ["output_lead"] = "launcher",
            ["output_block"] = -666,
        },
        [74] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 7,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [75] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_target_id",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_target_id",
            ["output_block"] = 7,
        },
        [76] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_error",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_error",
            ["output_block"] = 7,
        },
        [77] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_on",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_on",
            ["output_block"] = 7,
        },
        [78] = {
            ["port"] = 1,
            ["input_lead"] = "hoj",
            ["input_block"] = 7,
            ["output_lead"] = "hoj",
            ["output_block"] = -666,
        },
        [79] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_hoj",
            ["input_block"] = -666,
            ["output_lead"] = "hoj_active",
            ["output_block"] = 7,
        },
        [80] = {
            ["port"] = 1,
            ["input_lead"] = "time_since_birth",
            ["input_block"] = 15,
            ["output_lead"] = "time_since_birth",
            ["output_block"] = -666,
        },
        [81] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "died",
            ["output_block"] = 15,
        },
        [82] = {
            ["port"] = 0,
            ["input_lead"] = "signal",
            ["input_block"] = 12,
            ["output_lead"] = "has_signal",
            ["output_block"] = 7,
        },
        [83] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "timer_flag_p",
            ["output_block"] = 12,
        },
        [84] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 15,
            ["output_lead"] = "timer_flag_p",
            ["output_block"] = 12,
        },
        [85] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 7,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [86] = {
            ["port"] = 1,
            ["input_lead"] = "lock_dist",
            ["input_block"] = 7,
            ["output_lead"] = "radar_lock_dist",
            ["output_block"] = -666,
        },
        [87] = {
            ["port"] = 1,
            ["input_lead"] = "acv_rad",
            ["input_block"] = 7,
            ["output_lead"] = "set_head_active",
            ["output_block"] = -666,
        },
        [88] = {
            ["port"] = 0,
            ["input_lead"] = "FOV",
            ["input_block"] = 9,
            ["output_lead"] = "FOV",
            ["output_block"] = 7,
        },
        [89] = {
            ["port"] = 0,
            ["input_lead"] = "q",
            ["input_block"] = 9,
            ["output_lead"] = "dyn_pressure",
            ["output_block"] = 6,
        },
        [90] = {
            ["port"] = 0,
            ["input_lead"] = "dist",
            ["input_block"] = 9,
            ["output_lead"] = "dist",
            ["output_block"] = 7,
        },
        [91] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 9,
            ["output_lead"] = "real_rot",
            ["output_block"] = 6,
        },
        [92] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 9,
            ["output_lead"] = "omega",
            ["output_block"] = 6,
        },
        [93] = {
            ["port"] = 0,
            ["input_lead"] = "signal",
            ["input_block"] = 9,
            ["output_lead"] = "has_signal",
            ["output_block"] = 7,
        },
        [94] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AP",
            ["input_block"] = -666,
            ["output_lead"] = "out_err",
            ["output_block"] = 9,
        },
        [95] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 9,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [96] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 9,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [97] = {
            ["port"] = 0,
            ["input_lead"] = "vec",
            ["input_block"] = 19,
            ["output_lead"] = "draw_fins",
            ["output_block"] = 6,
        },
        [98] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 6,
            ["output_lead"] = "power_on",
            ["output_block"] = 9,
        },
        [99] = {
            ["port"] = 0,
            ["input_lead"] = "accel",
            ["input_block"] = 9,
            ["output_lead"] = "An",
            ["output_block"] = 6,
        },
        [100] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 8,
            ["output_lead"] = "LOS",
            ["output_block"] = 7,
        },
        [101] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 8,
            ["output_lead"] = "has_signal",
            ["output_block"] = 7,
        },
        [102] = {
            ["port"] = 0,
            ["input_lead"] = "mis_rot",
            ["input_block"] = 8,
            ["output_lead"] = "real_rot",
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
            ["input_lead"] = "LOS_omega",
            ["input_block"] = 9,
            ["output_lead"] = "loc_WLOS_dirs",
            ["output_block"] = 8,
        },
        [105] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 8,
        },
        [106] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 7,
            ["output_lead"] = "real_rot",
            ["output_block"] = 6,
        },
        [107] = {
            ["port"] = 0,
            ["input_lead"] = "LOS_angle",
            ["input_block"] = 9,
            ["output_lead"] = "loc_LOS_dirs",
            ["output_block"] = 8,
        },
        [108] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 9,
            ["output_lead"] = "bool_1",
            ["output_block"] = 1,
        },
        [109] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = -666,
            ["output_lead"] = "fins_delta",
            ["output_block"] = 10,
        },
        [110] = {
            ["port"] = 0,
            ["input_lead"] = "fins_cmd",
            ["input_block"] = 10,
            ["output_lead"] = "fins_cmd",
            ["output_block"] = 9,
        },
        [111] = {
            ["port"] = 0,
            ["input_lead"] = "power_on",
            ["input_block"] = 10,
            ["output_lead"] = "power_on",
            ["output_block"] = 9,
        },
        [112] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 6,
            ["output_lead"] = "fins_delta",
            ["output_block"] = 10,
        },
        [113] = {
            ["port"] = 1,
            ["input_lead"] = "loft",
            ["input_block"] = 9,
            ["output_lead"] = "Loft",
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
                ["name"] = "hoj",
                ["type"] = 1,
            },
            [10] = {
                ["name"] = "time_since_birth",
                ["type"] = 2,
            },
            [11] = {
                ["name"] = "radar_lock_dist",
                ["type"] = 2,
            },
            [12] = {
                ["name"] = "set_head_active",
                ["type"] = 1,
            },
            [13] = {
                ["name"] = "Loft",
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
                ["name"] = "launcher",
                ["type"] = 6,
            },
            [7] = {
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
                ["name"] = "fins",
                ["type"] = 3,
            },
            [19] = {
                ["name"] = "fuel_mass",
                ["type"] = 2,
            },
            [20] = {
                ["name"] = "seeker_target_id",
                ["type"] = 6,
            },
            [21] = {
                ["name"] = "seeker_error",
                ["type"] = 3,
            },
            [22] = {
                ["name"] = "seeker_on",
                ["type"] = 1,
            },
            [23] = {
                ["name"] = "seeker_hoj",
                ["type"] = 1,
            },
        },
    },
}