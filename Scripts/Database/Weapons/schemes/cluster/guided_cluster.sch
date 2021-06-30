simulation_scheme = {
    ["blocks"] = {
        [1] = {
            ["__name"] = "",
            ["__type"] = "wAtmSamplerDescriptor",
            ["__parameters"] = {
            },
        },
        [2] = {
            ["__name"] = "warhead",
            ["__type"] = "wWarheadStandardBlockDescriptor",
            ["__parameters"] = {
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
        [3] = {
            ["__name"] = "cluster",
            ["__type"] = "wGuidedClusterDescriptor",
            ["__parameters"] = {
                ["empty_dispenser_mass"] = {
                },
                ["panel_S"] = {
                },
                ["impulse_sigma"] = {
                },
                ["skeetInitVel"] = {
                },
                ["caliber"] = {
                },
                ["EFP_model"] = {
                },
                ["dispenser_part_panel3_model"] = {
                },
                ["dispenser_part_panel2_model"] = {
                },
                ["empty_dispenser_model"] = {
                },
                ["dispenser_part_panel1_model"] = {
                },
                ["Ix"] = {
                },
                ["skeetsLaunchMaxG"] = {
                },
                ["cx_coeff"] = {
                },
                ["panel_Ma"] = {
                },
                ["model_name"] = {
                },
                ["skeet_mass"] = {
                },
                ["panel_I"] = {
                },
                ["mainChute_cx"] = {
                },
                ["submunitionInitVel"] = {
                },
                ["timeDelaySecondGroup"] = {
                },
                ["panel_L"] = {
                },
                ["skeetSpeenUpTime"] = {
                },
                ["panel_mass"] = {
                },
                ["count"] = {
                },
                ["MaWChute"] = {
                },
                ["skeet_L"] = {
                },
                ["empty_dispenser_I"] = {
                },
                ["engineWorkTime"] = {
                },
                ["skeetHalfApertSize"] = {
                },
                ["skeetMaxSearchRange"] = {
                },
                ["wind_time"] = {
                },
                ["extrChuteMax"] = {
                },
                ["skeetSrchStartTime"] = {
                },
                ["skeet_Mw"] = {
                },
                ["drop_skeet_height"] = {
                },
                ["skeet_S"] = {
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
                ["MwWChute"] = {
                },
                ["rotationVelMin"] = {
                },
                ["L"] = {
                },
                ["rotationMoment"] = {
                },
                ["Mw"] = {
                },
                ["skeet_I"] = {
                },
                ["chuteDiameter"] = {
                },
                ["empty_dispenser_S"] = {
                },
                ["skeet_model"] = {
                },
                ["opened_dispenser_w_submunitions_model"] = {
                },
                ["Ma"] = {
                },
                ["empty_dispenser_Mw"] = {
                },
                ["empty_dispenser_Ma"] = {
                },
                ["panel_Mw"] = {
                },
                ["effect_count"] = {
                },
                ["mainChuteOpenSpeed"] = {
                },
                ["engine_force"] = {
                },
                ["skeet_Ma"] = {
                },
                ["moment_sigma"] = {
                },
                ["empty_dispenser_L"] = {
                },
                ["timeDelayFirstGroup"] = {
                },
            },
        },
    },
    ["connections"] = {
        [1] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 1,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 2,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [3] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 2,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [4] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 2,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [5] = {
            ["port"] = 1,
            ["input_lead"] = "owner",
            ["input_block"] = 2,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 2,
        },
        [8] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 2,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 2,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 1,
            ["output_lead"] = "col_pos",
            ["output_block"] = 2,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 1,
            ["output_lead"] = "col_vel",
            ["output_block"] = 2,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 1,
            ["output_lead"] = "col_norm",
            ["output_block"] = 2,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 1,
            ["output_lead"] = "col_obj",
            ["output_block"] = 2,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 1,
            ["output_lead"] = "objPartName",
            ["output_block"] = 2,
        },
        [16] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 1,
            ["output_lead"] = "explode",
            ["output_block"] = 2,
        },
        [17] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "died",
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