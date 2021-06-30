return plane( "MiG-25PD", _("MiG-25PD"),
    {
        
        EmptyWeight = "20000",
        MaxFuelWeight = "15245",
        MaxHeight = "20000",
        MaxSpeed = "3000",
        MaxTakeOffWeight = "41200",
        Picture = "MiG-25PD.png",
        Rate = "30",
        Shape = "MIG-25P",
        WingSpan = "14",
        WorldID = 24,
		country_of_origin = "RUS",

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 128,
			-- PPR-26
			chaff = {default = 64, increment = 32, chargeSz = 1},
			-- PPI-26
			flare = {default = 64, increment = 32, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Intercepter, MiG_25P,
        "Interceptors",
        },

        Categories = {
            pl_cat("{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor"),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_BAD, LOOK_BAD, LOOK_BAD),
        Sensors = {
            RADAR = "N-005",
            IRST = "26Sh-1",
            RWR = "Abstract RWR"
        },
        mapclasskey = "P0091000024",
    },
    {
        pylon(1, 0, -0.900000, 0.030000, -4.615000,
            {
            },
            {
                { CLSID = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}" },
                { CLSID = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}" },
                { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
            }
        ),
        pylon(2, 0, 0.100000, 0.031000, -3.470000,
            {
            },
            {
                { CLSID = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}" },
                { CLSID = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}" },
            }
        ),
        pylon(3, 1, 0.100000, 0.031000, 3.470000,
            {
            },
            {
                { CLSID = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}" },
                { CLSID = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}" },
            }
        ),
        pylon(4, 1, -0.900000, 0.030000, 4.615000,
            {
            },
            {
                { CLSID = "{4EDBA993-2E34-444C-95FB-549300BF7CAF}" },
                { CLSID = "{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}" },
                { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
            }
        ),
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
