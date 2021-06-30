simulation_scheme = {
    ["blocks"] = {
        [1] = {
            ["__name"] = "",
            ["__type"] = "wAtmSamplerDescriptor",
            ["__parameters"] = {
            },
        },
        [2] = {
            ["outPorts"] = {
                [1] = {
                    ["name"] = "open",
                    ["type"] = 1,
                },
            },
            ["inputs"] = {
                [1] = {
                    ["name"] = "pos",
                    ["type"] = 3,
                },
                [2] = {
                    ["name"] = "rot",
                    ["type"] = 4,
                },
            },
            ["__parameters"] = {
                ["open_interval"] = {
                },
                ["File name"] = {
                    ["value"] = "bomb_sab_script.lua",
                },
                ["open_delay"] = {
                },
                ["check_delay"] = {
                    ["value"] = 1,
                },
                ["items_count"] = {
                },
            },
            ["__type"] = "wBlockLuaDescriptor",
            ["__name"] = "control",
            ["additional_params"] = {
                [1] = {
                    ["name"] = "check_delay",
                    ["type"] = 1,
                },
                [2] = {
                    ["name"] = "open_delay",
                    ["type"] = 1,
                },
                [3] = {
                    ["name"] = "open_interval",
                    ["type"] = 1,
                },
                [4] = {
                    ["name"] = "items_count",
                    ["type"] = 0,
                },
            },
            ["inPorts"] = {
            },
            ["outputs"] = {
                [1] = {
                    ["name"] = "check_obj",
                    ["type"] = 1,
                },
                [2] = {
                    ["name"] = "pos",
                    ["type"] = 3,
                },
            },
        },
        [3] = {
            ["__name"] = "fm",
            ["__type"] = "wFMBombRocketDescriptor",
            ["__parameters"] = {
                ["wind_time"] = {
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
                ["shapeName"] = {
                    ["value"] = "",
                },
                ["L"] = {
                },
                ["Ma"] = {
                },
                ["Mw"] = {
                },
            },
        },
        [4] = {
            ["__name"] = "",
            ["__type"] = "wColliderBlockDescriptor",
            ["__parameters"] = {
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [5] = {
            ["__name"] = "const",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "double_zero",
                    ["type"] = 1,
                },
                [2] = {
                    ["name"] = "bool_true",
                    ["type"] = 4,
                },
            },
            ["__parameters"] = {
                ["bool_true"] = {
                    ["value"] = 1,
                },
                ["double_zero"] = {
                    ["value"] = 0,
                },
            },
        },
        [6] = {
            ["__name"] = "launcher",
            ["__type"] = "wBlockLauncherDescriptor",
            ["__parameters"] = {
                ["server"] = {
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
            ["output_block"] = 3,
        },
        [2] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 3,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [3] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [4] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 2,
        },
        [5] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 2,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 2,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 2,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [8] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 2,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 2,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [10] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 2,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [11] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 2,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [12] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 2,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [13] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 2,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 3,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 2,
            ["output_lead"] = "double_zero",
            ["output_block"] = 4,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 3,
            ["output_lead"] = "check_obj",
            ["output_block"] = 1,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 2,
            ["output_lead"] = "double_zero",
            ["output_block"] = 4,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 3,
            ["output_lead"] = "bool_true",
            ["output_block"] = 4,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_0",
            ["input_block"] = -666,
            ["output_lead"] = "double_zero",
            ["output_block"] = 4,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
            ["output_lead"] = "vel",
            ["output_block"] = 2,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 5,
            ["output_lead"] = "rot",
            ["output_block"] = 2,
        },
        [23] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = 5,
            ["output_lead"] = "omega",
            ["output_block"] = 2,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "country",
            ["input_block"] = 5,
            ["output_lead"] = "country",
            ["output_block"] = -666,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "launcher_id",
            ["input_block"] = 5,
            ["output_lead"] = "launcher",
            ["output_block"] = -666,
        },
        [26] = {
            ["port"] = 1,
            ["input_lead"] = "fire",
            ["input_block"] = 5,
            ["output_lead"] = "open",
            ["output_block"] = 1,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 5,
            ["output_lead"] = "pos",
            ["output_block"] = 1,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 1,
            ["output_lead"] = "pos",
            ["output_block"] = 2,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = 1,
            ["output_lead"] = "rot",
            ["output_block"] = 2,
        },
        [30] = {
            ["port"] = 0,
            ["input_lead"] = "state",
            ["input_block"] = 5,
            ["output_lead"] = "state",
            ["output_block"] = -666,
        },
        [31] = {
            ["port"] = 1,
            ["input_lead"] = "owner",
            ["input_block"] = 5,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
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
                ["name"] = "id",["type"] = 6,
            },
            [6] = {
                ["name"] = "owner",
                ["type"] = 5,
            },
        },
        ["outputWires"] = {
            [1] = {
                ["name"] = "country",
                ["type"] = 0,
            },
            [2] = {
                ["name"] = "launcher",["type"] = 6,
            },
            [3] = {
                ["name"] = "state",
                ["type"] = 0,
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
        },
    },
}