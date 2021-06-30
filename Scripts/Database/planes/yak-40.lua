return plane( "Yak-40", _("Yak-40"),
    {
        EmptyWeight = "9030",
        MaxFuelWeight = "3080",
        MaxHeight = "7500",
        MaxSpeed = "570",
        MaxTakeOffWeight = "14850",
        Picture = "Yak-40.png",
        Rate = "50",
        Shape = "Yak-40",
        WingSpan = "25.",
        WorldID = 57,
		country_of_origin = "RUS",

        singleInFlight = false,

        attribute = {wsType_Air, wsType_Airplane, wsType_Cruiser, Yak_40,
        "Transports",
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_AVERAGE, LOOK_BAD),
        mapclasskey = "P0091000029",
    },
    {
    },
    {
        aircraft_task(Transport),
        
    },
	aircraft_task(Transport)
);
