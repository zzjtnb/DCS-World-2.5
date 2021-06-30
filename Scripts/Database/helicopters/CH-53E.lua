return helicopter( "CH-53E", _("CH-53E"),
    {
		InternalCargo = {
			nominalCapacity = 3500,
			maximalCapacity = 3800
		},
        EmptyWeight = "15407",
        LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of LandRWCategories
        MaxFuelWeight = "1908",
        MaxHeight = "6200",
        MaxSpeed = "310",
        MaxTakeOffWeight = "31630",
        Picture = "CH-53E.png",
        Rate = "30",
        Shape = "CH-53E",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of TakeOffRWCategories
        WorldID = 160,
		country_of_origin = "USA",

		-- Countermeasures, 4xM-160 = 120 Chaffs/Flares
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 120,
			chaff = {default = 60, increment = 30, chargeSz = 1},
			flare = {default = 60, increment = 30, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Helicopter, wsType_NoWeapon, CH_53E,
        "Transport helicopters",
        },
        Categories = {
        },
        CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_AVERAGE, LOOK_BAD, LOOK_BAD),
        mapclasskey = "P0091000020",
    },
    {
    },
    {
       
        aircraft_task(Transport),
    },
	aircraft_task(Transport)
);
