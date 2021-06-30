return plane( "F-16A MLU", _("F-16A MLU"),
    {
        
        EmptyWeight = "8853",
        MaxFuelWeight = "3104",
        MaxHeight = "19000",
        MaxSpeed = "2150",
        MaxTakeOffWeight = "19187",
        Picture = "F-16A-2.png",
        Rate = "50",
        Shape = "F-16A",
        WingSpan = "9.45",
        WorldID = 52,
		country_of_origin = "USA",

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 120,
			-- RR-170
			chaff = {default = 60, increment = 30, chargeSz = 1},
			-- MJU-7
			flare = {default = 30, increment = 15, chargeSz = 2}
        },
       
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, F_16A,
        "Multirole fighters", "Refuelable"
        },
        Categories = {
            pl_cat("{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor"),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_GOOD, LOOK_GOOD),
        Sensors = {
            RADAR = "AN/APG-68",
            RWR = "Abstract RWR"
        },
		EPLRS = true,
        mapclasskey = "P0091000024",
    },
    {
        aim9_station(1, 0, -1.265000, 0.346000, -4.813000,
            {
                FiZ = -2,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{AIS_ASQ_T50}", attach_point_position = {0.40,  0.0,  0.0}},			-- ACMI pod
            }
        ),
        aim9_station(2, 0, -0.983000, -0.110000, -3.948000,
            {
                FiZ = -2,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
            }
        ),
        aim9_station(3, 0, -1.115000, -0.161000, -3.050000,
            {
                FiZ = -2,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{DAC53A2F-79CA-42FF-A77A-F5649B601308}" },
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
				{ CLSID = "{7B8DCEB4-820B-4015-9B48-1028A4195692}" }, -- AGM-119 Penguin
				{ CLSID = "LAU_117_AGM_65H" },  -- AGM-65H-LAU-117
		        { CLSID = "LAU_88_AGM_65H_2_L" },  -- 2XAGM-65H-LAU-88
				{ CLSID = "LAU_88_AGM_65H_3" },  -- 3XAGM-65H-LAU-88	
				{ CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" }, -- AGM-65D-LAU-117
				{ CLSID = "{E6A6262A-CA08-4B3D-B030-E1A993B98452}" },  -- 2XAGM-65D-LAU-88	
				{ CLSID = "LAU_117_AGM_65G" }, -- AGM-65G-LAU-117	
				{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}" }, -- AGM-65K-LAU-117
				{ CLSID = "{Mk82AIR}" }, -- Mk-82AIR	
				{ CLSID = "{BRU-42_3*Mk-82AIR}" }, -- Mk-82AIR-TER		
				{ CLSID = "{GBU-38}" }, -- GBU-38	
				{ CLSID = "{GBU-31}" }, -- GBU-31(V)1B	
				{ CLSID = "{89D000B0-0360-461A-AD83-FB727E2ABA98}",attach_point_position = {0.5, 0.02 ,0 }  }, -- GBU-12-TER
				{ CLSID = "{9BCC2A2B-5708-4860-B1F1-053A18442067}" }, -- AGM-154
            }
        ),
        pylon(4, 0, -0.118000, -0.175000, -1.813000,
            {
                FiZ = -2.5,
            },
            {
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
                { CLSID = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}" },
				{ CLSID = "{7B8DCEB4-820B-4015-9B48-1028A4195692}" }, -- AGM-119 Penguin
				{ CLSID = "LAU_117_AGM_65H" },  -- AGM-65H-LAU-117
				{ CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" }, -- AGM-65D-LAU-117
				{ CLSID = "LAU_117_AGM_65G" }, -- AGM-65G-LAU-117	
				{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}" }, -- AGM-65K-LAU-117	
				{ CLSID = "{Mk82AIR}" }, -- Mk-82AIR	
				{ CLSID = "{BRU-42_3*Mk-82AIR}" }, -- Mk-82AIR-TER	
				{ CLSID = "{GBU-38}" }, -- GBU-38	
				{ CLSID = "{GBU-31}" }, -- GBU-31(V)1B						
            }
        ),
        pylon(5, 0, 2.700000, -0.550000, 0.550000,
            {
            },
            {
				{ CLSID = "{CAAC1CFD-6745-416B-AFA4-CB57414856D0}",attach_point_position = {-2.7, 0.58 ,-0.55} }, -- Lantirn Pod
				{ CLSID = "{A111396E-D3E8-4b9c-8AC9-2432489304D5}" }, -- Litening
            }
        ),
        pylon(6, 0, 0.231000, -0.829000, 0.000000,
            {
                FiZ = -1.5,
            },
            {
                { CLSID = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}" },
                { CLSID = "{8A0BE8AE-58D4-4572-9263-3144C0D06364}" },
            }
        ),
        pylon(7, 0, -0.118000, -0.175000, 1.813000,
            {
                FiZ = -2.5,
            },
            {
                { CLSID = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}" },
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
				{ CLSID = "{7B8DCEB4-820B-4015-9B48-1028A4195692}" }, -- AGM-119 Penguin
				{ CLSID = "LAU_117_AGM_65H" },  -- AGM-65H-LAU-117
				{ CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" }, -- AGM-65D-LAU-117
				{ CLSID = "LAU_117_AGM_65G" }, -- AGM-65G-LAU-117	
				{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}" }, -- AGM-65K-LAU-117	
				{ CLSID = "{Mk82AIR}" }, -- Mk-82AIR	
				{ CLSID = "{BRU-42_3*Mk-82AIR}" }, -- Mk-82AIR-TER		
				{ CLSID = "{GBU-38}" }, -- GBU-38		
				{ CLSID = "{GBU-31}" }, -- GBU-31(V)1B		
            }
        ),
        aim9_station(8, 0, -1.115000, -0.161000, 3.050000,
            {
                FiZ = -2,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{DAC53A2F-79CA-42FF-A77A-F5649B601308}" },
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
				{ CLSID = "{7B8DCEB4-820B-4015-9B48-1028A4195692}" }, -- AGM-119 Penguin
				{ CLSID = "LAU_117_AGM_65H" },  -- AGM-65H-LAU-117
		        { CLSID = "LAU_88_AGM_65H_2_R" },  -- 2XAGM-65H-LAU-88
		        { CLSID = "LAU_88_AGM_65H_3" },  -- 3XAGM-65H-LAU-88			
				{ CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" }, -- AGM-65D-LAU-117
				{ CLSID = "{E6A6262A-CA08-4B3D-B030-E1A993B98453}" },  -- 2XAGM-65D-LAU-88	
				{ CLSID = "LAU_117_AGM_65G" }, -- AGM-65G-LAU-117	
				{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}" }, -- AGM-65K-LAU-117	
				{ CLSID = "{Mk82AIR}" }, -- Mk-82AIR	
				{ CLSID = "{BRU-42_3*Mk-82AIR}" }, -- Mk-82AIR-TER	
				{ CLSID = "{GBU-38}" }, -- GBU-38		
				{ CLSID = "{GBU-31}" }, -- GBU-31(V)1B	
				{ CLSID = "{BRU-42_2xGBU-12_right}",attach_point_position = {0.5, 0.02 ,0 }}, -- GBU-12-TER
				{ CLSID = "{9BCC2A2B-5708-4860-B1F1-053A18442067}" }, -- AGM-154				
            }
        ),
        aim9_station(9, 0, -0.983000, -0.110000, 3.948000,
            {
                FiZ = -2,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
            }
        ),
        aim9_station(10, 0, -1.265000, 0.346000, 4.813000,
            {
                FiZ = -2,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{AIS_ASQ_T50}", attach_point_position = {0.40,  0.0,  0.0}},			-- ACMI pod
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
        aircraft_task(AFAC),
        aircraft_task(Reconnaissance),
		aircraft_task(AntishipStrike),
    },
	aircraft_task(CAP)
);
