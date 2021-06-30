return plane( "An-30M",  _("An-30M"),
    {
        
        EmptyWeight = "15850",
        MaxFuelWeight = "8300",
        MaxHeight = "8300",
        MaxSpeed = "540",
        MaxTakeOffWeight = "24000",
        Picture = "An-30M.png",
        Rate = "50",
        Shape = "An-30M",
        WingSpan = "29.2",
        WorldID = 40,
		country_of_origin = "UKR",

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 384,
			-- PPR-26
			chaff = {default = 192, increment = 32, chargeSz = 1},
			-- PPI-26
			flare = {default = 192, increment = 32, chargeSz = 1}
        },
        
        singleInFlight = false,

        attribute = {wsType_Air, wsType_Airplane, wsType_Cruiser, AN_30M,
        "Transports",
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_BAD, LOOK_BAD), 
        mapclasskey = "P0091000026",
    },
    {
    },
    {
        aircraft_task(Transport),
        aircraft_task(Reconnaissance),
    },
	aircraft_task(Transport)
);
