return plane( "KC-135", _("KC-135"),
    {
        EmptyWeight = 44663,
        MaxFuelWeight = 90700.0,
        MaxHeight = 12000.0,
        MaxSpeed =  980,
        MaxTakeOffWeight = 146000.0,
        Picture = "KC-135.png",
        Rate = "100",
        Shape = "KC-135",
        WingSpan = 40,
        WorldID = 60,
		country_of_origin = "USA",

        singleInFlight = false,

        attribute = {wsType_Air, wsType_Airplane, wsType_Cruiser, KC_135,
        "Tankers", "Refuelable",
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
