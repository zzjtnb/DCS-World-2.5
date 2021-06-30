return helicopter( "Mi-24V", _("Mi-24V"),
    {
        InternalCargo = {
			nominalCapacity = 800,
			maximalCapacity = 800
		},
        EmptyWeight = "8870",
        MaxFuelWeight = "1704",
        MaxHeight = "4500",
        MaxSpeed = "320",
        MaxTakeOffWeight = "11500",
        Picture = "Mi-24V.png",
        Rate = "30",
        Shape = "MI-24W",
        WorldID = 152,
		country_of_origin = "RUS",

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			ChaffNoEdit = true,
			SingleChargeTotal = 192,
			chaff = {default = 0, increment = 0, chargeSz = 0},
			flare = {default = 192, increment = 32, chargeSz = 1}
		},
        
        attribute = {wsType_Air, wsType_Helicopter, wsType_Battleplane, MI_24W,
        "Attack helicopters",
        },
        Categories = {
        },
        CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_GOOD, LOOK_GOOD, LOOK_AVERAGE),
        Sensors = {
            OPTIC = "Raduga-Sh",
            RWR = "Abstract RWR"
        },
        Countermeasures = {
            DISPENSER = "UV-26"
        },
        mapclasskey = "P0091000021",
		sounderName = "Aircraft/Helicopters/Mi-24",
    },
    {
        pylon(1, 1, -1.150000, -0.732000, -3.208000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}" },
            }
        ),
        pylon(2, 1, -1.073000, -0.191000, -2.282000,
            {
                FiZ = 0,
            },
            {
				{ CLSID = "B_8V20A_CM" },
    			{ CLSID = "B_8V20A_OFP2" },
    			{ CLSID = "B_8V20A_OM" },
                { CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" },
                { CLSID = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}" },
                { CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}" },
                { CLSID = "{B99EE8A8-99BC-4a8d-89AC-A26831920DCE}" },
                { CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" },
				{ CLSID = "GUV_VOG"},
            }
        ),
        pylon(3, 0, -1.073000, -0.067000, -1.689000,
            {
            },
            {
    			{ CLSID = "B_8V20A_CM" },
    			{ CLSID = "B_8V20A_OFP2" },
    			{ CLSID = "B_8V20A_OM" },
                { CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" },
                { CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}" },
                { CLSID = "{B99EE8A8-99BC-4a8d-89AC-A26831920DCE}" },
				{ CLSID = "GUV_YakB_GSHP"},
				{ CLSID = "GUV_VOG"},
            }
        ),
        pylon(4, 0, -1.073000, -0.139000, 1.769000,
            {
            },
            {
    			{ CLSID = "B_8V20A_CM" },
    			{ CLSID = "B_8V20A_OFP2" },
    			{ CLSID = "B_8V20A_OM" },
                { CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" },
                { CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}" },
                { CLSID = "{B99EE8A8-99BC-4a8d-89AC-A26831920DCE}" },
				{ CLSID = "GUV_YakB_GSHP"},
				{ CLSID = "GUV_VOG"},
            }
        ),
        pylon(5, 0, -1.073000, -0.272000, 2.363000,
            {
            },
            {
    			{ CLSID = "B_8V20A_CM" },
    			{ CLSID = "B_8V20A_OFP2" },
    			{ CLSID = "B_8V20A_OM" },
                { CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" },
                { CLSID = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}" },
                { CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}" },
                { CLSID = "{B99EE8A8-99BC-4a8d-89AC-A26831920DCE}" },
                { CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" },
				{ CLSID = "GUV_VOG"},
            }
        ),
        pylon(6, 0, -1.150000, -0.828000, 3.289000,
            {
            },
            {
                { CLSID = "{B919B0F4-7C25-455E-9A02-CEA51DB895E3}" },
            }
        ),
    },
    {
        aircraft_task(CAS),
        aircraft_task(GroundAttack),
		aircraft_task(Escort),
        aircraft_task(Transport),
        aircraft_task(AFAC),
        aircraft_task(AntishipStrike)
    },
	aircraft_task(CAS)
);
