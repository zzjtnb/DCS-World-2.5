simulation_scheme = {
    ["blocks"] = {
        [1] = {
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
        [2] = {
            ["__name"] = "const2",
            ["__type"] = "wBlockConstantsDescriptor",
            ["values"] = {
                [1] = {
                    ["name"] = "Temp_double_20",
                    ["type"] = 1,
                },
            },
            ["__parameters"] = {
                ["Temp_double_20"] = {
                    ["value"] = 0,
                },
            },
        },
        [3] = {
            ["__name"] = "control",
            ["__type"] = "wBlockDelayTriggerWireDescriptor",
            ["__parameters"] = {
                ["delay_par"] = {
                },
                ["dt"] = {
                    ["value"] = 0.02,
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
            ["__type"] = "wAtmSamplerDescriptor",
            ["__parameters"] = {
            },
        },
        [6] = {
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
        [7] = {
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
        [8] = {
            ["__name"] = "Delay_check_1s",
            ["__type"] = "wBlockDelayTriggerWireDescriptor",
            ["__parameters"] = {
                ["delay_par"] = {
                    ["value"] = 1,
                },
                ["dt"] = {
                    ["value"] = 0.02,
                },
            },
        },
        [9] = {
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
        [10] = {
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
        [11] = {
            ["__name"] = "",
            ["__type"] = "wBlockI2ODescriptor<bool CMA double>",
            ["__parameters"] = {
            },
        },
    },
    ["connections"] = {
        [1] = {
            ["port"] = 0,
            ["input_lead"] = "rho",
            ["input_block"] = 3,
            ["output_lead"] = "rho",
            ["output_block"] = 4,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "M",
            ["input_block"] = 3,
            ["output_lead"] = "M",
            ["output_block"] = 4,
        },
        [3] = {
            ["port"] = 0,
            ["input_lead"] = "wind",
            ["input_block"] = 3,
            ["output_lead"] = "wind",
            ["output_block"] = 4,
        },
        [4] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 4,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [5] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_1",
            ["input_block"] = -666,
            ["output_lead"] = "light_arg",
            ["output_block"] = 5,
        },
        [6] = {
            ["port"] = 1,
            ["input_lead"] = "parent_obj",
            ["input_block"] = 5,
            ["output_lead"] = "owner",
            ["output_block"] = -666,
        },
        [7] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 5,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [8] = {
            ["port"] = 1,
            ["input_lead"] = "pos",
            ["input_block"] = 3,
            ["output_lead"] = "pos",
            ["output_block"] = -666,
        },
        [9] = {
            ["port"] = 1,
            ["input_lead"] = "vel",
            ["input_block"] = 3,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [10] = {
            ["port"] = 1,
            ["input_lead"] = "rot",
            ["input_block"] = 3,
            ["output_lead"] = "rot",
            ["output_block"] = -666,
        },
        [11] = {
            ["port"] = 1,
            ["input_lead"] = "omega",
            ["input_block"] = 3,
            ["output_lead"] = "omega",
            ["output_block"] = -666,
        },
        [12] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = -666,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [13] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = -666,
            ["output_lead"] = "vel",
            ["output_block"] = 3,
        },
        [14] = {
            ["port"] = 0,
            ["input_lead"] = "rot",
            ["input_block"] = -666,
            ["output_lead"] = "rot",
            ["output_block"] = 3,
        },
        [15] = {
            ["port"] = 0,
            ["input_lead"] = "omega",
            ["input_block"] = -666,
            ["output_lead"] = "omega",
            ["output_block"] = 3,
        },
        [16] = {
            ["port"] = 0,
            ["input_lead"] = "pos",
            ["input_block"] = 8,
            ["output_lead"] = "pos",
            ["output_block"] = 3,
        },
        [17] = {
            ["port"] = 0,
            ["input_lead"] = "check_obj",
            ["input_block"] = 8,
            ["output_lead"] = "triggered",
            ["output_block"] = 7,
        },
        [18] = {
            ["port"] = 0,
            ["input_lead"] = "check",
            ["input_block"] = 8,
            ["output_lead"] = "triggered",
            ["output_block"] = 7,
        },
        [19] = {
            ["port"] = 1,
            ["input_lead"] = "id",
            ["input_block"] = 8,
            ["output_lead"] = "id",
            ["output_block"] = -666,
        },
        [20] = {
            ["port"] = 0,
            ["input_lead"] = "input",
            ["input_block"] = 10,
            ["output_lead"] = "triggered",
            ["output_block"] = 2,
        },
        [21] = {
            ["port"] = 0,
            ["input_lead"] = "draw_arg_0",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 9,
        },
        [22] = {
            ["port"] = 0,
            ["input_lead"] = "target",
            ["input_block"] = 9,
            ["output_lead"] = "output",
            ["output_block"] = 10,
        },
        [23] = {
            ["port"] = 1,
            ["input_lead"] = "died",
            ["input_block"] = -666,
            ["output_lead"] = "collision",
            ["output_block"] = 8,
        },
        [24] = {
            ["port"] = 0,
            ["input_lead"] = "thrust",
            ["input_block"] = 3,
            ["output_lead"] = "double_0",
            ["output_block"] = 0,
        },
        [25] = {
            ["port"] = 0,
            ["input_lead"] = "fuel_mass",
            ["input_block"] = 3,
            ["output_lead"] = "double_0",
            ["output_block"] = 0,
        },
        [26] = {
            ["port"] = 0,
            ["input_lead"] = "drag_open",
            ["input_block"] = 3,
            ["output_lead"] = "triggered",
            ["output_block"] = 2,
        },
        [27] = {
            ["port"] = 0,
            ["input_lead"] = "input2",
            ["input_block"] = 6,
            ["output_lead"] = "Temp_double_20",
            ["output_block"] = 1,
        },
        [28] = {
            ["port"] = 0,
            ["input_lead"] = "IR_emission",
            ["input_block"] = -666,
            ["output_lead"] = "output",
            ["output_block"] = 6,
        },
        [29] = {
            ["port"] = 0,
            ["input_lead"] = "input1",
            ["input_block"] = 6,
            ["output_lead"] = "light_arg",
            ["output_block"] = 5,
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
                ["name"] = "owner",
                ["type"] = 5,
            },
            [7] = {
                ["name"] = "suppress_explosion",
                ["type"] = 1,
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