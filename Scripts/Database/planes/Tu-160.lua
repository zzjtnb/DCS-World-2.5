return plane( "Tu-160", _("Tu-160"),
    {
        
        EmptyWeight = "117000",
        MaxFuelWeight = "157000",
        MaxHeight = "15600",
        MaxSpeed = "2200",
        MaxTakeOffWeight = "275000",
        Picture = "Tu-160.png",
        Rate = "100",
        Shape = "Tu-160",
        WingSpan = "55.7",
        WorldID = 18,
		country_of_origin = "RUS",

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 144,
			-- PPR-26
			chaff = {default = 72, increment = 3, chargeSz = 1},
			-- PPI-26
			flare = {default = 72, increment = 3, chargeSz = 1}
        },
        
        singleInFlight = true,

        attribute = {wsType_Air, wsType_Airplane, wsType_F_Bomber, Tu_160,
        "Strategic bombers", "Refuelable"
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_BAD, LOOK_AVERAGE, LOOK_BAD),
        Sensors = {
            RADAR = "Poisk",
            OPTIC = nil,
            RWR = "Abstract RWR"
        },
        Countermeasures = {
            ECM = "SPS-171"
        },
        mapclasskey = "P0091000027",
    },
    {
        pylon(1, 2, -6.500000, -0.150000, 0.000000,
            {
            },
            {
                { CLSID = "{0290F5DE-014A-4BB1-9843-D717749B1DED}" },
            }
        ),
        pylon(2, 2, 6.500000, -0.500000, 0.000000,
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
