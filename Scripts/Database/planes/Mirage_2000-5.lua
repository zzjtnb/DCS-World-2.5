return plane( "Mirage 2000-5", _("Mirage 2000-5"),
    {
        
        EmptyWeight = "7500",
        MaxFuelWeight = "3160",
        MaxHeight = "19000",
        MaxSpeed = "2340",
        MaxTakeOffWeight = "17000",
        Picture = "Mirage_2000-5.png",
        Rate = "50",
        Shape = "M2000",
        WingSpan = "9.13",
        WorldID = 34, 
		country_of_origin = "FRA",

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = false,
			SingleChargeTotal = 128,
			chaff = {default = 112, increment = 0, chargeSz = 1},
			flare = {default = 16, increment = 0, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, Mirage,
			"Multirole fighters", "Refuelable", "Datalink", "Link16"
        },

        Categories = {
            pl_cat("{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor"),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_GOOD, LOOK_AVERAGE),
        Sensors = {
            RADAR = "RDY",
            IRST = nil,
            RWR = "Abstract RWR"
        },
		EPLRS = true,
        mapclasskey = "P0091000024",
    },
    {
        pylon(1, 0, -2.451000, -0.614000, -3.210000,
            {
            },
            {
                { CLSID = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}" },
            }
        ),
        pylon(2, 0, -2.384000, -0.612000, -2.340000,
            {
            },
            {
                { CLSID = "{FD21B13E-57F3-4C2A-9F78-C522D0B5BCE1}" },
                { CLSID = "{6D778860-7BB8-4ACB-9E95-BA772C6BBC2C}" },
                { CLSID = "{0DA03783-61E4-40B2-8FAE-6AEE0A5C5AAE}" },
                { CLSID = "{414DA830-B61A-4F9E-B71B-C2F6832E1D7A}" },
            }
        ),
        pylon(3, 0, 1.048000, -0.543000, -0.802000,
            {
            },
            {
                { CLSID = "{0DA03783-61E4-40B2-8FAE-6AEE0A5C5AAE}" },
                { CLSID = "{6D778860-7BB8-4ACB-9E95-BA772C6BBC2C}" },
            }
        ),
        pylon(4, 0, -3.072000, -0.543000, -0.802000,
            {
            },
            {
                { CLSID = "{0DA03783-61E4-40B2-8FAE-6AEE0A5C5AAE}" },
                { CLSID = "{6D778860-7BB8-4ACB-9E95-BA772C6BBC2C}" },
            }
        ),
        pylon(5, 0, -0.975000, -0.810000, 0.000000,
            {
            },
            {
                { CLSID = "{414DA830-B61A-4F9E-B71B-C2F6832E1D7A}" },
            }
        ),
        pylon(6, 0, -3.072000, -0.543000, 0.802000,
            {
            },
            {
                { CLSID = "{0DA03783-61E4-40B2-8FAE-6AEE0A5C5AAE}" },
                { CLSID = "{6D778860-7BB8-4ACB-9E95-BA772C6BBC2C}" },
            }
        ),
        pylon(7, 0, 1.048000, -0.543000, 0.802000,
            {
            },
            {
                { CLSID = "{0DA03783-61E4-40B2-8FAE-6AEE0A5C5AAE}" },
                { CLSID = "{6D778860-7BB8-4ACB-9E95-BA772C6BBC2C}" },
            }
        ),
        pylon(8, 0, -2.384000, -0.612000, 2.340000,
            {
            },
            {
                { CLSID = "{FD21B13E-57F3-4C2A-9F78-C522D0B5BCE1}" },
                { CLSID = "{6D778860-7BB8-4ACB-9E95-BA772C6BBC2C}" },
                { CLSID = "{0DA03783-61E4-40B2-8FAE-6AEE0A5C5AAE}" },
                { CLSID = "{414DA830-B61A-4F9E-B71B-C2F6832E1D7A}" },
            }
        ),
        pylon(9, 0, -2.451000, -0.614000, 3.210000,
            {
            },
            {
                { CLSID = "{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}" },
            }
        ),
    },
    {
        aircraft_task(CAP),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        aircraft_task(Intercept),
        --aircraft_task(GAI),
        aircraft_task(AFAC),
        aircraft_task(Reconnaissance),
    },
	aircraft_task(CAP)
);
