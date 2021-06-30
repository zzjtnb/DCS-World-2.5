return plane( "F-16A", _("F-16A"),
    {
        
        EmptyWeight = "8853",
        MaxFuelWeight = "3104",
        MaxHeight = "19000",
        MaxSpeed = "2150",
        MaxTakeOffWeight = "19187",
        Picture = "F-16A.png",
        Rate = "50",
        Shape = "f-16A",
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
        mapclasskey = "P0091000024",
    },
    {
		aim9_station(1, 0, 0, 0, 0, {use_full_connector_position=true, connector = "AIM9Pylon1" },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}", connector = "AIM120Pylon1" }, -- AIM-120B
                { CLSID = "{AIS_ASQ_T50}", attach_point_position = {0.40,  0.0,  0.0}},			-- ACMI pod
            }
		),
        aim9_station(2, 0, -0.983000, -0.110000, -3.948000,
            {
                FiZ = -2,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
            }
        ),
        aim9_station(3, 0, -1.115000, -0.161000, -3.050000,
            {
                FiZ = -2,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" }, -- AGM-65D-LAU-117
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },
                { CLSID = "{0B9ABA77-93B8-45FC-9C63-82AFB2CB50A4}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
			    { CLSID = "LAU_117_AGM_65H" },  -- AGM-65H-LAU-117
		        { CLSID = "LAU_88_AGM_65H_2_L" },  -- 2XAGM-65H-LAU-88
		        { CLSID = "{E6A6262A-CA08-4B3D-B030-E1A993B98452}" },  -- 2XAGM-65D-LAU-88		
		        { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },  -- AIM-7M
				{ CLSID = "{Mk82AIR}" },  -- MK-82AIR
                { CLSID = "{BRU-42_3*Mk-82AIR}" },  -- MK-82AIR-TER
				{ CLSID = "{7B8DCEB4-820B-4015-9B48-1028A4195692}" },  -- AGM-119B
            }
        ),
        pylon(4, 0, -0.118000, -0.175000, -1.813000,
            {
                FiZ = -2.5,
            },
            {
                { CLSID = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}" },
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },
                { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
			    { CLSID = "LAU_117_AGM_65H" },  -- AGM-65H-LAU-117
			    { CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" }, -- AGM-65D-LAU-117
            }
        ),
        pylon(5, 0, 0.000000, 0.100000, 0.000000,
            {
            },
            {
            }
        ),
        pylon(6, 0, 0.231000, -0.829000, 0.000000,
            {
                FiZ = -1.5,
            },
            {
                { CLSID = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}" },
				{ CLSID = "ALQ_184" }, -- ALQ-184		
                { CLSID = "{8A0BE8AE-58D4-4572-9263-3144C0D06364}" },
            }
        ),
        pylon(7, 0, -0.118000, -0.175000, 1.813000,
            {
                FiZ = -2.5,
            },
            {
                { CLSID = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}" },
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },
                { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
				{ CLSID = "LAU_117_AGM_65H" },  -- AGM-65H-LAU-117
				{ CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" }, -- AGM-65D-LAU-117
            }
        ),
        aim9_station(8, 0, -1.115000, -0.161000, 3.050000,
            {
                FiZ = -2,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" }, -- AGM-65D-LAU-117
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },
                { CLSID = "{0B9ABA77-93B8-45FC-9C63-82AFB2CB50A4}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
			    { CLSID = "LAU_117_AGM_65H" },  -- AGM-65H-LAU-117
		        { CLSID = "LAU_88_AGM_65H_2_R" },  -- 2XAGM-65H-LAU-88
		        { CLSID = "{E6A6262A-CA08-4B3D-B030-E1A993B98453}" },  -- 2XAGM-65D-LAU-88	
		        { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },  -- AIM-7M
				{ CLSID = "{Mk82AIR}" },  -- MK-82AIR
                { CLSID = "{BRU-42_3*Mk-82AIR}" },  -- MK-82AIR-TER
				{ CLSID = "{7B8DCEB4-820B-4015-9B48-1028A4195692}" },  -- AGM-119B
            }
        ),
        aim9_station(9, 0, -0.983000, -0.110000, 3.948000,
            {
                FiZ = -2,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
            }
        ),
		aim9_station(10, 0, 0, 0, 0, {use_full_connector_position=true, connector = "AIM9Pylon10" },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}", connector = "AIM120Pylon10" }, -- AIM-120B
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
        aircraft_task(SEAD),
        aircraft_task(AFAC),
        aircraft_task(Reconnaissance),
		aircraft_task(AntishipStrike),
    },
	aircraft_task(CAP)
);
