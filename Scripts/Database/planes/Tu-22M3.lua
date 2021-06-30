return plane( "Tu-22M3", _("Tu-22M3"),
    {
        
        EmptyWeight = "50000",
        MaxFuelWeight = "50000",
        MaxHeight = "13300",
        MaxSpeed = "2300",
        MaxTakeOffWeight = "126400",
        Picture = "Tu-22M3.png",
        Rate = "100",
        Shape = "tu-22",
        WingSpan = "34.28",
        WorldID = 25,
		country_of_origin = "RUS",

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 96,
			-- PPR-26
			chaff = {default = 48, increment = 24, chargeSz = 1},
			-- PPI-26
			flare = {default = 48, increment = 24, chargeSz = 1}
        },
        
        singleInFlight = false,

        attribute = {wsType_Air, wsType_Airplane, wsType_F_Bomber, Tu_22M3,
        "Bombers",
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_BAD, LOOK_AVERAGE, LOOK_BAD),
        Sensors = {
            RADAR = "PNA-D Leninets",
            OPTIC = nil,
            RWR = "Abstract RWR"
        },
        Countermeasures = {
            ECM = "Lutik SPS-151"
        },
        mapclasskey = "P0091000027",
    },
    {
        pylon(1, 1, -5.324477, -0.970817,-5.188417,
            {
				connector 					= "Pylon1",
				arg 						= 308,
				arg_value 					= 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{12429ECF-03F0-4DF6-BCBD-5D38B6343DE1}",Type = 1},--Kh-22
				--{ CLSID = "{7C5F0F5F-0A0B-46E8-937C-8922303E39A8}",Type = 0,arg = 308,arg_value = 1.0,connector = "POINT_PYLON_4"},--MBDZ
                --{ CLSID = "{FA673F4C-D9E4-4993-AA7A-019A92F3C005}",Type = 0,arg = 308,arg_value = 1.0,connector = "POINT_PYLON_4"},
                { CLSID = "{E1AAE713-5FC3-4CAA-9FF5-3FDCFB899E33}",Type = 0,arg = 308,arg_value = 1.0,connector = "POINT_PYLON_4"}, -- MER FAB-250*9
            }
        ),
        pylon(2, 0, 1.596810, -0.991814, -1.910945,
            {
				connector = "POINT_PYLON_2",
				arg = 313,
				arg_value = 0,
            },
            {
                --{ CLSID = "{7C5F0F5F-0A0B-46E8-937C-8922303E39A8}" ,arg = 313,arg_value = 1.0},
                --{ CLSID = "{FA673F4C-D9E4-4993-AA7A-019A92F3C005}" ,arg = 313,arg_value = 1.0},
                { CLSID = "{E1AAE713-5FC3-4CAA-9FF5-3FDCFB899E33}" ,arg = 313,arg_value = 1.0}, -- MER FAB-250*9
            }
        ),
        pylon(3, 2, -5.288000, -0.754000, 0.000000,
            {
				connector = "Pylon4", 
				use_full_connector_position = true,
				arg = 310,
				arg_value = 1.0,
            },
            {
                { CLSID = "{12429ECF-03F0-4DF6-BCBD-5D38B6343DE1}" ,Type = 1,arg_value = 0},--Kh-22 , change pylon type to catapult start
                { CLSID = "{AD5E5863-08FC-4283-B92C-162E2B2BD3FF}" },
                { CLSID = "{BDAD04AA-4D4A-4E51-B958-180A89F963CF}" },
            }
        ),
        pylon(4, 0, 1.596810, -0.991814,  1.910945,
            {
				connector = "POINT_PYLON_1",
				arg = 312,
				arg_value = 0,
            },
            {
                --{ CLSID = "{7C5F0F5F-0A0B-46E8-937C-8922303E39A8}",arg = 312,arg_value = 1.0 },
                --{ CLSID = "{FA673F4C-D9E4-4993-AA7A-019A92F3C005}",arg = 312,arg_value = 1.0 },
                { CLSID = "{E1AAE713-5FC3-4CAA-9FF5-3FDCFB899E33}",arg = 312,arg_value = 1.0 }, -- MER FAB-250*9
            }
        ),
        pylon(5, 1, -5.324477, -0.970817, 5.188417,
            {
				connector 					= "Pylon7",
				arg 	  					= 309,
				arg_value 					= 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{12429ECF-03F0-4DF6-BCBD-5D38B6343DE1}",Type = 1},--Kh-22
				--{ CLSID = "{7C5F0F5F-0A0B-46E8-937C-8922303E39A8}",Type = 0,arg = 309,arg_value = 1.0,connector = "POINT_PYLON_3"},--MBDZ
                --{ CLSID = "{FA673F4C-D9E4-4993-AA7A-019A92F3C005}",Type = 0,arg = 309,arg_value = 1.0,connector = "POINT_PYLON_3"},
                { CLSID = "{E1AAE713-5FC3-4CAA-9FF5-3FDCFB899E33}",Type = 0,arg = 309,arg_value = 1.0,connector = "POINT_PYLON_3"}, -- MER FAB-250*9
            }
        ),
    },
    {
        aircraft_task(AntishipStrike),
        aircraft_task(GroundAttack),
        aircraft_task(RunwayAttack),
        
    },
	aircraft_task(AntishipStrike)
);
