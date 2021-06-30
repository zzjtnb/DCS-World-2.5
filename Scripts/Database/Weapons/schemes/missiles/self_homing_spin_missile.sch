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
        [4] = {
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
        [5] = {
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
        [6] = {
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
                    ["value"] = 0.02,
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
        [7] = {
            ["__name"] = "fuze_proximity",
            ["__type"] = "wFuzeProximityDescriptor",
            ["__parameters"] = {
                ["radius"] = {
                },
                ["delay_large"] = {
                    ["value"] = 0.04,
                },
                ["ignore_inp_armed"] = {
                },
                ["arm_delay"] = {
                    ["value"] = 0.8,
                },
                ["delay_small"] = {
                    ["value"] = 0.02,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [8] = {
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
        [9] = {
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
        [10] = {
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
        [13] = {
            ["__name"] = "simple_IR_seeker",
            ["__type"] = "wIRSeekerDescriptor",
            ["__parameters"] = {
                ["abs_err_val"] = {
                },
                ["GimbLim"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["cooled"] = {
                },
                ["FOV"] = {
                },
                ["opTime"] = {
                },
                ["ground_err_k"] = {
                },
                ["flag_dist"] = {
                },
                ["target_H_min"] = {
                },
                ["delay"] = {
                },
                ["sensitivity"] = {
                },
            },
        },
        [14] = {
            ["__name"] = "simple_gyrostab_seeker",
            ["__type"] = "wSimpleGyroStabSeekerDescriptor",
            ["__parameters"] = {
                ["omega_max"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
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
            },
            ["__parameters"] = {
            },
        },
        [17] = {
            ["__name"] = "autopilot",
            ["__type"] = "wPNaAutopilotDescriptor",
            ["__parameters"] = {
                ["Kg"] = {
                },
                ["K"] = {
                },
                ["fin2_coeff"] = {
                },
                ["delay"] = {
                },
                ["finsLimit"] = {
                },
                ["Ki"] = {
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
            ["input_block"] = 9,
            ["output_lead"] = "col. pos",
            ["output_block"] = 8,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 9,
            ["output_lead"] = "object_id",
            ["output_block"] = 8,
        },
        [3] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 9,
            ["output_lead"] = "collision",
            ["output_block"] = 8,
        },
        [4] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 9,
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
            ["output_block"] = 2,
        },
        [7] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 8,
        },
        [8] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 8,
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
            ["input_lead"] = "obj_id",
            ["input_block"] = 10,
            ["output_lead"] = "int_zero",
            ["output_block"] = 1,
        },
        [12] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 10,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [13] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "explode",
            ["output_block"] = 6,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "armed",
            ["input_block"] = 6,
            ["output_lead"] = "fuse_armed",
            ["output_block"] = -666,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "delay",
            ["input_block"] = 6,
            ["output_lead"] = "fuse_delay",
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
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 9,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [18] = {
            ["port"] = 1,
            ["input_lead"] = "suppres_march",
            ["input_block"] = 2,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 9,
            ["output_lead"] = "normal",
            ["output_block"] = 8,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 10,
            ["output_lead"] = "vec_zero",
            ["output_block"] = 1,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 9,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 8,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 10,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 8,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 8,
            ["output_lead"] = "check_obj",
            ["output_block"] = 7,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 13,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 14,
            ["output_lead"] = "thrust",
            ["output_block"] = 3,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 14,
            ["output_lead"] = "thrust",
            ["output_block"] = 4,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 15,
            ["output_lead"] = "fuel",
            ["output_block"] = 3,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 15,
            ["output_lead"] = "fuel",
            ["output_block"] = 4,
        },
        [29] = {
            ["port"] = 1,
            ["input_lead"] = "on",
            ["input_block"] = 3,
            ["output_lead"] = "booster",
            ["output_block"] = 2,
        },
        [30] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 3,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 5,
            ["output_lead"] = "output",
            ["output_block"] = 14,
        },
        [32] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [33] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [34] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 5,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [35] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 5,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [36] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 5,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 5,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 5,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 5,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 5,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 5,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 5,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 5,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 5,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 5,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 5,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 5,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 5,
            ["output_lead"] = "output",
            ["output_block"] = 15,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 3,
            ["output_lead"] = "vel",
            ["output_block"] = 5,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 4,
            ["output_lead"] = "vel",
            ["output_block"] = 5,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 5,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 13,
            ["output_lead"] = "real_rot",
            ["output_block"] = 5,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 8,
            ["output_lead"] = "wings_out",
            ["output_block"] = 5,
        },
        [54] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 8,
            ["output_lead"] = "pos",
            ["output_block"] = 5,
        },
        [55] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 9,
            ["output_lead"] = "vel",
            ["output_block"] = 5,
        },
        [56] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 10,
            ["output_lead"] = "vel",
            ["output_block"] = 5,
        },
        [57] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 6,
            ["output_lead"] = "pos",
            ["output_block"] = 5,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "omega_LOS",
            ["input_block"] = 16,
            ["output_lead"] = "omega_LOS",
            ["output_block"] = 13,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 16,
            ["output_lead"] = "real_rot",
            ["output_block"] = 5,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 16,
            ["output_lead"] = "omega",
            ["output_block"] = 5,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 5,
            ["output_lead"] = "fins",
            ["output_block"] = 16,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "march_thrust",
            ["input_block"] = 5,
            ["output_lead"] = "output",
            ["output_block"] = 14,
        },
        [63] = {
            ["port"] = 1,
            ["input_lead"] = "time_since_birth",
            ["input_block"] = 9,
            ["output_lead"] = "time_since_birth",
            ["output_block"] = -666,
        },
        [64] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "died",
            ["output_block"] = 9,
        },
        [65] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 10,
            ["output_lead"] = "explosion_pos",
            ["output_block"] = 6,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 12,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [67] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 12,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 13,
        },
        [68] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 12,
            ["output_lead"] = "pos",
            ["output_block"] = 5,
        },
        [69] = {
            ["port"] = 0,
            ["input_lead"] = "elec_power",
            ["input_block"] = 12,
            ["output_lead"] = "power",
            ["output_block"] = 11,
        },
        [70] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 12,
            ["output_lead"] = "target",
            ["output_block"] = -666,
        },
        [71] = {
            ["port"] = 0,
            ["input_lead"] = "target_pos",
            ["input_block"] = 12,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [72] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 12,
        },
        [73] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "LOS",
            ["output_block"] = 12,
        },
        [74] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_FOV",
            ["input_block"] = -666,
            ["output_lead"] = "FOV",
            ["output_block"] = 12,
        },
        [75] = {
            ["port"] = 0,
            ["input_lead"] = "mindist_reached",
            ["input_block"] = 16,
            ["output_lead"] = "mindist_flag",
            ["output_block"] = 12,
        },
        [76] = {
            ["port"] = 0,
            ["input_lead"] = "vLOS",
            ["input_block"] = 16,
            ["output_lead"] = "LOS",
            ["output_block"] = 12,
        },
        [77] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 13,
            ["output_lead"] = "LOS",
            ["output_block"] = 12,
        },
        [78] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 13,
            ["output_lead"] = "has_signal",
            ["output_block"] = 12,
        },
        [79] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 16,
            ["output_lead"] = "has_signal",
            ["output_block"] = 12,
        },
        [80] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 5,
            ["output_lead"] = "has_signal",
            ["output_block"] = 12,
        },
        [81] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = 16,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 13,
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
                ["name"] = "time_since_birth",
                ["type"] = 2,
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
        },
    },
}