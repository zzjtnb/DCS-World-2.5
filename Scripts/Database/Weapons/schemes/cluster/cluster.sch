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
            ["__type"] = "wBlockClusterDescriptor",
            ["__parameters"] = {
                ["impulse_sigma"] = {
                },
                ["cx_coeff"] = {
                },
                ["model_name"] = {
                },
                ["moment_sigma"] = {
                },
                ["effect_count"] = {
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
                ["Ma"] = {
                },
                ["caliber"] = {
                },
                ["L"] = {
                },
                ["count"] = {
                },
                ["Mw"] = {
                },
            },
        },
        [3] = {
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
    },
    ["connections"] = {
        [1] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 1,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 2,
            ["output_lead"] = "col_pos",
            ["output_block"] = 1,
        },
        [3] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 2,
            ["output_lead"] = "col_obj",
            ["output_block"] = 1,
        },
        [4] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 2,
            ["output_lead"] = "col_vel",
            ["output_block"] = 1,
        },
        [5] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 2,
            ["output_lead"] = "explode",
            ["output_block"] = 1,
        },
        [6] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "died",
            ["output_block"] = 1,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 1,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [8] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 1,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 1,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "pos",
            ["output_block"] = 1,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 1,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 1,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 1,
        },
        [14] = {
            ["port"] = 1,
            ["input_lead"] = "owner",
            ["input_block"] = 1,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [15] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 2,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 2,
            ["output_lead"] = "col_norm",
            ["output_block"] = 1,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 2,
            ["output_lead"] = "objPartName",
            ["output_block"] = 1,
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