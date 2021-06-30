return plane( "Su-24MR", _("Su-24MR"),
    {
        
        EmptyWeight = "22300",
        MaxFuelWeight = "11700",
        MaxHeight = "16500",
        MaxSpeed = "1700",
        MaxTakeOffWeight = "39700",
        Picture = "Su-24MR.png",
        Rate = "70",
        Shape = "su-24MR",
        WingSpan = "17.64",
        WorldID = Su_24MR,
		country_of_origin = "RUS",

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 192,
			-- PPR-26
			chaff = {default = 96, increment = 24, chargeSz = 1},
			-- PPI-26
			flare = {default = 96, increment = 24, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, Su_24MR,
        "Aux", "Refuelable"
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_BAD, LOOK_BAD, LOOK_BAD),
        Sensors = {
            RWR = "Abstract RWR"
        },
        Countermeasures = {
            ECM = "Geran SPS-161"
        },
        mapclasskey = "P0091000026",
    },
    {
        pylon(1, 0, -3.010777,  0.033165, -4.894181,
            {
				arg 	  = 308,
				arg_value = 1,--clean be default
                connector = "PYLON_1",
				use_full_connector_position = true,
            },
            {
                BD3_(1,"{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}"),--"2xR-60M APU-60-2L"
            }
        ),
        pylon(2, 0, -1.626964,  0.168190, -2.253826,
            {
				arg 	  = 309,
				arg_value = 1,--clean be default
                connector = "PYLON_2",
				
				use_full_connector_position = true,
            },
            {
				BD4_(2,"{7D7EC917-05F6-49D4-8045-61FC587DD019}" ),--PTB
            }
        ),
        pylon(3, 1, -2.860757, -0.790051, -0.473607,
            {
				arg 	  = 310,
				arg_value = 1,--clean be default
                connector = "PYLON_3",
				use_full_connector_position = true,
            },
            {
            }
        ),
        pylon(4, 1, -1.901574, -0.790303,  0.033709,
            {
				arg 	  = 311,
				arg_value = 1,--clean be default
                connector = "PYLON_4",
				use_full_connector_position = true,
            },
            {
            }
        ),
        pylon(5, 1,  0.881221, -0.806699,  0.033955,
            {
				arg 	  = 312,
				arg_value = 1,--clean be default
                connector = "PYLON_5",
				use_full_connector_position = true,
            },
            {
                { CLSID = "{16602053-4A12-40A2-B214-AB60D481B20E}" ,arg_value = 0, connector = "PylonBD3_5"},--PTB
                { CLSID = "{0519A262-0AB6-11d6-9193-00A0249B6F00}" },
                { CLSID = "{0519A263-0AB6-11d6-9193-00A0249B6F00}" },
            }
        ),
        pylon(6, 1, -2.860757, -0.790051,  0.541705,
            {
				arg 	  = 313,
				arg_value = 1,--clean be default
                connector = "PYLON_6",
				use_full_connector_position = true,
            },
            {
            }
        ),
        pylon(7, 0, -1.626964,  0.168189,  2.321837,
            {
				arg 	  = 314,
				arg_value = 1,--clean be default
                connector = "PYLON_7",
				use_full_connector_position = true,
            },
            {
				BD4_(7,"{7D7EC917-05F6-49D4-8045-61FC587DD019}" ),--PTB
			}
        ),
        pylon(8, 0, -3.010779,  0.033164,  4.962269,
            {
				arg 	  = 315,
				arg_value = 1,--clean be default
                connector = "PYLON_8",
				use_full_connector_position = true,
            },
            {
				{ CLSID = "{0519A261-0AB6-11d6-9193-00A0249B6F00}" },
            }
        ),
    },
    {
        aircraft_task(AFAC),
        aircraft_task(Reconnaissance),
    },
	aircraft_task(Reconnaissance)
);
