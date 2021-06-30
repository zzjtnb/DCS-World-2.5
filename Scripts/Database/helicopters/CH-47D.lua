return helicopter( "CH-47D", _("CH-47D"),
    {
        InternalCargo = {
			nominalCapacity = 3300,
			maximalCapacity = 5500
		},
        EmptyWeight = "15329",
        LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of LandRWCategories
        MaxFuelWeight = "3600",
        MaxHeight = "6750",
        MaxSpeed = "300",
        MaxTakeOffWeight = "22680",
        Picture = "CH-47D.png",
        Rate = "30",
        Shape = "CH-47D",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of TakeOffRWCategories
        WorldID = 159,
		country_of_origin = "USA",

		-- Countermeasures, 8xM-160 = 240 Chaffs/Flares
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 240,
			chaff = {default = 120, increment = 30, chargeSz = 1},
			flare = {default = 120, increment = 30, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Helicopter, wsType_NoWeapon, CH_47D,
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
