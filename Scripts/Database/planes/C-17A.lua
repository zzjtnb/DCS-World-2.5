return plane( "C-17A", _("C-17A"),
    {
        
        EmptyWeight = "125645",
        MaxFuelWeight = "132405",
        MaxHeight = "13700",
        MaxSpeed = "850",
        MaxTakeOffWeight = "265350",
        Picture = "C-17A.png",
        Rate = "100",
        Shape = "C-17A",
        WingSpan = "51.76",
        WorldID = 47,
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

        attribute = {wsType_Air, wsType_Airplane, wsType_Cruiser, C_17,
        "Transports", "Refuelable"
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_BAD, LOOK_BAD),
        mapclasskey = "P0091000029",
    },
    {
    },
    {
        aircraft_task(Transport),
		aircraft_task(Airborne),
    },
	aircraft_task(Transport)
);
