return plane( "Tornado IDS", _("Tornado IDS"),
    {
        
        EmptyWeight = "14090",
        MaxFuelWeight = "4663",
        MaxHeight = "18000",
        MaxSpeed = "2340",
        MaxTakeOffWeight = "26490",
        Picture = "Tornado_IDS.png",
        Rate = "50",
        Shape = "TORNADO_IDS",
        WingSpan = "13.91",
        WorldID = TORNADO_IDS,
		country_of_origin = "GER",

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 180,
			chaff = {default = 90, increment = 30, chargeSz = 1},
			flare = {default = 45, increment = 15, chargeSz = 2}
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, TORNADO_IDS,
			"Bombers", "Datalink", "Link16"
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_BAD),
        Sensors = {
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
        pylon(2, 0, -1.280000, -0.486000, -2.018000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
                { CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}" },
                { CLSID = "{7210496B-7B81-4B52-80D6-8529ECF847CD}" },
                { CLSID = "{EF124821-F9BB-4314-A153-E0E2FE1162C4}" },
            }
        ),
        aim9_station(3, 1, -0.993000, 0.013000, -1.688000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
                { CLSID = "{AIS_ASQ_T50}", attach_point_position = {0.40,  0.0,  0.0}},			-- ACMI pod
            }
        ),
        pylon(4, 1, -0.155000, -1.003000, -0.550000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
                { CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" },
                { CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}" },
                { CLSID = "{7210496B-7B81-4B52-80D6-8529ECF847CD}" },
            }
        ),
        pylon(5, 1, 1.342000, -1.003000, -0.550000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
            }
        ),
        pylon(6, 1, -1.730000, -1.003000, -0.550000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
            }
        ),
        pylon(7, 1, -1.730000, -1.003000, 0.550000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
            }
        ),
        pylon(8, 1, 1.342000, -1.003000, 0.550000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
            }
        ),
        pylon(9, 1, -0.155000, -1.003000, 0.550000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
                { CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" },
                { CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}" },
                { CLSID = "{7210496B-7B81-4B52-80D6-8529ECF847CD}" },
            }
        ),
        aim9_station(10, 0, -0.993000, 0.013000, 1.688000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
               { CLSID = "{AIS_ASQ_T50}", attach_point_position = {0.40,  0.0,  0.0}},			-- ACMI pod
            }
        ),
        pylon(11, 1, -1.280000, -0.486000, 2.018000,
            {
				use_full_connector_position = true,
				FiX = 90,
            },
            {
                { CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}" },
                { CLSID = "{7210496B-7B81-4B52-80D6-8529ECF847CD}" },
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
