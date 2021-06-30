simulation_scheme = {
    ["blocks"] = {
        [1] = {
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
            ["output_block"] = -666,
        },
        [2] = {
            ["port"] = 0,
            ["input_lead"] = "vel",
            ["input_block"] = 0,
            ["output_lead"] = "vel",
            ["output_block"] = -666,
        },
        [3] = {
            ["port"] = 0,
            ["input_lead"] = "obj_id",
            ["input_block"] = 0,
            ["output_lead"] = "objId",
            ["output_block"] = -666,
        },
        [4] = {
            ["port"] = 1,
            ["input_lead"] = "explode",
            ["input_block"] = 0,
            ["output_lead"] = "explode",
            ["output_block"] = -666,
        },
        [5] = {
            ["port"] = 0,
            ["input_lead"] = "normal",
            ["input_block"] = 0,
            ["output_lead"] = "normal",
            ["output_block"] = -666,
        },
        [6] = {
            ["port"] = 0,
            ["input_lead"] = "obj_part_name",
            ["input_block"] = 0,
            ["output_lead"] = "objPartName",
            ["output_block"] = -666,
        },
        [7] = {
            ["port"] = 1,
            ["input_lead"] = "my_id",
            ["input_block"] = 0,
            ["output_lead"] = "myId",
            ["output_block"] = -666,
        },
        [8] = {
            ["port"] = 1,
            ["input_lead"] = "suppress_explosion",
            ["input_block"] = 0,
            ["output_lead"] = "suppress_explosion",
            ["output_block"] = -666,
        },
        [9] = {
            ["port"] = 1,
            ["input_lead"] = "fuze_delay",
            ["input_block"] = 0,
            ["output_lead"] = "fuze_delay",
            ["output_block"] = -666,
        },
    },
    ["io"] = {
        ["outputPorts"] = {
            [1] = {
                ["name"] = "explode",
                ["type"] = 1,
            },
            [2] = {
                ["name"] = "myId",["type"] = 6,
            },
            [3] = {
                ["name"] = "suppress_explosion",
                ["type"] = 1,
            },
            [4] = {
                ["name"] = "fuze_delay",
                ["type"] = 2,
            },
        },
        ["outputWires"] = {
            [1] = {
                ["name"] = "pos",
                ["type"] = 3,
            },
            [2] = {
                ["name"] = "vel",
                ["type"] = 3,
            },
            [3] = {
                ["name"] = "objId",["type"] = 6,
            },
            [4] = {
                ["name"] = "normal",
                ["type"] = 3,
            },
            [5] = {
                ["name"] = "objPartName",
                ["type"] = 0,
            },
        },
        ["inputPorts"] = {
        },
        ["inputWires"] = {
        },
    },
}