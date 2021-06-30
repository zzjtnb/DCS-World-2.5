return helicopter( "Mi-28N", _("Mi-28N"),
    {
        
        EmptyWeight = "8920",
        MaxFuelWeight = "1500",
        MaxHeight = "5300",
        MaxSpeed = "305",
        MaxTakeOffWeight = "11700",
        Picture = "Mi-28N.png",
        Rate = "50",
        Shape = "Mi-28",
        WorldID = 167,
		country_of_origin = "RUS",

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			ChaffNoEdit = true,
			SingleChargeTotal = 128,
			chaff = {default = 0, increment = 0, chargeSz = 0},
			flare = {default = 128, increment = 32, chargeSz = 1}
		},
        
        attribute = {wsType_Air, wsType_Helicopter, wsType_Battleplane, MI_28N,
        "Attack helicopters",
        },
        Categories = {
        },
        CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_BAD, LOOK_BAD, LOOK_AVERAGE),
        Sensors = {
            OPTIC = {"Mi-28N TV", "Mi-28N FLIR"},
            RWR = "Abstract RWR"
        },
        Countermeasures = {
            DISPENSER = "UV-26"
        },
        mapclasskey = "P0091000021",
		sounderName = "Aircraft/Helicopters/Mi-28",
    },
    {
        pylon(1, 0, -0.755, -0.112, -2.113,
            {
                FiZ = 0,
            },
            {
    			{ CLSID = "B_8V20A_CM" },
    			{ CLSID = "B_8V20A_OFP2" },
    			{ CLSID = "B_8V20A_OM" },
                { CLSID = "{57232979-8B0F-4db7-8D9A-55197E06B0F5}" },
                { CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{B99EE8A8-99BC-4a8d-89AC-A26831920DCE}" },
                { CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
            }
        ),
        pylon(2, 0, -0.755, -0.112, -1.456,
            {
                FiZ = 0,
            },
            {
    			{ CLSID = "B_8V20A_CM" },
    			{ CLSID = "B_8V20A_OFP2" },
    			{ CLSID = "B_8V20A_OM" },
				{ CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
				{ CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
				{ CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
				{ CLSID = "{B99EE8A8-99BC-4a8d-89AC-A26831920DCE}" },
				{ CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" },
				{ CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
				{ CLSID = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}" },
				{ CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" },
            }
        ),
        pylon(3, 0, -0.755, -0.112, 1.456,
            {
                FiZ = 0,
            },
            {
    			{ CLSID = "B_8V20A_CM" },
    			{ CLSID = "B_8V20A_OFP2" },
    			{ CLSID = "B_8V20A_OM" },
				{ CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
				{ CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
				{ CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
				{ CLSID = "{B99EE8A8-99BC-4a8d-89AC-A26831920DCE}" },
				{ CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" },
				{ CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
				{ CLSID = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}" },
				{ CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" },
            }
        ),
        pylon(4, 0, -0.755, -0.112, 2.113,
            {
                FiZ = 0,
            },
            {
    			{ CLSID = "B_8V20A_CM" },
    			{ CLSID = "B_8V20A_OFP2" },
    			{ CLSID = "B_8V20A_OM" },
				{ CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
				{ CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
				{ CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
				{ CLSID = "{B99EE8A8-99BC-4a8d-89AC-A26831920DCE}" },
				{ CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" },
				{ CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
				{ CLSID = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}" },
				{ CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{57232979-8B0F-4db7-8D9A-55197E06B0F5}" },
                { CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" },
            }
        ),
    },
    {
        aircraft_task(CAS),
        aircraft_task(GroundAttack),
		aircraft_task(Escort),
        aircraft_task(AFAC),
        aircraft_task(AntishipStrike)
    },
	aircraft_task(CAS)
);
