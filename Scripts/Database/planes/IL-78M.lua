return plane( "IL-78M", _("IL-78M"),
    {
        
        EmptyWeight = "98000",
        MaxFuelWeight = "90000",
        MaxHeight = "12000",
        MaxSpeed = "850",
        MaxTakeOffWeight = "210000",
        Picture = "IL-78M.png",
        Rate = "100",
        Shape = "IL-78M",
        WingSpan = "50.5",
        WorldID = 28,
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

        attribute = {wsType_Air, wsType_Airplane, wsType_Cruiser, IL_78,
        "Tankers",
        },
        Categories = {
            pl_cat("{8A302789-A55D-4897-B647-66493FA6826F}", ""),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_BAD, LOOK_BAD),
        mapclasskey = "P0091000064",
    },
    {
    },
    {
     
        aircraft_task(Refueling),
    },
	aircraft_task(Refueling)
);
