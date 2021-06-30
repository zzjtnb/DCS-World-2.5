simulation_scheme = {
    ["blocks"] = {
        [1] = {
            ["__name"] = "",
            ["__type"] = "wAtmSamplerDescriptor",
            ["__parameters"] = {
            },
        },
        [2] = {
            ["__name"] = "cluster",
            ["__type"] = "wClusterStarterDescriptor",
            ["__parameters"] = {
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [3] = {
            ["__name"] = "bomb_nose",
            ["__type"] = "wClusterElemDescriptor",
            ["__parameters"] = {
                ["release_rnd_coeff"] = {
                },
                ["impulse_sigma"] = {
                },
                ["cx_coeff"] = {
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
                ["op_time"] = {
                },
                ["multispawn"] = {
                    ["value"] = 1,
                },
                ["L"] = {
                },
                ["connectors_model_name"] = {
                },
                ["Mw"] = {
                },
                ["effect_count"] = {
                },
                ["chute_rnd_coeff"] = {
                },
                ["moment_sigma"] = {
                },
                ["chute_Cx"] = {
                },
                ["chute_diam"] = {
                },
                ["chute_cut_time"] = {
                },
                ["Ma"] = {
                },
                ["model_name"] = {
                },
                ["explosion_center"] = {
                },
                ["spawn_options"] = {
                    ["value"] = {
                    },
                },
                ["count"] = {
                },
                ["omega_impulse_coeff"] = {
                },
                ["init_impulse"] = {
                },
                ["explosion_impulse_coeff"] = {
                },
                ["chute_open_time"] = {
                },
                ["init_pos"] = {
                },
            },
        },
        [4] = {
            ["__name"] = "dispenser",
            ["__type"] = "wClusterElemDispenserDescriptor",
            ["__parameters"] = {
                ["spawn_weight_loss"] = {
                },
                ["release_rnd_coeff"] = {
                },
                ["impulse_sigma"] = {
                },
                ["cx_coeff"] = {
                },
                ["effect_count"] = {
                },
                ["chute_diam"] = {
                },
                ["op_time"] = {
                },
                ["spawn_height"] = {
                },
                ["connectors_model_name"] = {
                },
                ["multispawn"] = {
                    ["value"] = 1,
                },
                ["explosion_center"] = {
                },
                ["spawn_options"] = {
                    ["value"] = {
                    },
                },
                ["count"] = {
                },
                ["init_impulse"] = {
                },
                ["explosion_impulse_coeff"] = {
                },
                ["spawn_args_change"] = {
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
                ["L"] = {
                },
                ["Mw"] = {
                },
                ["moment_sigma"] = {
                },
                ["spawn_time"] = {
                },
                ["chute_cut_time"] = {
                },
                ["omega_impulse_coeff"] = {
                },
                ["op_spawns"] = {
                },
                ["caliber"] = {
                },
                ["chute_rnd_coeff"] = {
                },
                ["model_name"] = {
                },
                ["chute_Cx"] = {
                },
                ["use_effects"] = {
                },
                ["Ma"] = {
                },
                ["chute_open_time"] = {
                },
                ["init_pos"] = {
                },
            },
        },
        [5] = {
            ["__name"] = "empty_dispenser",
            ["__type"] = "wClusterElemDescriptor",
            ["__parameters"] = {
                ["release_rnd_coeff"] = {
                },
                ["impulse_sigma"] = {
                },
                ["cx_coeff"] = {
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
                ["op_time"] = {
                },
                ["multispawn"] = {
                    ["value"] = 1,
                },
                ["L"] = {
                },
                ["connectors_model_name"] = {
                },
                ["Mw"] = {
                },
                ["effect_count"] = {
                },
                ["chute_rnd_coeff"] = {
                },
                ["moment_sigma"] = {
                },
                ["chute_Cx"] = {
                },
                ["chute_diam"] = {
                },
                ["chute_cut_time"] = {
                },
                ["Ma"] = {
                },
                ["model_name"] = {
                },
                ["explosion_center"] = {
                },
                ["spawn_options"] = {
                },
                ["count"] = {
                },
                ["omega_impulse_coeff"] = {
                },
                ["init_impulse"] = {
                },
                ["explosion_impulse_coeff"] = {
                },
                ["chute_open_time"] = {
                },
                ["init_pos"] = {
                },
            },
        },
        [6] = {
            ["__name"] = "acc_bomblets",
            ["__type"] = "wClusterElemAccelerBombletsDescriptor",
            ["__parameters"] = {
                ["engine_tail_color"] = {
                },
                ["release_rnd_coeff"] = {
                },
                ["impulse_sigma"] = {
                },
                ["cx_coeff"] = {
                },
                ["effect_count"] = {
                },
                ["chute_diam"] = {
                },
                ["op_time"] = {
                    ["value"] = 500,
                },
                ["explosion_style"] = {
                },
                ["connectors_model_name"] = {
                },
                ["multispawn"] = {
                    ["value"] = 1,
                },
                ["engine_rnd_coeff"] = {
                },
                ["explosion_center"] = {
                },
                ["engine_fuel_mass"] = {
                },
                ["spawn_options"] = {
                },
                ["count"] = {
                },
                ["init_impulse"] = {
                },
                ["explosion_impulse_coeff"] = {
                },
                ["engine_nozzle_orientationXYZ"] = {
                },
                ["engine_tail_scale"] = {
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
                ["L"] = {
                },
                ["Mw"] = {
                },
                ["moment_sigma"] = {
                },
                ["engine_nozzle_position"] = {
                },
                ["engine_work_time"] = {
                },
                ["engine_start_time"] = {
                },
                ["omega_impulse_coeff"] = {
                },
                ["engine_impulse"] = {
                },
                ["caliber"] = {
                },
                ["chute_rnd_coeff"] = {
                },
                ["model_name"] = {
                },
                ["chute_Cx"] = {
                },
                ["chute_cut_time"] = {
                },
                ["Ma"] = {
                },
                ["chute_open_time"] = {
                },
                ["init_pos"] = {
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
            ["__name"] = "avg_vel",
            ["__type"] = "wBlockAvgerageValDescriptor<Vec3d>",
            ["inputs"] = {
                [1] = {
                    ["name"] = "input2",
                },
                [2] = {
                    ["name"] = "weight2",
                },
                [3] = {
                    ["name"] = "input4",
                },
                [4] = {
                    ["name"] = "weight4",
                },
            },
            ["__parameters"] = {
            },
        },
        [9] = {
            ["__name"] = "avg_pos",
            ["__type"] = "wBlockAvgerageValDescriptor<Vec3d>",
            ["inputs"] = {
                [1] = {
                    ["name"] = "input1",
                },
                [2] = {
                    ["name"] = "weight2",
                },
                [3] = {
                    ["name"] = "input4",
                },
                [4] = {
                    ["name"] = "weight4",
                },
            },
            ["__parameters"] = {
            },
        },
        [10] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<int CMA bool>",
            ["__parameters"] = {
            },
        },
        [11] = {
            ["__name"] = "",
            ["__type"] = "wBlockMinValDescriptor<Vec3d>",
            ["inputs"] = {
                [1] = {
                    ["name"] = "input2",
                },
                [2] = {
                    ["name"] = "active2",
                },
                [3] = {
                    ["name"] = "input4",
                },
                [4] = {
                    ["name"] = "active4",
                },
            },
            ["__parameters"] = {
            },
        },
        [12] = {
            ["__name"] = "",
            ["__type"] = "wBlockMaxValDescriptor<Vec3d>",
            ["inputs"] = {
                [1] = {
                    ["name"] = "input2",
                },
                [2] = {
                    ["name"] = "active2",
                },
                [3] = {
                    ["name"] = "input4",
                },
                [4] = {
                    ["name"] = "active4",
                },
            },
            ["__parameters"] = {
            },
        },
        [13] = {
            ["__name"] = "",
            ["__type"] = "wAtmSamplerDescriptor",
            ["__parameters"] = {
            },
        },
        [14] = {
            ["__name"] = "",
            ["__type"] = "wBlockORDescriptor",
            ["inputs"] = {
                [1] = {
                    ["name"] = "input2",
                },
                [2] = {
                    ["name"] = "input4",
                },
            },
            ["__parameters"] = {
            },
        },
        [15] = {
            ["__name"] = "",
            ["__type"] = "wClusterAggrDescriptor",
            ["__parameters"] = {
                ["intparam"] = {
                    ["value"] = 0,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [16] = {
            ["__name"] = "",
            ["__type"] = "wAtmSamplerDescriptor",
            ["__parameters"] = {
            },
        },
        [17] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<int CMA bool>",
            ["__parameters"] = {
            },
        },
        [18] = {
            ["__name"] = "",
            ["__type"] = "wAtmSamplerDescriptor",
            ["__parameters"] = {
            },
        },
    },
    ["connections"] = {
        [1] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 6,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 14,
        },
        [3] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 14,
        },
        [4] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 7,
        },
        [5] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 8,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "min",
            ["input_block"] = 14,
            ["output_lead"] = "output",
            ["output_block"] = 10,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "max",
            ["input_block"] = 14,
            ["output_lead"] = "output",
            ["output_block"] = 11,
        },
        [8] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "died",
            ["output_block"] = 14,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 14,
            ["output_lead"] = "output",
            ["output_block"] = 13,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 2,
            ["output_lead"] = "rho",
            ["output_block"] = 12,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 2,
            ["output_lead"] = "M",
            ["output_block"] = 12,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 2,
            ["output_lead"] = "wind",
            ["output_block"] = 12,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 12,
            ["output_lead"] = "avg_pos",
            ["output_block"] = 2,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 3,
            ["output_lead"] = "rho",
            ["output_block"] = 15,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 3,
            ["output_lead"] = "wind",
            ["output_block"] = 15,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 3,
            ["output_lead"] = "M",
            ["output_block"] = 15,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 15,
            ["output_lead"] = "avg_pos",
            ["output_block"] = 3,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 16,
            ["output_lead"] = "num_alive",
            ["output_block"] = 3,
        },
        [19] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 4,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [20] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 3,
            ["output_lead"] = "pos",
            ["output_block"] = 1,
        },
        [21] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 3,
            ["output_lead"] = "vel",
            ["output_block"] = 1,
        },
        [22] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 3,
            ["output_lead"] = "rot",
            ["output_block"] = 1,
        },
        [23] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 3,
            ["output_lead"] = "omega",
            ["output_block"] = 1,
        },
        [24] = {
            ["port"] = 1,
            ["input_lead"] = "start",
            ["input_block"] = 3,
            ["output_lead"] = "start",
            ["output_block"] = 1,
        },
        [25] = {
            ["port"] = 1,
            ["input_lead"] = "owner",
            ["input_block"] = 3,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [26] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 2,
            ["output_lead"] = "pos",
            ["output_block"] = 1,
        },
        [27] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 2,
            ["output_lead"] = "vel",
            ["output_block"] = 1,
        },
        [28] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 2,
            ["output_lead"] = "rot",
            ["output_block"] = 1,
        },
        [29] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 2,
            ["output_lead"] = "omega",
            ["output_block"] = 1,
        },
        [30] = {
            ["port"] = 1,
            ["input_lead"] = "start",
            ["input_block"] = 2,
            ["output_lead"] = "start",
            ["output_block"] = 1,
        },
        [31] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 4,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [32] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 4,
            ["output_lead"] = "rot",
            ["output_block"] = 3,
        },
        [33] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 4,
            ["output_lead"] = "omega",
            ["output_block"] = 3,
        },
        [34] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 4,
            ["output_lead"] = "rho",
            ["output_block"] = 17,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 4,
            ["output_lead"] = "M",
            ["output_block"] = 17,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 4,
            ["output_lead"] = "wind",
            ["output_block"] = 17,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 17,
            ["output_lead"] = "avg_pos",
            ["output_block"] = 4,
        },
        [38] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 7,
            ["output_lead"] = "avg_vel",
            ["output_block"] = 3,
        },
        [39] = {
            ["port"] = 0,
            ["input_lead"] = "active4",
            ["input_block"] = 11,
            ["output_lead"] = "output",
            ["output_block"] = 9,
        },
        [40] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 11,
            ["output_lead"] = "box_max",
            ["output_block"] = 3,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 10,
            ["output_lead"] = "box_min",
            ["output_block"] = 3,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "weight2",
            ["input_block"] = 7,
            ["output_lead"] = "num_alive",
            ["output_block"] = 3,
        },
        [43] = {
            ["port"] = 0,
            ["input_lead"] = "weight2",
            ["input_block"] = 8,
            ["output_lead"] = "num_alive",
            ["output_block"] = 3,
        },
        [44] = {
            ["port"] = 0,
            ["input_lead"] = "active2",
            ["input_block"] = 11,
            ["output_lead"] = "output",
            ["output_block"] = 16,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "active2",
            ["input_block"] = 10,
            ["output_lead"] = "output",
            ["output_block"] = 16,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "active4",
            ["input_block"] = 10,
            ["output_lead"] = "output",
            ["output_block"] = 9,
        },
        [47] = {
            ["port"] = 1,
            ["input_lead"] = "owner",
            ["input_block"] = 2,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [48] = {
            ["port"] = 1,
            ["input_lead"] = "owner",
            ["input_block"] = 4,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [49] = {
            ["port"] = 1,
            ["input_lead"] = "start",
            ["input_block"] = 4,
            ["output_lead"] = "spawn",
            ["output_block"] = 3,
        },
        [50] = {
            ["port"] = 1,
            ["input_lead"] = "owner",
            ["input_block"] = 14,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "input4",
            ["input_block"] = 13,
            ["output_lead"] = "output",
            ["output_block"] = 9,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 13,
            ["output_lead"] = "output",
            ["output_block"] = 16,
        },
        [53] = {
            ["port"] = 1,
            ["input_lead"] = "add_prm",
            ["input_block"] = 3,
            ["output_lead"] = "add_prm",
            ["output_block"] = 1,
        },
        [54] = {
            ["port"] = 1,
            ["input_lead"] = "add_prm",
            ["input_block"] = 2,
            ["output_lead"] = "add_prm",
            ["output_block"] = 1,
        },
        [55] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [56] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [57] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 5,
            ["output_lead"] = "rot",
            ["output_block"] = 3,
        },
        [58] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 5,
            ["output_lead"] = "omega",
            ["output_block"] = 3,
        },
        [59] = {
            ["port"] = 1,
            ["input_lead"] = "add_prm",
            ["input_block"] = 5,
            ["output_lead"] = "add_prm",
            ["output_block"] = 3,
        },
        [60] = {
            ["port"] = 1,
            ["input_lead"] = "parent_elem",
            ["input_block"] = 5,
            ["output_lead"] = "disp_elem",
            ["output_block"] = 3,
        },
        [61] = {
            ["port"] = 1,
            ["input_lead"] = "start",
            ["input_block"] = 5,
            ["output_lead"] = "spawn",
            ["output_block"] = 3,
        },
        [62] = {
            ["port"] = 1,
            ["input_lead"] = "owner",
            ["input_block"] = 5,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [63] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 5,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [64] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 5,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [65] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 5,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [66] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 6,
            ["output_lead"] = "col_pos",
            ["output_block"] = 5,
        },
        [67] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 9,
            ["output_lead"] = "num_alive",
            ["output_block"] = 5,
        },
        [68] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 6,
            ["output_lead"] = "col_vel",
            ["output_block"] = 5,
        },
        [69] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 6,
            ["output_lead"] = "col_norm",
            ["output_block"] = 5,
        },
        [70] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 6,
            ["output_lead"] = "objPartName",
            ["output_block"] = 5,
        },
        [71] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 6,
            ["output_lead"] = "col_obj",
            ["output_block"] = 5,
        },
        [72] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 6,
            ["output_lead"] = "explode",
            ["output_block"] = 5,
        },
        [73] = {
            ["port"] = 0,
            ["input_lead"] = "input4",
            ["input_block"] = 8,
            ["output_lead"] = "avg_pos",
            ["output_block"] = 5,
        },
        [74] = {
            ["port"] = 0,
            ["input_lead"] = "weight4",
            ["input_block"] = 8,
            ["output_lead"] = "num_alive",
            ["output_block"] = 5,
        },
        [75] = {
            ["port"] = 0,
            ["input_lead"] = "weight4",
            ["input_block"] = 7,
            ["output_lead"] = "num_alive",
            ["output_block"] = 5,
        },
        [76] = {
            ["port"] = 0,
            ["input_lead"] = "input4",
            ["input_block"] = 11,
            ["output_lead"] = "box_max",
            ["output_block"] = 5,
        },
        [77] = {
            ["port"] = 0,
            ["input_lead"] = "input4",
            ["input_block"] = 10,
            ["output_lead"] = "box_min",
            ["output_block"] = 5,
        },
        [78] = {
            ["port"] = 0,
            ["input_lead"] = "input4",
            ["input_block"] = 7,
            ["output_lead"] = "avg_vel",
            ["output_block"] = 5,
        },
        [79] = {
            ["port"] = 1,
            ["input_lead"] = "add_prm",
            ["input_block"] = 4,
            ["output_lead"] = "add_prm",
            ["output_block"] = 3,
        },
        [80] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "avg_pos",
            ["output_block"] = 5,
        },
        [81] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 8,
            ["output_lead"] = "avg_pos",
            ["output_block"] = 3,
        },
        [82] = {
            ["port"] = 1,
            ["input_lead"] = "parent_elem",
            ["input_block"] = 4,
            ["output_lead"] = "disp_elem",
            ["output_block"] = 3,
        },
    },
    ["io"] = {
        ["outputPorts"] = {
            [1] = {
                ["name"] = "owner",
                ["type"] = 5,
            },
            [2] = {
                ["name"] = "id",["type"] = 6,
            },
        },
        ["outputWires"] = {
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
        },
    },
}