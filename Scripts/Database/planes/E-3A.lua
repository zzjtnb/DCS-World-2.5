return plane( "E-3A", _("E-3A"),
    {
        
        EmptyWeight = "60000",
        MaxFuelWeight = "65000",
        MaxHeight = "13100",
        MaxSpeed = "860",
        MaxTakeOffWeight = "148000",
        Picture = "E-3A.png",
        Rate = "100",
        Shape = "e-3",
        WingSpan = "44.4",
        WorldID = 27,
		country_of_origin = "USA",

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 240,
			chaff = {default = 120, increment = 30, chargeSz = 1},
			flare = {default = 60, increment = 15, chargeSz = 2}
        },
		
        singleInFlight = false,

        attribute = {wsType_Air, wsType_Airplane, wsType_Cruiser, E_3,
			"AWACS", "Refuelable", "Datalink", "Link16"
        },
        Categories = {
            pl_cat("{D2BC159C-5B7D-40cf-92CD-44DF3E99FAA9}", ""),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_BAD, LOOK_BAD),
        Sensors = {
            RADAR = "AN/APY-1",
            RWR = "Abstract RWR"
        },
		EPLRS = true,
        mapclasskey = "P0091000056",
    },
    {
    },
    {
        
        aircraft_task(AWACS),
    },
	aircraft_task(AWACS)
);
