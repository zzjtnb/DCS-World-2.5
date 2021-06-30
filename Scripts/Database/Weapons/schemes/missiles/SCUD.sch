simulation_scheme = {
    ["blocks"] = {
        [1] = {
            ["__name"] = "Atmosphere",
            ["__type"] = "wAtmSamplerSimtestWindCtrlDescriptor",
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
            ["__name"] = "booster",
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
                },
                ["smoke_transparency"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["effect_type"] = {
                },
                ["boost_factor"] = {
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
                },
                ["smoke_transparency"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["effect_type"] = {
                },
                ["boost_factor"] = {
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
            ["__type"] = "wMArtControlBlockDescriptor",
            ["__parameters"] = {
                ["engine_control_time"] = {
                },
                ["test_mode"] = {
                },
                ["st_ctrl_time"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["pitch_trig_diff"] = {
                },
                ["add_start_y"] = {
                },
                ["aim_data"] = {
                },
                ["op_time"] = {
                    ["value"] = 9999,
                },
                ["st0_ctrl_time"] = {
                },
                ["pitch_trig_time"] = {
                },
                ["delay"] = {
                    ["value"] = 0,
                },
                ["data_asc"] = {
                },
            },
        },
        [9] = {
            ["__name"] = "seeker",
            ["__type"] = "wDSeekerDescriptor",
            ["__parameters"] = {
                ["aim_sigma"] = {
                    ["value"] = 0,
                },
                ["FOV"] = {
                    ["value"] = 6.28,
                },
                ["op_time"] = {
                    ["value"] = 9999,
                },
                ["max_w_LOS"] = {
                    ["value"] = 9999,
                },
                ["send_off_data"] = {
                    ["value"] = 1,
                },
                ["delay"] = {
                    ["value"] = 0,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [10] = {
            ["__name"] = "conv",
            ["__type"] = "wSeekerLocConvDescriptor",
            ["__parameters"] = {
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [11] = {
            ["__name"] = "autopilot",
            ["__type"] = "wMArtAutopilotDescriptor",
            ["__parameters"] = {
                ["draw_fins_conv"] = {
                    ["value"] = {
                        [1] = 0,
                        [2] = 0,
                        [3] = 0,
                    },
                },
                ["Kd"] = {
                },
                ["fins_limit_x"] = {
                },
                ["roll_ctrl_max_pitch"] = {
                },
                ["omega_ctrl"] = {
                },
                ["Kri"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["roll_diff_correction"] = {
                },
                ["Krd"] = {
                },
                ["K"] = {
                },
                ["op_time"] = {
                    ["value"] = 9999,
                },
                ["Kr"] = {
                },
                ["Ki"] = {
                },
                ["delay"] = {
                    ["value"] = 0.02,
                },
                ["fins_limit"] = {
                },
            },
        },
        [12] = {
            ["__name"] = "fuze_proximity",
            ["__type"] = "wFuzeProximityDescriptor",
            ["__parameters"] = {
                ["radius"] = {
                    ["value"] = 5,
                },
                ["delay_large"] = {
                    ["value"] = 0.08,
                },
                ["ignore_inp_armed"] = {
                    ["value"] = 0,
                },
                ["arm_delay"] = {
                    ["value"] = 2,
                },
                ["delay_small"] = {
                    ["value"] = 0.02,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [13] = {
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
        [14] = {
            ["__name"] = "warhead",
            ["__type"] = "wWarheadStandardBlockPFDescriptor",
            ["__parameters"] = {
                ["time_self_destruct"] = {
                },
                ["cumulative_thickness"] = {
                },
                ["cumulative_factor"] = {
                },
                ["caliber"] = {
                },
                ["fuel_dmg_coeff"] = {
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
            ["__type"] = "wWarheadStandardBlockPFDescriptor",
            ["__parameters"] = {
                ["time_self_destruct"] = {
                },
                ["cumulative_thickness"] = {
                },
                ["cumulative_factor"] = {
                },
                ["caliber"] = {
                },
                ["fuel_dmg_coeff"] = {
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
    },
    ["connections"] = {
        [1] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 13,
            ["output_lead"] = "col. pos",
            ["output_block"] = 12,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 13,
            ["output_lead"] = "object_id",
            ["output_block"] = 12,
        },
        [3] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 13,
            ["output_lead"] = "collision",
            ["output_block"] = 12,
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
            ["output_block"] = 12,
        },
        [8] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 12,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [9] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 11,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [10] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 14,
            ["output_lead"] = "explode",
            ["output_block"] = 11,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 14,
            ["output_lead"] = "explosion_pos",
            ["output_block"] = 11,
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
            ["output_block"] = 11,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "armed",
            ["input_block"] = 11,
            ["output_lead"] = "fuse_armed",
            ["output_block"] = -666,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "delay",
            ["input_block"] = 11,
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
            ["port"] = 1,
            ["input_lead"] = "suppres_march",
            ["input_block"] = 3,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 13,
            ["output_lead"] = "normal",
            ["output_block"] = 12,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 14,
            ["output_lead"] = "vec_zero",
            ["output_block"] = 1,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 13,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 12,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 14,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 12,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 12,
            ["output_lead"] = "check_obj",
            ["output_block"] = 15,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 16,
            ["output_lead"] = "thrust",
            ["output_block"] = 4,
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
            ["input_block"] = 17,
            ["output_lead"] = "fuel",
            ["output_block"] = 4,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 17,
            ["output_lead"] = "fuel",
            ["output_block"] = 5,
        },
        [29] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 4,
            ["output_lead"] = "booster",
            ["output_block"] = 3,
        },
        [30] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 4,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
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
            ["input_lead"] = "rho",
            ["input_block"] = 6,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 6,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 6,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 6,
            ["output_lead"] = "output",
            ["output_block"] = 16,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 6,
            ["output_lead"] = "output",
            ["output_block"] = 17,
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
            ["input_block"] = 4,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
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
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 6,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 6,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 6,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 6,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 6,
        },
        [54] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 6,
        },
        [55] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 6,
        },
        [56] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 12,
            ["output_lead"] = "wings_out",
            ["output_block"] = 6,
        },
        [57] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 6,
            ["output_lead"] = "fins",
            ["output_block"] = 10,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 10,
            ["output_lead"] = "vel",
            ["output_block"] = 6,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 10,
            ["output_lead"] = "omega",
            ["output_block"] = 6,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "N",
            ["input_block"] = 10,
            ["output_lead"] = "An",
            ["output_block"] = 6,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 10,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "fuel",
            ["input_block"] = 13,
            ["output_lead"] = "output",
            ["output_block"] = 17,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "fuel",
            ["input_block"] = 14,
            ["output_lead"] = "output",
            ["output_block"] = 17,
        },
        [64] = {
            ["port"] = 1,
            ["input_lead"] = "wind_xzh",
            ["input_block"] = 0,
            ["output_lead"] = "set_wind",
            ["output_block"] = -666,
        },
        [65] = {
            ["port"] = 1,
            ["input_lead"] = "surf_h",
            ["input_block"] = 0,
            ["output_lead"] = "surf_h",
            ["output_block"] = -666,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 7,
            ["output_lead"] = "bool_true",
            ["output_block"] = 2,
        },
        [67] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 10,
            ["output_lead"] = "bool_true",
            ["output_block"] = 2,
        },
        [68] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 7,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
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
            ["input_lead"] = "eng_mode",
            ["input_block"] = 7,
            ["output_lead"] = "engine_mode",
            ["output_block"] = -666,
        },
        [71] = {
            ["port"] = 1,
            ["input_lead"] = "off",
            ["input_block"] = 5,
            ["output_lead"] = "engine_off",
            ["output_block"] = 7,
        },
        [72] = {
            ["port"] = 1,
            ["input_lead"] = "st_signal",
            ["input_block"] = 7,
            ["output_lead"] = "st_signal",
            ["output_block"] = -666,
        },
        [73] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 7,
            ["output_lead"] = "real_rot",
            ["output_block"] = 6,
        },
        [74] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 10,
            ["output_lead"] = "real_rot",
            ["output_block"] = 6,
        },
        [75] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 9,
            ["output_lead"] = "LOS",
            ["output_block"] = 8,
        },
        [76] = {
            ["port"] = 0,
            ["input_lead"] = "mis_omega",
            ["input_block"] = 9,
            ["output_lead"] = "omega",
            ["output_block"] = 6,
        },
        [77] = {
            ["port"] = 0,
            ["input_lead"] = "mis_rot",
            ["input_block"] = 9,
            ["output_lead"] = "real_rot",
            ["output_block"] = 6,
        },
        [78] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 8,
            ["output_lead"] = "pos",
            ["output_block"] = 6,
        },
        [79] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 8,
            ["output_lead"] = "has_signal",
            ["output_block"] = 7,
        },
        [80] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 8,
            ["output_lead"] = "real_rot",
            ["output_block"] = 6,
        },
        [81] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 8,
            ["output_lead"] = "has_signal",
            ["output_block"] = 7,
        },
        [82] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "LOS",
            ["output_block"] = 8,
        },
        [83] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 8,
            ["output_lead"] = "target_pos",
            ["output_block"] = 7,
        },
        [84] = {
            ["port"] = 0,
            ["input_lead"] = "loc_LOS",
            ["input_block"] = 10,
            ["output_lead"] = "loc_LOS",
            ["output_block"] = 9,
        },
        [85] = {
            ["port"] = 0,
            ["input_lead"] = "loc_W_LOS",
            ["input_block"] = 10,
            ["output_lead"] = "loc_WLOS",
            ["output_block"] = 9,
        },
        [86] = {
            ["port"] = 1,
            ["input_lead"] = "st_signal",
            ["input_block"] = 10,
            ["output_lead"] = "st_signal",
            ["output_block"] = 7,
        },
        [87] = {
            ["port"] = 1,
            ["input_lead"] = "stage",
            ["input_block"] = 10,
            ["output_lead"] = "stage",
            ["output_block"] = 7,
        },
        [88] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 9,
            ["output_lead"] = "bool_true",
            ["output_block"] = 2,
        },
        [89] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 10,
            ["output_lead"] = "LOS",
            ["output_block"] = 8,
        },
        [90] = {
            ["port"] = 0,
            ["input_lead"] = "q",
            ["input_block"] = 10,
            ["output_lead"] = "dyn_pressure",
            ["output_block"] = 6,
        },
        [91] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 6,
            ["output_lead"] = "bool_true",
            ["output_block"] = 2,
        },
        [92] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 10,
            ["output_lead"] = "thrust",
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
                ["name"] = "constraint",
                ["type"] = 5,
            },
            [9] = {
                ["name"] = "st_signal",
                ["type"] = 3,
            },
            [10] = {
                ["name"] = "set_wind",
                ["type"] = 3,
            },
            [11] = {
                ["name"] = "surf_h",
                ["type"] = 2,
            },
            [12] = {
                ["name"] = "engine_mode",
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
                ["name"] = "target_LOS",
                ["type"] = 3,
            },
            [6] = {
                ["name"] = "has_signal",
                ["type"] = 1,
            },
            [7] = {
                ["name"] = "dbg_AoA",
                ["type"] = 3,
            },
            [8] = {
                ["name"] = "dbg_Thrust",
                ["type"] = 2,
            },
            [9] = {
                ["name"] = "dbg_Mass",
                ["type"] = 2,
            },
            [10] = {
                ["name"] = "dbg_N",
                ["type"] = 2,
            },
        },
    },
}