return plane( "IL-76MD", _("IL-76MD"),
    {
        
        EmptyWeight = "100000",
        MaxFuelWeight = "80000",
        MaxHeight = "12000",
        MaxSpeed = "850",
        MaxTakeOffWeight = "180000",
        Picture = "IL-76MD.png",
        Rate = "70",
        Shape = "IL-76MD",
        WingSpan = "50.5",
        WorldID = 30,
		defFuelRatio = 0.5, -- топливо по умолчанию в долях от полного
		country_of_origin = "RUS",

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 192,
			-- PPR-26
			chaff = {default = 96, increment = 32, chargeSz = 1},
			-- PPI-26
			flare = {default = 96, increment = 32, chargeSz = 1}
        },
        
        singleInFlight = false,

        attribute = {wsType_Air, wsType_Airplane, wsType_Cruiser,IL_76,
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
