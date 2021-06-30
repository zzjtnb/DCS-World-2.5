return helicopter( "OH-58D", _("OH-58D"),
    {
        
        EmptyWeight = "1560",
        LandRWCategories = 
        {            
        }, -- end of LandRWCategories
        MaxFuelWeight = "454",
        MaxHeight = "6300",
        MaxSpeed = "220",
        MaxTakeOffWeight = "2495",
        Picture = "OH-58.png",
        Rate = "30",
        Shape = "OH-58D",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of TakeOffRWCategories
        WorldID = 168,
		country_of_origin = "USA",
                                        
        -- Countermeasures, M-130 airborne general purpose CMDS , Each dispenser module can accommodate 30 payloads of a single type with the complete system incorporating one or two dispensers. A dual dispenser, 60 payload configuration weighs 21.8 kg and M130 can be directly interfaced with a passive IR missile warner. 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 60,
			chaff = {default = 30, increment = 30, chargeSz = 1},
			flare = {default = 30, increment = 30, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Helicopter, wsType_Battleplane, OH_58D,
        "Attack helicopters",
        },
        Categories = {
        },
        CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_GOOD, LOOK_AVERAGE, LOOK_BAD),
        Sensors = {
            OPTIC = {"TVS", "TIS"},
            RWR = "Abstract RWR"
        },
        Countermeasures = {         
        },
        mapclasskey = "P0091000096",
    },
    {
        pylon(1, 0, 0, -0.440000, -1.232000,
            {
				use_full_connector_position=true,
				arg 	  = 308,
				arg_value = 1.0,
            },
            {
                { CLSID = "M260_HYDRA",			arg_value = 0.0 },
                { CLSID = "M260_HYDRA_WP",		arg_value = 0.0 },
                { CLSID = "AGM114x2_OH_58",		arg_value = 0.0 },
				{ CLSID = "oh-58-brauning",		arg_value = 0.0 },
            }
        ),
        pylon(2, 0, 0, -0.440000, 1.232000,
            {
				use_full_connector_position=true,
				arg = 309,
				arg_value = 1.0,
            },
            {
                { CLSID = "M260_HYDRA_WP",		arg_value = 0.0 },
                { CLSID = "M260_HYDRA",			arg_value = 0.0 },
                { CLSID = "AGM114x2_OH_58",		arg_value = 0.0 },
            }
        ),
    },
    {
        aircraft_task(AFAC),
        aircraft_task(Transport),
        aircraft_task(GroundAttack),
		aircraft_task(Escort),
        aircraft_task(AntishipStrike)
    },
	aircraft_task(AFAC)
);
