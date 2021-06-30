return plane( "A-50", _("A-50"),
    {
        
        EmptyWeight = "90000",
        MaxFuelWeight = "70000",
        MaxHeight = "12000",
        MaxSpeed = "850",
        MaxTakeOffWeight = "190000",
        Picture = "A-50.png",
        Rate = "100",
        Shape = "a50",
        WingSpan = "50.5",
        WorldID = 26,
		country_of_origin = "RUS",
        
		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 384,
			-- PPR-26
			chaff = {default = 192, increment = 24, chargeSz = 1},
			-- PPI-26
			flare = {default = 192, increment = 24, chargeSz = 1}
        },
        
        singleInFlight = false,

        attribute = {wsType_Air, wsType_Airplane, wsType_Cruiser, A_50,
        "AWACS", "Refuelable"
        },
        Categories = {
            pl_cat("{D2BC159C-5B7D-40cf-92CD-44DF3E99FAA9}", ""),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_BAD, LOOK_BAD),
        Sensors = {
            RADAR = "Shmel",
            RWR = "Abstract RWR"
        },
        mapclasskey = "P0091000056",
    },
    {
    },
    {
        aircraft_task(AWACS),
    },
	aircraft_task(AWACS)
);
