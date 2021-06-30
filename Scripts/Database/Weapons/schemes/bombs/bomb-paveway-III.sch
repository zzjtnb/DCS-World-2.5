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
                    ["value"] = 1,
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
                    ["value"] = 0.01,
                },
                ["I"] = {
                },
                ["I_x"] = {
                },
            },
        },
        [4] = {
            ["__name"] = "conv",
            ["__type"] = "wSeekerLocConvDescriptor",
            ["__parameters"] = {
                ["dt"] = {
                    ["value"] = 0.01,
                },
            },
        },
        [5] = {
            ["__name"] = "autopilot",
            ["__type"] = "wWCtrlAutopilotDescriptor",
            ["__parameters"] = {
                ["Kix"] = {
                },
                ["Kd"] = {
                },
                ["PN_dist_data"] = {
                },
                ["Ki"] = {
                },
                ["w_limit"] = {
                },
                ["Ks"] = {
                },
                ["dt"] = {
                    ["value"] = 0.01,
                },
                ["conv_input"] = {
                },
                ["rotated_WLOS_input"] = {
                },
                ["K"] = {
                },
                ["op_time"] = {
                    ["value"] = 9999,
                },
                ["Kx"] = {
                },
                ["Kw"] = {
                },
                ["delay"] = {
                },
                ["fins_limit"] = {
                },
            },
        },
        [6] = {
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
                    ["value"] = 0.01,
                },
            },
        },
        [7] = {
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
        [8] = {
            ["__name"] = "delay",
            ["__type"] = "wBlockDelayTriggerWireDescriptor",
            ["__parameters"] = {
                ["delay_par"] = {
                    ["value"] = 1,
                },
                ["dt"] = {
                    ["value"] = 0.01,
                },
            },
        },
        [9] = {
            ["__name"] = "seeker",
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
            ["input_lead"] = "id",
            ["input_block"] = 5,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 6,
            ["output_lead"] = "normal",
            ["output_block"] = 5,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 6,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 5,
        },
        [8] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 2,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 2,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 2,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [12] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 2,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [13] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 2,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [14] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 2,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [15] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 2,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [16] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 2,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 2,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 2,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 6,
            ["output_lead"] = "vel",
            ["output_block"] = 2,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 5,
            ["output_lead"] = "wings_out",
            ["output_block"] = 2,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 2,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 2,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 2,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 2,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 2,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 2,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "mis_omega",
            ["input_block"] = 3,
            ["output_lead"] = "omega",
            ["output_block"] = 2,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "seeker_rot",
            ["output_block"] = 3,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 5,
            ["output_lead"] = "triggered",
            ["output_block"] = 7,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 3,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 4,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [33] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 4,
            ["output_lead"] = "omega",
            ["output_block"] = 2,
        },
        [34] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 4,
            ["output_lead"] = "real_rot",
            ["output_block"] = 2,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 2,
            ["output_lead"] = "fins",
            ["output_block"] = 4,
        },
        [36] = {
            ["port"] = 1,
            ["input_lead"] = "gr_parent",
            ["input_block"] = 8,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "target_ID",
            ["input_block"] = 8,
            ["output_lead"] = "target_ID",
            ["output_block"] = -666,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "launcher_id",
            ["input_block"] = 8,
            ["output_lead"] = "launcher",
            ["output_block"] = -666,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "directly_set_target",
            ["input_block"] = 8,
            ["output_lead"] = "target_pos",
            ["output_block"] = -666,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "laser_code",
            ["input_block"] = 8,
            ["output_lead"] = "laser_code",
            ["output_block"] = -666,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "have_directly_set_target",
            ["input_block"] = 8,
            ["output_lead"] = "target",
            ["output_block"] = -666,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 8,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "elec_power",
            ["input_block"] = 8,
            ["output_lead"] = "active",
            ["output_block"] = -666,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 8,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 8,
            ["output_lead"] = "vel_rot",
            ["output_block"] = 2,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "target_LOS",
            ["input_block"] = -666,
            ["output_lead"] = "LOS",
            ["output_block"] = 8,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "LOS",
            ["input_block"] = 3,
            ["output_lead"] = "LOS",
            ["output_block"] = 8,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "has_signal",
            ["output_block"] = 8,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 2,
            ["output_lead"] = "has_signal",
            ["output_block"] = 8,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_FOV",
            ["input_block"] = -666,
            ["output_lead"] = "FOV",
            ["output_block"] = 8,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 2,
            ["output_lead"] = "double_0",
            ["output_block"] = 1,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 2,
            ["output_lead"] = "double_0",
            ["output_block"] = 1,
        },
        [53] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 6,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [54] = {
            ["port"] = 1,
            ["input_lead"] = "fuze_delay",
            ["input_block"] = 6,
            ["output_lead"] = "fuze_delay",
            ["output_block"] = -666,
        },
        [55] = {
            ["port"] = 1,
            ["input_lead"] = "warhead_pos",
            ["input_block"] = 2,
            ["output_lead"] = "warhead_pos",
            ["output_block"] = 6,
        },
        [56] = {
            ["port"] = 1,
            ["input_lead"] = "rebound",
            ["input_block"] = 2,
            ["output_lead"] = "rebound",
            ["output_block"] = 6,
        },
        [57] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "died",
            ["output_block"] = 6,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "dist",
            ["input_block"] = 4,
            ["output_lead"] = "target_dist",
            ["output_block"] = 8,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "loc_W_LOS",
            ["input_block"] = 4,
            ["output_lead"] = "loc_WLOS_dirs",
            ["output_block"] = 3,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "loc_LOS",
            ["input_block"] = 4,
            ["output_lead"] = "loc_LOS_dirs",
            ["output_block"] = 3,
        },
        [61] = {
            ["port"] = 0,
            ["input_lead"] = "mis_rot",
            ["input_block"] = 3,
            ["output_lead"] = "real_rot",
            ["output_block"] = 2,
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
                ["name"] = "fuze_delay",
                ["type"] = 2,
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
            [6] = {
                ["name"] = "laser_code",
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
        },
    },
}