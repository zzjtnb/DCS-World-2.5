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
            },
            ["inputs"] = {
            },
            ["__parameters"] = {
                ["delay_par"] = {
                },
                ["delay_check"] = {
                    ["value"] = 1,
                },
                ["File name"] = {
                    ["value"] = "bomb_light_script.lua",
                },
            },
            ["__type"] = "wBlockLuaDescriptor",
            ["__name"] = "control",
            ["additional_params"] = {
                [1] = {
                    ["name"] = "delay_check",
                    ["type"] = 1,
                },
                [2] = {
                    ["name"] = "delay_par",
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
                [2] = {
                    ["name"] = "par_open",
                    ["type"] = 1,
                },
            },
        },
        [3] = {
            ["__name"] = "const",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "double_zero",
                    ["type"] = 1,
                },
                [2] = {
                    ["name"] = "T20",
                    ["type"] = 1,
                },
            },
            ["__parameters"] = {
                ["T20"] = {
                    ["value"] = 20,
                },
                ["double_zero"] = {
                    ["value"] = 0,
                },
            },
        },
        [4] = {
            ["__name"] = "fm",
            ["__type"] = "wFMBombDragDescriptor",
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
                ["cx_factor"] = {
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
        [5] = {
            ["__name"] = "",
            ["__type"] = "wColliderBlockDescriptor",
            ["__parameters"] = {
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [6] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
        [7] = {
            ["__name"] = "",
            ["__type"] = "wBlockRampDescriptor",
            ["__parameters"] = {
                ["slope"] = {
                    ["value"] = 2,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [8] = {
            ["__name"] = "light",
            ["__type"] = "wWarheadLightDescriptor",
            ["__parameters"] = {
                ["smoke_color"] = {
                },
                ["light_attenuation"] = {
                },
                ["duration"] = {
                },
                ["smoke_transparency"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
                ["smoke_width"] = {
                },
                ["light_color"] = {
                },
                ["start_time"] = {
                },
                ["smoke_position"] = {
                },
                ["light_position"] = {
                },
            },
        },
        [9] = {
            ["__name"] = "LIGHT_INTENSITY_CALC",
            ["__type"] = "wBlockSummatorDescriptor<double>",
            ["inputs"] = {
                [1] = {
                    ["name"] = "T0",
                    ["coeff"] = 1,
                },
                [2] = {
                    ["name"] = "LIGHT_INTENSITY",
                    ["coeff"] = 750,
                },
            },
            ["__parameters"] = {
            },
        },
    },
    ["connections"] = {
        [1] = {
            ["port"] = 0,
            ["input_lead"] = "drag_open",
            ["input_block"] = 3,
            ["output_lead"] = "par_open",
            ["output_block"] = 1,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 0,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [3] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 4,
            ["output_lead"] = "check_obj",
            ["output_block"] = 1,
        },
        [4] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 3,
            ["output_lead"] = "double_zero",
            ["output_block"] = 2,
        },
        [5] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 4,
            ["output_lead"] = "check_obj",
            ["output_block"] = 1,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 3,
            ["output_lead"] = "rho",
            ["output_block"] = 0,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 3,
            ["output_lead"] = "M",
            ["output_block"] = 0,
        },
        [8] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 3,
            ["output_lead"] = "wind",
            ["output_block"] = 0,
        },
        [9] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [10] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [11] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 3,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 3,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 4,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 5,
            ["output_lead"] = "par_open",
            ["output_block"] = 1,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 6,
            ["output_lead"] = "output",
            ["output_block"] = 5,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_0",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 6,
        },
        [17] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 4,
        },
        [18] = {
            ["port"] = 1,
            ["input_lead"] = "parent_obj",
            ["input_block"] = 7,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [19] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 3,
            ["output_lead"] = "double_zero",
            ["output_block"] = 2,
        },
        [20] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 4,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [21] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 3,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [22] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 3,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [23] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 3,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [24] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 3,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 7,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_1",
            ["input_block"] = -666,
            ["output_lead"] = "light_arg",
            ["output_block"] = 7,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "LIGHT_INTENSITY",
            ["input_block"] = 8,
            ["output_lead"] = "light_arg",
            ["output_block"] = 7,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "T0",
            ["input_block"] = 8,
            ["output_lead"] = "T20",
            ["output_block"] = 2,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "IR_emission",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 8,
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
                ["name"] = "draw_arg_1",
                ["type"] = 2,
            },
            [7] = {
                ["name"] = "IR_emission",
                ["type"] = 2,
            },
        },
    },
}