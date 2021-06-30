return plane( "F/A-18C", _("F/A-18C"),
    {
        
        EmptyWeight = "11631",
        LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of LandRWCategories
        MaxFuelWeight = "4900",
        MaxHeight = "18200",
        MaxSpeed = "1920",
        MaxTakeOffWeight = "23541",		-- 25890
        Picture = "FA-18A.png",
        Rate = "50",
        Shape = "f-18c",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier With Catapult",
            }, -- end of [1]
        }, -- end of TakeOffRWCategories
        WingSpan = "11.43",
        WorldID = 53,
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
		
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, FA_18C,
			"Multirole fighters", "Refuelable", "Datalink", "Link16"
        },
        Categories = {
            pl_cat("{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor"),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_GOOD),
        Sensors = {
            RADAR = "AN/APG-73",
            RWR = "Abstract RWR"
        },

		HumanRadio 		= 	
		{
			frequency	= 305.0,
			editable	= true,
			minFrequency	= 118.000,
			maxFrequency	= 399.975,
		    rangeFrequency = {
				{min = 118.0, max = 155.995},
				{min = 225.0, max = 399.975}
			},
			modulation	= MODULATION_AM,
		},
		panelRadio = {
			[1] = {  
			    name = _("COMM 1: ARC-210"),
			    range = {
					{min = 30.0, max = 87.995},
					{min = 108.0, max = 173.995},
					{min = 225.0, max = 399.975}
				},
			    channels = {
			        [1] = { name = _("Channel 1"),		default = 305.0, modulation = _("AM/FM"), connect = true}, -- default
			        [2] = { name = _("Channel 2"),		default = 264.0, modulation = _("AM/FM")},	-- min. water : 135.0, 264.0
			        [3] = { name = _("Channel 3"),		default = 265.0, modulation = _("AM/FM")},	-- nalchik : 136.0, 265.0
			        [4] = { name = _("Channel 4"),		default = 256.0, modulation = _("AM/FM")},	-- sochi : 127.0, 256.0
			        [5] = { name = _("Channel 5"),		default = 254.0, modulation = _("AM/FM")},	-- maykop : 125.0, 254.0
			        [6] = { name = _("Channel 6"),		default = 250.0, modulation = _("AM/FM")},	-- anapa : 121.0, 250.0
			        [7] = { name = _("Channel 7"),		default = 270.0, modulation = _("AM/FM")},	-- beslan : 141.0, 270.0
			        [8] = { name = _("Channel 8"),		default = 257.0, modulation = _("AM/FM")},	-- krasnodar-pashk. : 128.0, 257.0
			        [9] = { name = _("Channel 9"),		default = 255.0, modulation = _("AM/FM")},	-- gelenjik : 126.0, 255.0
			        [10] = { name = _("Channel 10"),	default = 262.0, modulation = _("AM/FM")},	-- kabuleti : 133.0, 262.0
			        [11] = { name = _("Channel 11"),	default = 259.0, modulation = _("AM/FM")},	-- gudauta : 130.0, 259.0
			        [12] = { name = _("Channel 12"),	default = 268.0, modulation = _("AM/FM")},	-- soginlug : 139.0, 268.0
			        [13] = { name = _("Channel 13"),	default = 269.0, modulation = _("AM/FM")},	-- vaziani : 140.0, 269.0
			        [14] = { name = _("Channel 14"),	default = 260.0, modulation = _("AM/FM")},	-- batumi : 131.0, 260.0
			        [15] = { name = _("Channel 15"),	default = 263.0, modulation = _("AM/FM")},	-- kutaisi : 134.0, 263.0
			        [16] = { name = _("Channel 16"),	default = 261.0, modulation = _("AM/FM")},	-- senaki : 132.0, 261.0
			        [17] = { name = _("Channel 17"),	default = 267.0, modulation = _("AM/FM")},	-- lochini : 138.0, 267.0
			        [18] = { name = _("Channel 18"),	default = 251.0, modulation = _("AM/FM")},	-- krasnodar-center : 122.0, 251.0
			        [19] = { name = _("Channel 19"),	default = 253.0, modulation = _("AM/FM")},	-- krymsk : 124.0, 253.0
			        [20] = { name = _("Channel 20"),	default = 266.0, modulation = _("AM/FM")},	-- mozdok : 137.0, 266.0
			    }
			},
			[2] = {  
			    name = _("COMM 2: ARC-210"),
			    range = {
					{min = 30.0, max = 87.995},
					{min = 108.0, max = 173.995},
					{min = 225.0, max = 399.975}
				},
			    channels = {
			        [1] = { name = _("Channel 1"),		default = 305.0, modulation = _("AM/FM"), connect = true}, -- default
			        [2] = { name = _("Channel 2"),		default = 264.0, modulation = _("AM/FM")},	-- min. water : 135.0, 264.0
			        [3] = { name = _("Channel 3"),		default = 265.0, modulation = _("AM/FM")},	-- nalchik : 136.0, 265.0
			        [4] = { name = _("Channel 4"),		default = 256.0, modulation = _("AM/FM")},	-- sochi : 127.0, 256.0
			        [5] = { name = _("Channel 5"),		default = 254.0, modulation = _("AM/FM")},	-- maykop : 125.0, 254.0
			        [6] = { name = _("Channel 6"),		default = 250.0, modulation = _("AM/FM")},	-- anapa : 121.0, 250.0
			        [7] = { name = _("Channel 7"),		default = 270.0, modulation = _("AM/FM")},	-- beslan : 141.0, 270.0
			        [8] = { name = _("Channel 8"),		default = 257.0, modulation = _("AM/FM")},	-- krasnodar-pashk. : 128.0, 257.0
			        [9] = { name = _("Channel 9"),		default = 255.0, modulation = _("AM/FM")},	-- gelenjik : 126.0, 255.0
			        [10] = { name = _("Channel 10"),	default = 262.0, modulation = _("AM/FM")},	-- kabuleti : 133.0, 262.0
			        [11] = { name = _("Channel 11"),	default = 259.0, modulation = _("AM/FM")},	-- gudauta : 130.0, 259.0
			        [12] = { name = _("Channel 12"),	default = 268.0, modulation = _("AM/FM")},	-- soginlug : 139.0, 268.0
			        [13] = { name = _("Channel 13"),	default = 269.0, modulation = _("AM/FM")},	-- vaziani : 140.0, 269.0
			        [14] = { name = _("Channel 14"),	default = 260.0, modulation = _("AM/FM")},	-- batumi : 131.0, 260.0
			        [15] = { name = _("Channel 15"),	default = 263.0, modulation = _("AM/FM")},	-- kutaisi : 134.0, 263.0
			        [16] = { name = _("Channel 16"),	default = 261.0, modulation = _("AM/FM")},	-- senaki : 132.0, 261.0
			        [17] = { name = _("Channel 17"),	default = 267.0, modulation = _("AM/FM")},	-- lochini : 138.0, 267.0
			        [18] = { name = _("Channel 18"),	default = 251.0, modulation = _("AM/FM")},	-- krasnodar-center : 122.0, 251.0
			        [19] = { name = _("Channel 19"),	default = 253.0, modulation = _("AM/FM")},	-- krymsk : 124.0, 253.0
			        [20] = { name = _("Channel 20"),	default = 266.0, modulation = _("AM/FM")},	-- mozdok : 137.0, 266.0
			    }
			},
		},

        Countermeasures = {
            ECM = {"AN/ALQ-165"}
        },
		EPLRS = true,
        mapclasskey = "P0091000024",
		--[[topdown_view =  -- данные для классификатора карты
		{
			classKey = "PIC_FA-18C",
			w = 16.4,
			h = 16.4,			
			file = "topdown_view_FA-18C.png",
			zOrder = 20,
		},]]
    },
    {
        pylon(1, 0, -2.218, -0.063, -5.779,
            {
  				use_full_connector_position = true,
			},
            {
				{ CLSID = "{AIM-9L}"								,Cx_gain = 0.24}, --AIM-9L
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" , Cx_gain = 0.24}, --AIM-9M
				{ CLSID = "{AIM-9P5}"							   , Cx_gain = 0.24}, --AIM-9P5
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{AIS_ASQ_T50}", attach_point_position = {0.25,  0.0,  0.0}},			-- ACMI pod
            }
        ),
        pylon(2, 0, -1.212, -0.487, -3.369,
            {
				use_full_connector_position = true,
				
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },	-- AIM-7
				{ CLSID = "{AIM-7F}"	},
				{ CLSID = "{AIM-7H}"	},
				{ CLSID = "{AIM-7E}"	},
                { CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" },
                { CLSID = "{8B7CADF9-4954-46B3-8CFB-93F2F5B90B03}", Type = 1 },	-- AGM-84A
                { CLSID = "{AF42E6DF-9A60-46D8-A9A0-1708B241AADB}", Type = 1 },
                { CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}" },
                { CLSID = "{F16A4DE0-116C-4A71-97F0-2CF85B0313EC}" },
                { CLSID = "{9BCC2A2B-5708-4860-B1F1-053A18442067}", Type = 1 },
                { CLSID = "{C40A1E3A-DD05-40D9-85A4-217729E37FAE}" },
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" }, -- GBU-10
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" }, -- GBU-12
                { CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" }, -- GBU-16
                { CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{0B9ABA77-93B8-45FC-9C63-82AFB2CB50A4}" },
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },  -- Mk-82
				{ CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },  -- Mk-82-TER
				{ CLSID = "{Mk82AIR}" },  -- Mk-82AIR
				{ CLSID = "{BRU-42_3*Mk-82AIR}" },  -- Mk-82AIR-TER
				{ CLSID = "{FC85D2ED-501A-48ce-9863-49D468DDD5FC}" }, -- LAU-68-MK1
				{ CLSID = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}" }, -- LAU-68-MK5
				{ CLSID = "{65396399-9F5C-4ec3-A7D2-5A8F4C1D90C4}" }, -- LAU-68-MK61
				{ CLSID = "{A021F29D-18AB-4d3e-985C-FC9C60E35E9E}" }, -- LAU-68-M151
				{ CLSID = "{4F977A2A-CD25-44df-90EF-164BFA2AE72F}" }, -- LAU-68-MK156
				{ CLSID = "{1F7136CB-8120-4e77-B97B-945FF01FB67C}" }, -- LAU-68-WTU1B
				{ CLSID = "{647C5F26-BDD1-41e6-A371-8DE1E4CC0E94}" }, -- LAU-68-M257
				{ CLSID = "{0877B74B-5A00-4e61-BA8A-A56450BA9E27}" }, -- LAU-68-W274
				{ CLSID = "{GBU-31V3B}" },
				{ CLSID = "{GBU-31}" },
				{ CLSID = "{GBU-38}"},
				{ CLSID = "LAU_117_AGM_65G"},
				
				{ CLSID = "LAU-115_2*LAU-127_AIM-9M" },
				
            }
        ),
        pylon(3, 0, -1.069, -0.42, -2.212,
            {
            	use_full_connector_position = true,
				
			},
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },	-- AIM-7
				{ CLSID = "{AIM-7F}"	},
				{ CLSID = "{AIM-7H}"	},
				{ CLSID = "{AIM-7E}"	},
                { CLSID = "{8B7CADF9-4954-46B3-8CFB-93F2F5B90B03}", Type = 1 },
                { CLSID = "{AF42E6DF-9A60-46D8-A9A0-1708B241AADB}", Type = 1 },
                { CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}" },
                { CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" },
                { CLSID = "{EFEC8201-B922-11d7-9897-000476191836}" },
				{ CLSID = "{GBU-31V3B}" },
				{ CLSID = "{GBU-31}" },
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" }, -- GBU-10
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" }, -- GBU-12
				{ CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" }, -- GBU-16
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
				{ CLSID = "{0B9ABA77-93B8-45FC-9C63-82AFB2CB50A4}" }, -- Mk-20*2
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },  -- Mk-82
				{ CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },  -- Mk-82-TER
				{ CLSID = "{Mk82AIR}" },  -- Mk-82AIR
				{ CLSID = "{BRU-42_3*Mk-82AIR}" },  -- Mk-82AIR-TER
				{ CLSID = "{FC85D2ED-501A-48ce-9863-49D468DDD5FC}" }, -- LAU-68-MK1
				{ CLSID = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}" }, -- LAU-68-MK5
				{ CLSID = "{65396399-9F5C-4ec3-A7D2-5A8F4C1D90C4}" }, -- LAU-68-MK61
				{ CLSID = "{A021F29D-18AB-4d3e-985C-FC9C60E35E9E}" }, -- LAU-68-M151
				{ CLSID = "{4F977A2A-CD25-44df-90EF-164BFA2AE72F}" }, -- LAU-68-MK156
				{ CLSID = "{1F7136CB-8120-4e77-B97B-945FF01FB67C}" }, -- LAU-68-WTU1B
				{ CLSID = "{647C5F26-BDD1-41e6-A371-8DE1E4CC0E94}" }, -- LAU-68-M257
				{ CLSID = "{0877B74B-5A00-4e61-BA8A-A56450BA9E27}" }, -- LAU-68-W274
				
            }
        ),
        pylon(4, 1, -2.321, -0.654, -1.044,
            {
           		use_full_connector_position = true,
			},
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" , Cx_gain = 0.49},	-- AIM-7
				{ CLSID = "{AIM-7F}"	, Cx_gain = 0.49},
				{ CLSID = "{AIM-7H}"	, Cx_gain = 0.49},
				{ CLSID = "{AIM-7E}"	, Cx_gain = 0.49},
                { CLSID = "{6C0D552F-570B-42ff-9F6D-F10D9C1D4E1C}"},
            }
        ),
        pylon(5, 1, 0, -0.652, 0.000000,
            {
				use_full_connector_position = true,
            },
            {
                { CLSID = "{EFEC8201-B922-11d7-9897-000476191836}" },
			    { CLSID = "{A111396E-D3E8-4b9c-8AC9-2432489304D5}" },
            }
        ),
        pylon(6, 1, -2.321, -0.654, 1.044,
            {
            	use_full_connector_position = true,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" , Cx_gain = 0.49},	-- AIM-7
				{ CLSID = "{AIM-7F}"	, Cx_gain = 0.49},
				{ CLSID = "{AIM-7H}"	, Cx_gain = 0.49},
				{ CLSID = "{AIM-7E}"	, Cx_gain = 0.49},
                { CLSID = "{1C2B16EB-8EB0-43de-8788-8EBB2D70B8BC}" },
            }
        ),
        pylon(7, 0, -1.069, -0.42, 2.212,
            {
            	use_full_connector_position = true,
				
			},
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },	-- AIM-7
				{ CLSID = "{AIM-7F}"	},
				{ CLSID = "{AIM-7H}"	},
				{ CLSID = "{AIM-7E}"	},
                { CLSID = "{8B7CADF9-4954-46B3-8CFB-93F2F5B90B03}", Type = 1 },
                { CLSID = "{AF42E6DF-9A60-46D8-A9A0-1708B241AADB}", Type = 1 },
                { CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}" },
                { CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" },
                { CLSID = "{EFEC8201-B922-11d7-9897-000476191836}" },
				{ CLSID = "{GBU-31V3B}" },
				{ CLSID = "{GBU-31}" },
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" }, -- GBU-10
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" }, -- GBU-12
				{ CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" }, -- GBU-16
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
				{ CLSID = "{0B9ABA77-93B8-45FC-9C63-82AFB2CB50A4}" }, -- Mk-20*2
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },  -- Mk-82
				{ CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },  -- Mk-82-TER
				{ CLSID = "{Mk82AIR}" },  -- Mk-82AIR
				{ CLSID = "{BRU-42_3*Mk-82AIR}" },  -- Mk-82AIR-TER
				{ CLSID = "{FC85D2ED-501A-48ce-9863-49D468DDD5FC}" }, -- LAU-68-MK1
				{ CLSID = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}" }, -- LAU-68-MK5
				{ CLSID = "{65396399-9F5C-4ec3-A7D2-5A8F4C1D90C4}" }, -- LAU-68-MK61
				{ CLSID = "{A021F29D-18AB-4d3e-985C-FC9C60E35E9E}" }, -- LAU-68-M151
				{ CLSID = "{4F977A2A-CD25-44df-90EF-164BFA2AE72F}" }, -- LAU-68-MK156
				{ CLSID = "{1F7136CB-8120-4e77-B97B-945FF01FB67C}" }, -- LAU-68-WTU1B
				{ CLSID = "{647C5F26-BDD1-41e6-A371-8DE1E4CC0E94}" }, -- LAU-68-M257
				{ CLSID = "{0877B74B-5A00-4e61-BA8A-A56450BA9E27}" }, -- LAU-68-W274
				
			}
        ),
        pylon(8, 0, -1.212, -0.487, 3.369,
            {
              	use_full_connector_position = true,
				
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },	-- AIM-7
				{ CLSID = "{AIM-7F}"	},
				{ CLSID = "{AIM-7H}"	},
				{ CLSID = "{AIM-7E}"	},
                { CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" },
                { CLSID = "{8B7CADF9-4954-46B3-8CFB-93F2F5B90B03}", Type = 1 },
                { CLSID = "{AF42E6DF-9A60-46D8-A9A0-1708B241AADB}", Type = 1 },
                { CLSID = "{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}" },
                { CLSID = "{F16A4DE0-116C-4A71-97F0-2CF85B0313EC}" },
                { CLSID = "{9BCC2A2B-5708-4860-B1F1-053A18442067}", Type = 1 },
                { CLSID = "{C40A1E3A-DD05-40D9-85A4-217729E37FAE}" },
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}" },
                { CLSID = "{D5D51E24-348C-4702-96AF-97A714E72697}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{0B9ABA77-93B8-45FC-9C63-82AFB2CB50A4}" },
				{ CLSID = "{GBU-31V3B}" },
				{ CLSID = "{GBU-31}" },
				{ CLSID = "{GBU-38}"},
				{ CLSID = "LAU_117_AGM_65G"},
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },  -- Mk-82
				{ CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },  -- Mk-82-TER
				{ CLSID = "{Mk82AIR}" },  -- Mk-82AIR
				{ CLSID = "{BRU-42_3*Mk-82AIR}" },  -- Mk-82AIR-TER
				{ CLSID = "{FC85D2ED-501A-48ce-9863-49D468DDD5FC}" }, -- LAU-68-MK1
				{ CLSID = "{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}" }, -- LAU-68-MK5
				{ CLSID = "{65396399-9F5C-4ec3-A7D2-5A8F4C1D90C4}" }, -- LAU-68-MK61
				{ CLSID = "{A021F29D-18AB-4d3e-985C-FC9C60E35E9E}" }, -- LAU-68-M151
				{ CLSID = "{4F977A2A-CD25-44df-90EF-164BFA2AE72F}" }, -- LAU-68-MK156
				{ CLSID = "{1F7136CB-8120-4e77-B97B-945FF01FB67C}" }, -- LAU-68-WTU1B
				{ CLSID = "{647C5F26-BDD1-41e6-A371-8DE1E4CC0E94}" }, -- LAU-68-M257
				{ CLSID = "{0877B74B-5A00-4e61-BA8A-A56450BA9E27}" }, -- LAU-68-W274
				
				{ CLSID = "LAU-115_2*LAU-127_AIM-9M" },
				
            }
        ),
        pylon(9, 0, -2.218, -0.063, 5.779,
            {
            	use_full_connector_position = true,
            },
            {
 				{ CLSID = "{AIM-9L}"								,Cx_gain = 0.24}, --AIM-9L
				{ CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" , Cx_gain = 0.24}, --AIM-9M
				{ CLSID = "{AIM-9P5}"							   , Cx_gain = 0.24}, --AIM-9P5
				{ CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
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
