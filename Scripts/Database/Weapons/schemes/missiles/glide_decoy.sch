simulation_scheme = {
    ["blocks"] = {
        [1] = {
            ["__name"] = "",
            ["__type"] = "wAtmSamplerDescriptor",
            ["__parameters"] = {
            },
        },
        [2] = {
            ["__name"] = "c1",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "true",
                    ["type"] = 4,
                },
                [2] = {
                    ["name"] = "double0",
                    ["type"] = 1,
                },
            },
            ["__parameters"] = {
                ["true"] = {
                    ["value"] = 1,
                },
                ["double0"] = {
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
        [6] = {
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
        [7] = {
            ["__name"] = "fm",
            ["__type"] = "wFMAddMDescriptor",
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
                ["add_w_c0"] = {
                },
                ["Mw"] = {
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
                ["Kp_ret"] = {
                },
                ["finsTau"] = {
                },
                ["start_no_w_A_mult"] = {
                },
                ["add_Sw"] = {
                },
                ["Ma_z"] = {
                },
                ["maxAoa"] = {
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
            ["__name"] = "autopilot",
            ["__type"] = "wDecoyAutopilotDescriptor",
            ["__parameters"] = {
                ["finsLimit"] = {
                },
                ["inertial_km_error"] = {
                },
                ["stab_vel"] = {
                },
                ["Kp_hor_err"] = {
                },
                ["altim_vel_k"] = {
                },
                ["start_fins_vert_val"] = {
                },
                ["vel_save_k"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["Kiv"] = {
                },
                ["max_roll"] = {
                },
                ["Kdv"] = {
                },
                ["max_vert_speed"] = {
                },
                ["Kp_hor_err_croll"] = {
                },
                ["glide_height"] = {
                },
                ["delay"] = {
                },
                ["Kpv"] = {
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
        [12] = {
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
        [13] = {
            ["__name"] = "snare_block",
            ["__type"] = "wSnareBlockDescriptor",
            ["__parameters"] = {
                ["chaff_sum_mass"] = {
                },
                ["sens_dist"] = {
                },
                ["chaff_mass"] = {
                },
                ["spawn_pos"] = {
                },
                ["spawn_interval"] = {
                },
                ["activate_by_rad"] = {
                },
                ["delay"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [14] = {
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
        [15] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [16] = {
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
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 11,
        },
        [2] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 11,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [3] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 9,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [4] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "explode",
            ["output_block"] = 9,
        },
        [5] = {
            ["port"] = 0,
            ["input_lead"] = "armed",
            ["input_block"] = 9,
            ["output_lead"] = "fuse_armed",
            ["output_block"] = -666,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "delay",
            ["input_block"] = 9,
            ["output_lead"] = "fuse_delay",
            ["output_block"] = -666,
        },
        [7] = {
            ["port"] = 1,
            ["input_lead"] = "suppres_march",
            ["input_block"] = 3,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [8] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 11,
            ["output_lead"] = "check_obj",
            ["output_block"] = 10,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 7,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 7,
            ["output_lead"] = "target",
            ["output_block"] = -666,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 7,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 6,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 6,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 6,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 11,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 9,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 7,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 6,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 6,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 6,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 6,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 6,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 6,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 11,
            ["output_lead"] = "wings_out",
            ["output_block"] = 6,
        },
        [27] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 6,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [28] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 6,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [29] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 6,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [30] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 6,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [31] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 6,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "real_rot",
            ["output_block"] = 6,
        },
        [33] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 5,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [34] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 5,
            ["output_lead"] = "march",
            ["output_block"] = 3,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 6,
            ["output_lead"] = "output",
            ["output_block"] = 13,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 13,
            ["output_lead"] = "cruise_active",
            ["output_block"] = 7,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 13,
            ["output_lead"] = "seeker_active",
            ["output_block"] = 7,
        },
        [39] = {
            ["port"] = 1,
            ["input_lead"] = "point_num",
            ["input_block"] = 7,
            ["output_lead"] = "point_num",
            ["output_block"] = -666,
        },
        [40] = {
            ["port"] = 1,
            ["input_lead"] = "path_point",
            ["input_block"] = 7,
            ["output_lead"] = "path_point",
            ["output_block"] = -666,
        },
        [41] = {
            ["port"] = 1,
            ["input_lead"] = "tfollow",
            ["input_block"] = 7,
            ["output_lead"] = "follow_terrain",
            ["output_block"] = -666,
        },
        [42] = {
            ["port"] = 1,
            ["input_lead"] = "sensor_on",
            ["input_block"] = 7,
            ["output_lead"] = "sensor_on",
            ["output_block"] = -666,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_active",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_active",
            ["output_block"] = 7,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "wings_state",
            ["input_block"] = 6,
            ["output_lead"] = "double_1",
            ["output_block"] = 2,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 15,
            ["output_lead"] = "output",
            ["output_block"] = 14,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 14,
            ["output_lead"] = "wings_out",
            ["output_block"] = 6,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_25",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 15,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 8,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 8,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 8,
            ["output_lead"] = "omega",
            ["output_block"] = 6,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 6,
            ["output_lead"] = "fins",
            ["output_block"] = 8,
        },
        [52] = {
            ["port"] = 1,
            ["input_lead"] = "path_point",
            ["input_block"] = 8,
            ["output_lead"] = "path_point",
            ["output_block"] = 7,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "target_LOS",
            ["output_block"] = 8,
        },
        [54] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "real_rot",
            ["output_block"] = 6,
        },
        [55] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "true",
            ["output_block"] = 1,
        },
        [56] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 8,
            ["output_lead"] = "true",
            ["output_block"] = 1,
        },
        [57] = {
            ["port"] = 0,
            ["input_lead"] = "upd_target",
            ["input_block"] = 8,
            ["output_lead"] = "true",
            ["output_block"] = 1,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 8,
            ["output_lead"] = "route_point",
            ["output_block"] = 7,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_FOV",
            ["input_block"] = -666,
            ["output_lead"] = "double0",
            ["output_block"] = 1,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 4,
            ["output_lead"] = "true",
            ["output_block"] = 1,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 4,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 4,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "ctrl",
            ["input_block"] = 5,
            ["output_lead"] = "signal",
            ["output_block"] = 4,
        },
        [64] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 5,
            ["output_lead"] = "true",
            ["output_block"] = 1,
        },
        [65] = {
            ["port"] = 0,
            ["input_lead"] = "terrain_following",
            ["input_block"] = -666,
            ["output_lead"] = "true",
            ["output_block"] = 1,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "yerr",
            ["input_block"] = -666,
            ["output_lead"] = "double0",
            ["output_block"] = 1,
        },
        [67] = {
            ["port"] = 0,
            ["input_lead"] = "path_point",
            ["input_block"] = -666,
            ["output_lead"] = "route_point",
            ["output_block"] = 7,
        },
        [68] = {
            ["port"] = 0,
            ["input_lead"] = "alg_point",
            ["input_block"] = -666,
            ["output_lead"] = "route_point",
            ["output_block"] = 7,
        },
        [69] = {
            ["port"] = 0,
            ["input_lead"] = "inters_point",
            ["input_block"] = -666,
            ["output_lead"] = "route_point",
            ["output_block"] = 7,
        },
        [70] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 8,
            ["output_lead"] = "real_rot",
            ["output_block"] = 6,
        },
        [71] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 6,
            ["output_lead"] = "thrust",
            ["output_block"] = 5,
        },
        [72] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 6,
            ["output_lead"] = "fuel",
            ["output_block"] = 5,
        },
        [73] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 12,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [74] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 12,
            ["output_lead"] = "real_rot",
            ["output_block"] = 6,
        },
        [75] = {
            ["port"] = 0,
            ["input_lead"] = "expending_mass",
            ["input_block"] = 6,
            ["output_lead"] = "mass",
            ["output_block"] = 12,
        },
        [76] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 12,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [77] = {
            ["port"] = 1,
            ["input_lead"] = "spawn_snare",
            ["input_block"] = -666,
            ["output_lead"] = "spawn_snare",
            ["output_block"] = 12,
        },
        [78] = {
            ["port"] = 1,
            ["input_lead"] = "spawn_pos",
            ["input_block"] = -666,
            ["output_lead"] = "spawn_pos",
            ["output_block"] = 12,
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
            [2] = {
                ["name"] = "spawn_snare",
                ["type"] = 1,
            },
            [3] = {
                ["name"] = "spawn_pos",
                ["type"] = 3,
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
                ["name"] = "draw_arg_25",
                ["type"] = 2,
            },
        },
    },
}