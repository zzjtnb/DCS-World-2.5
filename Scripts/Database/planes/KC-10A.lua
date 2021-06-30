return plane( "KC-10A", _("KC-10A"),
    {
        
        EmptyWeight = "110664",
        MaxFuelWeight = "80000",
        MaxHeight = "12700",
        MaxSpeed = "1000",
        MaxTakeOffWeight = "267000",
        Picture = "KC-10A.png",
        Rate = "100",
        Shape = "KC-10A",
        WingSpan = "50.4",
        WorldID = 29,
		country_of_origin = "USA",

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 240,
			chaff = {default = 120, increment = 30, chargeSz = 1},
			flare = {default = 60, increment = 15, chargeSz = 2}
        },
        
        singleInFlight = false,

        attribute = {wsType_Air, wsType_Airplane, wsType_Cruiser, KC_10,
        "Tankers",
        },
        Categories = {
            pl_cat("{8A302789-A55D-4897-B647-66493FA6826F}", ""),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_BAD, LOOK_BAD),
		TACAN = true,
        mapclasskey = "P0091000064",
    },
    {
    },
    {

        aircraft_task(Refueling),
    },
	aircraft_task(Refueling)
);
