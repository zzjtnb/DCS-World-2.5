return plane( "MiG-31", _("MiG-31"),
    {
        
        EmptyWeight = "21820",
        MaxFuelWeight = "15500",
        MaxHeight = "20000",
        MaxSpeed = "3000",
        MaxTakeOffWeight = "46200",
        Picture = "MiG-31.png",
        Rate = "50",
        Shape = "MiG-31",
        WingSpan = "13.46",
        WorldID = 9,
		country_of_origin = "RUS",
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Intercepter, MiG_31,
        "Interceptors", "Refuelable"
        },

        Categories = {
            pl_cat("{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor"),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_BAD),
        Sensors = {
            RADAR = "BRLS-8B",
            IRST = "8TP",
            RWR = "Abstract RWR"
        },
        mapclasskey = "P0091000024",
    },
	{
		--[[ TODO: uncomment when  fuel tanks will be available
		pylon(1, 0, -3.418590, 0.059660, -4.687541,
            {
				connector = "Point Zero 01",use_full_connector_position=true,
            },
            {
            }
        ),
		--]]
        pylon(1, 0, -1.972119, -0.160566, -3.470583,
            {
				connector = "Point Zero 02",use_full_connector_position=true,
            },
            {
                { CLSID = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}" },
                { CLSID = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}" },
                { CLSID = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}" },
            }
        ),
        pylon(2, 1,  -2.400118, -0.945056, -0.473283,
            {
				connector = "Point Zero 03",use_full_connector_position=true,
            },
            {
                { CLSID = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}" },
            }
        ),
        pylon(3, 1, 1.966954, -0.751732, -0.473283,
            {
				connector = "Point Zero 04",use_full_connector_position=true,
            },
            {
                { CLSID = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}" },
            }
        ),
        pylon(4, 1, -2.400118, -0.945056, 0.472034,
            {
				connector = "Point Zero 05",use_full_connector_position=true,
            },
            {
                { CLSID = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}" },
            }
        ),
        pylon(5, 1, 1.966954, -0.751732, 0.472034,
            {
				connector = "Point Zero 06",use_full_connector_position=true,
            },
            {
                { CLSID = "{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}" },
            }
        ),
        pylon(6, 0, -1.972119, -0.160567, 3.470499,
            {
 				connector = "Point Zero 07",use_full_connector_position=true,
            },
            {
                { CLSID = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}" },
                { CLSID = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}" },
                { CLSID = "{275A2855-4A79-4B2D-B082-91EA2ADF4691}" },
            }
        ),
		--[[
		pylon(8, 0, -3.418590, 0.059659, 4.688020,
            {
				connector = "Point Zero 08",use_full_connector_position=true,
            },
            {
            }
        ),
		--]]
    },
    {
        aircraft_task(CAP),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        --aircraft_task(GAI),
        aircraft_task(Intercept),

    },
	aircraft_task(Intercept)
);
