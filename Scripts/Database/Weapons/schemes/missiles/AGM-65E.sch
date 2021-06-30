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
        [5] = {
            ["__name"] = "march",
            ["__type"] = "wEngineSFDescriptor",
            ["__parameters"] = {
                ["smoke_color"] = {
                },
                ["custom_smoke_dissipation_factor"] = {
                    ["value"] = 0.2,
                },
                ["nozzle_position"] = {
                    ["value"] = {
                        [1] = {
                            [1] = -1.28,
                            [2] = 0,
                            [3] = 0,
                        },
                    },
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["effect_type"] = {
                },
                ["impulse"] = {
                    ["value"] = 189.84,
                },
                ["tail_width"] = {
                    ["value"] = 0.25,
                },
                ["nozzle_exit_area"] = {
                },
                ["fuel_mass"] = {
                    ["value"] = 28.58,
                },
                ["work_time"] = {
                    ["value"] = 3.5,
                },
                ["boost_time"] = {
                    ["value"] = 0.5,
                },
                ["smoke_transparency"] = {
                },
                ["boost_factor"] = {
                    ["value"] = 5.055,
                },
                ["fuel_rate_data"] = {
                },
                ["min_start_speed"] = {
                },
                ["nozzle_orientationXYZ"] = {
                    ["value"] = {
                        [1] = {
                            [1] = 0,
                            [2] = 0,
                            [3] = 0,
                        },
                    },
                },
                ["max_effect_length"] = {
                },
            },
        },
        [6] = {
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
        [7] = {
            ["__name"] = "",
            ["__type"] = "wSeekerLocConvDescriptor",
            ["__parameters"] = {
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [8] = {
            ["__name"] = "PN_autopilot",
            ["__type"] = "wMaverickAutopilotDescriptor",
            ["__parameters"] = {
                ["NR"] = {
                    ["value"] = 10,
                },
                ["Kx"] = {
                },
                ["GBias_after_target_drop"] = {
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
                    ["value"] = 105,
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
                    ["value"] = {
                        [1] = 1,
                        [2] = 1,
                        [3] = 2,
                        [4] = 1,
                    },
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
        [9] = {
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
        [10] = {
            ["__name"] = "Collider",
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
            ["__name"] = "laser_spot_seeker",
            ["__type"] = "wLaserSpotSeekerDescriptor",
            ["__parameters"] = {
                ["FOV"] = {
                },
                ["max_dist_to_emitter"] = {
                },
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
                ["max_seeker_range"] = {
                },
                ["delay"] = {
                    ["value"] = 0,
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
            },
        },
        [15] = {
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
                    ["value"] = 0.7854,
                },
                ["rotate_z"] = {
                    ["value"] = 0,
                },
                ["mult_z"] = {
                    ["value"] = 3,
                },
                ["mult_y"] = {
                    ["value"] = -3,
                },
            },
        },
        [16] = {
            ["__name"] = "fins_to_arg",
            ["__type"] = "wVec3dToDoubleDescriptor",
            ["__parameters"] = {
                ["mult_z"] = {
                    ["value"] = -1,
                },
                ["mult_y"] = {
                    ["value"] = -1,
                },
                ["mult_x"] = {
                    ["value"] = 0,
                },
            },
        },
        [17] = {
            ["__name"] = "const2",
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
    },
    ["connections"] = {
        [1] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 11,
            ["output_lead"] = "col. pos",
            ["output_block"] = 9,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 11,
            ["output_lead"] = "object_id",
            ["output_block"] = 9,
        },
        [3] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 11,
            ["output_lead"] = "collision",
            ["output_block"] = 9,
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
            ["input_block"] = 4,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [6] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 4,
            ["output_lead"] = "march",
            ["output_block"] = 3,
        },
        [7] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 9,
        },
        [8] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 9,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [9] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 10,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [10] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 12,
            ["output_lead"] = "explode",
            ["output_block"] = 10,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 12,
            ["output_lead"] = "explosion_pos",
            ["output_block"] = 10,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 12,
            ["output_lead"] = "int_zero",
            ["output_block"] = 1,
        },
        [13] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 12,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [14] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "explode",
            ["output_block"] = 10,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "armed",
            ["input_block"] = 10,
            ["output_lead"] = "fuse_armed",
            ["output_block"] = -666,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "delay",
            ["input_block"] = 10,
            ["output_lead"] = "fuse_delay",
            ["output_block"] = -666,
        },
        [17] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 12,
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
            ["input_block"] = 3,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 11,
            ["output_lead"] = "normal",
            ["output_block"] = 9,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 12,
            ["output_lead"] = "vec_zero",
            ["output_block"] = 1,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 11,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 9,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 12,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 9,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 9,
            ["output_lead"] = "check_obj",
            ["output_block"] = 8,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 13,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "elec_power",
            ["input_block"] = 13,
            ["output_lead"] = "power",
            ["output_block"] = 2,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "LOS",
            ["output_block"] = 13,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_FOV",
            ["input_block"] = -666,
            ["output_lead"] = "FOV",
            ["output_block"] = 13,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "Gd",
            ["input_block"] = -666,
            ["output_lead"] = "Gd",
            ["output_block"] = 13,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos_out",
            ["input_block"] = -666,
            ["output_lead"] = "target_pos",
            ["output_block"] = 13,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "target_id_out",
            ["input_block"] = -666,
            ["output_lead"] = "target_id",
            ["output_block"] = 13,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 13,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [33] = {
            ["port"] = 0,
            ["input_lead"] = "have_directly_set_target",
            ["input_block"] = 13,
            ["output_lead"] = "target",
            ["output_block"] = -666,
        },
        [34] = {
            ["port"] = 0,
            ["input_lead"] = "directly_set_target",
            ["input_block"] = 13,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "laser_code",
            ["input_block"] = 13,
            ["output_lead"] = "laser_code",
            ["output_block"] = -666,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "vec",
            ["input_block"] = 15,
            ["output_lead"] = "mvec",
            ["output_block"] = 14,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_20",
            ["input_block"] = -666,
            ["output_lead"] = "y",
            ["output_block"] = 15,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_22",
            ["input_block"] = -666,
            ["output_lead"] = "z",
            ["output_block"] = 15,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 5,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 5,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 5,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 5,
            ["output_lead"] = "thrust",
            ["output_block"] = 4,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 5,
            ["output_lead"] = "fuel",
            ["output_block"] = 4,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 5,
            ["output_lead"] = "has_signal",
            ["output_block"] = 13,
        },
        [45] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [46] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [47] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 5,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [48] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 5,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [49] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 5,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 5,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 4,
            ["output_lead"] = "pos",
            ["output_block"] = 5,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 9,
            ["output_lead"] = "pos",
            ["output_block"] = 5,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 10,
            ["output_lead"] = "pos",
            ["output_block"] = 5,
        },
        [54] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 13,
            ["output_lead"] = "pos",
            ["output_block"] = 5,
        },
        [55] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 4,
            ["output_lead"] = "vel",
            ["output_block"] = 5,
        },
        [56] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 11,
            ["output_lead"] = "vel",
            ["output_block"] = 5,
        },
        [57] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 5,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 12,
            ["output_lead"] = "vel",
            ["output_block"] = 5,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 5,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 5,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 5,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 5,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 5,
        },
        [64] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 5,
        },
        [65] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 5,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 9,
            ["output_lead"] = "wings_out",
            ["output_block"] = 5,
        },
        [67] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 6,
            ["output_lead"] = "has_signal",
            ["output_block"] = 13,
        },
        [68] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 6,
            ["output_lead"] = "LOS",
            ["output_block"] = 13,
        },
        [69] = {
            ["port"] = 0,
            ["input_lead"] = "mis_rot",
            ["input_block"] = 6,
            ["output_lead"] = "real_rot",
            ["output_block"] = 5,
        },
        [70] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 6,
        },
        [71] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 7,
            ["output_lead"] = "has_signal",
            ["output_block"] = 13,
        },
        [72] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 5,
            ["output_lead"] = "fins",
            ["output_block"] = 7,
        },
        [73] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 13,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 6,
        },
        [74] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 7,
            ["output_lead"] = "vel",
            ["output_block"] = 5,
        },
        [75] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 7,
            ["output_lead"] = "omega",
            ["output_block"] = 5,
        },
        [76] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 7,
            ["output_lead"] = "real_rot",
            ["output_block"] = 5,
        },
        [77] = {
            ["port"] = 0,
            ["input_lead"] = "loc_LOS",
            ["input_block"] = 7,
            ["output_lead"] = "loc_LOS",
            ["output_block"] = 6,
        },
        [78] = {
            ["port"] = 1,
            ["input_lead"] = "base_roll",
            ["input_block"] = 7,
            ["output_lead"] = "base_roll",
            ["output_block"] = -666,
        },
        [79] = {
            ["port"] = 1,
            ["input_lead"] = "lockon_roll_diff",
            ["input_block"] = 7,
            ["output_lead"] = "lockon_roll_diff",
            ["output_block"] = -666,
        },
        [80] = {
            ["port"] = 0,
            ["input_lead"] = "dist",
            ["input_block"] = 7,
            ["output_lead"] = "double_0",
            ["output_block"] = 16,
        },
        [81] = {
            ["port"] = 0,
            ["input_lead"] = "loc_W_LOS",
            ["input_block"] = 7,
            ["output_lead"] = "loc_cLWLOS",
            ["output_block"] = 6,
        },
        [82] = {
            ["port"] = 0,
            ["input_lead"] = "mis_omega",
            ["input_block"] = 6,
            ["output_lead"] = "omega",
            ["output_block"] = 5,
        },
        [83] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 13,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [84] = {
            ["port"] = 0,
            ["input_lead"] = "launcher_id",
            ["input_block"] = 13,
            ["output_lead"] = "launcher",
            ["output_block"] = -666,
        },
        [85] = {
            ["port"] = 0,
            ["input_lead"] = "target_ID",
            ["input_block"] = 13,
            ["output_lead"] = "target_ID",
            ["output_block"] = -666,
        },
        [86] = {
            ["port"] = 0,
            ["input_lead"] = "vec",
            ["input_block"] = 14,
            ["output_lead"] = "draw_fins",
            ["output_block"] = 5,
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
                ["name"] = "laser_code",
                ["type"] = 6,
            },
            [7] = {
                ["name"] = "launcher",
                ["type"] = 6,
            },
            [8] = {
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
                ["name"] = "Gd",
                ["type"] = 3,
            },
            [14] = {
                ["name"] = "target_pos_out",
                ["type"] = 3,
            },
            [15] = {
                ["name"] = "target_id_out",
                ["type"] = 6,
            },
            [16] = {
                ["name"] = "draw_arg_20",
                ["type"] = 2,
            },
            [17] = {
                ["name"] = "draw_arg_22",
                ["type"] = 2,
            },
        },
    },
}