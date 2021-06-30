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
                [3] = {
                    ["name"] = "check",
                    ["type"] = 4,
                },
                [4] = {
                    ["name"] = "double_one",
                    ["type"] = 1,
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
                ["double_one"] = {
                    ["value"] = 1,
                },
                ["int_zero"] = {
                    ["value"] = 0,
                },
                ["check"] = {
                    ["value"] = 1,
                },
            },
        },
        [3] = {
            ["__name"] = "spiral_nav",
            ["__type"] = "wSpiralNavDescriptor",
            ["__parameters"] = {
                ["def_cone_time_stab_rad"] = {
                },
                ["def_cone_near_rad"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["gb_ret_Kp"] = {
                },
                ["def_cone_max_dist"] = {
                },
                ["gb_max_retW"] = {
                },
                ["gb_angle"] = {
                },
                ["def_cone_near_rad_st"] = {
                },
                ["t_cone_near_rad"] = {
                },
                ["gb_use_time"] = {
                },
                ["gb_min_dist"] = {
                },
            },
        },
        [4] = {
            ["__name"] = "autopilot",
            ["__type"] = "wMtcenterAutopilotDescriptor",
            ["__parameters"] = {
                ["Kd"] = {
                },
                ["Kp"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["no_ctrl_center_ang"] = {
                },
                ["op_time"] = {
                },
                ["max_ctrl_angle"] = {
                },
                ["fins_discreet"] = {
                },
                ["Ki"] = {
                },
                ["delay"] = {
                },
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
                ["boost_factor"] = {
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
                ["boost_factor"] = {
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
        [8] = {
            ["__name"] = "",
            ["__type"] = "wColliderBlockDescriptor",
            ["__parameters"] = {
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [9] = {
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
        [10] = {
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
                    ["value"] = "control_vikhr.lua",
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
        [11] = {
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
        [12] = {
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
        [13] = {
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
        [14] = {
            ["__name"] = "fm",
            ["__type"] = "wFMGyrostGuidedWDescriptor",
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
                    ["value"] = 0.005,
                },
                ["I"] = {
                },
                ["mass"] = {
                },
                ["wind_sigma"] = {
                },
                ["lockRoll"] = {
                },
                ["L"] = {
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
                ["finsTau"] = {
                },
                ["maxAoa"] = {
                },
            },
        },
        [15] = {
            ["__name"] = "",
            ["__type"] = "wBlockSummatorDescriptor<double>",
            ["inputs"] = {
                [1] = {
                    ["name"] = "input1",
                    ["coeff"] = 1,
                },
                [2] = {
                    ["name"] = "input2",
                    ["coeff"] = -1,
                },
            },
            ["__parameters"] = {
            },
        },
        [16] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [17] = {
            ["outPorts"] = {
            },
            ["inputs"] = {
            },
            ["__parameters"] = {
                ["delay"] = {
                    ["value"] = 0.15,
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
        [18] = {
            ["__name"] = "",
            ["__type"] = "wBlockGo2doubleOntimerDescriptor",
            ["__parameters"] = {
                ["K_t"] = {
                    ["value"] = 3,
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
            ["input_block"] = 8,
            ["output_lead"] = "col. pos",
            ["output_block"] = 7,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 8,
            ["output_lead"] = "object_id",
            ["output_block"] = 7,
        },
        [3] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 8,
            ["output_lead"] = "collision",
            ["output_block"] = 7,
        },
        [4] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 8,
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
            ["output_block"] = 9,
        },
        [7] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 7,
        },
        [8] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 7,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [9] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 6,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [10] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 10,
            ["output_lead"] = "explode",
            ["output_block"] = 6,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 10,
            ["output_lead"] = "explosion_pos",
            ["output_block"] = 6,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 10,
            ["output_lead"] = "int_zero",
            ["output_block"] = 1,
        },
        [13] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 10,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [14] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "explode",
            ["output_block"] = 6,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "armed",
            ["input_block"] = 6,
            ["output_lead"] = "fuse_armed",
            ["output_block"] = -666,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "delay",
            ["input_block"] = 6,
            ["output_lead"] = "fuse_delay",
            ["output_block"] = -666,
        },
        [17] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 10,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [18] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 8,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [19] = {
            ["port"] = 1,
            ["input_lead"] = "suppres_march",
            ["input_block"] = 9,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 8,
            ["output_lead"] = "normal",
            ["output_block"] = 7,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 10,
            ["output_lead"] = "vec_zero",
            ["output_block"] = 1,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 8,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 7,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 10,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 7,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 7,
            ["output_lead"] = "check_obj",
            ["output_block"] = 16,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 11,
            ["output_lead"] = "thrust",
            ["output_block"] = 4,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 11,
            ["output_lead"] = "thrust",
            ["output_block"] = 5,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 12,
            ["output_lead"] = "fuel",
            ["output_block"] = 4,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 12,
            ["output_lead"] = "fuel",
            ["output_block"] = 5,
        },
        [29] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 4,
            ["output_lead"] = "booster",
            ["output_block"] = 9,
        },
        [30] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 4,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 13,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 13,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [33] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 13,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [34] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 13,
            ["output_lead"] = "output",
            ["output_block"] = 11,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 13,
            ["output_lead"] = "output",
            ["output_block"] = 12,
        },
        [36] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 13,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [37] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 13,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [38] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 13,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [39] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 13,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 13,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 13,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 13,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 4,
            ["output_lead"] = "vel",
            ["output_block"] = 13,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
            ["output_lead"] = "vel",
            ["output_block"] = 13,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 8,
            ["output_lead"] = "vel",
            ["output_block"] = 13,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 10,
            ["output_lead"] = "vel",
            ["output_block"] = 13,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 13,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 13,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 13,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 7,
            ["output_lead"] = "pos",
            ["output_block"] = 13,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 6,
            ["output_lead"] = "pos",
            ["output_block"] = 13,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 13,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "Cone_origin",
            ["input_block"] = 2,
            ["output_lead"] = "cone_origin",
            ["output_block"] = -666,
        },
        [54] = {
            ["port"] = 0,
            ["input_lead"] = "Cone_dir",
            ["input_block"] = 2,
            ["output_lead"] = "cone_dir",
            ["output_block"] = -666,
        },
        [55] = {
            ["port"] = 0,
            ["input_lead"] = "has_tg_id",
            ["input_block"] = 2,
            ["output_lead"] = "has_target_id",
            ["output_block"] = -666,
        },
        [56] = {
            ["port"] = 0,
            ["input_lead"] = "tg_point",
            ["input_block"] = 2,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [57] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 2,
            ["output_lead"] = "pos",
            ["output_block"] = 13,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 2,
            ["output_lead"] = "check",
            ["output_block"] = 1,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 13,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 3,
            ["output_lead"] = "has_signal",
            ["output_block"] = 2,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "cone_origin",
            ["input_block"] = 3,
            ["output_lead"] = "Cone_origin",
            ["output_block"] = 2,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "cone_dir",
            ["input_block"] = 3,
            ["output_lead"] = "Cone_dir",
            ["output_block"] = 2,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "cone_near_dist",
            ["input_block"] = 3,
            ["output_lead"] = "Cone_near_dist",
            ["output_block"] = 2,
        },
        [64] = {
            ["port"] = 0,
            ["input_lead"] = "cone_near_rad",
            ["input_block"] = 3,
            ["output_lead"] = "Cone_near_rad",
            ["output_block"] = 2,
        },
        [65] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 3,
            ["output_lead"] = "pos",
            ["output_block"] = 13,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 3,
            ["output_lead"] = "vel",
            ["output_block"] = 13,
        },
        [67] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 3,
            ["output_lead"] = "rot",
            ["output_block"] = 13,
        },
        [68] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 13,
            ["output_lead"] = "has_signal",
            ["output_block"] = 3,
        },
        [69] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 13,
            ["output_lead"] = "fins",
            ["output_block"] = 3,
        },
        [70] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 13,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [71] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 7,
            ["output_lead"] = "wings_out",
            ["output_block"] = 13,
        },
        [72] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 13,
        },
        [73] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 14,
            ["output_lead"] = "double_one",
            ["output_block"] = 1,
        },
        [74] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_2",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 14,
        },
        [75] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 14,
            ["output_lead"] = "output",
            ["output_block"] = 17,
        },
        [76] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 17,
            ["output_lead"] = "output",
            ["output_block"] = 15,
        },
        [77] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 15,
            ["output_lead"] = "wings_out",
            ["output_block"] = 13,
        },
    },
    ["io"] = {
        ["outputPorts"] = {
            [1] = {
                 ["name"] = "id",["type"] = 6,
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
                ["name"] = "cone_origin",
                ["type"] = 3,
            },
            [4] = {
                ["name"] = "cone_dir",
                ["type"] = 3,
            },
            [5] = {
                ["name"] = "has_target_id",
                ["type"] = 1,
            },
            [6] = {
                ["name"] = "target_pos",
                ["type"] = 3,
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
                ["name"] = "dbg_AoA",
                ["type"] = 3,
            },
            [6] = {
                ["name"] = "dbg_Thrust",
                ["type"] = 2,
            },
            [7] = {
                ["name"] = "dbg_Mass",
                ["type"] = 2,
            },
            [8] = {
                ["name"] = "dbg_N",
                ["type"] = 2,
            },
            [9] = {
                ["name"] = "draw_arg_2",
                ["type"] = 2,
            },
        },
    },
}