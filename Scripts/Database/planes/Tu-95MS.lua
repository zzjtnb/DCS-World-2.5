return plane( "Tu-95MS", _("Tu-95MS"),
    {
        
        EmptyWeight = "96000",
        MaxFuelWeight = "87000",
        MaxHeight = "12000",
        MaxSpeed = "830",
        MaxTakeOffWeight = "185000",
        Picture = "Tu-95MS.png",
        Rate = "100",
        Shape = "Tu-95MS",
        WingSpan = "50.04",
        WorldID = 21,
		country_of_origin = "RUS",

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 96,
			-- PPR-26
			chaff = {default = 48, increment = 24, chargeSz = 1},
			-- PPI-26
			flare = {default = 48, increment = 24, chargeSz = 1}
        },
        
        singleInFlight = false,

        attribute = {wsType_Air, wsType_Airplane, wsType_Intruder, Tu_95,
        "Strategic bombers", "Refuelable"
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_GOOD),
        Sensors = {
            RADAR = "Rubidy MM",
            OPTIC = nil,
            RWR = "Abstract RWR"
        },
        Countermeasures = {
            ECM = "SPS-171"
        },
        mapclasskey = "P0091000027",
    },
    {
        pylon(1, 2, -3.982000, 0.000000, 0.000000,
            {
            },
            {
                { CLSID = "{0290F5DE-014A-4BB1-9843-D717749B1DED}" },
            }
        ),
    },
    {
        aircraft_task(PinpointStrike),
        
    },
	aircraft_task(PinpointStrike)
);
