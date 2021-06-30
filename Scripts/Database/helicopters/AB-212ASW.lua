return helicopter( "UH-1H", _("UH-1H"),
    {
        
        EmptyWeight = "2883", -- EmptyWeight = G-Basic_with_Oil + G-crew + G_HardPoint_for_Weapon = 2.543+2x100+(30x2+40X2) =2.883kg
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
        MaxFuelWeight = "631",
        MaxHeight = "5000",
        MaxSpeed = "200",
        MaxTakeOffWeight = "4310",
        Picture = "AB-212ASW.png",
        Rate = "20",
        Shape = "AB-212",
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
        WorldID = 166,
		country_of_origin = "USA",
		
		Navpoint_Panel = false,
		Fixpoint_Panel = false,

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			ChaffNoEdit = true,
			SingleChargeTotal = 60,
			chaff = {default = 0, increment = 0, chargeSz = 0},
			flare = {default = 60, increment = 1, chargeSz = 1}
		},
		
		HardpointRacks_Edit = true,
        HardpointRacksWeight = 140,
		HardpointRacksArg = 1000,
        
        attribute = {wsType_Air, wsType_Helicopter, wsType_Battleplane,AB_212,
        "Attack helicopters",
        },
        Categories = {
        },
        CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_AVERAGE_UH),
		
		HumanRadio = {
			frequency = 251.0,
			editable = true,
			minFrequency = 225.000,
			maxFrequency = 399.975,
			modulation = MODULATION_AM
		},
		panelRadio = {
			[1] = {  
				name = _("UHF AN/ARC-51"),
				range = {min = 225.000, max = 399.975},
				channels = {
					[1] = { name = _("Channel 1"),		default = 251.0, modulation = _("AM"), connect = true}, -- default
					[2] = { name = _("Channel 2"),		default = 264.0, modulation = _("AM")},	-- min. water : 264.0
					[3] = { name = _("Channel 3"),		default = 265.0, modulation = _("AM")},	-- nalchik : 265.0
					[4] = { name = _("Channel 4"),		default = 256.0, modulation = _("AM")},	-- sochi : 256.0
					[5] = { name = _("Channel 5"),		default = 254.0, modulation = _("AM")},	-- maykop : 254.0
					[6] = { name = _("Channel 6"),		default = 250.0, modulation = _("AM")},	-- anapa : 250.0
					[7] = { name = _("Channel 7"),		default = 270.0, modulation = _("AM")},	-- beslan : 270.0
					[8] = { name = _("Channel 8"),		default = 257.0, modulation = _("AM")},	-- krasnodar-pashk. : 257.0
					[9] = { name = _("Channel 9"),		default = 255.0, modulation = _("AM")},	-- gelenjik : 255.0
					[10] = { name = _("Channel 10"),	default = 262.0, modulation = _("AM")},	-- kabuleti : 262.0
					[11] = { name = _("Channel 11"),	default = 259.0, modulation = _("AM")},	-- gudauta : 259.0
					[12] = { name = _("Channel 12"),	default = 268.0, modulation = _("AM")},	-- soginlug : 268.0
					[13] = { name = _("Channel 13"),	default = 269.0, modulation = _("AM")},	-- vaziani : 269.0
					[14] = { name = _("Channel 14"),	default = 260.0, modulation = _("AM")},	-- batumi : 260.0
					[15] = { name = _("Channel 15"),	default = 263.0, modulation = _("AM")},	-- kutaisi : 263.0
					[16] = { name = _("Channel 16"),	default = 261.0, modulation = _("AM")},	-- senaki : 261.0
					[17] = { name = _("Channel 17"),	default = 267.0, modulation = _("AM")},	-- lochini : 267.0
					[18] = { name = _("Channel 18"),	default = 251.0, modulation = _("AM")},	-- krasnodar-center : 251.0
					[19] = { name = _("Channel 19"),	default = 253.0, modulation = _("AM")},	-- krymsk : 253.0
					[20] = { name = _("Channel 20"),	default = 266.0, modulation = _("AM")}, -- mozdok : 266.0
				}
			},--[1]
		},

		AddPropAircraft = {
			{ id = "ExhaustScreen" , control = 'checkbox', label = _('Exhaust Dispenser'), defValue = true, weight = 20, arg = 1001},
			{ id = "GunnersAISkill" , control = 'slider', label = _('Gunners AI Skill'), defValue = 90, min = 10, max = 100, dimension = '%'},
			{ id = "EngineResource", control = 'slider', label = _('Engine Resource'), defValue = 90, min = 0, max = 100, playerOnly = true, dimension = '%'},
			{ id = "SoloFlight" 			, control = 'checkbox' , label = _('Solo Flight'),	playerOnly = true, defValue = false},
			{ id = "NetCrewControlPriority" , control = 'comboList', label = _('Aircraft Control Priority'), playerOnly = true,
					values = {{id =  0, dispName = _("Pilot")},
							{id =  1, dispName = _("Copilot")},
							{id = -1, dispName = _("Ask Always")},
							{id = -2, dispName = _("Equally Responsible")}},
					defValue  = 0,
					wCtrl     = 150
			},
		},
		Failures = {
            { id = 'es_damage_MainGenerator',  		label = _('GENERATOR MAIN'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'es_damage_StarterGenerator',  	label = _('STARTER-GENERATOR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'es_damage_MainInverter',  		label = _('INVERTER MAIN'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'es_damage_SpareInverter',  		label = _('INVERTER SPARE'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
            { id = 'es_damage_Battery',  			label = _('BATTERY'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro_main',  					label = _('HYDRAULIC SYSTEM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro_main_irreversible_valve', label = _('HYDRAULIC SYSTEM IRREVERSIBLE VALVE '), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ELEC_BOOSTER_FUEL_PUMP_1_FAILURE',  label = _('LEFT CELL BOOST PUMP'),enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ELEC_BOOSTER_FUEL_PUMP_2_FAILURE',  label = _('RIGHT CELL BOOST PUMP'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ELEC_BOOSTER_FUEL_PUMP_0_FAILURE',  	label = _('ENGINE PUMP'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'fs_damage_transfer_pumps',  	label = _('TRANSFER PUMPS'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'fs_damage_swapping_pumps',  	label = _('SWAPPING PUMPS'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'fs_forward_LH_leakage',  	label = _('FORWARD LH LEAKAGE'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'fs_forward_RH_leakage',  	label = _('FORWARD RH LEAKAGE'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'fs_aft_central_leakage',  	label = _('AFT CENTRAL LEAKAGE'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'fs_aft_LH_leakage',  	label = _('AFT LH LEAKAGE'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'fs_aft_RH_leakage',  	label = _('AFT RH LEAKAGE'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'engine_surge_failure',  	label = _('TURBINE COMPRESSOR STALL'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'engine_chip',  				label = _('ENGINE CHIP'), 				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'engine_driveshaft_failure', label = _('MAIN DRIVESHAFT FAILURE'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'main_reductor_chip',  		label = _('MAIN GEARBOX CHIP'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'engine_droop_failure',  	label = _('ENGINE DROP COMPENSATOR FAILURE'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100},
			{ id = 'tail_reductor_chip',  		label = _('TAIL ROTOR GEARBOX CHIP'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100},
			{ id = 'UHF_RADIO_FAILURE_TOTAL',	label = _('UHF radio failure'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'VHF_AM_RADIO_FAILURE_TOTAL',label = _('VHF AM radio failure'),		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'VHF_FM_RADIO_FAILURE_TOTAL',label = _('VHF FM radio failure'),		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			
			{ id = 'ILS_FAILURE_TOTAL',		  	 label = _('ILS: total failure'),		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ILS_FAILURE_ANT_LOCALIZER',	 label = _('ILS: localizer channel failure'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ILS_FAILURE_ANT_GLIDESLOPE', label = _('ILS: glideslope channel failure'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ILS_FAILURE_ANT_MARKER',	 label = _('ILS: marker antenna failure'),		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ARN_82_FAILURE_TOTAL',		 label = _('Radio nav. set total failure'),enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },

			{ id = 'ARN_83_TOTAL_FAILURE', 		label = _('ADF total failure'),			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ARN_83_ADF_DAMAGE',	 		label = _('ADF goniometer failure'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			
			{ id = 'GMC_TOTAL_FAILURE', 		label = _('GMC total failure'),				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'GMC_GYRO_FAILURE', 			label = _('GMC directional gyro failure'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'GMC_MAGN_COMP_FAILURE', 	label = _('GMC magnetic compass failure'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			
			{ id = 'NOSE_AIRSPEED_INDICATOR_FAILURE', 	label = _('Nose Airspeed Indicator failure'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ROOF_AIRSPEED_INDICATOR_FAILURE', 	label = _('Roof Airspeed Indicator failure'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			
			{ id = 'A11_CLOCK_FAILURE', 			label = _('Clock failure'),				enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'MD1_GYRO_TOTAL_FAILURE', 		label = _('Roll Pitch Gyro failure'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'COPILOT_GYRO_TOTAL_FAILURE', 	label = _('Copilot Gyro failure'),		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },

			{ id = 'FLEX_S_NO_POWER_SUPPLY',		label = _('Flex. Sight. No power'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'FLEX_S_MAIN_LAMP_DEFECTIVE',	label = _('Flex. Sight. Main lamp defective'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'FLEX_S_BKP_LAMP_DEFECTIVE',		label = _('Flex. Sight. Backup lamp defective'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'FLEX_S_NO_GUN_SIGN',			label = _('Flex. Sight. No signal to guns'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			
			{id = 'PILOT_KILLED_FAILURE', 			label = _("First Pilot Killed"), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{id = 'COPILOT_KILLED_FAILURE', 		label = _("Second Pilot Killed"), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{id = 'RIGHT_GUNNER_KILLED_FAILURE', 	label = _("Right Gunner Killed"), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{id = 'LEFT_GUNNER_KILLED_FAILURE', 	label = _("Left Gunner Killed"), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			
			{id = 'RADAR_ALT_TOTAL_FAILURE', 	label = _("Radar Altimeter failure"), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },

			},
        mapclasskey = "P0091000021",    
		InternalCargo = {
			nominalCapacity = 1400,
			maximalCapacity = 1400, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		},
		pilot_animation_params = {
		-- init params
			model_name = 'pilot_uh1_01',
			animation_speed = 0.1,
			escape_argument = 16,
			pilot_initial_pos_y = -1.65,
			pilot_base_speed = 4.65,
			pilot_run_cycle_distance = 2.8,
		-- animation params
			left_jump_start = 0.004,
			left_jump_end = 0.1233,
			left_jump_frame_diff = 0.1193,
			
			right_jump_start = 0.1267,
			right_jump_end = 0.2433,
			right_jump_frame_diff = 0.1166,
			
			walk_away_start = 0.246703,
			walk_away_end = 0.320,
			walk_away_frame_diff = 0.073297,
			
			to_the_ground_start = 0.326701,
			to_the_ground_end = 0.357,
			to_the_ground_frame_diff = 0.030299,
		},
    },
   {
        pylon(1, 0, 0.0, -0.840000, -2.0000,{use_full_connector_position=true,connector = "Pylon1",},
        {
			{ CLSID = "M134_L", connector = "Pylon1"},
        }),
        pylon(2, 0, 0.605000, -0.979000, -1.50000,
            {
				use_full_connector_position=true,
            },
            {
				{ CLSID = "XM158_MK1"},
				{ CLSID = "XM158_MK5"},
				{ CLSID = "XM158_M151"},
				{ CLSID = "XM158_M156"},
				{ CLSID = "XM158_M274"},
				{ CLSID = "XM158_M257"},
				{ CLSID = "M261_MK151"},
				{ CLSID = "M261_MK156"},
            }
        ),
		pylon(3, 0, 0.605000, -0.979000, -1.50000,
            {
				use_full_connector_position=true,
            },
            {
				{ CLSID = "M134_SIDE_L", connector = "GUNNER_L_PNTR"},
				{ CLSID = "M60_SIDE_L", connector = "GUNNER_L_PNTR"},
            }
        ),
		
		pylon(4, 0, 0.605000, -0.979000, 1.50000,
            {
				use_full_connector_position=true,
            },
            {
				{ CLSID = "M134_SIDE_R", connector = "GUNNER_R_PNTR"},
				{ CLSID = "M60_SIDE_R", connector = "GUNNER_R_PNTR"},
            }
        ),
		
        pylon(5, 0, 0.605000, -0.979000, 1.50000,
            {
				use_full_connector_position=true,
            },
            {
				{ CLSID = "XM158_MK1",connector = "Pylon3"},
				{ CLSID = "XM158_MK5",connector = "Pylon3"},
				{ CLSID = "XM158_M151",connector = "Pylon3"},
				{ CLSID = "XM158_M156",connector = "Pylon3"},
				{ CLSID = "XM158_M274",connector = "Pylon3"},
				{ CLSID = "XM158_M257",connector = "Pylon3"},
				{ CLSID = "M261_MK151",connector = "Pylon3"},
				{ CLSID = "M261_MK156",connector = "Pylon3"}
            }
        ),
        pylon(6, 0, 0.0, -0.840000, 2.0000,{use_full_connector_position=true,connector = "Pylon4",},
        {
			{ CLSID = "M134_R", connector = "Pylon4"},
        }),
    },
    {
		aircraft_task(CAS),
        aircraft_task(GroundAttack),
        aircraft_task(Transport),
    },
	aircraft_task(Transport)
);
