return plane( "F/A-18A", _("F/A-18A"),
    {
        
        EmptyWeight = "10810",
        LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of LandRWCategories
        MaxFuelWeight = "6531",
        MaxHeight = "18200",
        MaxSpeed = "1920",
        MaxTakeOffWeight = "25401",
        Picture = "FA-18A.png",
        Rate = "50",
        Shape = "f-18a",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier With Catapult",
            }, -- end of [1]
        }, -- end of TakeOffRWCategories
        WingSpan = "11.43",
        WorldID = 14,
		country_of_origin = "USA",

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 60,
			-- RR-170
			chaff = {default = 30, increment = 30, chargeSz = 1},
			-- MJU-7
			flare = {default = 15, increment = 15, chargeSz = 2}
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, FA_18,
        "Multirole fighters", "Refuelable"
        },
        Categories = {
            pl_cat("{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor"),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_GOOD),
        Sensors = {
            RADAR = "AN/APG-73",
            RWR = "Abstract RWR"
        },
        mapclasskey = "P0091000024",
    },
    {
        aim9_station(1, 0, -2.081000, 0.041000, -5.814000,
            {
             	use_full_connector_position = true,
            },
            {
                { CLSID = "{AIS_ASQ_T50}", attach_point_position = {0.25,  0.0,  0.0}},			-- ACMI pod
            }
        ),
        aim9_station(2, 0, -1.273000, -0.544000, -3.338000,
            {
             	use_full_connector_position = true,
				FiZ = -2.0,
            },
            {
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
                { CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" },
                { CLSID = "{8B7CADF9-4954-46B3-8CFB-93F2F5B90B03}", Type = 1 },		--AGM-84A
                { CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}" },
                { CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" },
                { CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}" },
                { CLSID = "{F16A4DE0-116C-4A71-97F0-2CF85B0313EC}" },
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" },
                { CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{0B9ABA77-93B8-45FC-9C63-82AFB2CB50A4}" },
            }
        ),
        pylon(3, 0, -1.129000, -0.496000, -2.184000,
            {
            	use_full_connector_position = true,
				FiZ = -2.0,
			},
            {
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
                { CLSID = "{8B7CADF9-4954-46B3-8CFB-93F2F5B90B03}", Type = 1 },
                { CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}" },
                { CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" },
                { CLSID = "{EFEC8200-B922-11d7-9897-000476191836}" },
            }
        ),
        pylon(4, 1, -2.766000, -0.691000, -1.083000,
            {
            	use_full_connector_position = true,
            },
            {
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
                { CLSID = "{6C0D552F-570B-42ff-9F6D-F10D9C1D4E1C}" },
            }
        ),
        pylon(5, 1, 0.054000, -0.730000, 0.000000,
            {
            	use_full_connector_position = true,
            },
            {
                { CLSID = "{EFEC8200-B922-11d7-9897-000476191836}" },
            }
        ),
        pylon(6, 1, -2.766000, -0.691000, 1.083000,
            {
            	use_full_connector_position = true,
            },
            {
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
                { CLSID = "{1C2B16EB-8EB0-43de-8788-8EBB2D70B8BC}" },
            }
        ),
        pylon(7, 0, -1.129000, -0.496000, 2.184000,
            {
            	use_full_connector_position = true,
				FiZ = -2.0,
			},
            {
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
                { CLSID = "{8B7CADF9-4954-46B3-8CFB-93F2F5B90B03}", Type = 1 },
                { CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}" },
                { CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" },
                { CLSID = "{EFEC8200-B922-11d7-9897-000476191836}" },
            }
        ),
        aim9_station(8, 0, -1.273000, -0.544000, 3.338000,
            {
              	use_full_connector_position = true,
				FiZ = -2.0,
            },
            {
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
                { CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" },
                { CLSID = "{8B7CADF9-4954-46B3-8CFB-93F2F5B90B03}", Type = 1 },
                { CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}" },
                { CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" },
                { CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}" },
                { CLSID = "{F16A4DE0-116C-4A71-97F0-2CF85B0313EC}" },
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" },
                { CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{0B9ABA77-93B8-45FC-9C63-82AFB2CB50A4}" },
            }
        ),
        aim9_station(9, 0, -2.081000, 0.041000, 5.814000,
            {
            	use_full_connector_position = true,
            },
            {
                { CLSID = "{AIS_ASQ_T50}", attach_point_position = {0.25,  0.0,  0.0}},			-- ACMI pod
            }
        ),
    },
    {
        aircraft_task(CAP),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        aircraft_task(Intercept),
        --aircraft_task(GAI),
        aircraft_task(PinpointStrike),
        aircraft_task(CAS),
        aircraft_task(GroundAttack),
        aircraft_task(RunwayAttack),
        aircraft_task(SEAD),
        aircraft_task(AFAC),
        aircraft_task(AntishipStrike),
        aircraft_task(Reconnaissance),
    },
	aircraft_task(CAP)
);
