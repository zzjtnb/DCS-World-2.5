return plane( "RQ-1A Predator", _("MQ-1A Predator"),
    {
        EmptyWeight = "430",
        MaxFuelWeight = "200",
        MaxHeight = "8600",
        MaxSpeed = "220",
        MaxTakeOffWeight = "1020",
        Picture = "RQ-1A_Predator.png",
        Rate = "50",
        Shape = "Predator",
        WingSpan = "14.83",
        WorldID = 55,
		country_of_origin = "USA",
   
        singleInFlight = true,
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Battleplane, RQ_1A_Predator,
        "UAVs",
        },
        Categories = {
        },
        Sensors = {
            OPTIC = {"RQ-1 Predator CAM", "RQ-1 Predator FLIR"},
            --RADAR = "RQ-1 Predator SAR"
        },
		HumanRadio = {
			frequency = 127.5,
			modulation = MODULATION_AM
		},
		EPLRS = true,
        mapclasskey = "P0091000023",
    },
    {
        pylon(1, 0, -0.216000, -0.387000, -1.585000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{ee368869-c35a-486a-afe7-284beb7c5d52}" },
            }
        ),
        pylon(2, 0, -0.260000, -0.387000, 1.585000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{ee368869-c35a-486a-afe7-284beb7c5d52}" },
            }
        ),
    },
    {
        aircraft_task(GroundAttack),
        aircraft_task(AFAC),
        aircraft_task(Reconnaissance),
    },
	aircraft_task(Reconnaissance)
);
