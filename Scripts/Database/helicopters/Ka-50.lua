return helicopter( "Ka-50", _("Ka-50"),
    {
        
        EmptyWeight = "8030",
        LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
            [2] = 
            {
                Name = "HelicopterCarrier",
            }, -- end of [2]
        }, -- end of LandRWCategories
        MaxFuelWeight = "1450",
        MaxHeight = "6600",
        MaxSpeed = "300",
        MaxTakeOffWeight = "11900",
        Picture = "Ka-50.png",
        Rate = "50",
        Shape = "KA-50",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
            [2] = 
            {
                Name = "HelicopterCarrier",
            }, -- end of [2]
        }, -- end of TakeOffRWCategories
        WorldID = 155,
		country_of_origin = "RUS",
        
        Navpoint_Panel = true,
		Fixpoint_Panel = true,
        
		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			ChaffNoEdit = true,
			SingleChargeTotal = 128,
			chaff = {default = 0, increment = 0, chargeSz = 0},
			flare = {default = 128, increment = 32, chargeSz = 1}
		},
        
        attribute = {wsType_Air, wsType_Helicopter, wsType_Battleplane, KA_50,
        "Attack helicopters",
        },
        Categories = {
        },
        CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_BAD, LOOK_GOOD, LOOK_BAD),
        Sensors = {
            OPTIC = "Shkval",
        },
        Countermeasures = {
            DISPENSER = "UV-26"
        },
		HumanRadio = {
			frequency = 124.0,
			editable = true,
			minFrequency = 100,
			maxFrequency = 400,
			modulation = MODULATION_AM
		},
		panelRadio = {
			[1] = {  
				name = _("R-828"),
				range = {min = 20.0, max = 59.9},
				channels = {
					[1] = { name = _("Channel 1"),		default = 21.5, modulation = _("FM")},
					[2] = { name = _("Channel 2"),		default = 25.7, modulation = _("FM")},
					[3] = { name = _("Channel 3"),		default = 27.0, modulation = _("FM")},
					[4] = { name = _("Channel 4"),		default = 28.0, modulation = _("FM")},
					[5] = { name = _("Channel 5"),		default = 30.0, modulation = _("FM")},
					[6] = { name = _("Channel 6"),		default = 32.0, modulation = _("FM")},
					[7] = { name = _("Channel 7"),		default = 40.0, modulation = _("FM")},
					[8] = { name = _("Channel 8"),		default = 50.0, modulation = _("FM")},
					[9] = { name = _("Channel 9"),		default = 55.5, modulation = _("FM")},
					[10] = { name = _("Channel 10"),	default = 59.9, modulation = _("FM")},
				}
			},--[1]
			[2] = {
				name = _("ARK-22"),                
                displayUnits = "kHz", --отображаемые единицы в МЕ-- задавать ниже в MHz все
				range = {min = 0.150, max = 1.750},
				channels = {
					[1] = { name = _("Channel 1, Outer"),		default	= 0.625,	modulation = _("AM")},	-- Krasnodar-Center
					[2] = { name = _("Channel 1, Inner"),		default = 0.303,	modulation = _("AM")},	-- Krasnodar-Center
					[3] = { name = _("Channel 2, Outer"),		default = 0.289,	modulation = _("AM")},	-- Maykop
					[4] = { name = _("Channel 2, Inner"),		default = 0.591,	modulation = _("AM")},	-- Maykop
					[5] = { name = _("Channel 3, Outer"),		default = 0.408,	modulation = _("AM")},	-- Krymsk
					[6] = { name = _("Channel 3, Inner"),		default = 0.803,	modulation = _("AM")},	-- Krymsk
					[7] = { name = _("Channel 4, Outer"),		default = 0.443,	modulation = _("AM")},	-- Anapa
					[8] = { name = _("Channel 4, Inner"),		default = 0.215,	modulation = _("AM")},	-- Anapa
					[9] = { name = _("Channel 5, Outer"),		default = 0.525,	modulation = _("AM")},	-- Mozdok
					[10] = { name = _("Channel 5, Inner"),		default = 1.065,	modulation = _("AM")},	-- Mozdok
					[11] = { name = _("Channel 6, Outer"),		default = 0.718,	modulation = _("AM")},	-- Nalchik
					[12] = { name = _("Channel 6, Inner"),		default = 0.350,	modulation = _("AM")},	-- Nalchik
					[13] = { name = _("Channel 7, Outer"),		default = 0.583,	modulation = _("AM")},	-- Min.Vody
					[14] = { name = _("Channel 7, Inner"),		default = 0.283,	modulation = _("AM")},	-- Min.Vody
					[15] = { name = _("Channel 8, Outer"),		default = 0.995,	modulation = _("AM")},	-- NDB Kislovodsk
					[16] = { name = _("Channel 8, Inner"),		default = 1.210,	modulation = _("AM")},	-- NDB Peredovaya
				}
			},--[2]
		},
        Failures = {
            { id = 'hydro_main',  label = _('HYDRO MAIN'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'hydro_common',  label = _('HYDRO COMMON'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'l_engine',  label = _('L-ENGINE'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'r_engine',  label = _('R-ENGINE'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'asc_p',  	label = _('ASC PITCH'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'asc_r',  	label = _('ASC ROLL'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'asc_y',  	label = _('ASC YAW'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'asc_a',  	label = _('ASC ALT'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'abris_software',  	label = _('ABRIS SOFTWARE'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
 			{ id = 'abris_hardware',  	label = _('ABRIS HARDWARE'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'laser_failure' ,  	label = _('LASER FAILURE'),		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'RADAR_ALT_TOTAL_FAILURE', 	label = _("RALT FAILURE"), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
       },
        mapclasskey = "P0091000021",
		sounderName = "Aircraft/Helicopters/Ka-50",
    },
    {
        pylon(1, 0, 0.947000, -0.348000, -2.735000,
            {
                FiZ 	  = -3,
				arg 	  = 308,
				arg_value = 0.701,
             },
            {
    			{ CLSID = "B_8V20A_CM" },
    			{ CLSID = "B_8V20A_OFP2" },
    			{ CLSID = "B_8V20A_OM" },
                { CLSID = "{A6FD14D3-6D30-4C85-88A7-8D17BEE120E2}" , arg_value = 0 },
                { CLSID = "{6DADF342-D4BA-4D8A-B081-BA928C4AF86D}" },
                { CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{B99EE8A8-99BC-4a8d-89AC-A26831920DCE}" },
            }
        ),
        pylon(2, 0, 0.916000, -0.348000, -2.023000,
            {
                FiZ = -3,
				arg = 309,
            },
            {
    			{ CLSID = "B_8V20A_CM" },
    			{ CLSID = "B_8V20A_OFP2" },
    			{ CLSID = "B_8V20A_OM" },
                { CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{B99EE8A8-99BC-4a8d-89AC-A26831920DCE}" },
            }
        ),
        pylon(3, 0, 0.916000, -0.348000, 2.023000,
            {
                FiZ = -3,
				arg = 310,
            },
            {
    			{ CLSID = "B_8V20A_CM" },
    			{ CLSID = "B_8V20A_OFP2" },
    			{ CLSID = "B_8V20A_OM" },
                { CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{B99EE8A8-99BC-4a8d-89AC-A26831920DCE}" },
            }
        ),
        pylon(4, 0, 0.947000, -0.348000, 2.735000,
            {
                FiZ 	  = -3,
				arg 	  = 311,
				arg_value = 0.701,
            },
            {
    			{ CLSID = "B_8V20A_CM" },
    			{ CLSID = "B_8V20A_OFP2" },
    			{ CLSID = "B_8V20A_OM" },
                { CLSID = "{A6FD14D3-6D30-4C85-88A7-8D17BEE120E2}" , arg_value = 0 },
                { CLSID = "{6DADF342-D4BA-4D8A-B081-BA928C4AF86D}" },
                { CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{B99EE8A8-99BC-4a8d-89AC-A26831920DCE}" },
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
