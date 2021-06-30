return plane( "F-14A", _("F-14A"),
    {
        
        EmptyWeight = "18951",
        LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of LandRWCategories
        MaxFuelWeight = "7348",
        MaxHeight = "17000",
        MaxSpeed = "2490",
        MaxTakeOffWeight = "33724",
        Picture = "F-14A.png",
        Rate = "50",
        Shape = "F-14a",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier With Catapult",
            }, -- end of [1]
        }, -- end of TakeOffRWCategories
        WingSpan = "19.54",
        WorldID = 5,
		country_of_origin = "USA",

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 60,
			chaff = {default = 30, increment = 30, chargeSz = 1},
			flare = {default = 15, increment = 15, chargeSz = 2}
        },

        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, F_14,
        "Fighters", "Refuelable"
        },
        Categories = {
            pl_cat("{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor"),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_AVERAGE),
        Sensors = {
            RADAR = "AN/APG-71",
            RWR = "Abstract RWR"
        },
        Countermeasures = {
            ECM = {"AN/ALQ-126", "AN/ALQ-162"}
        },
        mapclasskey = "P0091000024",
		--[[topdown_view =  -- данные для классификатора карты
		{
			classKey = "PIC_F-14A",
			w = 20.6,
			h = 20.6,			
			file = "topdown_view_F-14A.png",
			zOrder = 20,
		},]]
		pylons_enumeration = {12, 1, 11, 2, 3, 10, 4, 5, 8, 9, 7, 6},
    },
    {
        aim9_station(1, 0, 1.342000, 0.183859, -3.44629,
            {
				FiX = 90,
            },
            {
                { CLSID = "{AIS_ASQ_T50}", attach_point_position = {0.40,  0.0,  0.0}},			-- ACMI pod
            }
        ),
        pylon(2, 1, 0.900000, -0.230000, -3.130000,
            {
                FiZ = -1,
            },
            {
                { CLSID = "{7575BA0B-7294-4844-857B-031A144B2595}" },
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
            }
        ),
        pylon(3, 1, -0.221000, -0.882000, -1.487000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{82364E69-5564-4043-A866-E13032926C3E}" },
            }
        ),
        pylon(4, 1, 2.749000, -0.462000, -0.520000,
            {
                FiZ = -1,
            },
            {
                { CLSID = "{7575BA0B-7294-4844-857B-031A144B2595}" },
            }
        ),
        pylon(5, 1, -1.783000, -0.385000, -0.520000,
            {
                FiZ = -1,
            },
            {
                { CLSID = "{7575BA0B-7294-4844-857B-031A144B2595}" },
            }
        ),
        pylon(6, 1, 1.199000, -0.323000, 0.000000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
            }
        ),
        pylon(7, 1, -2.516000, -0.323000, 0.000000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
            }
        ),
        pylon(8, 1, -1.783000, -0.385000, 0.492000,
            {
                FiZ = -1,
            },
            {
                { CLSID = "{7575BA0B-7294-4844-857B-031A144B2595}" },
            }
        ),
        pylon(9, 1, 2.749000, -0.462000, 0.492000,
            {
                FiZ = -1,
            },
            {
                { CLSID = "{7575BA0B-7294-4844-857B-031A144B2595}" },
            }
        ),
        pylon(10, 1, -0.221000, -0.882000, 1.487000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{82364E69-5564-4043-A866-E13032926C3E}" },
            }
        ),
        pylon(11, 1, 0.900000, -0.230000, 3.125000,
            {
                FiZ = -1,
            },
            {
                { CLSID = "{7575BA0B-7294-4844-857B-031A144B2595}" },
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
            }
        ),
        aim9_station(12, 0, 1.342000, 0.183859,  3.44629,
            {
                FiX = -90,
            },
            {
               { CLSID = "{AIS_ASQ_T50}", attach_point_position = {0.40,  0.0,  0.0}},			-- ACMI pod
            }
        ),
    },
    {
        aircraft_task(CAP),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        aircraft_task(Intercept),
        --aircraft_task(GAI),
        aircraft_task(Reconnaissance),
    },
	aircraft_task(Intercept)
);
