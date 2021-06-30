return helicopter( "Ka-27", _("Ka-27"),
    {
        InternalCargo = {
			nominalCapacity = 300,
			maximalCapacity = 300
		},
        EmptyWeight = "5920",
        LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
            [2] = 
            {
                Name = "HelicopterCarrier",
            }, -- end of [2]
        }, -- end of LandRWCategories
        MaxFuelWeight = "2616",
        MaxHeight = "5000",
        MaxSpeed = "290",
        MaxTakeOffWeight = "13000",
        Picture = "Ka-27.png",
        Rate = "30",
        Shape = "KA-27",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
            [2] = 
            {
                Name = "HelicopterCarrier",
            }, -- end of [2]
        }, -- end of TakeOffRWCategories
        WorldID = 154,
		country_of_origin = "RUS",
                                                
        attribute = {wsType_Air, wsType_Helicopter, wsType_NoWeapon, KA_27,
        "Transport helicopters",
        },
        Categories = {
        },
        CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_GOOD, LOOK_GOOD, LOOK_BAD),
        mapclasskey = "P0091000062",
    },
    {
    },
    {
        
        aircraft_task(Transport),
    },
	aircraft_task(Transport)
);
