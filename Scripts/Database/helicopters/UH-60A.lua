return helicopter( "UH-60A", _("UH-60A"),
    {
        InternalCargo = {
			nominalCapacity = 1100,
			maximalCapacity = 1100
		},
        EmptyWeight = "7799",
        LandRWCategories = 
        {
        }, -- end of LandRWCategories
        MaxFuelWeight = "1100",
        MaxHeight = "5800",
        MaxSpeed = "300",
        MaxTakeOffWeight = "9980",
        Picture = "UH-60A.png",
        Rate = "30",
        Shape = "UH-60A",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of TakeOffRWCategories
        WorldID = 162,
		country_of_origin = "USA",

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 60,
			chaff = {default = 30, increment = 30, chargeSz = 1},
			flare = {default = 30, increment = 30, chargeSz = 1}
		},
        
        attribute = {wsType_Air, wsType_Helicopter, wsType_NoWeapon, UH_60A,
        "Transport helicopters",
        },
        Categories = {
        },
        CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_GOOD, LOOK_GOOD, LOOK_BAD),
        mapclasskey = "P0091000020",
    },
    {
    },
    {
        
        aircraft_task(Transport),
    },
	aircraft_task(Transport)
);
