return plane( "F-4E", _("F-4E"),
    {
        
        EmptyWeight = "14461",
        MaxFuelWeight = "4864",
        MaxHeight = "19000",
        MaxSpeed = "2370",
        MaxTakeOffWeight = "28055",
        Picture = "F-4E.png",
        Rate = "30",
        Shape = "F-4E",
        WingSpan = "11.68",
        WorldID = 45,
		country_of_origin = "USA",

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 120,
			chaff = {default = 60, increment = 30, chargeSz = 1},
			flare = {default = 30, increment = 15, chargeSz = 2}
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, F_4E,
        "Multirole fighters",
        },
        Categories = {
            pl_cat("{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor"),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_BAD),
        Sensors = {
            RADAR = "AN/APQ-120",
            RWR = "Abstract RWR"
        },
        mapclasskey = "P0091000024",
		pylons_enumeration = {9, 1, 2, 8, 4, 6, 3, 7, 5},
    },
    {
        pylon(1, 0, -1.072000, -0.747000, -3.384000,
            {
                FiZ = -2.43,
            },
            {
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" },
                { CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{A76344EB-32D2-4532-8FA2-0C1BDC00747E}" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}" },
                { CLSID = "{3E6B632D-65EB-44D2-9501-1C2D04515405}" },	-- AGM-45B
				{ CLSID = "{AGM_45A}" },								-- AGM-45A
            }
        ),
        pylon(2, 0, 1.128000, -0.941000, -2.082000,
            {
                FiZ = -2.5,
            },
            {
                { CLSID = "{F4-2-AIM9L}" },
				{ CLSID = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}" },
                { CLSID = "{773675AB-7C29-422f-AFD8-32844A7B7F17}" },
	            { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" },
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{D7670BC7-881B-4094-906C-73879CF7EB28}" },
                { CLSID = "{E6A6262A-CA08-4B3D-B030-E1A993B98452}" },
                { CLSID = "{3E6B632D-65EB-44D2-9501-1C2D04515405}" },	-- AGM-45B
                { CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" },
                { CLSID = "{A76344EB-32D2-4532-8FA2-0C1BDC00747E}" },
                { CLSID = "{LAU-7_AIS_ASQ_T50}" },
				{ CLSID = "{AGM_45A}" },								-- AGM-45A
            }
        ),
        pylon(3, 1, 3.350000, -0.5, -0.45,
            {
                FiX =  45,
				FiY = -0.5,
				FiZ = -0.5,
            },
            {
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
                { CLSID = "{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}" },
				{ CLSID = "{AIM-7E}" },
            }
        ),
        pylon(4, 1, -2.059000, -0.6, -1.062000,
            {
                FiZ =  2,
				FiX = -45,
            },
            {
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
				{ CLSID = "{AIM-7E}" },
            }
        ),
        pylon(5, 0, 0.153000, -0.637000, 0.000000,
            {
                FiZ = -1.98,
            },
            {
                { CLSID = "{8B9E3FD0-F034-4A07-B6CE-C269884CC71B}" },
            }
        ),
        pylon(6, 1, -2.059000, -0.6, 1.062000,
            {
                FiZ = 2,
				FiX = 45,
            },
            {
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
				{ CLSID = "{AIM-7E}" },
            }
        ),
        pylon(7, 1, 3.350000, -0.5,  0.45,
            {
                FiX = -45,
				FiY = -0.5,
				FiZ = -0.5,
            },
            {
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
				{ CLSID = "{AIM-7E}" },
            }
        ),
        pylon(8, 0, 1.128000, -0.941000, 2.082000,
            {
                FiZ = -2.5,
            },
            {
                { CLSID = "{F4-2-AIM9L}" },
				{ CLSID = "{9DDF5297-94B9-42FC-A45E-6E316121CD85}" },
                { CLSID = "{773675AB-7C29-422f-AFD8-32844A7B7F17}" },
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" },
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{D7670BC7-881B-4094-906C-73879CF7EB27}" },
                { CLSID = "{E6A6262A-CA08-4B3D-B030-E1A993B98453}" },
                { CLSID = "{3E6B632D-65EB-44D2-9501-1C2D04515405}" },	-- AGM-45B
                { CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" },
                { CLSID = "{A76344EB-32D2-4532-8FA2-0C1BDC00747E}" },
				{ CLSID = "{AGM_45A}" },								-- AGM-45A
            }
        ),
        pylon(9, 0, -1.072000, -0.747000, 3.384000,
            {
                FiZ = -2.43,
            },
            {
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" },
                { CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{A76344EB-32D2-4532-8FA2-0C1BDC00747E}" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}" },
                { CLSID = "{3E6B632D-65EB-44D2-9501-1C2D04515405}" },	-- AGM-45B
				{ CLSID = "{AGM_45A}" },								-- AGM-45A
            }
        ),
    },
    {
        aircraft_task(CAP),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        aircraft_task(Intercept),
        --aircraft_task(GAI),
        aircraft_task(GroundAttack),
        aircraft_task(CAS),
        aircraft_task(PinpointStrike),
        aircraft_task(SEAD),
        aircraft_task(AFAC),
        aircraft_task(Reconnaissance),
		aircraft_task(AntishipStrike),
    },
	aircraft_task(CAP)
);
