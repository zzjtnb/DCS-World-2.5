return helicopter( "Mi-8MT", _("Mi-8MTV2"),
    {
        Cannon = "yes",
        EmptyWeight = "8866",
        LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of LandRWCategories
        MaxFuelWeight = "1929", -- 2296
        MaxHeight = "5000",
        MaxSpeed = "250",
        MaxTakeOffWeight = "13000",
        Picture = "Mi-8MT.png",
        Rate = "30",
        Shape = "MI-8MT",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of TakeOffRWCategories
        WorldID = 151,
		country_of_origin = "RUS",

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			ChaffNoEdit = true,
			SingleChargeTotal = 128,
			chaff = {default = 0, increment = 0, chargeSz = 0},
			flare = {default = 128, increment = 32, chargeSz = 1}
		},

        HardpointRacks_Edit = true,
        HardpointRacksWeight = 401,
		HardpointRacksArg = 1000,
        
        attribute = {wsType_Air, wsType_Helicopter, wsType_Battleplane, MI_8MT,
        "Attack helicopters",
        },
        Categories = {
        },
        CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_GOOD, LOOK_AVERAGE, LOOK_BAD),
		
		HumanRadio = {
            editable = true,
			frequency = 127.5,
			minFrequency = 100,
			maxFrequency = 400,
			modulation = MODULATION_AM
		},
		panelRadio = {
			[1] = {  
				name = _("R-863"),
				range = {min = 100.0, max = 399.9},
				channels = {
					[1] = { name = _("Channel 1"),		default = 127.5, modulation = _("AM"), connect = true}, -- default
					[2] = { name = _("Channel 2"),		default = 135.0, modulation = _("AM")},	-- min. water
					[3] = { name = _("Channel 3"),		default = 136.0, modulation = _("AM")},	-- nalchik
					[4] = { name = _("Channel 4"),		default = 127.0, modulation = _("AM")},	-- sochi
					[5] = { name = _("Channel 5"),		default = 125.0, modulation = _("AM")},	-- maykop
					[6] = { name = _("Channel 6"),		default = 121.0, modulation = _("AM")},	-- anapa
					[7] = { name = _("Channel 7"),		default = 141.0, modulation = _("AM")},	-- beslan
					[8] = { name = _("Channel 8"),		default = 128.0, modulation = _("AM")},	-- krasnodar-pashk.
					[9] = { name = _("Channel 9"),		default = 126.0, modulation = _("AM")},	-- gelenjik
					[10] = { name = _("Channel 10"),	default = 133.0, modulation = _("AM")},	-- kabuleti
					[11] = { name = _("Channel 11"),	default = 130.0, modulation = _("AM")},	-- gudauta
					[12] = { name = _("Channel 12"),	default = 129.0, modulation = _("AM")},	-- Sukhumi - Babushara
					[13] = { name = _("Channel 13"),	default = 123.0, modulation = _("AM")},	-- Novorossiysk
					[14] = { name = _("Channel 14"),	default = 131.0, modulation = _("AM")},	-- batumi
					[15] = { name = _("Channel 15"),	default = 134.0, modulation = _("AM")},	-- kutaisi
					[16] = { name = _("Channel 16"),	default = 132.0, modulation = _("AM")},	-- senaki
					[17] = { name = _("Channel 17"),	default = 138.0, modulation = _("AM")},	-- Tbilisi - Lochini
					[18] = { name = _("Channel 18"),	default = 122.0, modulation = _("AM")},	-- krasnodar-center
					[19] = { name = _("Channel 19"),	default = 124.0, modulation = _("AM")},	-- krymsk
					[20] = { name = _("Channel 20"),	default = 137.0, modulation = _("AM")}, -- mozdok
				}
			},--[1]
			[2] = {  
				name = _("R-828"),
				range = {min = 20.0, max = 59.9},
				channels = {
					[1] = { name = _("Channel 1"),		default = 21.5, modulation = _("FM")}, -- default
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
			},--[2]
		},
		AddPropAircraft = {
			{ id = "ExhaustScreen" , control = 'checkbox', label = _('Exhaust Dispenser'), defValue = true, weight = 160, arg = 457},
			{ id = "LeftEngineResource", control = 'slider', label = _('Left Engine Resource'), defValue = 90, min = 40, max = 100, dimension = '%',playerOnly = true},
			{ id = "RightEngineResource", control = 'slider', label = _('Right Engine Resource'), defValue = 90, min = 40, max = 100, dimension = '%',playerOnly = true},
			{ id = "AdditionalArmor" , control = 'checkbox', label = _('Additional Armor'), defValue = true, weight = 419, arg = 80},
            { id = "CargoHalfdoor" , control = 'checkbox', label = _('Cargo halfdoor'), defValue = true, weight = 130, onlyEmpty = true},
			{ id = "GunnersAISkill" , control = 'slider', label = _('Gunners AI Skill'), defValue = 90, min = 10, max = 100, dimension = '%'},
			{ id = "NetCrewControlPriority" , control = 'comboList', label = _('Aircraft Control Priority'), playerOnly = true,
					values = {{id =  0, dispName = _("Pilot")},
						{id =  1, dispName = _("Instructor")},
						{id = -1, dispName = _("Ask Always")},
						{id = -2, dispName = _("Equally Responsible")}},
						defValue  = 1,
						wCtrl     = 150
			},
			{ id = "NS430allow" , control = 'checkbox', label = _('NS 430 allow'), defValue = true},			
		},
		--[[
		AddPropAircraft = {
			{ id = 'testOpt1'	, control = 'spinbox',	  label = _('test1'), defValue = 11, min = 10, max = 900, dimension = _('m')},
			{ id = 'testOpt2'	, control = 'checkbox'	, label = _('test2'), defValue = false },
			{ id = 'testOpt3'	, control = 'slider'	, label = _('test3'), defValue = 22, min = 15, max = 880, dimension = '%'},
			{ id = 'testOpt117' , control = 'comboList'	, label = _('test4'), defValue = 1,
				values = {
				{ id = 0, dispName = _("256")},
				{ id = 1, dispName = _("512")},
				{ id = 2, dispName = _("1024")},
				{ id = 3, dispName = _("2048")},
				{ id = 4, dispName = _("4096")},
				},
			dimension = '%',
			},
			{ id = 'testOpt9' , control = 'slider'  , label = _('test3'), defValue = 22, min = 0, max = 100, dimension = '%'},
			{ id = 'testOpt10', control = 'spinbox' , label = _('test1'), defValue = 11, min = 0, max = 100, dimension = _('m')},
			{ id = 'testOpt11', control = 'checkbox', label = _('test2'), defValue = false},
		},
		--]]
		Failures = {
			{ id = 'LeftEngine_ShaveInOil',				label = _('Left Engine: shave in oil'), 			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'RightEngine_ShaveInOil',			label = _('Right Engine: shave in oil'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'MainReductor_ShaveInOil',			label = _('Main Reductor: shave in oil'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'TransitionalReductor_ShaveInOil',	label = _('Transitional Reductor: shave in oil'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'TailReductor_ShaveInOil',			label = _('Tail Reductor: shave in oil'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },

			{ id = 'hydro_main',						label = _('Main Hydraulic System Failure'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },

			{ id = 'es_damage_GeneratorLeft',			label = _('Electric: Generator 1'),					enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'es_damage_GeneratorRight',			label = _('Electric: Generator 2'),					enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },

			{ id = 'SAR_2_101',							label = _('Left Engine: SAR Failure'),				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'SAR_1_101',							label = _('Right Engine: SAR Failure'),				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'Surge_LeftEngine',					label = _('Left Engine: Surge'),					enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'Surge_RightEngine',					label = _('Right Engine: Surge'),					enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'Failure_LeftEngine',				label = _('Left Engine: Failure'),					enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'Failure_RightEngine',				label = _('Right Engine: Failure'),					enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'EEC_Failure_LeftEngine',			label = _('Left Engine: ERD Failure'),				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'EEC_Failure_RightEngine',			label = _('Right Engine: ERD Failure'),				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'LeftEngine_LowOilPressure',			label = _('Left Engine: Oil Leak'),					enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'RightEngine_LowOilPressure',		label = _('Right Engine: Oil Leak'),				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'MainReductor_LowOilPressure',		label = _('Main Reductor: Oil Leak'),				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },

			{ id = 'CTRL_TAIL_ROTOR_CONTROL_FAILURE',	label = _('Tail Rotor Control Failure'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			
			{ id = 'APU_Fire',							label = _('Main Reductor Fire'),					enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'LeftEngine_Fire',					label = _('Left Engine Fire'),						enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'RightEngine_Fire',					label = _('Right Engine Fire'),						enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },

			{ id = 'fuel_sys_feed_tank_pump',			label = _('Feed Tank Pump Failure'),				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'fuel_sys_left_transfer_pump',		label = _('Left Fuel Pump Failure'),				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'fuel_sys_right_transfer_pump',		label = _('Right Fuel Pump Failure'),				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },

			{ id = 'RADAR_ALT_TOTAL_FAILURE', 			label = _('Radar Altimeter failure'),				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'JADRO_1A_FAILURE_TOTAL', 			label = _('Jadro-1A failure'),						enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },

			-- hidden failures
			{ id = 'es_damage_VU1',							label = _('Electric: Rectifier 1 Failure'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },
			{ id = 'es_damage_VU2',							label = _('Electric: Rectifier 2 Failure'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },
			{ id = 'es_damage_VU3',							label = _('Electric: Rectifier 3 Failure'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },
			{ id = 'es_damage_DMR',							label = _('Electric: RCR Relay Failure'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },

			{ id = 'TransitionalReductor_LowOilPressure',	label = _('Transitional Reductor: Oil Leak'),		enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },
			{ id = 'TailReductor_LowOilPressure',			label = _('Tail Reductor: Oil Leak'),				enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },

			{ id = 'hydro_diaphragm',						label = _('Hydraulic Diaphragm Failure'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },
			{ id = 'hydro_auxiliary',						label = _('Auxiliary Hydraulic System Failure'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },

			{ id = 'fuel_sys_300left',						label = _('300 Liters Left'),						enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },
			{ id = 'fuel_sys_swapping_pumps',				label = _('Feed Pumps Failure'),					enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },

			{ id = 'SAR_2_95',								label = _('Left Engine: RPM Sensor Failure'),		enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },
			{ id = 'SAR_1_95',								label = _('Right Engine: RPM Sensor Failure'),		enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },
			{ id = 'SAR_hover_flight_glide',				label = _('SAR: Low Vibration Failure'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },
			{ id = 'SAR_fast',								label = _('SAR: High Vibration Failure'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },
			{ id = 'RPMFault_LeftEngine',					label = _('Left Engine: RPM Failure'),				enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },
			{ id = 'RPMFault_RightEngine',					label = _('Right Engine: RPM Failure'),				enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },
			{ id = 'Vibration_LeftEngine',					label = _('Left Engine: High Vibration'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },
			{ id = 'Vibration_RightEngine',					label = _('Right Engine: High Vibration'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },
			{ id = 'PPF_LE_TEMPER_LIM_OFF',					label = _('Left Engine: Temperature Limit'),		enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },
			{ id = 'PPF_RE_TEMPER_LIM_OFF',					label = _('Right Engine: Temperature Limit'),		enable = false, hh = 0, mm = 0, mmint = 1, prob = 0,	hidden = true },

		},
        mapclasskey = "P0091000020",
		sounderName = "Aircraft/Helicopters/Mi-8MT",
		InternalCargo = {
			nominalCapacity = 2400,
			maximalCapacity = 2400, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		},
    },
    {
	    pylon(1, 0, 0.4, -0.95, -3.26,
            {
                use_full_connector_position = true,
            },
            {
				{ CLSID = "B_8V20A_CM",                             forbidden = {{station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "B_8V20A_OM",                             forbidden = {{station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
    			{ CLSID = "B_8V20A_OFP2",                           forbidden = {{station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
                { CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}", forbidden = {{station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },

				{ CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}", forbidden = {{station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}", forbidden = {{station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}", forbidden = {{station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "GUV_VOG",                                forbidden = {{station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },

                { CLSID = "<CLEAN>", arg = 1000, arg_value = 2.0, required = {{station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
            }
        ),
        pylon(2, 0, 0.4, -0.95, -2.75,
            {
				use_full_connector_position = true,
            },
            {
				{ CLSID = "B_8V20A_CM",                             forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "B_8V20A_OM",                             forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
    			{ CLSID = "B_8V20A_OFP2",                           forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
                { CLSID = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
                { CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "GUV_YakB_GSHP",                          forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "GUV_VOG",                                forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
                { CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },

                { CLSID = "<CLEAN>", arg = 1000, arg_value = 2.0, required = {{station = 1, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
            }
        ),
        pylon(3, 0, 0.4, -0.95, -2.165,
            {
				use_full_connector_position = true,
            },
            {
				{ CLSID = "B_8V20A_CM",                             forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "B_8V20A_OM",                             forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
    			{ CLSID = "B_8V20A_OFP2",                           forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
                { CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },

                { CLSID = "<CLEAN-200.5>", arg = 1000, arg_value = 2.0, required = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
            }
        ),

		pylon(4, 0, 0.4, -0.95, 2.16,
            {
				use_full_connector_position = true,
            },
            {
				{ CLSID = "B_8V20A_CM",                             forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "B_8V20A_OM",                             forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
    			{ CLSID = "B_8V20A_OFP2",                           forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
                { CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },

                { CLSID = "<CLEAN-200.5>", arg = 1000, arg_value = 2.0, required = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
            }
        ),
        pylon(5, 0, 0.4, -0.95, 2.76,
            {
				use_full_connector_position = true,
            },
            {
    			{ CLSID = "B_8V20A_CM",                             forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "B_8V20A_OM",                             forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
    			{ CLSID = "B_8V20A_OFP2",                           forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
                { CLSID = "{05544F1A-C39C-466b-BC37-5BD1D52E57BB}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
                { CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "GUV_YakB_GSHP",                          forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "GUV_VOG",                                forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },

                { CLSID = "<CLEAN>", arg = 1000, arg_value = 2.0, required = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 6, loadout = {"<CLEAN>"}},}, },
            }
        ),
        pylon(6, 0, 0.4, -0.95, 3.26,
            {
				use_full_connector_position = true,
            },
            {
				{ CLSID = "B_8V20A_CM",                             forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "B_8V20A_OM",                             forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}},}, },
    			{ CLSID = "B_8V20A_OFP2",                           forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}},}, },
                { CLSID = "{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}},}, },

				{ CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}},}, },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}", forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}},}, },
				{ CLSID = "GUV_VOG",                                forbidden = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}},}, },

                { CLSID = "<CLEAN>", arg = 1000, arg_value = 2.0, required = {{station = 1, loadout = {"<CLEAN>"}}, {station = 2, loadout = {"<CLEAN>"}}, {station = 3, loadout = {"<CLEAN-200.5>"}}, {station = 4, loadout = {"<CLEAN-200.5>"}}, {station = 5, loadout = {"<CLEAN>"}},}, },
            }
        ),

		pylon(7, 0, 0.605000, -0.979000, -1.50000,
            {
				use_full_connector_position=true, connector = "Gunner_Point", arg = 38 , arg_value = 0, DisplayName = _("KORD"),
            },
            {
				{ CLSID = "KORD_12_7", arg_value = 1},
            }
        ),

		pylon(8, 0, 0.605000, -0.979000, 1.50000,
            {
				use_full_connector_position=true, connector = "Gunner2_Point", DisplayName = _("PKT"), arg = 26 , arg_value = 0
            },
            {
				{ CLSID = "PKT_7_62", arg_value = -1},
            }
        ),
    },
    {
        aircraft_task(CAS),
        aircraft_task(GroundAttack),
        aircraft_task(Transport),
        aircraft_task(AFAC),
        aircraft_task(AntishipStrike)
    },
	aircraft_task(Transport)
);