return helicopter( "SH-3W", _("SH-3W"),
    {
        
        EmptyWeight = "5865",
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
        MaxFuelWeight = "2132",
        MaxHeight = "4500",
        MaxSpeed = "270",
        MaxTakeOffWeight = "9525",
        Picture = "SH-3W.png",
        Rate = "30",
        Shape = "SH-3",
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
        WorldID = 164,
		country_of_origin = "USA",
		
		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 60,
			chaff = {default = 30, increment = 30, chargeSz = 1},
			flare = {default = 30, increment = 30, chargeSz = 1}
        },

        attribute = {wsType_Air, wsType_Helicopter, wsType_NoWeapon, SH_3H,
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
