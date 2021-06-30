HelConst = 
{
	[151] = -- Mi-8MTV
	{
		length	=	25.942,
		height	=	4.908,
		rotor_height	=	2.602,
		rotor_diameter	=	21.33,
		blades_number	=	5,
		blade_area	=	4.63,
		rotor_RPM	=	-192,
		engines_count	=	2,
		apu_rpm_delay_ = 2,
		blade_chord	=	0.52,
		rotor_MOI	=	26000,
		rotor_pos = 	{0.206,	2.575,	0},
		thrust_correction	=	0.8,
		fuselage_Cxa0	=	0.5,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	4.8,
		centering	=	-0.03,
		tail_pos = 	{-12.572,	2.737,	0},
		tail_fin_area	=	1.38,
		tail_stab_area	=	1.47,
		M_empty	=	8866.2,
		M_nominal	=	11100,
		M_max	=	13000,
		MOI = 	{18000,	76162,	80778},
		M_fuel_max	=	1929,
		V_max	=	250,
		V_max_cruise	=	225,
		Vy_max	=	14.6,
		H_stat_max_L	=	1800,
		H_stat_max	=	1850,
		H_din_two_eng	=	6000,
		H_din_one_eng	=	1800,
		range	=	580,
		flight_time_typical	=	155,
		flight_time_maximum	=	189,
		main_gear_pos = 	{-1.322,	-2.32,	2.118},
		nose_gear_pos = 	{3.236,	-2.489,	0},
		lead_stock_main	=	0.36,
		lead_stock_support	=	0.176,
		stores_number	=	0,
		scheme	=	0,
		fire_rate	=	0,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {4.2, -1.2, -1.9},
				canopy_arg			= 133,
                canopy_args = {133, 1.0, 131, 1.0, 38, 0.2, 86, 0.1},
                bailout_arg = 133,
                boarding_arg = 38,
				--can_be_playable      = true,
				role                 = "pilot",
				role_display_name    = _("Pilot"),
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {4.0, -1.2, 1.7},
				canopy_arg			= 131,
                canopy_args = {133, 1.0, 131, 1.0, 38, 0.2, 86, 0.1},
                bailout_arg = 131,
                boarding_arg = 38,
				--can_be_playable      = true,
				role                 = "copilot",
				role_display_name    = _("Copilot"),
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {2.9, -1.2, -2.4},
				canopy_arg			= 133,
                canopy_args = {133, 0.95, 131, 0.95, 38, 0.3, 86, 0.11},
                bailout_arg = 133,
                boarding_arg = 38,
				--can_be_playable      = true,
				role                 = "technician",
				role_display_name    = _("Technician"),
			}, -- end of [3]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 1.0, "in", 1.0},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 1.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
                --{Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"Arg", 133, "to", 1.0, "in", 1.0}}}}},
                {Transition = {"Close", "Taxi"},  Sequence = {{C = {{"PosType", 10}, {"ValuePhase", 2, "x", 1.0, "y", 0.5, "sign", 1}}}, {C = {{"Arg", 133, "to", 1.0, "in", 1.0}}}, {C = {{"Sleep", "for", 0.0}}}}},
                {Transition = {"Taxi", "Close"},  Sequence = {{C = {{"Arg", 133, "to", 0.0, "in", 1.0}}}}},
            },
            Door1 = {
                --{Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 1},},},},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"Arg", 131, "to", 1.0, "in", 1.0}}}}},
                {Transition = {"Close", "Taxi"},  Sequence = {{C = {{"RandomPhase", 2, "x", 0.8}}}, {C = {{"Arg", 131, "to", 1.0, "in", 1.0}}}, {C = {{"Sleep", "for", 0.0}}}}},
                {Transition = {"Taxi", "Close"},  Sequence = {{C = {{"Arg", 131, "to", 0.0, "in", 1.0}}}}},
            },
            WindscreenWiper0 = {
                {Transition = {"Any", "Hang"}, Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 13, "to", 0.0, "at", 2.0 / 60.0 * 30.0, "sign", -1}}}}},
                {Transition = {"Any", "CustomStage0"}, Sequence = {{C = {{"Arg", 13, "to", 1.0, "at", 2.0 / 60.0 * 90.0, "sign", 1}}}, {C = {{"Arg", 13, "to", 0.0, "at", 2.0 / 60.0 * 90.0, "sign", -1}}}, {C = {{"ValuePhase", 0}}}}},
                {Transition = {"Any", "CustomStage1"}, Sequence = {{C = {{"Arg", 13, "to", 1.0, "at", 2.0 / 60.0 * 60.0, "sign", 1}}}, {C = {{"Arg", 13, "to", 0.0, "at", 2.0 / 60.0 * 60.0, "sign", -1}}}, {C = {{"ValuePhase", 0}}}}},
                {Transition = {"Any", "CustomStage2"}, Sequence = {{C = {{"Arg", 13, "to", 1.0, "at", 2.0 / 60.0 * 30.0, "sign", 1}}}, {C = {{"Arg", 13, "to", 0.0, "at", 2.0 / 60.0 * 30.0, "sign", -1}}}, {C = {{"ValuePhase", 0}}}}},
            },
            WindscreenWiper1 = {
                {Transition = {"Any", "Hang"}, Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 14, "to", 0.0, "at", 2.0 / 60.0 * 30.0, "sign", -1}}}}},
                {Transition = {"Any", "CustomStage0"}, Sequence = {{C = {{"Arg", 14, "to", 1.0, "at", 2.0 / 60.0 * 90.0, "sign", 1}}}, {C = {{"Arg", 14, "to", 0.0, "at", 2.0 / 60.0 * 90.0, "sign", -1}}}, {C = {{"ValuePhase", 0}}}}},
                {Transition = {"Any", "CustomStage1"}, Sequence = {{C = {{"Arg", 14, "to", 1.0, "at", 2.0 / 60.0 * 60.0, "sign", 1}}}, {C = {{"Arg", 14, "to", 0.0, "at", 2.0 / 60.0 * 60.0, "sign", -1}}}, {C = {{"ValuePhase", 0}}}}},
                {Transition = {"Any", "CustomStage2"}, Sequence = {{C = {{"Arg", 14, "to", 1.0, "at", 2.0 / 60.0 * 30.0, "sign", 1}}}, {C = {{"Arg", 14, "to", 0.0, "at", 2.0 / 60.0 * 30.0, "sign", -1}}}, {C = {{"ValuePhase", 0}}}}},
            },
            HeadLights = {
                {Transition = {"Any", "Retract"},      Sequence = {{C = {{"Arg", 425, "to", 0.0,       "speed", 0.5}, {"Arg", 426, "to", 0.0,     "speed", 0.5},      {"Arg", 423, "to", 0.0,      "speed", 0.5}, {"Arg", 424, "to", 0.0, "speed", 0.5},},},},},
                {Transition = {"Any", "CustomStage1"}, Sequence = {{C = {{"Arg", 425, "to", 0.458333,  "speed", 0.5}, {"Arg", 426, "to", 0.0,     "speed", 0.5},      {"Arg", 423, "to", 0.452778, "speed", 0.5}, {"Arg", 424, "to", 0.0, "speed", 0.5},},},},},
                {Transition = {"Any", "CustomStage2"}, Sequence = {{C = {{"Arg", 425, "to", 0.45,      "speed", 0.5}, {"Arg", 426, "to", 0.0,     "speed", 0.5},      {"Arg", 423, "to", 0.44444,  "speed", 0.5}, {"Arg", 424, "to", 0.0, "speed", 0.5},},},},},
                {Transition = {"Any", "CustomStage3"}, Sequence = {{C = {{"Arg", 425, "to", -0.027778, "speed", 0.5}, {"Arg", 426, "to", 0.02777, "speed", 0.5},      {"Arg", 423, "to", 0.38888,  "speed", 0.5}, {"Arg", 424, "to", 0.0, "speed", 0.5},},},},},
            },
        }, -- end of mechanimations
		RCS	=	12,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.5,
		Vy_land_max	=	12.8,
		Ny_max	=	1.5,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorMi8",
		engines_nozzles = 
		{
			[1] = 
			{
				exhaust_length_ab_K	=	0.3,
				azimuth = 10,
			}, -- end of [1]
			
			[2] = 
			{
				exhaust_length_ab_K	=	0.3,
				azimuth = -10,
			}, -- end of [1]
		}, -- end of engines_nozzles
		engine_data = 
		{
			power_take_off	=	1470,
			power_max	=	1618,
			power_WEP	=	1618,
			power_TH_k = 
			{
				[1] = 	{0,	-230.8,	2245.6},
				[2] = 	{0,	-230.8,	2245.6},
				[3] = 	{0,	-325.4,	2628.9},
				[4] = 	{0,	-235.6,	1931.9},
			}, -- end of power_TH_k
			SFC_k = 	{2.045e-007,	-0.0006328,	0.803},
			power_RPM_k = 	{-0.08639,	0.24277,	0.84175},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineTV3117",
		}, -- end of engine_data
		cannon_sight_type	=	0,
		fires_pos = 
		{
			[1] = 	{0,	0.9,	0},
			[2] = 	{0.9,	1.45,	-0.8},
			[3] = 	{0.9,	1.45,	0.8},
			[4] = 	{-11,	1.05,	0},
			[5] = 	{0.9,	-0.82,	1.44},
			[6] = 	{0.9,	-0.82,	-1.44},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
        effects_presets = {
            {effect = "APU_STARTUP_BLAST", preset = "mi8mtv2", ttl = 3.0},
        },
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	0.052,	-0.999},
				pos = 	{-0.55,	-0.32,	-1.28},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	0.052,	0.999},
				pos = 	{-0.55,	-0.32,	1.28},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser
		
		net_animation = {458, 80 --[[Armor]], 85, 457--[[ExhausScreen]], 1000 --[[slick]], 26, 38, 86, 133, 131 --[[doors and blisters]], 
							423, 424, 425, 426 --[[search light pos]],
							1, 2 --[[front gear pinch and direction]],250--[[Cargo Halfdoor]]},
		cargo_radius_in_menu = 2000, -- radius, when cargo displays in menu
		helicopter_hook_pos={-0.154, -0.967, 0.0},
		h_max_gear_hook=3.3,
	}, -- end of [151]
	[152] = -- Mi-24V
	{
		length	=	20.953,
		height	=	4.354,
		rotor_height	=	2.43,
		rotor_diameter	=	17.3,
		blades_number	=	5,
		blade_area	=	3.34,
		rotor_RPM	=	-240,
		engines_count	=	2,
		blade_chord	=	0.58,
		rotor_MOI	=	14300,
		rotor_pos = 	{0.108,	2.44,	0},
		thrust_correction	=	0.7,
		fuselage_Cxa0	=	0.5,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	4.8,
		centering	=	-0.09,
		tail_pos = 	{-10.658,	2.611,	0},
		tail_fin_area	=	3.15,
		tail_stab_area	=	1.47,
		M_empty	=	8870,
		M_nominal	=	11200,
		M_max	=	11500,
		MOI = 	{16562,	77634,	75047},
		M_fuel_max	=	1704,
		V_max	=	330,
		V_max_cruise	=	270,
		Vy_max	=	12.5,
		H_stat_max_L	=	2500,
		H_stat_max	=	2200,
		H_din_two_eng	=	4500,
		H_din_one_eng	=	3000,
		range	=	500,
		flight_time_typical	=	120,
		flight_time_maximum	=	240,
		main_gear_pos = 	{-1.105,	-1.8,	1.3},
		nose_gear_pos = 	{3.3,	-2.02,	0},
		lead_stock_main	=	0.438,
		lead_stock_support	=	0.356,
		stores_number	=	6,
		scheme	=	0,
		fire_rate	=	625,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {3.3, 0.0, 1.0},
                ejection_added_speed = {0.0, 0.0, 1.0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {4.9, -0.5, -1.0},
                ejection_added_speed = {0.0, 0.0, -1.0},
                canopy_arg = 38,
			}, -- end of [1]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 1.0, "in", 1.25}}}}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 1.25}}}}, Flags = {"Reversible", "StepsBackwards"},},
            },
            Door1 = {DuplicateOf = "Door0"},
            HeadLights = {
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 208, "to", 0.0, "speed", 0.14},},},},},
                {Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 208, "to", 0.8, "speed", 0.14},},},},},
                {Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 208, "to", 0.9, "speed", 0.14},},},},},
            },
        }, -- end of mechanimations
		RCS	=	12,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.5,
		Vy_land_max	=	12.8,
		Ny_max	=	2.5,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorMi24",
		engine_data = 
		{
			power_take_off	=	1470,
			power_max	=	1618,
			power_WEP	=	1618,
			power_TH_k = 
			{
				[1] = 	{0,	-230.8,	2245.6},
				[2] = 	{0,	-230.8,	2245.6},
				[3] = 	{0,	-325.4,	2628.9},
				[4] = 	{0,	-235.6,	1931.9},
			}, -- end of power_TH_k
			SFC_k = 	{2.045e-007,	-0.0006328,	0.803},
			power_RPM_k = 	{-0.08639,	0.24277,	0.84175},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineTV3117",
		}, -- end of engine_data
		cannon_sight_type	=	0,
		fires_pos = 
		{
			[1] = 	{0,	0.7,	0},
			[2] = 	{1.63,	0.95,	-0.6},
			[3] = 	{1.63,	0.95,	0.6},
			[4] = 	{-8.4,	0.96,	0},
			[5] = 	{-1.34,	0.65,	0},
			[6] = 	{1.21,	-1.06,	0},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
		net_animation = {336 --[[sight system doors--]]},
	}, -- end of [152]
	[153] = -- Mi-26
	{
		length	=	40.854,
		height	=	12.9,
		rotor_height	=	7.646,
		rotor_diameter	=	32,
		blades_number	=	8,
		blade_area	=	15.24,
		rotor_RPM	=	-120,
		engines_count	=	2,
		blade_chord	=	0.835,
		rotor_MOI	=	254600,
		rotor_pos = 	{0.067,	2.679,	0},
		thrust_correction	=	0.75,
		fuselage_Cxa0	=	0.76,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	9.7,
		centering	=	-0.11,
		tail_pos = 	{-19.78,	4.233,	0},
		tail_fin_area	=	5.45,
		tail_stab_area	=	6.94,
		M_empty	=	28890,
		M_nominal	=	49600,
		M_max	=	56000,
		MOI = 	{205578,	1056873,	1120926},
		M_fuel_max	=	9600,
		V_max	=	295,
		V_max_cruise	=	255,
		Vy_max	=	14.6,
		H_stat_max_L	=	1800,
		H_stat_max	=	1000,
		H_din_two_eng	=	4600,
		H_din_one_eng	=	2300,
		range	=	670,
		flight_time_typical	=	110,
		flight_time_maximum	=	189,
		main_gear_pos = 	{-1.319,	-4.97,	2.5},
		nose_gear_pos = 	{7.255,	-5.08,	0},
		lead_stock_main	=	0.45,
		lead_stock_support	=	0.4,
		stores_number	=	0,
		scheme	=	0,
		fire_rate	=	0,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {5.55, -2.2, -2.0},
                ejection_added_speed = {0.0, 0.0, -1.0},
                canopy_arg = 38,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {5.55, -2.2, -2.1},
                ejection_added_speed = {0.0, 0.0, -1.0},
                canopy_arg = 38,
			}, -- end of [1]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {5.55, -2.2, -2.2},
                ejection_added_speed = {0.0, 0.0, -1.0},
                canopy_arg = 38,
			}, 
			[4] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {5.55, -2.2, -2.3},
                ejection_added_speed = {0.0, 0.0, -1.0},
                canopy_arg = 38,
			},
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 1.0, "in", 5.0}}}}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.0}}}}, Flags = {"Reversible", "StepsBackwards"},},
            },
            Door1 = {DuplicateOf = "Door0"},
            Door2 = {DuplicateOf = "Door0"},
            Door3 = {DuplicateOf = "Door0"},
        }, -- end of mechanimations
		RCS	=	30,
		detection_range_max	=	0,
		IR_emission_coeff	=	1.0,
		Vy_land_max	=	12.8,
		Ny_max	=	1.2,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorMi26",
		engine_data = 
		{
			power_take_off	=	8380,
			power_max	=	8380,
			power_WEP	=	8380,
			power_TH_k = 
			{
				[1] = 	{169.07,	-2546.8,	12832},
				[2] = 	{169.07,	-2546.8,	12832},
				[3] = 	{6.1865,	-828.82,	8350.4},
				[4] = 	{-79.78,	-169.44,	7004.1},
			}, -- end of power_TH_k
			SFC_k = 	{0,	-1.26e-005,	0.368},
			power_RPM_k = 	{-0.08639,	0.24277,	0.84175},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineTV3117",
		}, -- end of engine_data
		cannon_sight_type	=	0,
		fires_pos = 
		{
			[1] = 	{0,	0,	0},
			[2] = 	{4.37,	0,	-1.3},
			[3] = 	{4.37,	0,	1.3},
			[4] = 	{-15.58,	0.217,	0},
			[5] = 	{-1.475,	-0.03,	0},
			[6] = 	{0.27,	-4.011,	0},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
		helicopter_hook_pos={0.0,-0.8,0.0},
		h_max_gear_hook=5.6,
        net_animation = {
            34,
        },
	}, -- end of [153]
	[154] = -- Ka-27
	{
		length	=	15.92,
		height	=	5.2,
		rotor_height	=	2.475,
		rotor_diameter	=	15.9,
		blades_number	=	6,
		blade_area	=	3.26,
		rotor_RPM	=	272,
		engines_count	=	2,
		blade_chord	=	0.48,
		rotor_MOI	=	10600,
		rotor_pos = 	{0.378,	3.51,	0},
		thrust_correction	=	0.55,
		fuselage_Cxa0	=	0.7,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	4.5,
		centering	=	-0.09,
		tail_pos = 	{-6.1,	2,	0},
		tail_fin_area	=	5.66,
		tail_stab_area	=	2.94,
		M_empty	=	5920,
		M_nominal	=	11000,
		M_max	=	13000,
		MOI = 	{14000,	38000,	46000},
		M_fuel_max	=	2616,
		V_max	=	270,
		V_max_cruise	=	230,
		Vy_max	=	12.5,
		H_stat_max_L	=	3000,
		H_stat_max	=	2500,
		H_din_two_eng	=	4300,
		H_din_one_eng	=	2100,
		range	=	800,
		flight_time_typical	=	200,
		flight_time_maximum	=	270,
		main_gear_pos = 	{-0.734,	-2.189,	2.189},
		nose_gear_pos = 	{2.276,	-2.288,	0.694},
		lead_stock_main	=	0.194,
		lead_stock_support	=	0.193,
		stores_number	=	0,
		scheme	=	1,
		fire_rate	=	0,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {3.2, -0.2, -1.1},
                ejection_added_speed = {0.0, 0.0, -5.0},
                canopy_arg = 38,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {3.2, -0.2, -1.2},
                ejection_added_speed = {0.0, 0.0, -6.0},
                canopy_arg = 38,
			}, -- end of [1]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {3.2, -0.2, -1.3},
                ejection_added_speed = {0.0, 0.0, -7.0},
                canopy_arg = 38,
			}, 
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 1.0, "in", 1.25}}}}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 1.25}}}}, Flags = {"Reversible", "StepsBackwards"},},
            },
            Door1 = {DuplicateOf = "Door0"},
            Door2 = {DuplicateOf = "Door0"},
            CrewLadder = {
                {Transition = {"Dismantle", "Erect"}, Sequence = {{C = {{"Sleep", "for", 60.0}}}}},
                {Transition = {"Erect", "Dismantle"}, Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
            },
            HeadLights = {
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 208, "to", 0.0, "speed", 0.14}, {"Arg", 209, "to", 0.0, "speed", 0.14},},},},},
                {Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 209, "to", 0.6, "speed", 0.14},},},},},
                {Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 208, "to", 0.8, "speed", 0.14}, {"Arg", 209, "to", 0.3, "speed", 0.14},},},},},
            },
        }, -- end of mechanimations
		RCS	=	15,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.5,
		Vy_land_max	=	12.8,
		Ny_max	=	3.5,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorKa27",
		engine_data = 
		{
			power_take_off	=	1618,
			power_max	=	1618,
			power_WEP	=	1618,
			power_TH_k = 
			{
				[1] = 	{0,	-230.8,	2245.6},
				[2] = 	{0,	-230.8,	2245.6},
				[3] = 	{0,	-325.4,	2628.9},
				[4] = 	{0,	-235.6,	1931.9},
			}, -- end of power_TH_k
			SFC_k = 	{2.045e-007,	-0.0006328,	0.803},
			power_RPM_k = 	{-0.08639,	0.24277,	0.84175},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineTV3117",
		}, -- end of engine_data
		cannon_sight_type	=	0,
		fires_pos = 
		{
			[1] = 	{0,	0,	0},
			[2] = 	{0.96,	0.7,	-0.45},
			[3] = 	{0.96,	0.7,	0.45},
			[4] = 	{0,	0,	0},
			[5] = 	{-0.31,	-2,	0},
			[6] = 	{-0.6,	-0.07,	0},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
		helicopter_hook_pos={0.0, -1.0, 0.0},
		h_max_gear_hook=3.3,		
	}, -- end of [154]
	[155] = -- Ka-50
	{
		length	=	15.84,
		height	=	5.6,
		rotor_height	=	2.7,
		rotor_diameter	=	14.4,
		blades_number	=	6,
		blade_area	=	2.65,
		rotor_RPM	=	310,
		engines_count	=	2,
		apu_rpm_delay_ = 2,
		blade_chord	=	0.53,
		rotor_MOI	=	8200,
		rotor_pos = 	{0.838,	2.339,	0},
		thrust_correction	=	0.55,
		fuselage_Cxa0	=	0.8,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	3.7,
		centering	=	-0.093,
		tail_pos = 	{-7.245,	0.752,	0},
		tail_fin_area	=	1.45,
		tail_stab_area	=	2.94,
		M_empty	=	8030,
		M_nominal	=	9800,
		M_max	=	11900,
		MOI = 	{12000,	35000,	40000},
		M_fuel_max	=	1450,
		V_max	=	350,
		V_max_cruise	=	310,
		Vy_max	=	14.6,
		H_stat_max_L	=	5070,
		H_stat_max	=	4000,
		H_din_two_eng	=	6400,
		H_din_one_eng	=	3290,
		range	=	450,
		flight_time_typical	=	110,
		flight_time_maximum	=	189,
		main_gear_pos = 	{-0.414,	-1.83,	1.336}, 
		nose_gear_pos = 	{4.41,	-1.79,	0}, 
		lead_stock_main	=	0.295,
		lead_stock_support	=	0.21,
		stores_number	=	4,
		scheme	=	1,
		fire_rate	=	625,
		crew_members = 
		{
			[1] =
			{
				ejection_seat_name	=	10,
				pilot_name			=	11,
				drop_canopy_name	=	0,
				pos = 	{3,0.7,0},
				ejection_added_speed = {5.0 ,30.0, 0},
				drop_parachute_name	 = "pilot_su27_parachute",
                canopy_arg = 38,
                bailout_arg = 25,
                boarding_arg = 38,
			}
		},
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "from", 0.0, "to", 1.0, "in", 1.356}}}}, Flags = {"Reversible"}},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "from", 1.0, "to", 0.0, "in", 2.927}}}}, Flags = {"Reversible", "StepsBackwards"}},
                {Transition = {"Any", "Bailout"}, Sequence = {
                    {C = {{"Origin", "x", 0.7, "y", 2.0, "z", 0.0}, {"Impulse", 1, "tertiary", 10.0}, {"Impulse", 2, "tertiary", 10.0},
                        {"DamagePart", "BLADE_1_IN", "to", 1000},
                        {"DamagePart", "BLADE_2_IN", "to", 1000},
                        {"DamagePart", "BLADE_3_IN", "to", 1000},
                        {"DamagePart", "BLADE_4_IN", "to", 1000},
                        {"DamagePart", "BLADE_5_IN", "to", 1000},
                        {"DamagePart", "BLADE_6_IN", "to", 1000},
                        {"Sleep", "for", 0.5}}
                    },
                    {C = {{"Arg", 25, "to", 1.0, "in", 0.5}, {"Sleep", "for", 0.0}}},
                }},
            },
            WindscreenWiper0 = {
                {Transition = {"Any", "Hang"}, Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 13, "to", 0.0, "at", 1.5, "sign", -1}}}}},
                {Transition = {"Any", "CustomStage0"}, Sequence = {{C = {{"Arg", 13, "to", 1.0, "at", 5.0, "sign", 1}}}, {C = {{"Arg", 13, "to", 0.0, "at", 5.0, "sign", -1}}}, {C = {{"ValuePhase", 0}}}}},
                {Transition = {"Any", "CustomStage1"}, Sequence = {{C = {{"Arg", 13, "to", 1.0, "at", 3.0, "sign", 1}}}, {C = {{"Arg", 13, "to", 0.0, "at", 3.0, "sign", -1}}}, {C = {{"ValuePhase", 0}}}}},
                {Transition = {"Any", "CustomStage2"}, Sequence = {{C = {{"Arg", 13, "to", 1.0, "at", 1.5, "sign", 1}}}, {C = {{"Arg", 13, "to", 0.0, "at", 1.5, "sign", -1}}}, {C = {{"ValuePhase", 0}}}}},
            },
            WindscreenWiper1 = {
                {Transition = {"Any", "Hang"}, Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 14, "to", 0.0, "at", 1.5, "sign", -1}}}}},
                {Transition = {"Any", "CustomStage1"}, Sequence = {{C = {{"Arg", 14, "to", 1.0, "at", 1.5, "sign", 1}}}, {C = {{"Arg", 14, "to", 0.0, "at", 1.5, "sign", -1}}}, {C = {{"ValuePhase", 0}}}}},
            },
            HeadLights = {
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 209, "to", 0.00, "speed", 0.14}, {"Arg", 44, "to", 0.00, "speed", 0.14},   {"Arg", 208, "to", 0.00, "speed", 0.14}, {"Arg", 43, "to", 0.00, "speed", 0.14},},},},},
                {Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 209, "to", 1.00, "speed", 0.14}, {"Arg", 44, "to", 1.00, "speed", 0.14},   {"Arg", 208, "to", 1.00, "speed", 0.14}, {"Arg", 43, "to", -1.0, "speed", 0.14},},},},},
                {Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 209, "to", 0.73, "speed", 0.14}, {"Arg", 44, "to", 0.00, "speed", 0.14},   {"Arg", 208, "to", 0.41, "speed", 0.14}, {"Arg", 43, "to", -0.6, "speed", 0.14},},},},},
            },
        }, -- end of mechanimations
		RCS	=	5,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.3,
		Vy_land_max	=	12.8,
		Ny_max	=	3.5,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorKa50",
		engine_data = 
		{
			power_take_off	=	1618,
			power_max	=	1618,
			power_WEP	=	1618,
			power_TH_k = 
			{
				[1] = 	{0,	-230.8,	2245.6},
				[2] = 	{0,	-230.8,	2245.6},
				[3] = 	{0,	-325.4,	2628.9},
				[4] = 	{0,	-235.6,	1931.9},
			}, -- end of power_TH_k
			SFC_k = 	{2.045e-007,	-0.0006328,	0.803},
			power_RPM_k = 	{-0.08639,	0.24277,	0.84175},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/Ka50AroundEngine",
		}, -- end of engine_data
		cannon_sight_type	=	2,
		fires_pos = 
		{
			[1] = 	{0.8,	0.4,	0},
			[2] = 	{0.27,	0.54,	-0.84},
			[3] = 	{0.27,	0.54,	0.84},
			[4] = 	{0,	0,	0},
			[5] = 	{2,	0.99,	0},
			[6] = 	{-1.37,	-0.85,	0},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
        effects_presets = {
            {effect = "APU_STARTUP_BLAST", preset = "ka50", ttl = 3.0},
        },
		cargo_radius_in_menu = 2000, -- radius, when cargo displays in menu
		helicopter_hook_pos={0.0,-0.5,0.0},
		h_max_gear_hook=3.3,
		net_animation = { 208, 43, 209, 44--[[spotlight]]},
	}, -- end of [155]
	[156] = -- Ka-52
	{
		length	=	15.84,
		height	=	5.6,
		rotor_height	=	2.7,
		rotor_diameter	=	14.4,
		blades_number	=	6,
		blade_area	=	2.65,
		rotor_RPM	=	310,
		engines_count	=	2,
		apu_rpm_delay_ = 2,
		blade_chord	=	0.53,
		rotor_MOI	=	8200,
		rotor_pos = 	{0.838,	2.339,	0},
		thrust_correction	=	0.55,
		fuselage_Cxa0	=	0.8,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	3.7,
		centering	=	-0.093,
		tail_pos = 	{-7.245,	0.752,	0},
		tail_fin_area	=	1.45,
		tail_stab_area	=	2.94,
		M_empty	=	8030,
		M_nominal	=	9800,
		M_max	=	11900,
		MOI = 	{12000,	35000,	40000},
		M_fuel_max	=	1450,
		V_max	=	350,
		V_max_cruise	=	310,
		Vy_max	=	14.6,
		H_stat_max_L	=	5070,
		H_stat_max	=	4000,
		H_din_two_eng	=	6400,
		H_din_one_eng	=	3290,
		range	=	450,
		flight_time_typical	=	110,
		flight_time_maximum	=	189,
		main_gear_pos = 	{-0.414,	-1.89,	1.336},
		nose_gear_pos = 	{4.41,	-1.856,	0},
		lead_stock_main	=	0.295,
		lead_stock_support	=	0.21,
		stores_number	=	4,
		scheme	=	1,
		fire_rate	=	625,
		crew_members = 
		{
			[1] =
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3,0.7,-0.5},
			},
			[2] =
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3,0.7,0.5},
			}
		},
		RCS	=	5,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.3,
		Vy_land_max	=	12.8,
		Ny_max	=	3.5,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorKa50",
		engine_data = 
		{
			power_take_off	=	1618,
			power_max	=	1618,
			power_WEP	=	1618,
			power_TH_k = 
			{
				[1] = 	{0,	-230.8,	2245.6},
				[2] = 	{0,	-230.8,	2245.6},
				[3] = 	{0,	-325.4,	2628.9},
				[4] = 	{0,	-235.6,	1931.9},
			}, -- end of power_TH_k
			SFC_k = 	{2.045e-007,	-0.0006328,	0.803},
			power_RPM_k = 	{-0.08639,	0.24277,	0.84175},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineTV3117",
		}, -- end of engine_data
		cannon_sight_type	=	2,
		fires_pos = 
		{
			[1] = 	{0.8,	0.4,	0},
			[2] = 	{0.27,	0.54,	-0.84},
			[3] = 	{0.27,	0.54,	0.84},
			[4] = 	{0,	0,	0},
			[5] = 	{2,	0.99,	0},
			[6] = 	{-1.37,	-0.85,	0},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
        effects_presets = {
            {effect = "APU_STARTUP_BLAST", preset = "ka50", ttl = 3.0},
        },
	}, -- end of [156]
	[157] = -- AH-64A
	{
		length	=	17.87,
		height	=	4.15,
		rotor_height	=	1.6,
		rotor_diameter	=	14.63,
		blades_number	=	4,
		blade_area	=	3.39,
		rotor_RPM	=	289,
		engines_count	=	2,
		blade_chord	=	0.53,
		rotor_MOI	=	5800,
		rotor_pos = 	{0.123,	1.47,	0},
		thrust_correction	=	0.75,
		fuselage_Cxa0	=	0.5,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	4,
		centering	=	-0.22,
		tail_pos = 	{-9,	1.401,	0},
		tail_fin_area	=	1.45,
		tail_stab_area	=	2.94,
		M_empty	=	5345,
		M_nominal	=	6552,
		M_max	=	9225,
		MOI = 	{6170,	28982,	33441},
		M_fuel_max	=	1157,
		V_max	=	365,
		V_max_cruise	=	296,
		Vy_max	=	12.7,
		H_stat_max_L	=	4570,
		H_stat_max	=	3505,
		H_din_two_eng	=	6400,
		H_din_one_eng	=	3290,
		range	=	480,
		flight_time_typical	=	110,
		flight_time_maximum	=	189,
		main_gear_pos = 	{1.062,	-2.499,	1.017},
		nose_gear_pos = 	{-9.522,	-1.552,	0},
		lead_stock_main	=	0.37,
		lead_stock_support	=	0.147,
		stores_number	=	4,
		scheme	=	0,
		fire_rate	=	625,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{1.3,	0,	1.3},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{2.7,-0.8,	1.3},
                canopy_arg = 38,
			}, -- end of [1]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 1.0, "in", 1.0},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 1.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
            },
            Door1 = {DuplicateOf = "Door0"},
        }, -- end of mechanimations
		RCS	=	5,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.2,
		Vy_land_max	=	12.8,
		Ny_max	=	3.5,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorAH64",
		engine_data = 
		{
			power_take_off	=	1169,
			power_max	=	1169,
			power_WEP	=	1297,
			power_TH_k = 
			{
				[1] = 	{6.3136,	-151.3,	1252.4},
				[2] = 	{4.9361,	-143.84,	1263.3},
				[3] = 	{3.0994,	-125.54,	1239.5},
				[4] = 	{-2.3851,	-55.487,	1006.7},
			}, -- end of power_TH_k
			SFC_k = 	{0,	-0.0002618,	0.5813},
			power_RPM_k = 	{-0.0778,	0.2506,	0.8099},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineGE",
		}, -- end of engine_data
		cannon_sight_type	=	2,
		fires_pos = 
		{
			[1] = 	{0,	0,	0},
			[2] = 	{-1.77,	0.15,	-1.017},
			[3] = 	{-1.77,	0.15,	1.017},
			[4] = 	{-7.6,	-0.69,	0},
			[5] = 	{0.8,	-1.16,	0},
			[6] = 	{-1.6,	-1.26,	0},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
	}, -- end of [157]
	[158] = -- AH-64D
	{
		length	=	17.87,
		height	=	4.15,
		rotor_height	=	1.6,
		rotor_diameter	=	14.63,
		blades_number	=	4,
		blade_area	=	3.39,
		rotor_RPM	=	289,
		engines_count	=	2,
		blade_chord	=	0.53,
		rotor_MOI	=	5800,
		rotor_pos = 	{0.123,	1.47,	0},
		thrust_correction	=	0.75,
		fuselage_Cxa0	=	0.5,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	4,
		centering	=	-0.22,
		tail_pos = 	{-9,	1.401,	0},
		tail_fin_area	=	1.45,
		tail_stab_area	=	2.94,
		M_empty	=	5345,
		M_nominal	=	6552,
		M_max	=	9225,
		MOI = 	{6170,	28982,	33441},
		M_fuel_max	=	1157,
		V_max	=	365,
		V_max_cruise	=	296,
		Vy_max	=	12.7,
		H_stat_max_L	=	4570,
		H_stat_max	=	3505,
		H_din_two_eng	=	6400,
		H_din_one_eng	=	3290,
		range	=	480,
		flight_time_typical	=	110,
		flight_time_maximum	=	189,
		main_gear_pos = 	{1.062,	-2.499,	1.017},
		nose_gear_pos = 	{-9.522,	-1.552,	0},
		lead_stock_main	=	0.37,
		lead_stock_support	=	0.147,
		stores_number	=	4,
		scheme	=	0,
		fire_rate	=	625,
		crew_size	=	2,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{1.3,	0,	1.3},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{2.7,-0.8,	1.3},
                canopy_arg = 38,
			}, -- end of [1]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 1.0, "in", 1.0},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 1.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
            },
            Door1 = {DuplicateOf = "Door0"},
        }, -- end of mechanimations
		RCS	=	5,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.2,
		Vy_land_max	=	12.8,
		Ny_max	=	3.5,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorAH64",
		engine_data = 
		{
			power_take_off	=	1169,
			power_max	=	1169,
			power_WEP	=	1297,
			power_TH_k = 
			{
				[1] = 	{6.3136,	-151.3,	1252.4},
				[2] = 	{4.9361,	-143.84,	1263.3},
				[3] = 	{3.0994,	-125.54,	1239.5},
				[4] = 	{-2.3851,	-55.487,	1006.7},
			}, -- end of power_TH_k
			SFC_k = 	{0,	-0.0002618,	0.5813},
			power_RPM_k = 	{-0.0778,	0.2506,	0.8099},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineGE",
		}, -- end of engine_data
		cannon_sight_type	=	2,
		fires_pos = 
		{
			[1] = 	{0,	0,	0},
			[2] = 	{-1.73,	0.19,	-0.916},
			[3] = 	{-1.73,	0.19,	0.916},
			[4] = 	{-7.4,	-0.72,	0},
			[5] = 	{0.47,	-0.39,	0},
			[6] = 	{-1.17,	-0.4,	0},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
	}, -- end of [158]
	[159] = -- CH-47D
	{
		length	=	28.3,
		height	=	5.998,
		rotor_height	=	2.04,
		rotor_diameter	=	18.3,
		blades_number	=	3,
		blade_area	=	7.43,
		rotor_RPM	=	-225,
		engines_count	=	2,
		blade_chord	=	0.883,
		rotor_MOI	=	30000,
		rotor_pos = 	{6.237,	2.018,	0},
		thrust_correction	=	0.75,
		fuselage_Cxa0	=	0.6,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	8.8,
		centering	=	-6.328,
		tail_pos = 	{-5.755,	3.281,	0},
		tail_fin_area	=	3.45,
		tail_stab_area	=	2.94,
		M_empty	=	15329,
		M_nominal	=	17460,
		M_max	=	22680,
		MOI = 	{46000,	259000,	274000},
		M_fuel_max	=	3600,
		V_max	=	285,
		V_max_cruise	=	260,
		Vy_max	=	14.6,
		H_stat_max_L	=	2675,
		H_stat_max	=	1675,
		H_din_two_eng	=	3100,
		H_din_one_eng	=	1600,
		range	=	615,
		flight_time_typical	=	142,
		flight_time_maximum	=	189,
		main_gear_pos = 	{2.317,	-2.536,	1.402},
		nose_gear_pos = 	{-4.33,	-2.271,	1.605},
		lead_stock_main	=	0.265,
		lead_stock_support	=	0.265,
		stores_number	=	0,
		scheme	=	2,
		fire_rate	=	0,
		crew_size	=	2,
		
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {5.1, -0.8, 2.0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {5.1, -0.8, 2.5},
                canopy_arg = 38,
			}, -- end of [1]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 1.0, "in", 5.0},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 5.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
            },
            Door1 = {DuplicateOf = "Door0"},
            HeadLights = {
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 209, "to", 0.0, "in", 5.0},},},},},
                {Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 209, "to", 1.0, "in", 4.0},},},},},
                {Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 209, "to", 1.0, "in", 4.0},},},},},
            },
        }, -- end of mechanimations
		RCS	=	30,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.72,
		Vy_land_max	=	12.8,
		Ny_max	=	1.2,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorCH47",
		engine_data = 
		{
			power_take_off	=	2926,
			power_max	=	3395,
			power_WEP	=	3395,
			power_TH_k = 
			{
				[1] = 	{14.007,	-383.35,	3336.5},
				[2] = 	{15.464,	-409.31,	3447.3},
				[3] = 	{-2.9802,	-222.92,	3025.2},
				[4] = 	{-4.8014,	-104.19,	2382},
			}, -- end of power_TH_k
			SFC_k = 	{0,	-1.206e-005,	0.3637},
			power_RPM_k = 	{-0.08639,	0.24277,	0.84175},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineGE_CH47",
		}, -- end of engine_data
		cannon_sight_type	=	0,
		fires_pos = 
		{
			[1] = 	{-2.87,	0.07,	0},
			[2] = 	{-4.95,	1.35,	-1.27},
			[3] = 	{-4.95,	1.35,	1.27},
			[4] = 	{-6.48,	1.53,	0},
			[5] = 	{-0.54,	-1.6,	-1.33},
			[6] = 	{-0.54,	-1.6,	1.33},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
		helicopter_hook_pos={0.0, -1.0, 0.0},
		h_max_gear_hook=3.3,	
	}, -- end of [159]
	[160] = -- CH-53E
	{
		length	=	30.18,
		height	=	7.83,
		rotor_height	=	2.295,
		rotor_diameter	=	24.08,
		blades_number	=	7,
		blade_area	=	5.86,
		rotor_RPM	=	179,
		engines_count	=	3,
		blade_chord	=	0.66,
		rotor_MOI	=	59000,
		rotor_pos = 	{0,	2.121,	0},
		thrust_correction	=	0.7,
		fuselage_Cxa0	=	0.5,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	8.9,
		centering	=	-0.09,
		tail_pos = 	{-13.65,	2.914,	0},
		tail_fin_area	=	5.6,
		tail_stab_area	=	6.6,
		M_empty	=	15407,
		M_nominal	=	25400,
		M_max	=	31630,
		MOI = 	{56400,	250000,	268000},
		M_fuel_max	=	6940,
		V_max	=	315,
		V_max_cruise	=	278,
		Vy_max	=	12.7,
		H_stat_max_L	=	3520,
		H_stat_max	=	2895,
		H_din_two_eng	=	5640,
		H_din_one_eng	=	2590,
		range	=	536,
		flight_time_typical	=	110,
		flight_time_maximum	=	189,
		main_gear_pos = 	{-2.271,	-2.169,	1.76},
		nose_gear_pos = 	{5.217,	-2.169,	0},
		lead_stock_main	=	0.3,
		lead_stock_support	=	0.3,
		stores_number	=	0,
		scheme	=	0,
		fire_rate	=	0,
		crew_size	=	3,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{4.3,	0,	-0.5},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{4.3,	0,	 0.5},
			}, -- end of [1]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3,	0,	0},
			}, -- end of [1]
		}, -- end of crew_members
		
		RCS	=	25,
		detection_range_max	=	0,
		IR_emission_coeff	=	1.0,
		Vy_land_max	=	12.8,
		Ny_max	=	1.7,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorCH53",
		engine_data = 
		{
			power_take_off	=	3226.6,
			power_max	=	3226.6,
			power_WEP	=	3226.6,
			power_TH_k = 
			{
				[1] = 	{17.301,	-398.18,	3224.2},
				[2] = 	{16.061,	-399.02,	3291.5},
				[3] = 	{-2.4222,	-249.86,	3083.9},
				[4] = 	{-11.157,	-70.56,	2385.8},
			}, -- end of power_TH_k
			SFC_k = 	{0,	-1.16e-005,	0.4061658},
			power_RPM_k = 	{-0.08639,	0.24277,	0.84175},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineGE",
		}, -- end of engine_data
		cannon_sight_type	=	0,
		fires_pos = 
		{
			[1] = 	{0,	0.3,	0},
			[2] = 	{0.215,	0.74,	-1.48},
			[3] = 	{0.215,	0.74,	1.48},
			[4] = 	{-10.34,	0.41,	0},
			[5] = 	{0.25,	-1.6,	-2},
			[6] = 	{0.25,	-1.6,	2},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
		helicopter_hook_pos={0.0, -0.8, 0.0},
		h_max_gear_hook=3.0,		
	}, -- end of [160]
	[161] = -- SH-60B
	{
		length	=	18.654,
		height	=	4.893,
		rotor_height	=	1.791,
		rotor_diameter	=	16.4,
		blades_number	=	4,
		blade_area	=	3.48,
		rotor_RPM	=	258,
		engines_count	=	2,
		blade_chord	=	0.53,
		rotor_MOI	=	8700,
		rotor_pos = 	{-0.027,	1.871,	0},
		thrust_correction	=	0.75,
		fuselage_Cxa0	=	0.45,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	4.9,
		centering	=	-0.09,
		tail_pos = 	{-9.617,	2.116,	0},
		tail_fin_area	=	4.75,
		tail_stab_area	=	2.94,
		M_empty	=	7619,
		M_nominal	=	9260,
		M_max	=	9980,
		MOI = 	{7406,	50000,	53516},
		M_fuel_max	=	1100,
		V_max	=	276,
		V_max_cruise	=	250,
		Vy_max	=	10.16,
		H_stat_max_L	=	4510,
		H_stat_max	=	4510,
		H_din_two_eng	=	4510,
		H_din_one_eng	=	2700,
		range	=	480,
		flight_time_typical	=	210,
		flight_time_maximum	=	210,
		main_gear_pos = 	{1.081,	-1.484,	1.288},
		nose_gear_pos = 	{-3.566,	-1.488,	0},
		lead_stock_main	=	0.1,
		lead_stock_support	=	0.2,
		stores_number	=	2,
		scheme	=	0,
		fire_rate	=	0,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{2.3,	0,	-0.5},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{2.3,	0,	 0.5},
			}, -- end of [1]
		}, -- end of crew_members
		RCS	=	10,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.35,
		Vy_land_max	=	12.8,
		Ny_max	=	1.7,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorUH60",
		engine_data = 
		{
			power_take_off	=	1148,
			power_max	=	1263,
			power_WEP	=	1263,
			power_TH_k = 
			{
				[1] = 	{6.1988,	-154.38,	1319.2},
				[2] = 	{7.3972,	-166.85,	1354.6},
				[3] = 	{-1.3775,	-103.72,	1292.3},
				[4] = 	{-3.0581,	-51.096,	1058.7},
			}, -- end of power_TH_k
			SFC_k = 	{0,	-5.899e-005,	0.3759},
			power_RPM_k = 	{-0.0778,	0.2506,	0.8099},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineGE",
		}, -- end of engine_data
		cannon_sight_type	=	0,
		fires_pos = 
		{
			[1] = 	{0,	0.5,	0},
			[2] = 	{-1.5,	0.927,	-0.95},
			[3] = 	{-1.5,	0.927,	0.95},
			[4] = 	{-7.3,	-0.14,	0},
			[5] = 	{-0.45,	-0.99,	-0.864},
			[6] = 	{-0.45,	-0.99,	0.864},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
		helicopter_hook_pos={0.0, -1.0, 0.0},
		h_max_gear_hook=3.0,		
	}, -- end of [161]
	[162] = -- UH-60A
	{
		length	=	18.654,
		height	=	4.893,
		rotor_height	=	1.791,
		rotor_diameter	=	16.4,
		blades_number	=	4,
		blade_area	=	3.48,
		rotor_RPM	=	258,
		engines_count	=	2,
		blade_chord	=	0.53,
		rotor_MOI	=	8700,
		rotor_pos = 	{0,	1.646,	0},
		thrust_correction	=	0.75,
		fuselage_Cxa0	=	0.45,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	4.9,
		centering	=	-0.09,
		tail_pos = 	{-10.042,	1.76,	0},
		tail_fin_area	=	4.75,
		tail_stab_area	=	2.94,
		M_empty	=	7799,
		M_nominal	=	9260,
		M_max	=	9980,
		MOI = 	{7406,	50000,	53516},
		M_fuel_max	=	1100,
		V_max	=	268,
		V_max_cruise	=	237,
		Vy_max	=	3.4,
		H_stat_max_L	=	4170,
		H_stat_max	=	3170,
		H_din_two_eng	=	5790,
		H_din_one_eng	=	2900,
		range	=	600,
		flight_time_typical	=	110,
		flight_time_maximum	=	138,
		main_gear_pos = 	{0.879,	-1.968,	1.425},
		nose_gear_pos = 	{-7.774,	-2.029,	0},
		lead_stock_main	=	0.117,
		lead_stock_support	=	0.138,
		stores_number	=	0,
		scheme	=	0,
		fire_rate	=	0,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {2.5, 0.0, -1.3},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {2.5, 0.0, 1.3},
                canopy_arg = 38,
			}, -- end of [1]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {0.0, -0.8, -1.8},
                canopy_arg = 38,
			}, -- end of [1]
			[4] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {0.0, -0.8, 1.8},
                canopy_arg = 38,
			}, -- end of [1]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"VelType", 3}, {"Arg", 38, "to", 1.0, "in", 1.5},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"VelType", 3}, {"Arg", 38, "to", 0.0, "in", 1.6},},},}, Flags = {"Reversible", "StepsBackwards"},},
            },
            Door1 = {DuplicateOf = "Door0"},
            Door2 = {DuplicateOf = "Door0"},
            Door3 = {DuplicateOf = "Door0"},
            HeadLights = {
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 208, "to", 0.0, "in", 5.0},},},},},
                {Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 208, "to", 1.0, "in", 4.0},},},},},
                {Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 208, "to", 1.0, "in", 4.0},},},},},
            },
        }, -- end of mechanimations
		RCS	=	10,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.22,
		Vy_land_max	=	12.8,
		Ny_max	=	1.7,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorUH60",
		engine_data = 
		{
			power_take_off	=	1148,
			power_max	=	1263,
			power_WEP	=	1263,
			power_TH_k = 
			{
				[1] = 	{6.1988,	-154.38,	1319.2},
				[2] = 	{7.3972,	-166.85,	1354.6},
				[3] = 	{-1.3775,	-103.72,	1292.3},
				[4] = 	{-3.0581,	-51.096,	1058.7},
			}, -- end of power_TH_k
			SFC_k = 	{0,	-5.899e-005,	0.3759},
			power_RPM_k = 	{-0.0778,	0.2506,	0.8099},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineGE",
		}, -- end of engine_data
		cannon_sight_type	=	0,
		fires_pos = 
		{
			[1] = 	{0,	0.5,	0},
			[2] = 	{-1.5,	0.927,	-0.95},
			[3] = 	{-1.5,	0.927,	0.95},
			[4] = 	{-7.3,	-0.14,	0},
			[5] = 	{-0.45,	-0.99,	-0.864},
			[6] = 	{-0.45,	-0.99,	0.864},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
		helicopter_hook_pos={0.0, -1.0, 0.0},
		h_max_gear_hook=3.0,		
	}, -- end of [162]
	[163] = -- AH-1W
	{
		length	=	17.27,
		height	=	3.9,
		rotor_height	=	1.75,
		rotor_diameter	=	14.64,
		blades_number	=	2,
		blade_area	=	6.13,
		rotor_RPM	=	324,
		engines_count	=	2,
		blade_chord	=	0.84,
		rotor_MOI	=	4600,
		rotor_pos = 	{0.508,	1.656,	0},
		thrust_correction	=	0.62,
		fuselage_Cxa0	=	0.5,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	3.2,
		centering	=	-0.09,
		tail_pos = 	{-5.989,	0.973,	0},  -- -7.989, but stabilizer is too strong then for rotor in autorotation 
		tail_fin_area	=	1.23,
		tail_stab_area	=	2.94,
		M_empty	=	4814,
		M_nominal	=	6352,
		M_max	=	6690,
		MOI = 	{4600,	24401,	25880},
		M_fuel_max	=	1250,
		V_max	=	352,
		V_max_cruise	=	278,
		Vy_max	=	4.07,
		H_stat_max_L	=	1470,
		H_stat_max	=	915,
		H_din_two_eng	=	4270,
		H_din_one_eng	=	2740,
		range	=	595,
		flight_time_typical	=	128,
		flight_time_maximum	=	189,
		main_gear_pos = 	{-0.533,	-2.06,	0.833},
		nose_gear_pos = 	{2.597,	-2.02,	0.833},
		lead_stock_main	=	-0.1,
		lead_stock_support	=	-0.1,
		stores_number	=	4,
		scheme	=	0,
		fire_rate	=	625,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{2.0,-0.3,	1},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.3,-0.7,	-1},
                canopy_arg = 38,
			}, -- end of [1]
		},
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 1.0, "in", 1.0},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 1.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
            },
            Door1 = {DuplicateOf = "Door0"},
        }, -- end of mechanimations
		RCS	=	7,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.2,
		Vy_land_max	=	12.8,
		Ny_max	=	2.5,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorAH1W",
		engine_data = 
		{
			power_take_off	=	1244,
			power_max	=	1244,
			power_WEP	=	1269,
			power_TH_k = 
			{
				[1] = 	{12.535,	-278.03,	2052.6},
				[2] = 	{12.535,	-278.03,	2052.6},
				[3] = 	{12.535,	-278.03,	2052.6},
				[4] = 	{0,	-101.95,	1306},
			}, -- end of power_TH_k
			SFC_k = 	{0,	-0.000241,	0.6733503},
			power_RPM_k = 	{-0.08639,	0.24277,	0.84175},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineGE",
		}, -- end of engine_data
		cannon_sight_type	=	1,
		fires_pos = 
		{
			[1] = 	{0,	0,	0},
			[2] = 	{-1.32,	0,	-0.46},
			[3] = 	{-1.32,	0,	0.46},
			[4] = 	{-7.12,	-0.47,	0},
			[5] = 	{1.053,	-1.32,	0},
			[6] = 	{-0.45,	-1.32,	0},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
	}, -- end of [163]
	[164] = -- SH-3H
	{
		length	=	30.207,
		height	=	6.807,
		rotor_height	=	3.449,
		rotor_diameter	=	18.91,
		blades_number	=	5,
		blade_area	=	3.71,
		rotor_RPM	=	204,
		engines_count	=	2,
		blade_chord	=	0.464,
		rotor_MOI	=	22000,
		rotor_pos = 	{0.02,	3.668,	0},
		thrust_correction	=	0.8,
		fuselage_Cxa0	=	0.5,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	11,
		centering	=	-0.09,
		tail_pos = 	{-14.726,	2.375,	0},
		tail_fin_area	=	3.1,
		tail_stab_area	=	2.94,
		M_empty	=	5865,
		M_nominal	=	9300,
		M_max	=	9525,
		MOI = 	{5800,	59822,	63447},
		M_fuel_max	=	2132,
		V_max	=	267,
		V_max_cruise	=	222,
		Vy_max	=	11.2,
		H_stat_max_L	=	3570,
		H_stat_max	=	2500,
		H_din_two_eng	=	4270,
		H_din_one_eng	=	2740,
		range	=	1005,
		flight_time_typical	=	150,
		flight_time_maximum	=	275,
		main_gear_pos = 	{1.311,	-2.341,	2.581},
		nose_gear_pos = 	{-8.139,	-2.341,	0.073},
		lead_stock_main	=	0.1,
		lead_stock_support	=	0.03,
		stores_number	=	0,
		scheme	=	0,
		fire_rate	=	0,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{4.0,0.3,	-0.5},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{4.0,0.3,	 0.5},
			}, -- end of [1]
		},
		
		RCS	=	12,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.72,
		Vy_land_max	=	12.8,
		Ny_max	=	1.7,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorSH3",
		engine_data = 
		{
			power_take_off	=	993.6,
			power_max	=	993.6,
			power_WEP	=	993.6,
			power_TH_k = 
			{
				[1] = 	{-20.6897,	0.13574,	1136},
				[2] = 	{-14.183,	-35.544,	1133.2},
				[3] = 	{-1.8532,	-85.476,	1091.9},
				[4] = 	{-3.0436,	-27.341,	851.51},
			}, -- end of power_TH_k
			SFC_k = 	{0,	-0.000326,	0.63},
			power_RPM_k = 	{-0.08639,	0.24277,	0.84175},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineGE",
		}, -- end of engine_data
		cannon_sight_type	=	0,
		fires_pos = 
		{
			[1] = 	{0,	1.6,	0},
			[2] = 	{1.6,	2.2,	-0.42},
			[3] = 	{1.6,	2.2,	0.42},
			[4] = 	{-12.5,	1,	0},
			[5] = 	{-1.26,	-1.457,	-1.361},
			[6] = 	{-1.26,	-1.457,	1.361},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
	}, -- end of [164]
	[165] = -- Sea Linx
	{
		length	=	15.24,
		height	=	3.73,
		rotor_height	=	3.73,
		rotor_diameter	=	12.8,
		blades_number	=	4,
		blade_area	=	3.26,
		rotor_RPM	=	300,
		engines_count	=	2,
		blade_chord	=	0.52,
		rotor_MOI	=	26000,
		rotor_pos = 	{0.208,	2.44,	0},
		thrust_correction	=	0.8,
		fuselage_Cxa0	=	0.76,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	3.7,
		centering	=	-0.09,
		tail_pos = 	{-10.658,	2.611,	0},
		tail_fin_area	=	1.45,
		tail_stab_area	=	2.94,
		M_empty	=	4130,
		M_nominal	=	4500,
		M_max	=	5125,
		MOI = 	{56400,	250000,	268000},
		M_fuel_max	=	779,
		V_max	=	400.87,
		V_max_cruise	=	256,
		Vy_max	=	11.2,
		H_stat_max_L	=	3000,
		H_stat_max	=	2575,
		H_din_two_eng	=	4270,
		H_din_one_eng	=	2740,
		range	=	685,
		flight_time_typical	=	216,
		flight_time_maximum	=	316,
		main_gear_pos = 	{1.018,	1.018,	-2.319},
		nose_gear_pos = 	{-9.67,	0,	-1.467},
		lead_stock_main	=	0.2,
		lead_stock_support	=	0.2,
		stores_number	=	0,
		scheme	=	0,
		fire_rate	=	625,
		RCS	=	5,
		detection_range_max	=	150,
		IR_emission_coeff	=	0.4,
		Vy_land_max	=	12.8,
		Ny_max	=	1.7,
		radar_can_see_ground	=	true,
		sound_name	=	"Aircrafts/Engines/RotorMi8",
		engine_data = 
		{
			power_take_off	=	1470,
			power_max	=	1618,
			power_WEP	=	1618,
			power_TH_k = 
			{
				[1] = 	{0,	-230.8,	2245.6},
				[2] = 	{0,	-230.8,	2245.6},
				[3] = 	{0,	-325.4,	2628.9},
				[4] = 	{0,	-235.6,	1931.9},
			}, -- end of power_TH_k
			SFC_k = 	{2.045e-007,	-0.0006328,	0.803},
			power_RPM_k = 	{-0.08639,	0.24277,	0.84175},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineTV3117",
		}, -- end of engine_data
		cannon_sight_type	=	0,
		fires_pos = 
		{
			[1] = 	{0,	0,	0},
			[2] = 	{0,	0,	0},
			[3] = 	{0,	0,	0},
			[4] = 	{0,	0,	0},
			[5] = 	{0,	0,	0},
			[6] = 	{0,	0,	0},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
	}, -- end of [165]
	[166] = -- UH-1
	{
		length	=	17.62,
		height	=	4.41,
		rotor_height	=	2.091,
		rotor_diameter	=	14.7,
		blades_number	=	2,
		blade_area	=	6.2,
		rotor_RPM	=	324,
		engines_count	=	1,
		blade_chord	=	0.534,
		rotor_MOI	=	3000,
		rotor_pos = 	{0,	2.44,	0},
		thrust_correction	=	0.75,
		fuselage_Cxa0	=	0.47,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	5,
		centering	=	-0.1,
		tail_pos = 	{-8.525,	2.114,	0},
		tail_fin_area	=	1.2,
		tail_stab_area	=	1.7,
		M_empty	=	2883,
		M_nominal	=	3158,
		M_max	=	4310,
		MOI =	{2600,	12443,	13197},
		M_fuel_max	=	631,
		V_max	=	240,
		V_max_cruise	=	204,
		Vy_max	=	6.1,
		H_stat_max_L	=	2150,
		H_stat_max	=	1850,
		H_din_two_eng	=	3840,
		H_din_one_eng	=	1900,
		range	=	510,
		flight_time_typical	=	150,
		flight_time_maximum	=	192,
		main_gear_pos =	{-0.458,	-1.577,	1.332},
		nose_gear_pos =	{1.714,	-1.636,	1.33},
		lead_stock_main	=	-0.1,
		lead_stock_support	=	-0.1,
		stores_number	=	4,
		scheme	=	0,
		fire_rate	=	0,
		
		crew_members = 
		{
			[1] = 
			{
				pos = 	{2.3,0,	0.5},
				pilot_body_arg = 50,
				canopy_arg = 45,
				canopy_args = {38, 0.8, 43, 5.0, 44, 5.0, 45, 1.0, 459, 10.0, 460, 1.0, 457, 0.1, 458, 0.1, 453, 0.5, 454, 0.5, 146, 1.0},
				can_be_playable 	= true,
				role 				= "pilot",
				role_display_name	= _("Pilot"),
			}, -- end of [1]
			[2] = 
			{
				pos = 	{2.3,0,	-0.5},
				pilot_body_arg = 365,
				canopy_arg = 38,
				canopy_args = {38, 1.0, 43, 5.0, 44, 5.0, 45, 0.8, 459, 1.0, 460, 10.0, 457, 0.1, 458, 0.1, 453, 0.5, 454, 0.5, 146, 1.0},
				can_be_playable 	= true,
				role 				= "pilot",
				role_display_name	= _("Copilot"),
			}, -- end of [2]
			[3] = 
			{
				pos = 	{-0.121463, 0.19,  -1.39},
				pilot_body_arg = 0,
				canopy_arg = 44,
				canopy_args = {38, 0.5, 43, 5.0, 44, 5.0, 45, 0.5, 459, 10.0, 460, 1.0, 457, 0.1, 458, 0.1, 453, 0.5, 454, 0.5, 146, 1.0},
				can_be_playable 	= true,
				role 				= "pilot",
				role_display_name	= _("Left Gunner"),
			}, -- end of [3]
			[4] = 
			{
				pos = 	{-0.121463, 0.19,  1.39},
				pilot_body_arg = 0,
				canopy_arg = 43,
				canopy_args = {38, 0.5, 43, 5.0, 44, 5.0, 45, 0.5, 459, 1.0, 460, 10.0, 457, 0.1, 458, 0.1, 453, 0.5, 454, 0.5, 146, 1.0},
				can_be_playable 	= true,
				role 				= "pilot",
				role_display_name	= _("Right Gunner"),
			}, -- end of [4]
			
		},
		--[[carried_members =
		{
			[1] = {
				canopy_args = {38, 0.5, 43, 5.0, 44, 5.0, 45, 0.5, 459, 10.0, 460, 1.0, 457, 0.1, 458, 0.1, 453, 0.5, 454, 0.5, 146, 1.0},
			},
			[2] = {
				canopy_args = {38, 0.5, 43, 5.0, 44, 5.0, 45, 0.5, 459, 1.0, 460, 10.0, 457, 0.1, 458, 0.1, 453, 0.5, 454, 0.5, 146, 1.0},
			},
		},]]
        doors_movement = 2,
		mechanimations = {
			Door0 = { --right door
				{Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 2.0},},},}, Flags = {"Reversible"},},
				{Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 2.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
			},
			Door1 = { -- left door
				{Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 45, "to", 0.9, "in", 2.0},},},}, Flags = {"Reversible"},},
				{Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 45, "to", 0.0, "in", 2.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
			},
			Door2 = { -- left cargo door
				{Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 43, "to", 1.0, "in", 1.0/0.35},},},}, Flags = {"Reversible"},},
				{Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 43, "to", 0.0, "in", 1.0/0.35},},},}, Flags = {"Reversible", "StepsBackwards"},},
			},
			Door3 = { -- right cargo door
				{Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 44, "to", 1.0, "in", 1.0/0.35},},},}, Flags = {"Reversible"},},
				{Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 44, "to", 0.0, "in", 1.0/0.35},},},}, Flags = {"Reversible", "StepsBackwards"},},
			},
			HeadLights = {
				{Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 515, "to", 0.0, "speed", 20/90},},},},},
				{Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 515, "to", 0.0, "speed", 20/90},},},},},
				{Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 515, "to", 1.0, "speed", 20/90},},},},},
			},
			HeadLight0 = {
				{Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 515, "from", 1.0, "to", 0.0, "speed", 20/90},},},},},
				{Transition = {"Any", "Extend"},  Sequence = {{C = {{"Arg", 515, "from", 0.0, "to", 1.0, "speed", 20/90},},},},},
			},
			SearchLight0Elevation = {
				{Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 517, "from", 1.0, "to", 0.0, "speed", 20/90},},},},},
				{Transition = {"Any", "Extend"},  Sequence = {{C = {{"Arg", 517, "from", 0.0, "to", 1.0, "speed", 20/90},},},},},
			},
			SearchLight0Panning = {
				{Transition = {"Any", "Right"}, Sequence = {{C = {{"Arg", 516, "from", 1.0, "to", -1.0, "speed", 2*20/90},},},},},
				{Transition = {"Any", "Left"}, Sequence = {{C = {{"Arg", 516, "from", -1.0, "to", 1.0, "speed", 2*20/90},},},},},
			},
		}, -- end of mechanimations
		RCS	=	10,
		detection_range_max	=	11,
		IR_emission_coeff	=	0.2,
		Vy_land_max	=	12.8,
		Ny_max	=	1.7,
		radar_can_see_ground	=	true,
		sound_name	=	"Aircrafts/Engines/RotorUH1H",
		engine_data = 
		{
			power_take_off	=	1044,
			power_max	=	1044,
			power_WEP	=	1044,
			power_TH_k = 
			{
				[1] = 	{-1.8859,	17.806,	1030},
				[2] = 	{-2.2584,	20.573,	1030},
				[3] = 	{-0.9078,	-3.1185,	1051.6},
				[4] = 	{-0.2853,	-0.614,	786.19},
			}, -- end of power_TH_k
			SFC_k = 	{0,	-0.000312128,	0.63},
			power_RPM_k = 	{-0.0778,	0.2506,	0.8099},
			power_RPM_min	=	9.1384,
			sound_name	=	"",
		}, -- end of engine_data
		cannon_sight_type	=	0,
		fires_pos = 
		{
			[1] = 	{0,	0.7,	0},
			[2] = 	{-0.6,	1.1,	0},
			[3] = 	{0,	0,	0},
			[4] = 	{-6.8,	0.8,	0},
			[5] = 	{-0.623,	-0.746,	0},
			[6] = 	{0,	0,	0},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
		
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{-0.98,	-0.174,	-0.087},
				pos = 	{-7.7,	-0.25,	-0.5},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{-0.98,	-0.174,	0.087},
				pos = 	{-7.7,	-0.25,	0.5},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser
		
		-- add model draw args for network transmitting to this draw_args table (32 limit)
		net_animation = 
		{
			34, 36 --[[rotor]], 280 --[[rotor cone]],471,472,473, --[[sight station up/down]]
			540, 549, 1000 --[[slick]], 1001 --[[ExhausScreen]],
		},
		cargo_max_weight = 5000, -- maximum weight of extended cargo
		cargo_radius_in_menu = 2000, -- radius, when cargo displays in menu
		helicopter_hook_pos={0.0, -0.84, 0.0},
		h_max_gear_hook=2.4,
	}, -- end of [166]
	[167] = -- Mi-28N
	{
		length	=	17.87,
		height	=	5.087,
		rotor_height	=	1.6,
		rotor_diameter	=	17.2,
		blades_number	=	5,
		blade_area	=	3.39,
		rotor_RPM	=	-242,
		engines_count	=	2,
		blade_chord	=	0.67,
		rotor_MOI	=	16200,
		rotor_pos = 	{-0.005,	1.794,	0},
		thrust_correction	=	0.7,
		fuselage_Cxa0	=	0.5,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	4.8,
		centering	=	-0.25,
		tail_pos = 	{-10.6,	2.285,	0},
		tail_fin_area	=	2.6,
		tail_stab_area	=	2.94,
		M_empty	=	8920,
		M_nominal	=	10000,
		M_max	=	11700,
		MOI = 	{16000,	81705,	78981},
		M_fuel_max	=	1500,
		V_max	=	365,
		V_max_cruise	=	261,
		Vy_max	=	7.9,
		H_stat_max_L	=	4115,
		H_stat_max	=	2990,
		H_din_two_eng	=	4115,
		H_din_one_eng	=	3290,
		range	=	407,
		flight_time_typical	=	110,
		flight_time_maximum	=	189,
		main_gear_pos = 	{0.953,	-1.884,	0.961},
		nose_gear_pos = 	{-9.965,	-0.511,	0},
		lead_stock_main	=	0.317,
		lead_stock_support	=	0.122,
		stores_number	=	4,
		scheme	=	0,
		fire_rate	=	625,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {1.5, 0.0, 1.3},
                ejection_added_speed = {0.0, 0.0, 1.0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = {2.9, -0.2, -1.1},
                ejection_added_speed = {0.0, 0.0, -1.0},
                canopy_arg = 38,
			}, -- end of [1]
		},
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 1.0, "in", 1.1}}}}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 1.1}}}}, Flags = {"Reversible", "StepsBackwards"},},
            },
            Door1 = {DuplicateOf = "Door0"},
            HeadLights = {
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 208, "to", 0.0, "speed", 0.14}, {"Arg", 209, "to", 0.0, "speed", 0.14},},},},},
                {Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 209, "to", 0.734, "speed", 0.14}, {"Arg", 208, "to", 0.389, "speed", 0.14},},},},},
                {Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 209, "to", 1.0, "speed", 0.14}, {"Arg", 208, "to", 1.0, "speed", 0.14},},},},},
            },
        }, -- end of mechanimations
		RCS	=	5,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.3,
		Vy_land_max	=	12.8,
		Ny_max	=	2.7,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorMi24",
		engine_data = 
		{
			power_take_off	=	1470,
			power_max	=	1618,
			power_WEP	=	1618,
			power_TH_k = 
			{
				[1] = 	{0,	-230.8,	2245.6},
				[2] = 	{0,	-230.8,	2245.6},
				[3] = 	{0,	-325.4,	2628.9},
				[4] = 	{0,	-235.6,	1931.9},
			}, -- end of power_TH_k
			SFC_k = 	{2.045e-007,	-0.0006328,	0.803},
			power_RPM_k = 	{-0.08639,	0.24277,	0.84175},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineTV3117",
		}, -- end of engine_data
		cannon_sight_type	=	2,
		fires_pos = 
		{
			[1] = 	{0,	0,	0},
			[2] = 	{-0.7,	0.75,	-1.2},
			[3] = 	{-0.7,	0.75,	1.2},
			[4] = 	{-10.26,	0.95,	0},
			[5] = 	{-0.47,	-0.68,	0},
			[6] = 	{-1.46,	-0.68,	0},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
	}, -- end of [167]
	[168] = -- OH-58D
	{
		length	=	10.48,
		height	=	2.29,
		rotor_height	=	3.67,
		rotor_diameter	=	10.53,
		blades_number	=	4,
		blade_area	=	2.26,
		rotor_RPM	=	395,
		engines_count	=	1,
		blade_chord	=	0.24,
		rotor_MOI	=	820,
		rotor_pos = 	{-0.258,	1.715,	0},
		thrust_correction	=	0.75,
		fuselage_Cxa0	=	0.5,
		fuselage_Cxa90	=	5.9,
		fuselage_area	=	2.3,
		centering	=	-0.09,
		tail_pos = 	{-6.376,	0.719,	0},
		tail_fin_area	=	0.9,
		tail_stab_area	=	1,
		M_empty	=	1560,
		M_nominal	=	2000,
		M_max	=	2495,
		MOI = 	{1380,	5002,	5305},
		M_fuel_max	=	454,
		V_max	=	222,
		V_max_cruise	=	195,
		Vy_max	=	8.2,
		H_stat_max_L	=	6000,
		H_stat_max	=	6000,
		H_din_two_eng	=	8000,
		H_din_one_eng	=	8000,
		range	=	556,
		flight_time_typical	=	128,
		flight_time_maximum	=	189,
		main_gear_pos = 	{-0.997,	-1.169,	0.917},
		nose_gear_pos = 	{1.03,	-1.166,	0.917},
		lead_stock_main	=	-0.05,
		lead_stock_support	=	-0.05,
		stores_number	=	4,
		scheme	=	0,
		fire_rate	=	625,
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.75,0,-0.3},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{0.75,0, 0.3},
                canopy_arg = 38,
			}, -- end of [1]
		},		
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 1.0, "in", 1.0},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 1.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
            },
            Door1 = {DuplicateOf = "Door0"},
            ServiceHatches = {
                {Transition = {"Close", "Open"}, Sequence = {{C = {{"PosType", 3}, {"Sleep", "for", 60.0}}}, {C = {{"Arg", 500, "to", 1.0, "in", 3.0}}}}},
                {Transition = {"Open", "Close"}, Sequence = {{C = {{"PosType", 3}, {"Sleep", "for", 6.0}}}, {C = {{"Arg", 500, "to", 0.0, "in", 3.0}}}}},
            },
            HeadLights = {
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 209, "to", 0.0, "speed", 0.2}, {"Arg", 44, "to", 0.0, "speed", 0.3},},},},},
                {Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 209, "to", 0.7, "speed", 0.2}, {"Arg", 44, "to", 0.44, "speed", 0.3},},},},},
                {Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 209, "to", 0.3, "speed", 0.2}, {"Arg", 44, "to", 0.18, "speed", 0.3},},},},},
            },
        }, -- end of mechanimations
		RCS	=	5,
		detection_range_max	=	50,
		IR_emission_coeff	=	0.2,
		Vy_land_max	=	12.8,
		Ny_max	=	3.5,
		radar_can_see_ground	=	false,
		sound_name	=	"Aircrafts/Engines/RotorOH58",
		engine_data = 
		{
			power_take_off	=	478.4,
			power_max	=	478.4,
			power_WEP	=	478.4,
			power_TH_k = 
			{
				[1] = 	{-3.5519,	-25.327,	635.41},
				[2] = 	{-7.0142,	-13.897,	619.49},
				[3] = 	{-0.7768,	-41.46,	583.43},
				[4] = 	{0.94,	-34.912,	479.62},
			}, -- end of power_TH_k
			SFC_k = 	{0,	-0.0003171,	0.512},
			power_RPM_k = 	{-0.08639,	0.24277,	0.84175},
			power_RPM_min	=	9.1384,
			sound_name	=	"Aircrafts/Engines/EngineGE",
		}, -- end of engine_data
		cannon_sight_type	=	0,
		fires_pos = 
		{
			[1] = 	{0,	0,	0},
			[2] = 	{-1.62,	-0.235,	0},
			[3] = 	{-1.62,	-0.235,	0},
			[4] = 	{-10.26,	0,	0},
			[5] = 	{-0.47,	-1.63,	0},
			[6] = 	{-1.46,	-1.63,	0},
			[7] = 	{0,	0,	0},
			[8] = 	{0,	0,	0},
			[9] = 	{0,	0,	0},
			[10] = 	{0,	0,	0},
			[11] = 	{0,	0,	0},
		}, -- end of fires_pos
		helicopter_hook_pos={0.0, -1.0, 0.0},
		h_max_gear_hook=3.0,		
	}, -- end of [168]
} -- end of HelConst

for index, helicopter in pairs(HelConst) do
	helicopter.bigParkingRamp = helicopter.rotor_diameter > 18 or helicopter.length > 30
end