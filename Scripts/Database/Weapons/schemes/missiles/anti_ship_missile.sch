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
                [3] = {
                    ["name"] = "double_0",
                    ["type"] = 1,
                },
                [4] = {
                    ["name"] = "double_1",
                    ["type"] = 1,
                },
            },
            ["__parameters"] = {
                ["double_1"] = {
                    ["value"] = 0,
                },
                ["obj_id_0"] = {
                    ["value"] = 0,
                },
                ["vec_0"] = {
                    ["value"] = {
                        [1] = 0,
                        [2] = 0,
                        [3] = 0,
                    },
                },
                ["double_0"] = {
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
        [6] = {
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
        [7] = {
            ["__name"] = "fm",
            ["__type"] = "wAFMGuidedWeapon2Descriptor",
            ["__parameters"] = {
                ["A"] = {
                },
                ["wind_time"] = {
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
                },
                ["Ma_x"] = {
                },
                ["L"] = {
                },
                ["Mw"] = {
                },
                ["addDeplSw"] = {
                },
                ["Sw"] = {
                },
                ["Ma"] = {
                },
                ["shapeName"] = {
                    ["value"] = "",
                },
                ["Kw_x"] = {
                },
                ["I_x"] = {
                },
                ["finsTau"] = {
                },
                ["wingsDeplProcTime"] = {
                },
                ["wingsDeplDelay"] = {
                },
                ["calcAirFins"] = {
                },
                ["maxAoa"] = {
                },
            },
        },
        [8] = {
            ["__name"] = "mode_switcher",
            ["__type"] = "wSimpleDistTriggerDescriptor",
            ["__parameters"] = {
                ["trigger_dist"] = {
                },
                ["use_horiz_dist"] = {
                },
                ["inactivation_dist"] = {
                },
                ["delay"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [9] = {
            ["__name"] = "h_glide_on",
            ["__type"] = "wSimpleDistTriggerDescriptor",
            ["__parameters"] = {
                ["trigger_dist"] = {
                },
                ["use_horiz_dist"] = {
                },
                ["inactivation_dist"] = {
                },
                ["delay"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [10] = {
            ["__name"] = "self_destruct",
            ["__type"] = "wSimpleDistTriggerDescriptor",
            ["__parameters"] = {
                ["trigger_dist"] = {
                },
                ["use_horiz_dist"] = {
                },
                ["inactivation_dist"] = {
                },
                ["delay"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [11] = {
            ["__name"] = "",
            ["leads"] = {
                [1] = {
                    ["name"] = "self_destruct",
                    ["type"] = 1,
                },
            },
            ["__parameters"] = {
            },
            ["__type"] = "wBlockWireToPortDescriptor",
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
            ["__type"] = "wInertialGlideAutopilotDescriptor",
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
                ["Kiv"] = {
                },
                ["max_heading_err_val"] = {
                },
                ["hKp_err_croll"] = {
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
        [16] = {
            ["__name"] = "",
            ["__type"] = "wColliderBlockDescriptor",
            ["__parameters"] = {
                ["coll_delay"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
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
                    ["value"] = 2,
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
        [19] = {
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
        [22] = {
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
        [23] = {
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
                    ["value"] = 1,
                },
            },
        },
        [24] = {
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
        [25] = {
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
            ["output_block"] = 15,
        },
        [2] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 15,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [3] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 6,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [4] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 6,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [5] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 6,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [6] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 6,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [7] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 6,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [8] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 6,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [9] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 6,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 6,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 6,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 15,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "An",
            ["input_block"] = -666,
            ["output_lead"] = "An",
            ["output_block"] = 6,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 6,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 6,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 6,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 6,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 6,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 15,
            ["output_lead"] = "wings_out",
            ["output_block"] = 6,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 13,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 13,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 13,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [25] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 6,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 15,
            ["output_lead"] = "wings_out",
            ["output_block"] = 6,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 13,
            ["output_lead"] = "omega",
            ["output_block"] = 6,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_K",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_K",
            ["output_block"] = 6,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 17,
            ["output_lead"] = "col. pos",
            ["output_block"] = 15,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 18,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 18,
            ["output_lead"] = "explosion_pos",
            ["output_block"] = 16,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 17,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [33] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 17,
            ["output_lead"] = "normal",
            ["output_block"] = 15,
        },
        [34] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 17,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [35] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 17,
            ["output_lead"] = "collision",
            ["output_block"] = 15,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 17,
            ["output_lead"] = "object_id",
            ["output_block"] = 15,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 17,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 15,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 16,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
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
            ["input_block"] = 18,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 15,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 18,
            ["output_lead"] = "vec_0",
            ["output_block"] = 2,
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
            ["input_block"] = 18,
            ["output_lead"] = "explode",
            ["output_block"] = 16,
        },
        [46] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 18,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [47] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 18,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [48] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 17,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 6,
            ["output_lead"] = "output",
            ["output_block"] = 19,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 6,
            ["output_lead"] = "output",
            ["output_block"] = 20,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 19,
            ["output_lead"] = "thrust",
            ["output_block"] = 4,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 20,
            ["output_lead"] = "fuel",
            ["output_block"] = 4,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 4,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [54] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 4,
            ["output_lead"] = "booster",
            ["output_block"] = 3,
        },
        [55] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 4,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [56] = {
            ["port"] = 1,
            ["input_lead"] = "suppres_march",
            ["input_block"] = 3,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [57] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 7,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 13,
            ["output_lead"] = "output",
            ["output_block"] = 21,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 7,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 7,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 14,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 11,
            ["output_lead"] = "has_signal",
            ["output_block"] = 22,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 22,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 11,
        },
        [64] = {
            ["port"] = 0,
            ["input_lead"] = "omega_LOS",
            ["input_block"] = 12,
            ["output_lead"] = "omega_LOS",
            ["output_block"] = 11,
        },
        [65] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 11,
            ["output_lead"] = "real_rot",
            ["output_block"] = 6,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 11,
            ["output_lead"] = "LOS",
            ["output_block"] = 22,
        },
        [67] = {
            ["port"] = 0,
            ["input_lead"] = "vLOS",
            ["input_block"] = 12,
            ["output_lead"] = "LOS",
            ["output_block"] = 22,
        },
        [68] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 14,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [69] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 14,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [70] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 12,
            ["output_lead"] = "real_rot",
            ["output_block"] = 6,
        },
        [71] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 12,
            ["output_lead"] = "omega",
            ["output_block"] = 6,
        },
        [72] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 23,
            ["output_lead"] = "fins",
            ["output_block"] = 12,
        },
        [73] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 23,
            ["output_lead"] = "fins",
            ["output_block"] = 13,
        },
        [74] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 6,
            ["output_lead"] = "output",
            ["output_block"] = 23,
        },
        [75] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "true",
            ["output_block"] = 1,
        },
        [76] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 6,
            ["output_lead"] = "true",
            ["output_block"] = 1,
        },
        [77] = {
            ["port"] = 0,
            ["input_lead"] = "elec_power",
            ["input_block"] = 22,
            ["output_lead"] = "true",
            ["output_block"] = 1,
        },
        [78] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 22,
            ["output_lead"] = "target",
            ["output_block"] = -666,
        },
        [79] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 22,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [80] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 22,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [81] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 21,
            ["output_lead"] = "w_dist_trigger",
            ["output_block"] = 7,
        },
        [82] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_FOV",
            ["input_block"] = -666,
            ["output_lead"] = "FOV",
            ["output_block"] = 22,
        },
        [83] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "LOS",
            ["output_block"] = 22,
        },
        [84] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 11,
        },
        [85] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 13,
            ["output_lead"] = "vel_rot",
            ["output_block"] = 6,
        },
        [86] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 8,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [87] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 8,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [88] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 8,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [89] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 12,
            ["output_lead"] = "w_dist_trigger",
            ["output_block"] = 7,
        },
        [90] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 22,
            ["output_lead"] = "w_dist_trigger",
            ["output_block"] = 8,
        },
        [91] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 24,
            ["output_lead"] = "has_signal",
            ["output_block"] = 22,
        },
        [92] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 24,
            ["output_lead"] = "w_dist_trigger",
            ["output_block"] = 8,
        },
        [93] = {
            ["port"] = 0,
            ["input_lead"] = "upd_target",
            ["input_block"] = 13,
            ["output_lead"] = "output",
            ["output_block"] = 24,
        },
        [94] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 25,
            ["output_lead"] = "has_signal",
            ["output_block"] = 22,
        },
        [95] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 9,
            ["output_lead"] = "target_pos",
            ["output_block"] = 13,
        },
        [96] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 9,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [97] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 17,
            ["output_lead"] = "self_destruct",
            ["output_block"] = 10,
        },
        [98] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "self_destruct",
            ["output_block"] = 10,
        },
        [99] = {
            ["port"] = 1,
            ["input_lead"] = "latch",
            ["input_block"] = 10,
            ["output_lead"] = "p_dist_trigger",
            ["output_block"] = 9,
        },
        [100] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 9,
            ["output_lead"] = "output",
            ["output_block"] = 25,
        },
        [101] = {
            ["port"] = 0,
            ["input_lead"] = "self_destruct",
            ["input_block"] = 10,
            ["output_lead"] = "w_dist_trigger",
            ["output_block"] = 9,
        },
        [102] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 18,
            ["output_lead"] = "obj_id_0",
            ["output_block"] = 2,
        },
        [103] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_0",
            ["input_block"] = -666,
            ["output_lead"] = "double_0",
            ["output_block"] = 2,
        },
        [104] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_19",
            ["input_block"] = -666,
            ["output_lead"] = "double_1",
            ["output_block"] = 2,
        },
        [105] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 19,
            ["output_lead"] = "thrust",
            ["output_block"] = 5,
        },
        [106] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 20,
            ["output_lead"] = "fuel",
            ["output_block"] = 5,
        },
        [107] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [108] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 5,
            ["output_lead"] = "true",
            ["output_block"] = 1,
        },
        [109] = {
            ["port"] = 0,
            ["input_lead"] = "ctrl",
            ["input_block"] = 5,
            ["output_lead"] = "signal",
            ["output_block"] = 14,
        },
        [110] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 5,
            ["output_lead"] = "march",
            ["output_block"] = 3,
        },
        [111] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 5,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [112] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
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
                ["name"] = "draw_arg_19",
                ["type"] = 2,
            },
        },
    },
}