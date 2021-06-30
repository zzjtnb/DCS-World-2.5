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
                    ["name"] = "double_0",
                    ["type"] = 1,
                },
            },
            ["__parameters"] = {
                ["double_0"] = {
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
                [2] = {
                    ["name"] = "double 0",
                    ["type"] = 1,
                },
            },
            ["__parameters"] = {
                ["bool_true"] = {
                    ["value"] = 1,
                },
                ["double 0"] = {
                    ["value"] = 0,
                },
            },
        },
        [4] = {
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
        [5] = {
            ["__name"] = "seeker",
            ["__type"] = "wDTVDatSeekerDescriptor",
            ["__parameters"] = {
                ["max_target_speed"] = {
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
                ["target_mem_time"] = {
                },
                ["send_off_data"] = {
                },
                ["check_launcher"] = {
                },
                ["max_lock_dist"] = {
                },
                ["max_w_LOS"] = {
                },
                ["ship_track_by_default"] = {
                },
                ["max_target_speed_rnd_coeff"] = {
                },
                ["FOV"] = {
                },
                ["max_ang_shift"] = {
                },
                ["activate_on_update"] = {
                },
                ["max_w_LOS_surf"] = {
                },
                ["delay"] = {
                },
                ["ship_track_board_vis_angle"] = {
                },
            },
        },
        [6] = {
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
        [7] = {
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
        [8] = {
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
        [9] = {
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
        [10] = {
            ["__name"] = "",
            ["__type"] = "wSeekerLocConvDescriptor",
            ["__parameters"] = {
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [11] = {
            ["__name"] = "PN_autopilot",
            ["__type"] = "wMaverickAutopilotDescriptor",
            ["__parameters"] = {
                ["NR"] = {
                    ["value"] = 10,
                },
                ["Kx"] = {
                },
                ["GBias_after_target_drop"] = {
                    ["value"] = 1,
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
                    ["value"] = 9000,
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
        [12] = {
            ["__name"] = "",
            ["__type"] = "wBlockGo2doubleOntimerDescriptor",
            ["__parameters"] = {
                ["use_start_val"] = {
                    ["value"] = 1,
                },
                ["loop"] = {
                    ["value"] = 1,
                },
                ["start_val"] = {
                    ["value"] = 1,
                },
                ["activate_by_port"] = {
                    ["value"] = 0,
                },
                ["K_t"] = {
                    ["value"] = 6,
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
            ["input_block"] = 6,
            ["output_lead"] = "col. pos",
            ["output_block"] = 5,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 6,
            ["output_lead"] = "object_id",
            ["output_block"] = 5,
        },
        [3] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 6,
            ["output_lead"] = "collision",
            ["output_block"] = 5,
        },
        [4] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 6,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [5] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 5,
        },
        [6] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 5,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [7] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 6,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [8] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 6,
            ["output_lead"] = "normal",
            ["output_block"] = 5,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 6,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 5,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 3,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 3,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 3,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [13] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 3,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [14] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 3,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [15] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 3,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [16] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 3,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [17] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 3,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 6,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 3,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 3,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 3,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 3,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 3,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 3,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 5,
            ["output_lead"] = "wings_out",
            ["output_block"] = 3,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 3,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "vec",
            ["input_block"] = 8,
            ["output_lead"] = "mvec",
            ["output_block"] = 7,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_20",
            ["input_block"] = -666,
            ["output_lead"] = "y",
            ["output_block"] = 8,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_22",
            ["input_block"] = -666,
            ["output_lead"] = "z",
            ["output_block"] = 8,
        },
        [33] = {
            ["port"] = 1,
            ["input_lead"] = "lockon_roll_diff",
            ["input_block"] = 10,
            ["output_lead"] = "lockon_roll_diff",
            ["output_block"] = -666,
        },
        [34] = {
            ["port"] = 1,
            ["input_lead"] = "base_roll",
            ["input_block"] = 10,
            ["output_lead"] = "base_roll",
            ["output_block"] = -666,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 9,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "mis_rot",
            ["input_block"] = 9,
            ["output_lead"] = "real_rot",
            ["output_block"] = 3,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "loc_LOS",
            ["input_block"] = 10,
            ["output_lead"] = "loc_LOS",
            ["output_block"] = 9,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 3,
            ["output_lead"] = "fins",
            ["output_block"] = 10,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 10,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 10,
            ["output_lead"] = "omega",
            ["output_block"] = 3,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 10,
            ["output_lead"] = "real_rot",
            ["output_block"] = 3,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "vec",
            ["input_block"] = 7,
            ["output_lead"] = "fins",
            ["output_block"] = 10,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "loc_W_LOS",
            ["input_block"] = 10,
            ["output_lead"] = "loc_cLWLOS",
            ["output_block"] = 9,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 3,
            ["output_lead"] = "double_0",
            ["output_block"] = 1,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 3,
            ["output_lead"] = "double_0",
            ["output_block"] = 1,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 5,
            ["output_lead"] = "bool_true",
            ["output_block"] = 2,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 4,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 4,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 4,
            ["output_lead"] = "real_rot",
            ["output_block"] = 3,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 4,
            ["output_lead"] = "target",
            ["output_block"] = -666,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 4,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "target_id",
            ["input_block"] = 4,
            ["output_lead"] = "target_ID",
            ["output_block"] = -666,
        },
        [53] = {
            ["port"] = 1,
            ["input_lead"] = "ship_track",
            ["input_block"] = 4,
            ["output_lead"] = "ship_track",
            ["output_block"] = -666,
        },
        [54] = {
            ["port"] = 0,
            ["input_lead"] = "launcher_id",
            ["input_block"] = 4,
            ["output_lead"] = "launcher",
            ["output_block"] = -666,
        },
        [55] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 3,
            ["output_lead"] = "has_signal",
            ["output_block"] = 4,
        },
        [56] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 10,
            ["output_lead"] = "has_signal",
            ["output_block"] = 4,
        },
        [57] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 4,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 9,
            ["output_lead"] = "LOS",
            ["output_block"] = 4,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "LOS",
            ["output_block"] = 4,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_FOV",
            ["input_block"] = -666,
            ["output_lead"] = "FOV",
            ["output_block"] = 4,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "dist",
            ["input_block"] = 10,
            ["output_lead"] = "dist",
            ["output_block"] = 4,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 9,
            ["output_lead"] = "has_signal",
            ["output_block"] = 4,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_28",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 11,
        },
        [64] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 11,
            ["output_lead"] = "double 0",
            ["output_block"] = 2,
        },
        [65] = {
            ["port"] = 0,
            ["input_lead"] = "mis_omega",
            ["input_block"] = 9,
            ["output_lead"] = "omega",
            ["output_block"] = 3,
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
                ["name"] = "target_ID",
                ["type"] = 6,
            },
            [5] = {
                ["name"] = "launcher",
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
            [15] = {
                ["name"] = "draw_arg_28",
                ["type"] = 2,
            },
        },
    },
}