return helicopter( "Ka-52", _("Ka-52"),
    {
        
        EmptyWeight = "8030",
        MaxFuelWeight = "1500",
        MaxHeight = "5500",
        MaxSpeed = "300",
        MaxTakeOffWeight = "10800",
        Picture = "Ka-52.png",
        Rate = "50",
        Shape = "KA-52",
        WorldID = 156,
		country_of_origin = "RUS",

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 128,
			chaff = {default = 0, increment = 0, chargeSz = 1},
			flare = {default = 128, increment = 32, chargeSz = 1}
        },

        attribute = {wsType_Air, wsType_Helicopter, wsType_Battleplane, KA_52,
        "Attack helicopters",
        },
        Categories = {
        },
        CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_AVERAGE, LOOK_GOOD, LOOK_BAD),
        Sensors = {
            OPTIC = {"Ka-52 TV", "Ka-52 FLIR"},
            RWR = "Abstract RWR"
        },
        Countermeasures = {
            DISPENSER = "UV-26"
        },
        mapclasskey = "P0091000021",
		sounderName = "Aircraft/Helicopters/Ka-52",
    },
    {
        pylon(1, 0, 0.400000, -0.507000, -2.701000,
            {
            },
            {
    			{ CLSID = "B_8V20A_CM" },
    			{ CLSID = "B_8V20A_OFP2" },
    			{ CLSID = "B_8V20A_OM" },
				{ CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" },
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                { CLSID = "{A6FD14D3-6D30-4C85-88A7-8D17BEE120E2}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
            }
        ),
        pylon(2, 0, 0.400000, -0.507000, -1.972000,
            {
            },
            {
    			{ CLSID = "B_8V20A_CM" },
    			{ CLSID = "B_8V20A_OFP2" },
    			{ CLSID = "B_8V20A_OM" },
    			{ CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" },
                { CLSID = "{6DADF342-D4BA-4D8A-B081-BA928C4AF86D}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
            }
        ),
        pylon(3, 0, 0.400000, -0.507000, 1.972000,
            {
            },
            {
    			{ CLSID = "B_8V20A_CM" },
    			{ CLSID = "B_8V20A_OFP2" },
    			{ CLSID = "B_8V20A_OM" },
    			{ CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" },
                { CLSID = "{6DADF342-D4BA-4D8A-B081-BA928C4AF86D}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
            }
        ),
        pylon(4, 0, 0.400000, -0.507000, 2.701000,
            {
            },
            {
    			{ CLSID = "B_8V20A_CM" },
    			{ CLSID = "B_8V20A_OFP2" },
    			{ CLSID = "B_8V20A_OM" },			
    			{ CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" },
                { CLSID = "{A6FD14D3-6D30-4C85-88A7-8D17BEE120E2}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
            }
        ),
    },
    {
        aircraft_task(CAS),
        aircraft_task(GroundAttack),
        aircraft_task(PinpointStrike),
		aircraft_task(Escort),
        aircraft_task(AFAC),
        aircraft_task(AntishipStrike)
    },
	aircraft_task(CAS)
);
