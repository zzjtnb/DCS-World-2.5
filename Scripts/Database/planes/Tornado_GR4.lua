return plane( "Tornado GR4", _("Tornado GR4"),
    {
        
        EmptyWeight = "14090",
        MaxFuelWeight = "4663",
        MaxHeight = "18000",
        MaxSpeed = "2340",
        MaxTakeOffWeight = "26490",
        Picture = "Tornado_GR3.png",
        Rate = "50",
        Shape = "TORNADO",
        WingSpan = "13.91",
        WorldID = F_2,
		country_of_origin = "UK",
		
		Aliases = {"Tornado GR3"},

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 180,
			chaff = {default = 90, increment = 30, chargeSz = 1},
			flare = {default = 45, increment = 15, chargeSz = 2}
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, F_2,
			"Bombers", "Datalink", "Link16", "Refuelable"
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_BAD),
        Sensors = {
            OPTIC = "Tornado GR_4 FLIR",
            RADAR = "Tornado SS radar",
            RWR = "Abstract RWR"
        },
		EPLRS = true,
        mapclasskey = "P0091000027",
    },
    {
        pylon(1, 0, -3.745000, -0.316000, -3.350000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
                { CLSID = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}" },
                { CLSID = "{8C3F26A2-FA0F-11d5-9190-00A0249B6F00}" },
            }
        ),
        pylon(2, 1, -1.280000, -0.486000, -2.018000,
            {
 				use_full_connector_position = true,
				FiX = 90,
            },
            {
                { CLSID = "{EF124821-F9BB-4314-A153-E0E2FE1162C4}" },
            }
        ),
        aim9_station(3, 1, -0.993000, 0.013000, -1.688000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
                { CLSID = "{E6747967-B1F0-4C77-977B-AB2E6EB0C102}" },
                { CLSID = "{AIS_ASQ_T50}", attach_point_position = {0.40,  0.0,  0.0}},			-- ACMI pod
            }
        ),
        pylon(4, 1, -0.246000, -0.997000, -0.547000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
                { CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" },
                { CLSID = "{E6747967-B1F0-4C77-977B-AB2E6EB0C102}" },
                { CLSID = "{1461CD18-429A-42A9-A21F-4C621ECD4573}" },
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}" }, -- GBU-27
			}
        ),
        pylon(5, 1, 1.436000, -0.997000, -0.546000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },  -- GBU-12	
				{ CLSID = "{A111396E-D3E8-4b9c-8AC9-2432489304D5}" },  -- Litening
            }
        ),
        pylon(6, 1, -1.100000, -0.997000, -0.546000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },  -- GBU-12		
            }
        ),
        pylon(7, 1, -1.100000, -0.997000, 0.546000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
			    { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },  -- GBU-12		
            }
        ),
        pylon(8, 1, 1.436000, -0.997000, 0.546000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
			    { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },  -- GBU-12		
            }
        ),
        pylon(9, 0, -0.246000, -0.997000, 0.547000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
                { CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" },
                { CLSID = "{E6747967-B1F0-4C77-977B-AB2E6EB0C102}" },
                { CLSID = "{1461CD18-429A-42A9-A21F-4C621ECD4573}" },
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}" }, -- GBU-27
            }
        ),
        aim9_station(10, 1, -0.993000, 0.013000, 1.688000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
                { CLSID = "{E6747967-B1F0-4C77-977B-AB2E6EB0C102}" },
                { CLSID = "{AIS_ASQ_T50}", attach_point_position = {0.40,  0.0,  0.0}},			-- ACMI pod
            }
        ),
        pylon(11, 0, -1.280000, -0.486000, 2.018000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
                { CLSID = "{EF124821-F9BB-4314-A153-E0E2FE1162C4}" },
            }
        ),
        pylon(12, 0, -3.745000, -0.316000, 3.350000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
                { CLSID = "{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}" },
                { CLSID = "{8C3F26A2-FA0F-11d5-9190-00A0249B6F00}" },
            }
        ),
    },
    {
        aircraft_task(PinpointStrike),
        aircraft_task(GroundAttack),
        aircraft_task(SEAD),
        aircraft_task(AFAC),
        aircraft_task(AntishipStrike),
        aircraft_task(Reconnaissance),
    },
	aircraft_task(GroundAttack)
);
