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
                    ["name"] = "Vec0",
                    ["type"] = 3,
                },
                [2] = {
                    ["name"] = "int0",
                    ["type"] = 5,
                },
            },
            ["__parameters"] = {
                ["int0"] = {
                    ["value"] = 0,
                },
                ["Vec0"] = {
                    ["value"] = {
                        [1] = 0,
                        [2] = 0,
                        [3] = 0,
                    },
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
            ["__name"] = "engine",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "double_zero",
                    ["type"] = 1,
                },
                [2] = {
                    ["name"] = "thrust",
                    ["type"] = 1,
                },
                [3] = {
                    ["name"] = "double_one",
                    ["type"] = 1,
                },
                [4] = {
                    ["name"] = "ta_req_vel",
                    ["type"] = 1,
                },
            },
            ["__parameters"] = {
                ["thrust"] = {
                    ["value"] = 9900,
                },
                ["double_zero"] = {
                    ["value"] = 0,
                },
                ["ta_req_vel"] = {
                    ["value"] = 30,
                },
                ["double_one"] = {
                    ["value"] = 1,
                },
            },
        },
        [5] = {
            ["__name"] = "fm",
            ["__type"] = "wAFMTorpedoDescriptor",
            ["__parameters"] = {
                ["splash_dt"] = {
                },
                ["addDeplCx0"] = {
                },
                ["dCydA"] = {
                },
                ["caliber"] = {
                },
                ["table_scale"] = {
                },
                ["int_rho_y"] = {
                },
                ["old_cx_coeff"] = {
                },
                ["Cx0"] = {
                },
                ["ideal_fins"] = {
                    ["value"] = 1,
                },
                ["Sw"] = {
                },
                ["rho_w"] = {
                },
                ["wingsDeplDelay"] = {
                },
                ["A"] = {
                },
                ["wind_time"] = {
                },
                ["Sww"] = {
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
                ["splash_time"] = {
                    ["value"] = 0.02,
                },
                ["L"] = {
                },
                ["fins_val_div"] = {
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
        [6] = {
            ["__name"] = "autopilot",
            ["__type"] = "wDepthCtrlAutopilotDescriptor",
            ["__parameters"] = {
                ["v_vel_limit"] = {
                },
                ["steady_depth"] = {
                },
                ["Kdh"] = {
                },
                ["Kdv"] = {
                },
                ["Kiv"] = {
                },
                ["hKp_err_croll"] = {
                },
                ["vel_proj_div"] = {
                },
                ["Kph"] = {
                },
                ["draw_fins_conv"] = {
                },
                ["hor_spir_power"] = {
                },
                ["hor_spir_period"] = {
                },
                ["x_fins_limit"] = {
                },
                ["hor_spir_on_time"] = {
                },
                ["roll_diff_correction"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["fins_limit"] = {
                },
                ["Kih"] = {
                },
                ["delay"] = {
                },
                ["Kpv"] = {
                },
            },
        },
        [7] = {
            ["__name"] = "collider",
            ["__type"] = "wColliderBlockDescriptor",
            ["__parameters"] = {
                ["coll_delay"] = {
                    ["value"] = 5,
                },
                ["del_y"] = {
                    ["value"] = -35,
                },
                ["check_water"] = {
                    ["value"] = 0,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [8] = {
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
        [9] = {
            ["__name"] = "",
            ["__type"] = "wBlockMinValDescriptor<double>",
            ["inputs"] = {
                [1] = {
                    ["name"] = "input1",
                },
                [2] = {
                    ["name"] = "active1",
                },
            },
            ["__parameters"] = {
            },
        },
        [10] = {
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
        [11] = {
            ["__name"] = "",
            ["__type"] = "wFuzeProximityDescriptor",
            ["__parameters"] = {
                ["radius"] = {
                    ["value"] = 3,
                },
                ["delay_large"] = {
                    ["value"] = 0.2,
                },
                ["ignore_inp_armed"] = {
                    ["value"] = 0,
                },
                ["arm_delay"] = {
                    ["value"] = 5,
                },
                ["delay_small"] = {
                    ["value"] = 0.16,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [12] = {
            ["__name"] = "warhead_water",
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
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [14] = {
            ["__name"] = "conv",
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
        [15] = {
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
                    ["value"] = 0,
                },
                ["activate_by_port"] = {
                    ["value"] = 1,
                },
                ["K_t"] = {
                    ["value"] = 4,
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
            ["output_block"] = 6,
        },
        [2] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 6,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [3] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_0",
            ["input_block"] = -666,
            ["output_lead"] = "double_zero",
            ["output_block"] = 3,
        },
        [4] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 4,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [5] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 4,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 4,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [7] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 4,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [8] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 4,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [9] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 4,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [10] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 4,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 4,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 4,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 4,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 6,
            ["output_lead"] = "pos",
            ["output_block"] = 4,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 4,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "seeker_rot",
            ["input_block"] = -666,
            ["output_lead"] = "vel_rot",
            ["output_block"] = 4,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "An",
            ["input_block"] = -666,
            ["output_lead"] = "An",
            ["output_block"] = 4,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Thrust",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Thrust",
            ["output_block"] = 4,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_AoA",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_AoA",
            ["output_block"] = 4,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_Mass",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_Mass",
            ["output_block"] = 4,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_N",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_N",
            ["output_block"] = 4,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "draw_pos",
            ["output_block"] = 4,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 6,
            ["output_lead"] = "wings_out",
            ["output_block"] = 4,
        },
        [24] = {
            ["port"] = 1,
            ["input_lead"] = "rail",
            ["input_block"] = 4,
            ["output_lead"] = "constraint",
            ["output_block"] = -666,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 6,
            ["output_lead"] = "wings_out",
            ["output_block"] = 4,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "dbg_K",
            ["input_block"] = -666,
            ["output_lead"] = "dbg_K",
            ["output_block"] = 4,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 7,
            ["output_lead"] = "vel",
            ["output_block"] = 4,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 7,
            ["output_lead"] = "normal",
            ["output_block"] = 6,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 7,
            ["output_lead"] = "col. pos",
            ["output_block"] = 6,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 7,
            ["output_lead"] = "object_id",
            ["output_block"] = 6,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 7,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 6,
        },
        [32] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 7,
            ["output_lead"] = "collision",
            ["output_block"] = 6,
        },
        [33] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 4,
            ["output_lead"] = "double_one",
            ["output_block"] = 3,
        },
        [34] = {
            ["port"] = 0,
            ["input_lead"] = "delay",
            ["input_block"] = 10,
            ["output_lead"] = "fuse_delay",
            ["output_block"] = -666,
        },
        [35] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 10,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 10,
            ["output_lead"] = "pos",
            ["output_block"] = 4,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "armed",
            ["input_block"] = 10,
            ["output_lead"] = "in_water",
            ["output_block"] = 4,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 11,
            ["output_lead"] = "obj_part_name",
            ["output_block"] = 6,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 11,
            ["output_lead"] = "explosion_pos",
            ["output_block"] = 10,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 11,
            ["output_lead"] = "Vec0",
            ["output_block"] = 1,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 11,
            ["output_lead"] = "vel",
            ["output_block"] = 4,
        },
        [42] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 11,
            ["output_lead"] = "explode",
            ["output_block"] = 10,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 11,
            ["output_lead"] = "int0",
            ["output_block"] = 1,
        },
        [44] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "explode",
            ["output_block"] = 10,
        },
        [45] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 11,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [46] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 7,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [47] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 7,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [48] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 11,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "active1",
            ["input_block"] = 8,
            ["output_lead"] = "output",
            ["output_block"] = 9,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 9,
            ["output_lead"] = "in_water",
            ["output_block"] = 4,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 9,
            ["output_lead"] = "on_rail",
            ["output_block"] = 4,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = -666,
            ["output_lead"] = "active",
            ["output_block"] = 5,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "has_signal",
            ["input_block"] = 4,
            ["output_lead"] = "active",
            ["output_block"] = 5,
        },
        [54] = {
            ["port"] = 0,
            ["input_lead"] = "fins",
            ["input_block"] = 4,
            ["output_lead"] = "fins",
            ["output_block"] = 5,
        },
        [55] = {
            ["port"] = 0,
            ["input_lead"] = "water_sign",
            ["input_block"] = 5,
            ["output_lead"] = "in_water",
            ["output_block"] = 4,
        },
        [56] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = 4,
        },
        [57] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
            ["output_lead"] = "vel",
            ["output_block"] = 4,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 5,
            ["output_lead"] = "omega",
            ["output_block"] = 4,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 5,
            ["output_lead"] = "real_rot",
            ["output_block"] = 4,
        },
        [60] = {
            ["port"] = 1,
            ["input_lead"] = "time_since_birth",
            ["input_block"] = 7,
            ["output_lead"] = "time_since_birth",
            ["output_block"] = -666,
        },
        [61] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "died",
            ["output_block"] = 7,
        },
        [62] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 5,
            ["output_lead"] = "bool_true",
            ["output_block"] = 2,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 8,
            ["output_lead"] = "thrust",
            ["output_block"] = 3,
        },
        [64] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 4,
            ["output_lead"] = "output",
            ["output_block"] = 8,
        },
        [65] = {
            ["port"] = 0,
            ["input_lead"] = "ta_req_vel",
            ["input_block"] = 4,
            ["output_lead"] = "ta_req_vel",
            ["output_block"] = 3,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 14,
            ["output_lead"] = "output",
            ["output_block"] = 12,
        },
        [67] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 12,
            ["output_lead"] = "in_water",
            ["output_block"] = 4,
        },
        [68] = {
            ["port"] = 1,
            ["input_lead"] = "activate",
            ["input_block"] = 14,
            ["output_lead"] = "in_water_p",
            ["output_block"] = 4,
        },
        [69] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_30",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 14,
        },
        [70] = {
            ["port"] = 0,
            ["input_lead"] = "vec",
            ["input_block"] = 13,
            ["output_lead"] = "fins",
            ["output_block"] = 5,
        },
        [71] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_20",
            ["input_block"] = -666,
            ["output_lead"] = "z",
            ["output_block"] = 13,
        },
        [72] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_21",
            ["input_block"] = -666,
            ["output_lead"] = "z",
            ["output_block"] = 13,
        },
        [73] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_22",
            ["input_block"] = -666,
            ["output_lead"] = "y",
            ["output_block"] = 13,
        },
        [74] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_23",
            ["input_block"] = -666,
            ["output_lead"] = "y",
            ["output_block"] = 13,
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
                ["name"] = "constraint",
                ["type"] = 5,
            },
            [7] = {
                ["name"] = "suppress_explosion",
                ["type"] = 1,
            },
            [8] = {
                ["name"] = "time_since_birth",
                ["type"] = 2,
            },
            [9] = {
                ["name"] = "owner",
                ["type"] = 5,
            },
        },
        ["outputWires"] = {
            [1] = {
                ["name"] = "active",
                ["type"] = 1,
            },
            [2] = {
                ["name"] = "fuse_delay",
                ["type"] = 1,
            },
            [3] = {
                ["name"] = "fuse_armed",
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
                ["name"] = "dbg_K",
                ["type"] = 2,
            },
            [14] = {
                ["name"] = "draw_arg_30",
                ["type"] = 2,
            },
            [15] = {
                ["name"] = "draw_arg_20",
                ["type"] = 2,
            },
            [16] = {
                ["name"] = "draw_arg_21",
                ["type"] = 2,
            },
            [17] = {
                ["name"] = "draw_arg_22",
                ["type"] = 2,
            },
            [18] = {
                ["name"] = "draw_arg_23",
                ["type"] = 2,
            },
        },
    },
}