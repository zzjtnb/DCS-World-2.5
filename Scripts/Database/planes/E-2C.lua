return plane( "E-2C", _("E-2D"),
    {
        
        EmptyWeight = "17090",
        LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of LandRWCategories
        MaxFuelWeight = "5624",
        MaxHeight = "9400",
        MaxSpeed = "610",
        MaxTakeOffWeight = "24687",
        Picture = "E-2D.png",
        Rate = "100",
        Shape = "E-2C",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier With Catapult",
            }, -- end of [1]
        }, -- end of TakeOffRWCategories
        WingSpan = "24.56",
        WorldID = 41,
		country_of_origin = "USA",

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 240,
			chaff = {default = 120, increment = 30, chargeSz = 1},
			flare = {default = 60, increment = 15, chargeSz = 2}
        },
		
        singleInFlight = false,

        attribute = {wsType_Air, wsType_Airplane, wsType_Cruiser, E_2C,
			"AWACS", "Datalink", "Link16"
        },
        Categories = {
            pl_cat("{D2BC159C-5B7D-40cf-92CD-44DF3E99FAA9}", ""),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_BAD, LOOK_BAD),
        Sensors = {
            RADAR = "AN/APS-138",
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
