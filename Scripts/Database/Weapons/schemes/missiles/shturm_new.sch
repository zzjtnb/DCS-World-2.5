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
            ["__name"] = "eng_err",
            ["__type"] = "wPosTimerErrDescriptor",
            ["__parameters"] = {
                ["min_time_interval"] = {
                },
                ["max_time_interval"] = {
                },
                ["x_error"] = {
                    ["value"] = 0,
                },
                ["y_error"] = {
                },
                ["z_error"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [6] = {
            ["__name"] = "booster",
            ["__type"] = "wEngineDescriptor",
            ["__parameters"] = {
                ["nozzle_orientationXYZ"] = {
                    ["value"] = {
                        [1] = {
                            [1] = 0,
                            [2] = 0,
                            [3] = 0,
                        },
                    },
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
                ["boost_factor"] = {
                    ["value"] = 0,
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
                ["boost_factor"] = {
                    ["value"] = 0,
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
        [8] = {
            ["__name"] = "march2",
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
                ["boost_factor"] = {
                    ["value"] = 0,
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
        [9] = {
            ["__name"] = "march_smoke",
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
                ["boost_factor"] = {
                    ["value"] = 0,
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
            ["__name"] = "",
            ["__type"] = "wColliderBlockDescriptor",
            ["__parameters"] = {
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [12] = {
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
        [13] = {
            ["outPorts"] = {
                [1] = {
                    ["name"] = "booster",
                    ["type"] = 1,
                },
                [2] = {
                    ["name"] = "march",
                    ["type"] = 1,
                },
                [3] = {
                    ["name"] = "march2",
                    ["type"] = 1,
                },
                [4] = {
                    ["name"] = "march_smoke",
                    ["type"] = 1,
                },
            },
            ["inputs"] = {
            },
            ["__parameters"] = {
                ["File name"] = {
                    ["value"] = "control_shturm.lua",
                },
                ["march2_start"] = {
                    ["value"] = 2.14,
                },
                ["march_smoke_start"] = {
                    ["value"] = 4.64,
                },
                ["boost_start"] = {
                    ["value"] = 0.001,
                },
                ["march_start"] = {
                    ["value"] = 0.14,
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
                [3] = {
                    ["name"] = "march2_start",
                    ["type"] = 1,
                },
                [4] = {
                    ["name"] = "march_smoke_start",
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
        [14] = {
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
                    ["coeff"] = 1,
                },
                [3] = {
                    ["name"] = "input3",
                    ["coeff"] = 1,
                },
                [4] = {
                    ["name"] = "input4",
                    ["coeff"] = 1,
                },
            },
            ["__parameters"] = {
            },
        },
        [16] = {
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
                [3] = {
                    ["name"] = "input3",
                    ["coeff"] = 1,
                },
                [4] = {
                    ["name"] = "input4",
                    ["coeff"] = 1,
                },
            },
            ["__parameters"] = {
            },
        },
        [17] = {
            ["__name"] = "fm",
            ["__type"] = "wFMspinStabDescriptor",
            ["__parameters"] = {
                ["A"] = {
                },
                ["wind_time"] = {
                    ["value"] = 0,
                },
                ["cx_coeff"] = {
                },
                ["dCydA"] = {
                },
                ["caliber"] = {
                },
                ["dt"] = {
                    ["value"] = 0.01,
                },
                ["I"] = {
                },
                ["mass"] = {
                },
                ["wind_sigma"] = {
                    ["value"] = 0,
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
                ["freq"] = {
                },
                ["maxAoa"] = {
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
                    ["value"] = 0.2,
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
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
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
                    ["coeff"] = -1,
                },
            },
            ["__parameters"] = {
            },
        },
        [22] = {
            ["__name"] = "",
            ["__type"] = "wBlockGo2doubleOntimerDescriptor",
            ["__parameters"] = {
                ["K_t"] = {
                    ["value"] = 5,
                },
                ["start_val"] = {
                    ["value"] = 0,
                },
                ["use_start_val"] = {
                    ["value"] = 0,
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
            ["input_block"] = 11,
            ["output_lead"] = "col. pos",
            ["output_block"] = 10,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 11,
            ["output_lead"] = "object_id",
            ["output_block"] = 10,
        },
        [3] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 11,
            ["output_lead"] = "collision",
            ["output_block"] = 10,
        },
        [4] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 11,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [5] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 6,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [6] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 6,
            ["output_lead"] = "march",
            ["output_block"] = 12,
        },
        [7] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 10,
        },
        [8] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 10,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [9] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 9,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [10] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 13,
            ["output_lead"] = "explode",
            ["output_block"] = 9,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 13,
            ["output_lead"] = "explosion_pos",
            ["output_block"] = 9,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 13,
            ["output_lead"] = "int_zero",
            ["output_block"] = 1,
        },
        [13] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 13,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [14] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "explode",
            ["output_block"] = 9,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "armed",
            ["input_block"] = 9,
            ["output_lead"] = "fuse_armed",
            ["output_block"] = -666,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "delay",
            ["input_block"] = 9,
            ["output_lead"] = "fuse_delay",
            ["output_block"] = -666,
        },
        [17] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 13,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [18] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 11,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [19] = {
            ["port"] = 1,
            ["input_lead"] = "suppres_march",
            ["input_block"] = 12,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 11,
            ["output_lead"] = "normal",
            ["output_block"] = 10,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 13,
            ["output_lead"] = "vec_zero",
            ["output_block"] = 1,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 11,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 10,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 13,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 10,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 10,
            ["output_lead"] = "check_obj",
            ["output_block"] = 17,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 14,
            ["output_lead"] = "thrust",
            ["output_block"] = 5,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 14,
            ["output_lead"] = "thrust",
            ["output_block"] = 6,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 15,
            ["output_lead"] = "fuel",
            ["output_block"] = 5,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 15,
            ["output_lead"] = "fuel",
            ["output_block"] = 6,
        },
        [29] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 5,
            ["output_lead"] = "booster",
            ["output_block"] = 12,
        },
        [30] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 5,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "Cone_origin",
            ["input_block"] = 2,
            ["output_lead"] = "cone_origin",
            ["output_block"] = -666,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "Cone_dir",
            ["input_block"] = 2,
            ["output_lead"] = "cone_dir",
            ["output_block"] = -666,
        },
        [33] = {
            ["port"] = 0,
            ["input_lead"] = "has_tg_id",
            ["input_block"] = 2,
            ["output_lead"] = "has_target_id",
            ["output_block"] = -666,
        },
        [34] = {
            ["port"] = 0,
            ["input_lead"] = "tg_point",
            ["input_block"] = 2,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 16,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 16,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 16,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 16,
            ["output_lead"] = "output",
            ["output_block"] = 14,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 16,
            ["output_lead"] = "output",
            ["output_block"] = 15,
        },
        [40] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 16,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [41] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 16,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [42] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 16,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [43] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 16,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 16,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 16,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 16,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 16,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 16,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 16,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 16,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 16,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
            ["output_lead"] = "vel",
            ["output_block"] = 16,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 6,
            ["output_lead"] = "vel",
            ["output_block"] = 16,
        },
        [54] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 2,
            ["output_lead"] = "pos",
            ["output_block"] = 16,
        },
        [55] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 10,
            ["output_lead"] = "pos",
            ["output_block"] = 16,
        },
        [56] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 11,
            ["output_lead"] = "vel",
            ["output_block"] = 16,
        },
        [57] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 13,
            ["output_lead"] = "vel",
            ["output_block"] = 16,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 9,
            ["output_lead"] = "pos",
            ["output_block"] = 16,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 3,
            ["output_lead"] = "has_signal",
            ["output_block"] = 2,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "cone_origin",
            ["input_block"] = 3,
            ["output_lead"] = "Cone_origin",
            ["output_block"] = 2,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "cone_dir",
            ["input_block"] = 3,
            ["output_lead"] = "Cone_dir",
            ["output_block"] = 2,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "cone_near_dist",
            ["input_block"] = 3,
            ["output_lead"] = "Cone_near_dist",
            ["output_block"] = 2,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "cone_near_rad",
            ["input_block"] = 3,
            ["output_lead"] = "Cone_near_rad",
            ["output_block"] = 2,
        },
        [64] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 3,
            ["output_lead"] = "pos",
            ["output_block"] = 16,
        },
        [65] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 3,
            ["output_lead"] = "vel",
            ["output_block"] = 16,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 16,
            ["output_lead"] = "has_signal",
            ["output_block"] = 3,
        },
        [67] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 3,
            ["output_lead"] = "real_rot",
            ["output_block"] = 16,
        },
        [68] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 2,
            ["output_lead"] = "wings_out",
            ["output_block"] = 16,
        },
        [69] = {
            ["port"] = 0,
            ["input_lead"] = "inp_vec_",
            ["input_block"] = 4,
            ["output_lead"] = "fins",
            ["output_block"] = 3,
        },
        [70] = {
            ["port"] = 0,
            ["input_lead"] = "pos_",
            ["input_block"] = 4,
            ["output_lead"] = "pos",
            ["output_block"] = 16,
        },
        [71] = {
            ["port"] = 0,
            ["input_lead"] = "rot_",
            ["input_block"] = 4,
            ["output_lead"] = "rot",
            ["output_block"] = 16,
        },
        [72] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 16,
            ["output_lead"] = "output_vec_",
            ["output_block"] = 4,
        },
        [73] = {
            ["port"] = 0,
            ["input_lead"] = "input3",
            ["input_block"] = 14,
            ["output_lead"] = "thrust",
            ["output_block"] = 7,
        },
        [74] = {
            ["port"] = 0,
            ["input_lead"] = "input4",
            ["input_block"] = 14,
            ["output_lead"] = "thrust",
            ["output_block"] = 8,
        },
        [75] = {
            ["port"] = 0,
            ["input_lead"] = "input3",
            ["input_block"] = 15,
            ["output_lead"] = "fuel",
            ["output_block"] = 7,
        },
        [76] = {
            ["port"] = 0,
            ["input_lead"] = "input4",
            ["input_block"] = 15,
            ["output_lead"] = "fuel",
            ["output_block"] = 8,
        },
        [77] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 7,
            ["output_lead"] = "march2",
            ["output_block"] = 12,
        },
        [78] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 8,
            ["output_lead"] = "march_smoke",
            ["output_block"] = 12,
        },
        [79] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 7,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [80] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 8,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [81] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 7,
            ["output_lead"] = "vel",
            ["output_block"] = 16,
        },
        [82] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 8,
            ["output_lead"] = "vel",
            ["output_block"] = 16,
        },
        [83] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 18,
            ["output_lead"] = "thrust",
            ["output_block"] = 6,
        },
        [84] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 18,
            ["output_lead"] = "thrust",
            ["output_block"] = 7,
        },
        [85] = {
            ["port"] = 0,
            ["input_lead"] = "march_thrust",
            ["input_block"] = 16,
            ["output_lead"] = "output",
            ["output_block"] = 18,
        },
        [86] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 10,
            ["output_lead"] = "wings_out",
            ["output_block"] = 16,
        },
        [87] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 16,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [88] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 16,
        },
        [89] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 19,
            ["output_lead"] = "wings_out",
            ["output_block"] = 16,
        },
        [90] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 20,
            ["output_lead"] = "double_one",
            ["output_block"] = 1,
        },
        [91] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_2",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 20,
        },
        [92] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 21,
            ["output_lead"] = "output",
            ["output_block"] = 19,
        },
        [93] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 20,
            ["output_lead"] = "output",
            ["output_block"] = 21,
        },
        [94] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_1",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 19,
        },
        [95] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_15",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 19,
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
            [10] = {
                ["name"] = "draw_arg_1",
                ["type"] = 2,
            },
            [11] = {
                ["name"] = "draw_arg_15",
                ["type"] = 2,
            },
        },
    },
}