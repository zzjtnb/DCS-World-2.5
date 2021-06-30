return helicopter( "Mi-26", _("Mi-26"),
    {
        InternalCargo = {
			nominalCapacity = 7000,
			maximalCapacity = 8500
		},
        EmptyWeight = "28890",
        MaxFuelWeight = "9600",
        MaxHeight = "6500",
        MaxSpeed = "300",
        MaxTakeOffWeight = "56000",
        Picture = "Mi-26.png",
        Rate = "30",
        Shape = "MI-26",
        WorldID = 153,
		country_of_origin = "RUS",

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			ChaffNoEdit = true,
			SingleChargeTotal = 192,
			chaff = {default = 0, increment = 0, chargeSz = 0},
			flare = {default = 192, increment = 32, chargeSz = 1}
		},
        
        singleInFlight = true,

        attribute = {wsType_Air, wsType_Helicopter, wsType_NoWeapon, MI_26,
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
