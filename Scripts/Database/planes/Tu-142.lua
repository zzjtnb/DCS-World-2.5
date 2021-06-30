return plane( "Tu-142", _("Tu-142"),
    {
        
        EmptyWeight = "96000",
        MaxFuelWeight = "87000",
        MaxHeight = "13500",
        MaxSpeed = "860",
        MaxTakeOffWeight = "185000",
        Picture = "Tu-142.png",
        Rate = "100",
        Shape = "Tu-142",
        WingSpan = "50.04",
        WorldID = 22,
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

        attribute = {wsType_Air, wsType_Airplane, wsType_Intruder,Tu_142,
        "Strategic bombers", "Refuelable"
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_GOOD),
        Sensors = {
            RADAR = "Berkut-95",
            OPTIC = nil,
            RWR = "Abstract RWR"
        },
        mapclasskey = "P0091000063",
    },
    {
        pylon(1, 2, -4.749000, 0.000000, 0.000000,
            {
            },
            {
                { CLSID = "{C42EE4C3-355C-4B83-8B22-B39430B8F4AE}" },
            }
        ),
    },
    {
        aircraft_task(AntishipStrike),
        aircraft_task(Reconnaissance),
        
    },
	aircraft_task(AntishipStrike)
);
