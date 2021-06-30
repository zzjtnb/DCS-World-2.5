return plane( "C-130", _("C-130"),
    {
        
        EmptyWeight = "36400",
        MaxFuelWeight = "20830",
        MaxHeight = "10000",
        MaxSpeed = "610",
        MaxTakeOffWeight = "79380",
        Picture = "C-130.png",
        Rate = "70",
        Shape = "c-130",
        WingSpan = "40.4",
        WorldID = 31,
		defFuelRatio = 0.5, -- топливо по умолчанию в долях от полного
		country_of_origin = "USA",

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 240,
			chaff = {default = 120, increment = 30, chargeSz = 1},
			flare = {default = 60, increment = 15, chargeSz = 2}
        },
		
        singleInFlight = false,

        attribute = {wsType_Air, wsType_Airplane, wsType_Cruiser,C_130,
        "Transports",
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_AVERAGE, LOOK_BAD),
        Sensors = {
            RWR = "Abstract RWR"
        },
        Countermeasures = {         
            IRCM = "AN/ALQ-157",
            DISPENSER = "AN/ALE-47"
        },
        mapclasskey = "P0091000029",
    },
    {
    },
    {
        aircraft_task(Transport),
        
    },
	aircraft_task(Transport)
);
