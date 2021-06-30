return plane( "An-26B", _("An-26B"),
    {
        
        EmptyWeight = "15850",
        MaxFuelWeight = "5500",
        MaxHeight = "7500",
        MaxSpeed = "540",
        MaxTakeOffWeight = "24000",
        Picture = "An-26B.png",
        Rate = "50",
        Shape = "An-26B",
        WingSpan = "29.2",
        WorldID = 39,
		defFuelRatio = 0.5, -- топливо по умолчанию в долях от полного
		country_of_origin = "UKR",

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 768,
			-- PPR-26
			chaff = {default = 384, increment = 32, chargeSz = 1},
			-- PPI-26
			flare = {default = 384, increment = 32, chargeSz = 1}
        },
        
        singleInFlight = false,

        attribute = {wsType_Air, wsType_Airplane, wsType_Cruiser, AN_26B,
        "Transports",
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_BAD, LOOK_BAD),      
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
