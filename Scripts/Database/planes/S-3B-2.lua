return plane( "S-3B Tanker", _("S-3B Tanker"),
    {
        
        EmptyWeight = "12088",
        LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of LandRWCategories
        MaxFuelWeight = "7813",
        MaxHeight = "10700",
        MaxSpeed = "840",
        MaxTakeOffWeight = "23831",
        Picture = "S-3B.png",
        Rate = "50",
        Shape = "S-3R",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier With Catapult",
            }, -- end of [1]
        }, -- end of TakeOffRWCategories
        WingSpan = "20.93",
        WorldID = S_3R,
		country_of_origin = "USA",

		-- Countermeasures, ALE-39, typical 30 Chaff; 30 Flares (60)
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 60,
			chaff = {default = 30, increment = 30, chargeSz = 1},
			flare = {default = 30, increment = 30, chargeSz = 1}
        },
        
        singleInFlight = false,

        attribute = {wsType_Air, wsType_Airplane, wsType_Cruiser, S_3R,
        "Aux", "Tankers", "Refuelable"
        },
        Categories = {
            pl_cat("{8A302789-A55D-4897-B647-66493FA6826F}", ""),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_GOOD, LOOK_BAD),
        Sensors = {
            RADAR = "AN/APS-137",
            RWR = "Abstract RWR"
        },
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
