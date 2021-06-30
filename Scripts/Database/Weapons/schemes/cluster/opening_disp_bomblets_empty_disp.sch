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
            ["__name"] = "dispenser",
            ["__type"] = "wClusterElemDispenserDescriptor",
            ["__parameters"] = {
                ["spawn_weight_loss"] = {
                },
                ["release_rnd_coeff"] = {
                    ["value"] = 0,
                },
                ["impulse_sigma"] = {
                    ["value"] = 0,
                },
                ["cx_coeff"] = {
                },
                ["set_release_args"] = {
                },
                ["init_ypr"] = {
                },
                ["effect_count"] = {
                    ["value"] = 1,
                },
                ["chute_diam"] = {
                    ["value"] = 0,
                },
                ["explosion_dont_use_x_axis"] = {
                },
                ["op_time"] = {
                    ["value"] = 1000,
                },
                ["spawn_height"] = {
                    ["value"] = {
                    },
                },
                ["connectors_model_name"] = {
                },
                ["multispawn"] = {
                    ["value"] = 1,
                },
                ["explosion_center"] = {
                    ["value"] = {
                    },
                },
                ["set_start_args"] = {
                },
                ["spawn_options"] = {
                    ["value"] = {
                    },
                },
                ["count"] = {
                    ["value"] = 1,
                },
                ["hide_effect_0"] = {
                    ["value"] = 1,
                },
                ["init_impulse"] = {
                    ["value"] = {
                    },
                },
                ["explosion_impulse_coeff"] = {
                    ["value"] = 0,
                },
                ["spawn_args_change"] = {
                },
                ["set_changing_args"] = {
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
                ["release_omega_0"] = {
                },
                ["Mw"] = {
                },
                ["chute_cut_time"] = {
                    ["value"] = 0,
                },
                ["moment_sigma"] = {
                    ["value"] = 0,
                },
                ["op_spawns"] = {
                },
                ["spawn_time"] = {
                },
                ["chute_Kmx"] = {
                },
                ["omega_impulse_coeff"] = {
                    ["value"] = 0,
                },
                ["anim_time"] = {
                    ["value"] = 0,
                },
                ["chute_rnd_coeff"] = {
                    ["value"] = 0,
                },
                ["caliber"] = {
                },
                ["model_name"] = {
                },
                ["chute_Cx"] = {
                    ["value"] = 0,
                },
                ["use_effects"] = {
                },
                ["Ma"] = {
                },
                ["chute_open_time"] = {
                    ["value"] = 0,
                },
                ["init_pos"] = {
                    ["value"] = {
                        [1] = {
                            [1] = 0,
                            [2] = 0,
                            [3] = 0,
                        },
                    },
                },
            },
        },
        [4] = {
            ["__name"] = "empty_dispenser",
            ["__type"] = "wClusterElemDescriptor",
            ["__parameters"] = {
                ["release_rnd_coeff"] = {
                    ["value"] = 0,
                },
                ["impulse_sigma"] = {
                    ["value"] = 0,
                },
                ["cx_coeff"] = {
                },
                ["set_release_args"] = {
                },
                ["init_ypr"] = {
                },
                ["effect_count"] = {
                    ["value"] = 1,
                },
                ["chute_diam"] = {
                    ["value"] = 0,
                },
                ["explosion_dont_use_x_axis"] = {
                },
                ["op_time"] = {
                    ["value"] = 1000,
                },
                ["connectors_model_name"] = {
                    ["value"] = "",
                },
                ["multispawn"] = {
                    ["value"] = 1,
                },
                ["explosion_center"] = {
                    ["value"] = {
                    },
                },
                ["set_start_args"] = {
                },
                ["spawn_options"] = {
                },
                ["count"] = {
                    ["value"] = 1,
                },
                ["init_impulse"] = {
                    ["value"] = {
                        [1] = {
                            [1] = 0,
                            [2] = 0,
                            [3] = 0,
                        },
                    },
                },
                ["explosion_impulse_coeff"] = {
                    ["value"] = 0,
                },
                ["set_changing_args"] = {
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
                ["release_omega_0"] = {
                },
                ["Mw"] = {
                },
                ["moment_sigma"] = {
                    ["value"] = 0,
                },
                ["chute_Kmx"] = {
                },
                ["omega_impulse_coeff"] = {
                    ["value"] = 0,
                },
                ["anim_time"] = {
                    ["value"] = 0,
                },
                ["chute_rnd_coeff"] = {
                    ["value"] = 0,
                },
                ["caliber"] = {
                },
                ["model_name"] = {
                },
                ["chute_Cx"] = {
                    ["value"] = 0,
                },
                ["chute_cut_time"] = {
                    ["value"] = 0,
                },
                ["Ma"] = {
                },
                ["chute_open_time"] = {
                    ["value"] = 0,
                },
                ["init_pos"] = {
                    ["value"] = {
                        [1] = {
                            [1] = 0,
                            [2] = 0,
                            [3] = 0,
                        },
                    },
                },
            },
        },
        [5] = {
            ["__name"] = "bomblets",
            ["__type"] = "wClusterElemBombletsDescriptor",
            ["__parameters"] = {
                ["release_rnd_coeff"] = {
                    ["value"] = 0,
                },
                ["impulse_sigma"] = {
                },
                ["cx_coeff"] = {
                },
                ["set_release_args"] = {
                },
                ["init_ypr"] = {
                },
                ["effect_count"] = {
                },
                ["chute_diam"] = {
                },
                ["explosion_dont_use_x_axis"] = {
                },
                ["op_time"] = {
                    ["value"] = 1000,
                },
                ["explosion_style"] = {
                    ["value"] = 0,
                },
                ["connectors_model_name"] = {
                },
                ["multispawn"] = {
                    ["value"] = 1,
                },
                ["explosion_center"] = {
                },
                ["set_start_args"] = {
                },
                ["spawn_options"] = {
                },
                ["count"] = {
                },
                ["init_impulse"] = {
                    ["value"] = {
                    },
                },
                ["explosion_impulse_coeff"] = {
                },
                ["set_changing_args"] = {
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
                ["release_omega_0"] = {
                },
                ["Mw"] = {
                },
                ["moment_sigma"] = {
                },
                ["chute_Kmx"] = {
                },
                ["omega_impulse_coeff"] = {
                },
                ["anim_time"] = {
                    ["value"] = 0,
                },
                ["chute_rnd_coeff"] = {
                },
                ["caliber"] = {
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
                    ["value"] = {
                    },
                },
            },
        },
        [6] = {
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
        [7] = {
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
        [8] = {
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
        [9] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<int CMA bool>",
            ["__parameters"] = {
            },
        },
        [10] = {
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
        [11] = {
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
        [12] = {
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
        [13] = {
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
        [14] = {
            ["__name"] = "",
            ["__type"] = "wAtmSamplerDescriptor",
            ["__parameters"] = {
            },
        },
        [15] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<int CMA bool>",
            ["__parameters"] = {
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
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [18] = {
            ["__name"] = "",
            ["__type"] = "wBlockGo2doubleOntimerDescriptor",
            ["__parameters"] = {
                ["use_start_val"] = {
                    ["value"] = 1,
                },
                ["loop"] = {
                    ["value"] = 0,
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
            ["input_lead"] = "my_id",
            ["input_block"] = 5,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 12,
        },
        [3] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 12,
        },
        [4] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 6,
        },
        [5] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 7,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "min",
            ["input_block"] = 12,
            ["output_lead"] = "output",
            ["output_block"] = 9,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "max",
            ["input_block"] = 12,
            ["output_lead"] = "output",
            ["output_block"] = 10,
        },
        [8] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "died",
            ["output_block"] = 12,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "active",
            ["input_block"] = 12,
            ["output_lead"] = "output",
            ["output_block"] = 11,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 2,
            ["output_lead"] = "rho",
            ["output_block"] = 13,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 2,
            ["output_lead"] = "wind",
            ["output_block"] = 13,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 2,
            ["output_lead"] = "M",
            ["output_block"] = 13,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 13,
            ["output_lead"] = "avg_pos",
            ["output_block"] = 2,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 14,
            ["output_lead"] = "num_alive",
            ["output_block"] = 2,
        },
        [15] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 3,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [16] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 2,
            ["output_lead"] = "pos",
            ["output_block"] = 1,
        },
        [17] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 2,
            ["output_lead"] = "vel",
            ["output_block"] = 1,
        },
        [18] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 2,
            ["output_lead"] = "rot",
            ["output_block"] = 1,
        },
        [19] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 2,
            ["output_lead"] = "omega",
            ["output_block"] = 1,
        },
        [20] = {
            ["port"] = 1,
            ["input_lead"] = "start",
            ["input_block"] = 2,
            ["output_lead"] = "start",
            ["output_block"] = 1,
        },
        [21] = {
            ["port"] = 1,
            ["input_lead"] = "owner",
            ["input_block"] = 2,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [22] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 3,
            ["output_lead"] = "vel",
            ["output_block"] = 2,
        },
        [23] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 3,
            ["output_lead"] = "rot",
            ["output_block"] = 2,
        },
        [24] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 3,
            ["output_lead"] = "omega",
            ["output_block"] = 2,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 3,
            ["output_lead"] = "rho",
            ["output_block"] = 15,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 3,
            ["output_lead"] = "M",
            ["output_block"] = 15,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 3,
            ["output_lead"] = "wind",
            ["output_block"] = 15,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 15,
            ["output_lead"] = "avg_pos",
            ["output_block"] = 3,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 6,
            ["output_lead"] = "avg_vel",
            ["output_block"] = 2,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "active4",
            ["input_block"] = 10,
            ["output_lead"] = "output",
            ["output_block"] = 8,
        },
        [31] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 10,
            ["output_lead"] = "box_max",
            ["output_block"] = 2,
        },
        [32] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 9,
            ["output_lead"] = "box_min",
            ["output_block"] = 2,
        },
        [33] = {
            ["port"] = 0,
            ["input_lead"] = "weight2",
            ["input_block"] = 6,
            ["output_lead"] = "num_alive",
            ["output_block"] = 2,
        },
        [34] = {
            ["port"] = 0,
            ["input_lead"] = "weight2",
            ["input_block"] = 7,
            ["output_lead"] = "num_alive",
            ["output_block"] = 2,
        },
        [35] = {
            ["port"] = 0,
            ["input_lead"] = "active2",
            ["input_block"] = 10,
            ["output_lead"] = "output",
            ["output_block"] = 14,
        },
        [36] = {
            ["port"] = 0,
            ["input_lead"] = "active2",
            ["input_block"] = 9,
            ["output_lead"] = "output",
            ["output_block"] = 14,
        },
        [37] = {
            ["port"] = 0,
            ["input_lead"] = "active4",
            ["input_block"] = 9,
            ["output_lead"] = "output",
            ["output_block"] = 8,
        },
        [38] = {
            ["port"] = 1,
            ["input_lead"] = "owner",
            ["input_block"] = 3,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [39] = {
            ["port"] = 1,
            ["input_lead"] = "start",
            ["input_block"] = 3,
            ["output_lead"] = "spawn",
            ["output_block"] = 2,
        },
        [40] = {
            ["port"] = 1,
            ["input_lead"] = "owner",
            ["input_block"] = 12,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [41] = {
            ["port"] = 0,
            ["input_lead"] = "input4",
            ["input_block"] = 11,
            ["output_lead"] = "output",
            ["output_block"] = 8,
        },
        [42] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 11,
            ["output_lead"] = "output",
            ["output_block"] = 14,
        },
        [43] = {
            ["port"] = 1,
            ["input_lead"] = "add_prm",
            ["input_block"] = 2,
            ["output_lead"] = "add_prm",
            ["output_block"] = 1,
        },
        [44] = {
            ["port"] = 1,
            ["input_lead"] = "add_prm",
            ["input_block"] = 3,
            ["output_lead"] = "add_prm",
            ["output_block"] = 2,
        },
        [45] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 7,
            ["output_lead"] = "avg_pos",
            ["output_block"] = 2,
        },
        [46] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 4,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [47] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 4,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [48] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 4,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [49] = {
            ["port"] = 0,
            ["input_lead"] = "input4",
            ["input_block"] = 7,
            ["output_lead"] = "avg_pos",
            ["output_block"] = 4,
        },
        [50] = {
            ["port"] = 0,
            ["input_lead"] = "input4",
            ["input_block"] = 6,
            ["output_lead"] = "avg_vel",
            ["output_block"] = 4,
        },
        [51] = {
            ["port"] = 0,
            ["input_lead"] = "input4",
            ["input_block"] = 9,
            ["output_lead"] = "box_min",
            ["output_block"] = 4,
        },
        [52] = {
            ["port"] = 0,
            ["input_lead"] = "input4",
            ["input_block"] = 10,
            ["output_lead"] = "box_max",
            ["output_block"] = 4,
        },
        [53] = {
            ["port"] = 0,
            ["input_lead"] = "weight4",
            ["input_block"] = 7,
            ["output_lead"] = "num_alive",
            ["output_block"] = 4,
        },
        [54] = {
            ["port"] = 0,
            ["input_lead"] = "weight4",
            ["input_block"] = 6,
            ["output_lead"] = "num_alive",
            ["output_block"] = 4,
        },
        [55] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 8,
            ["output_lead"] = "num_alive",
            ["output_block"] = 4,
        },
        [56] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "col_pos",
            ["output_block"] = 4,
        },
        [57] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
            ["output_lead"] = "col_vel",
            ["output_block"] = 4,
        },
        [58] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 5,
            ["output_lead"] = "col_norm",
            ["output_block"] = 4,
        },
        [59] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 5,
            ["output_lead"] = "col_obj",
            ["output_block"] = 4,
        },
        [60] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 5,
            ["output_lead"] = "objPartName",
            ["output_block"] = 4,
        },
        [61] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 5,
            ["output_lead"] = "explode",
            ["output_block"] = 4,
        },
        [62] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 4,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [63] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 4,
            ["output_lead"] = "vel",
            ["output_block"] = 2,
        },
        [64] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 4,
            ["output_lead"] = "rot",
            ["output_block"] = 2,
        },
        [65] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 4,
            ["output_lead"] = "omega",
            ["output_block"] = 2,
        },
        [66] = {
            ["port"] = 1,
            ["input_lead"] = "add_prm",
            ["input_block"] = 4,
            ["output_lead"] = "add_prm",
            ["output_block"] = 2,
        },
        [67] = {
            ["port"] = 1,
            ["input_lead"] = "parent_elem",
            ["input_block"] = 4,
            ["output_lead"] = "disp_elem",
            ["output_block"] = 2,
        },
        [68] = {
            ["port"] = 1,
            ["input_lead"] = "start",
            ["input_block"] = 4,
            ["output_lead"] = "spawn",
            ["output_block"] = 2,
        },
        [69] = {
            ["port"] = 1,
            ["input_lead"] = "owner",
            ["input_block"] = 4,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [70] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "avg_pos",
            ["output_block"] = 4,
        },
        [71] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_58",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 17,
        },
        [72] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 17,
            ["output_lead"] = "output",
            ["output_block"] = 16,
        },
        [73] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 16,
            ["output_lead"] = "spawned",
            ["output_block"] = 2,
        },
    },
    ["io"] = {
        ["outputPorts"] = {
            [1] = {
                ["name"] = "owner",
                ["type"] = 5,
            },
            [2] = {
                ["name"] = "id",
                ["type"] = 6,
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
            [5] = {
                ["name"] = "draw_arg_58",
                ["type"] = 2,
            },
        },
    },
}