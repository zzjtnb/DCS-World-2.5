-- 	IR_emission_coeff = 1 is Su-27 without afterburner. It is reference.

FIXED_WING			= 0
VARIABLE_GEOMETRY	= 1
FOLDED_WING			= 2
VARIABLE_GEOMETRY_FOLDED = 3


local function common_canopy_twin_seater(t)
	
	t[1].canopy_arg 	  = 38
	t[2].canopy_arg 	  = 38
	t[2].drop_canopy_name = t[1].drop_canopy_name
	
	if t[1].canopy_pos then
	   t[2].canopy_pos = t[1].canopy_pos
	else
	   t[2].canopy_pos = t[1].pos
	end
	t[2].canopy_ejection_dir = t[1].canopy_ejection_dir
	
	return t
end

PlaneConst = 
{
	[1] = --mig-23, МиГ-23МЛД
	{
		M_empty	=	10550,
		M_nominal	=	14700,
		M_max	=	17800,
		M_fuel_max	=	3800,
		H_max	=	18500,
		average_fuel_consumption	=	0.337,
		CAS_min	=	65,
		V_opt	=	210,
		V_take_off	=	70,
		V_land	=	70,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-1.41,	-2.139,	1.391},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{4.647,	-2.33,	0},
		AOA_take_off	=	0.16,
		stores_number	=	7,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	6.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	388.1,
		V_max_h	=	693.25,
		wing_area	=	34.16,
		wing_span	=	14,
		wing_type = VARIABLE_GEOMETRY,
		thrust_sum_max	=	7036,
		thrust_sum_ab	=	11500,
		Vy_max	=	240,
		length	=	15.7,
		height	=	5.772,
		flaps_maneuver	=	1,
		Mach_max	=	2.35,
		range	=	1950,
		RCS	=	4,
		Ny_max_e	=	6.5,
		detection_range_max	=	120,
		IR_emission_coeff	=	0.69,
		IR_emission_coeff_ab	=	3.0,
		engines_count	=	1,
		wing_tip_pos = 	{-2.466,	0.115,	7.107},
		nose_gear_wheel_diameter	=	0.541,
		main_gear_wheel_diameter	=	0.86,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-7.548,	-0.248,	0},
				elevation	=	0,
				diameter	=	1.09,
				exhaust_length_ab	=	4,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.5, 
			}, -- end of [1]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	25,
				pos = 	{4.207,	-0.321,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	4,
		fires_pos = 
		{
			[1] = 	{-2.117,	-0.9,	0},
			[2] = 	{-1.584,	0.176,	2.693},
			[3] = 	{-1.645,	0.213,	-2.182},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-6.548,	-0.248,	0},
			[9] = 	{-6.548,	-0.248,	0},
			[10] = 	{0.304,	-0.748,	0.442},
			[11] = 	{0.304,	-0.748,	-0.442},
		}, -- end of fires_pos
	}, -- end of [1]
	[2] = --mig-29, МиГ-29 (9-12)
	{
		M_empty = 10922, --11000 - unusable fuel 78kg 
		M_nominal	=	13240,
		M_max	=	19700,
		M_fuel_max	=	3376,
		H_max	=	18000,
		average_fuel_consumption	=	0.2743,
		CAS_min	=	60,
		V_opt	=	222,
		V_take_off	=	67,
		V_land	=	70,
		has_afteburner	=	true,
		has_speedbrake	=	true,

		nose_gear_pos 								= {2.938,	-1.794,	0},
		nose_gear_amortizer_direct_stroke			= 0,  -- down from nose_gear_pos !!!
		nose_gear_amortizer_reversal_stroke			= 1.517 - 1.794,  -- up 
		nose_gear_amortizer_normal_weight_stroke	= -0.07,-- down from nose_gear_pos
		nose_gear_wheel_diameter					=	0.57,
		
		main_gear_pos 							 = {-0.678,-1.689,	1.544},
		main_gear_amortizer_direct_stroke		 = 0, --  down from main_gear_pos !!!
		main_gear_amortizer_reversal_stroke		 = 1.395 - 1.689, --  up 
		main_gear_amortizer_normal_weight_stroke = -0.1,-- down from main_gear_pos
		main_gear_wheel_diameter				 =	0.84,
		
		radar_can_see_ground	=	true,
		AOA_take_off	=	0.17,
		stores_number	=	7,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	8,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	416.7,
		V_max_h	=	680.6,
		wing_area	=	38.1,
		wing_span	=	11.36,
		thrust_sum_max	=	10160,
		thrust_sum_ab	=	16680,
		Vy_max	=	330,
		length	=	20.32,
		height	=	4.73,
		flaps_maneuver	=	1,
		Mach_max	=	2.3,
		range	=	1500,
		RCS	=	5,
		Ny_max_e	=	8,
		detection_range_max	=	160,
		IR_emission_coeff	=	0.77,
		IR_emission_coeff_ab	=	4.0,
		engines_count	=	2,
		wing_tip_pos = 	{-3.8,	0.14,	5.8},
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-5.534,	-0.063,-0.909},
				elevation	=	-1.5,
				diameter	=	0.949,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.5, -- Max smokiness level is 1.0
				azimuth      = 2.5,				
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-5.534,	-0.063,	0.909},
				elevation	=	-1.5,
				diameter	=	0.949,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.5, -- Max smokiness level is 1.0
				azimuth      = -2.5,				
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	28,
				pos = 	{4.403,	1.209,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	4,
		fires_pos = 
		{
			[1] = 	{-1.36,	-0.185,	0},
			[2] = 	{-0.595,	0.294,	2.66},
			[3] = 	{-1.743,	0.234,	-3.769},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-4.471,	-0.059,	0.91},
			[9] = 	{-4.471,	-0.059,	-0.91},
			[10] = 	{-0.491,	0.629,	2.03},
			[11] = 	{-0.491,	-0.019,	0},
		}, -- end of fires_pos
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	0.999,	0.052},
				pos = 	{-0.937,	1.645,	-1.726},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	0.999,	-0.052},
				pos = 	{-0.937,	1.645,	1.726},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser
	}, -- end of [2]
	[3] = --su-27, Су-27С
	{
		M_empty	=	17250,
		M_nominal	=	20000,
		M_max	=	28000,
		M_fuel_max	=	9400,
		H_max	=	18500,
		average_fuel_consumption	=	0.268,
		CAS_min	=	58,
		V_opt	=	170,
		V_take_off	=	75,
		V_land	=	65,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		radar_can_see_ground	=	true,
		
		--[[
			Су-27
			Носовая: -2,185m
			Основная: -2,237m
			
			Носовая стойка (-2,289m...-1,992m)
			Основные (-2,555m...-2,123m)
		--]]	
		nose_gear_pos = 	{5.221,	-2.185,	0},
		main_gear_pos = 	{-0.537,-2.237,	2.168},
		nose_gear_amortizer_direct_stroke    =  2.289 - 2.185,  -- down from nose_gear_pos !!!
		nose_gear_amortizer_reversal_stroke  =  1.992 - 2.185,  -- up 
		main_gear_amortizer_direct_stroke	 =  2.555 - 2.237, --  down from main_gear_pos !!!
		main_gear_amortizer_reversal_stroke  = 	2.123 - 2.237, --  up 
		nose_gear_amortizer_normal_weight_stroke = -0.00311633945,-- down from nose_gear_pos
		main_gear_amortizer_normal_weight_stroke =  0.0986220837,-- down from main_gear_pos
	
		
		AOA_take_off	=	0.17,
		stores_number	=	10,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	8,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	403,
		V_max_h	=	694.44,
		wing_area	=	62,
		wing_span	=	14.7,
		thrust_sum_max	=	15200,
		thrust_sum_ab	=	25000,
		Vy_max	=	325,
		length	=	21.935,
		height	=	5.932,
		flaps_maneuver	=	1,
		Mach_max	=	2.35,
		range	=	3740,
		RCS	=	5.5,
		Ny_max_e	=	8,
		detection_range_max	=	250,
		IR_emission_coeff	=	1,
		IR_emission_coeff_ab	=	5,
		engines_count	=	2,
		wing_tip_pos = 	{-4.5,	0.4,	7.5},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.889,	-0.257,	-1.193},
				elevation	=	0,
				diameter	=	1.137,
				exhaust_length_ab	=	8.6,
				exhaust_length_ab_K	=	0.629,
				smokiness_level     = 	0.1, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-6.889,	-0.257,	1.193},
				elevation	=	0,
				diameter	=	1.137,
				exhaust_length_ab	=	8.6,
				exhaust_length_ab_K	=	0.629,
				smokiness_level     = 	0.1, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	35,
				pos = 	{7.916,	0.986,	0},
			}, -- end of [1]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.11, "at", 0.074, "sign", 2}}}, {C = {{"Arg", 38, "to", 0.9, "at", 0.14}}}}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "at", 0.18}}}, {C = {{"Arg", 38, "to", 0.89, "at", 0.074, "sign", -2}}}}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
            },
            HeadLights = {
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 208, "set", 0.0},},},},},
                {Transition = {"Any", "Off"},     Sequence = {{C = {{"Arg", 208, "set", 0.0},},},},},
                {Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 208, "set", 0.5},},},},},
                {Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 208, "set", 1.0},},},},},
            },
        }, -- end of mechanimations
		brakeshute_name	=	4,
		fires_pos = 
		{
			[1] = 	{-1.594,	-0.064,	0},
			[2] = 	{-1.073,	0.319,	3.716},
			[3] = 	{-1.187,	0.338,	-3.678},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	3.260},
			[7] = 	{-0.82,	0.255,	-3.080},
			[8] = 	{-5.889,	-0.257,	1.193},
			[9] = 	{-5.889,	-0.257,	-1.193},
			[10] = 	{-1.257,	0.283,	3.05},
			[11] = 	{-1.257,	0.283,	-2.50},
		}, -- end of fires_pos
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	1,	0},
				pos = 	{-5.776,	1.4,	-0.422},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	1,	0},
				pos = 	{-5.776,	1.4,	0.422},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser
	}, -- end of [3]
	[4] = --su-33, Су-33
	{
		M_empty	=	19680,
		M_nominal	=	20000,
		M_max	=	33000,
		M_fuel_max	=	9500,
		H_max	=	18500,
		average_fuel_consumption	=	0.2606,
		CAS_min	=	58,
		V_opt	=	170,
		V_take_off	=	75,
		V_land	=	65,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		radar_can_see_ground	=	true,
		
		
			--[[
		Координата точки касания при нормальном обжатии -2.16
		необжатая            -2.33
		полностью обжата     -1.74
		Для основных:
		нормальное обжатие -2.17
		необжата  		   -2.55
		полностью обжата   -2.06
		--]]	
		nose_gear_pos 						 = 	{5.346,  	-2.16,	0},
		main_gear_pos 						 = 	{-0.584,	-2.17,	2.175},
		nose_gear_amortizer_direct_stroke    =  2.33 - 2.16,  -- down from nose_gear_pos !!!
		nose_gear_amortizer_reversal_stroke  =  1.74 - 2.16,  -- up 
		main_gear_amortizer_direct_stroke	 =  2.55 - 2.17, --  down from main_gear_pos !!!
		main_gear_amortizer_reversal_stroke  = 	2.06 - 2.17, --  up 
		nose_gear_amortizer_normal_weight_stroke = 0,-- down from nose_gear_pos
		main_gear_amortizer_normal_weight_stroke = 0,-- down from main_gear_pos
	
		AOA_take_off	=	0.17,
		stores_number	=	12,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	8,
		tand_gear_max	=	3.73,
		V_max_sea_level	=	403,
		V_max_h	=	694.44,
		tanker_type	=	4,
		wing_area	=	62,
		wing_span	=	14.7,
		wing_type = FOLDED_WING,
		thrust_sum_max	=	16400,
		thrust_sum_ab	=	24400,
		Vy_max	=	325,
		length	=	21.18,
		height	=	5.72,
		flaps_maneuver	=	1,
		Mach_max	=	2.165,
		range	=	3000,
		RCS	=	5.5,
		Ny_max_e	=	8,
		detection_range_max	=	250,
		IR_emission_coeff	=	1,
		IR_emission_coeff_ab	=	5,
		engines_count	=	2,
		wing_tip_pos = 	{-4.5,	0.4,	7.5},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.889,	-0.257,	-1.193},
				elevation	=	0,
				diameter	=	1.137,
				exhaust_length_ab	=	8.6,
				exhaust_length_ab_K	=	0.629,
				smokiness_level     = 	0.1, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-6.889,	-0.257,	1.193},
				elevation	=	0,
				diameter	=	1.137,
				exhaust_length_ab	=	8.6,
				exhaust_length_ab_K	=	0.629,
				smokiness_level     = 	0.1, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	37,
				pos = 	{7.916,	0.986,	0},
                canopy_pos = {7.5, 1.34, 0},
			}, -- end of [1]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.11, "at", 0.074, "sign", 2}}}, {C = {{"Arg", 38, "to", 0.9, "at", 0.14}}}}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "at", 0.18}}}, {C = {{"Arg", 38, "to", 0.89, "at", 0.074, "sign", -2}}}}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
            },
            FoldableWings = {
                {Transition = {"Extend", "Retract"}, Sequence = {{C = {{"Arg", 8, "to", 1.0, "in", 30.0}, {"Arg", 126, "to", 1.0, "in", 30.0 * 0.1, "weight", 0}, {"Arg", 128, "to", 1.0, "in", 30.0 * 0.1, "weight", 0}}}}},
                {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"Arg", 8, "to", 0.1, "speed", 0.222, "sign", -2}}}, {C = {{"Arg", 8, "to", 0.0, "speed", 0.222}, {"Arg", 126, "to", 0.0, "speed", 2.22}, {"Arg", 128, "to", 0.0, "speed", 2.22}}}}},
            },
            HeadLights = {
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 208, "set", 0.0},},},},},
                {Transition = {"Any", "Off"},     Sequence = {{C = {{"Arg", 208, "set", 0.0},},},},},
                {Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 208, "set", 0.5},},},},},
                {Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 208, "set", 1.0},},},},},
            },
        }, -- end of mechanimations
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{9.898,	1.240,	-1.082},
		fires_pos = 
		{
			[1] = 	{-1.594,	-0.064,	0},
			[2] = 	{-1.073,	0.319,	5.304},
			[3] = 	{-1.187,	0.338,	-4.678},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-5.889,	-0.257,	1.193},
			[9] = 	{-5.889,	-0.257,	-1.193},
			[10] = 	{-1.257,	0.283,	3.05},
			[11] = 	{-1.257,	0.283,	-3.05},
		}, -- end of fires_pos
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	1,	0},
				pos = 	{-5.776,	1.4,	-0.422},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	1,	0},
				pos = 	{-5.776,	1.4,	0.422},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser
	}, -- end of [4]
	[5] = --f-14
	{
		M_empty	=	18951,
		M_nominal	=	29072,
		M_max	=	33724,
		M_fuel_max	=	7348,
		H_max	=	16150,
		average_fuel_consumption	=	0.136,
		CAS_min	=	49,
		V_opt	=	220,
		V_take_off	=	51.4,
		V_land	=	65,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-0.579,	-1.825,	2.467},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{6.454,	-1.817,	0},
		AOA_take_off	=	0.17,
		stores_number	=	12,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	6.5,
		tand_gear_max	=	3.73,
		V_max_sea_level	=	400,
		V_max_h	=	699.17,
		tanker_type	=	2,
		wing_area	=	68.5,
		wing_span	=	19.54,
		wing_type = VARIABLE_GEOMETRY,
		thrust_sum_max	=	18960,
		thrust_sum_ab	=	31000,
		Vy_max	=	152,
		length	=	19.1,
		height	=	4.88,
		flaps_maneuver	=	1,
		Mach_max	=	1.85,
		range	=	3200,
		RCS	=	6,
		Ny_max_e	=	6.5,
		detection_range_max	=	350,
		IR_emission_coeff	=	0.97,
		IR_emission_coeff_ab	=	5.0,
		engines_count	=	2,
		wing_tip_pos = 	{-2.112,	0.233,	9.181},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.701,	-0.215,	-1.482},
				elevation	=	0,
				diameter	=	1.072,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-6.701,	-0.215,	1.524},
				elevation	=	0,
				diameter	=	1.072,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = common_canopy_twin_seater({
			{
				ejection_seat_name	=	17,
				drop_canopy_name	=	21,
				pos = 	{7.021,	1.143,	0},
			}, -- end of [1]
			{
				ejection_seat_name	=	17,
				drop_canopy_name	=	0,
				pos = 	{5.432,	1.168,	0},
			}, -- end of [2]
		}), -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 9.0},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
            },
            Door1 = {DuplicateOf = "Door0"},
            FoldableWings = {
                {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"Arg", 8, "to", 0.0, "at", 0.1}}}}, Flags = {"Reversible"}},
                {Transition = {"Extend", "Retract"}, Sequence = {{C = {{"Arg", 8, "to", 0.128, "at", 0.1}}}}, Flags = {"Reversible", "StepsBackwards"}},
            },
            LaunchBar = {
                {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"ChangeDriveTo", "HydraulicGravityAssisted"}, {"VelType", 2}, {"Arg", 85, "to", 1.0, "in", 4.5}}}}},
                {Transition = {"Extend", "Retract"}, Sequence = {{C = {{"ChangeDriveTo", "Hydraulic"}, {"VelType", 2}, {"Arg", 85, "to", 0.0, "in", 4.5}}}}},
                {Transition = {"Retract", "Stage"},  Sequence = {{C = {{"ChangeDriveTo", "HydraulicGravityAssisted"}, {"VelType", 2}, {"Arg", 85, "to", 0.745, "in", 4.0}}}}},
                {Transition = {"Stage", "Retract"},  Sequence = {{C = {{"ChangeDriveTo", "Hydraulic"}, {"VelType", 2}, {"Arg", 85, "to", 0.0, "in", 4.0}}}}},
                {Transition = {"Extend", "Stage"},   Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 1.0, "to", 0.745, "in", 1.0}}}}},
				{Transition = {"Stage", "Pull"},     Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 1.0, "to", 0.745, "in", 1.0}}}}},
                {Transition = {"Stage", "Extend"},   Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 0.745, "to", 1.0, "in", 0.2}}}}},
            },
        },
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{9.31,	1.37,	1.019},
		fires_pos = 
		{
			[1] = 	{0.931,	0.811,	0},
			[2] = 	{-1.519,	0.441,	3.982},
			[3] = 	{-1.519,	0.441,	-3.982},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-6.07,	-0.187,	1.478},
			[9] = 	{-6.07,	-0.187,	-1.478},
			[10] = 	{-0.515,	0.807,	0.7},
			[11] = 	{-0.515,	0.807,	-0.7},
		}, -- end of fires_pos
	}, -- end of [5]
	[6] = --f-15
	{
		M_empty	=	13380,
		M_nominal	=	19000,
		M_max	=	30845,
		M_fuel_max	=	6103,
		H_max	=	18300,
		average_fuel_consumption	=	0.271,
		CAS_min	=	58,
		V_opt	=	220,
		V_take_off	=	61,
		V_land	=	71,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		
		
		nose_gear_pos = 	{4.59,	-2.523,	0},
		main_gear_pos = 	{-0.8,	-2.456,	1.425},
		--[[
		Ф-15 
		Носовая стойка (-2.523m...-2.093m)
		Основные	   (-2.456m...-2.228m)
		--]]
		nose_gear_amortizer_direct_stroke    =  2.523 - 2.523,  -- down from nose_gear_pos !!!
		nose_gear_amortizer_reversal_stroke  =  2.093 - 2.523,  -- up 
		main_gear_amortizer_direct_stroke	 =  2.456 - 2.456, --  down from main_gear_pos !!!
		main_gear_amortizer_reversal_stroke  = 	2.228 - 2.456, --  up 
		nose_gear_amortizer_normal_weight_stroke = -0.215,
		main_gear_amortizer_normal_weight_stroke = -0.114,
	
		
		radar_can_see_ground	=	true,
		AOA_take_off	=	0.16,
		stores_number	=	12,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	8,
		tand_gear_max	=	1.732,
		V_max_sea_level	=	403,
		V_max_h	=	736.11,
		tanker_type	=	1,
		wing_area	=	56.5,
		wing_span	=	13.05,
		thrust_sum_max	=	13347,
		thrust_sum_ab	=	21952,
		Vy_max	=	275,
		length	=	19.43,
		height	=	5.63,
		flaps_maneuver	=	1,
		Mach_max	=	2.5,
		range	=	2540,
		RCS	=	5,
		Ny_max_e	=	8,
		detection_range_max	=	250,
		IR_emission_coeff	=	0.91,
		IR_emission_coeff_ab	=	4.0,
		engines_count	=	2,
		wing_tip_pos = 	{-3.9,	0.2,	6.6},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.751,	0.067,	-0.705},
				elevation	=	0,
				diameter	=	1.076,
				exhaust_length_ab	=	5.8,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-6.751,	0.067,	0.705},
				elevation	=	0,
				diameter	=	1.076,
				exhaust_length_ab	=	5.8,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	58,
				pilot_name			= 	19,
				drop_canopy_name	=	22,
				pos = 	{6.277,	1.198,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{1.39,	0.41,	-1.66},
		fires_pos = 
		{
			[1] = 	{-1.842,	0.563,	0},
			[2] = 	{-1.644,	0.481,	2.87},
			[3] = 	{-1.389,	0.461,	-3.232},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-5.753,	0.06,	0.705},
			[9] = 	{-5.753,	0.06,	-0.705},
			[10] = 	{-0.992,	0.85,	0},
			[11] = 	{-1.683,	0.507,	-2.91},
		}, -- end of fires_pos
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{1.158,	-1.77,	-0.967},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{1.158,	-1.77,	0.967},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser
	}, -- end of [6]
	[7] = --f-16
	{
		M_empty	=	8853,
		M_nominal	=	11000,
		M_max	=	19187,
		M_fuel_max	=	3104,
		H_max	=	15240,
		average_fuel_consumption	=	0.245,
		CAS_min	=	60,
		V_opt	=	220,
		V_take_off	=	65,
		V_land	=	68,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-0.846,	-1.579,	1.187},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{3.146,	-1.563,	0},
		AOA_take_off	=	0.16,
		stores_number	=	10,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	8,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	408,
		V_max_h	=	588.9,
		tanker_type	=	1,
		wing_area	=	28,
		wing_span	=	9.45,
		thrust_sum_max	=	8054,
		thrust_sum_ab	=	13160,
		Vy_max	=	250,
		length	=	14.52,
		height	=	5.02,
		flaps_maneuver	=	1,
		Mach_max	=	2,
		range	=	1500,
		RCS	=	4,
		Ny_max_e	=	8,
		detection_range_max	=	160,
		IR_emission_coeff	=	0.6,
		IR_emission_coeff_ab	=	3.0,
		engines_count	=	1,
		wing_tip_pos = 	{-2.704,	0.307,	4.649},
		nose_gear_wheel_diameter	=	0.443,
		main_gear_wheel_diameter	=	0.653,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.003,	0.261,	0},
				elevation	=	0,
				diameter	=	1.12,
				exhaust_length_ab	=	4,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.05, 
			}, -- end of [1]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	17,
				drop_canopy_name	=	23,
				canopy_pos			= {0,0,0},
				pos = 	{3.9,	1.4,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{-0.051,	0.911,	0},
		fires_pos = 
		{
			[1] = 	{-0.707,	0.553,	-0.213},
			[2] = 	{-0.037,	0.285,	1.391},
			[3] = 	{-0.037,	0.285,	-1.391},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-5.003,	0.261,	0},
			[9] = 	{-5.003,	0.261,	0},
			[10] = 	{-0.707,	0.453,	1.036},
			[11] = 	{-0.707,	0.453,	-1.036},
		}, -- end of fires_pos
	}, -- end of [7]
	[8] = --MiG-25RBT, МиГ-25РБТ
	{
		M_empty	=	20000,
		M_nominal	=	37500,
		M_max	=	41200,
		M_fuel_max	=	15245,
		H_max	=	24200,
		average_fuel_consumption	=	0.157,
		CAS_min	=	70,
		V_opt	=	280,
		V_take_off	=	75,
		V_land	=	75,
		has_afteburner	=	true,
		has_speedbrake	=	false,
		main_gear_pos = 	{-0.691,	-2.056,	2.162},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{4.594,	-2.056,	0},
		AOA_take_off	=	0.18,
		stores_number	=	4,
		bank_angle_max	=	60,
		Ny_min	=	-2,
		Ny_max	=	3.8,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	310,
		V_max_h	=	833.33,
		wing_area	=	61,
		wing_span	=	14,
		thrust_sum_max	=	17260,
		thrust_sum_ab	=	21950,
		Vy_max	=	250,
		length	=	23.82,
		height	=	6.1,
		flaps_maneuver	=	1,
		Mach_max	=	2.83,
		range	=	1920,
		RCS	=	10,
		Ny_max_e	=	4.5,
		detection_range_max	=	0,
		IR_emission_coeff	=	4.0,
		IR_emission_coeff_ab	=	8.0,
		engines_count	=	2,
		wing_tip_pos = 	{-4.922,	0.206,	6.908},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.862,	0.291,	-0.796},
				elevation	=	0,
				diameter	=	1.516,
				exhaust_length_ab	=	15.771,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.4, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-6.862,	0.291,	0.829},
				elevation	=	0,
				diameter	=	1.516,
				exhaust_length_ab	=	15.771,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.4, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	26,
				pos = 	{6.972,	0.8,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	4,
		fires_pos = 
		{
			[1] = 	{-2.351,	-0.696,	0},
			[2] = 	{-0.681,	0.749,	1.649},
			[3] = 	{-0.681,	0.749,	-1.649},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-6.023,	0.293,	0.829},
			[9] = 	{-6.023,	0.293,	-0.829},
			[10] = 	{-1.471,	0.694,	2.62},
			[11] = 	{-1.471,	0.694,	-2.62},
		}, -- end of fires_pos
	}, -- end of [8]
	[9] = --mig-31, МиГ-31Б
	{
		M_empty	=	21820,
		M_nominal	=	35000,
		M_max	=	46200,
		M_fuel_max	=	15500,
		H_max	=	21000,
		average_fuel_consumption	=	0.0816,
		CAS_min	=	68,
		V_opt	=	280,
		V_take_off	=	72,
		V_land	=	72,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-1.728,	-2.4,	2.204},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{6.133,	-2.496,	0},
		AOA_take_off	=	0.18,
		stores_number	=	6,
		bank_angle_max	=	60,
		Ny_min	=	-2,
		Ny_max	=	5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	300,
		V_max_h	=	833.33,
		tanker_type	=	4,
		wing_area	=	61.6,
		wing_span	=	13.46,
		thrust_sum_max	=	18260,
		thrust_sum_ab	=	30380,
		Vy_max	=	250,
		length	=	22.7,
		height	=	6.15,
		flaps_maneuver	=	1,
		Mach_max	=	2.83,
		range	=	2400,
		RCS	=	10,
		Ny_max_e	=	5,
		detection_range_max	=	350,
		IR_emission_coeff	=	3.0,
		IR_emission_coeff_ab	=	6.0,
		engines_count	=	2,
		wing_tip_pos = 	{-5.108,	0.035,	6.52},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-8.533,	0.045,	-0.729},
				elevation	=	0,
				diameter	=	1.242,
				exhaust_length_ab	=	13.497,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-8.533,	0.045,	0.729},
				elevation	=	0,
				diameter	=	1.242,
				exhaust_length_ab	=	13.497,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	30,
                canopy_pos = {0, 0, 0},
				pos = {5.68, 0.65, 0.0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	31,
                canopy_pos = {0, 0, 0},
				pos = {4.18, 0.615, 0.0},
                canopy_arg = 421,
			}, -- end of [2]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 9.0},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
            },
            Door1 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 421, "to", 0.9, "in", 9.0},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 421, "to", 0.0, "in", 6.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 1},},},},},
            },
        }, -- end of mechanimations
		brakeshute_name	=	4,
		air_refuel_receptacle_pos = 	{7.8658,	1.05078,	-0.7762},
		fires_pos = 
		{
			[1] = 	{-2.351,	-0.696,	0},
			[2] = 	{-0.681,	0.749,	1.649},
			[3] = 	{-0.681,	0.749,	-1.649},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-7.828,	0.051,	0.73},
			[9] = 	{-7.828,	0.051,	-0.73},
			[10] = 	{-2.84,	0.549,	2.6},
			[11] = 	{-2.84,	0.549,	-2.6},
		}, -- end of fires_pos
	}, -- end of [9]
	[10] = --tornado
	{
		M_empty	=	14090,
		M_nominal	=	20000,
		M_max	=	26490,
		M_fuel_max	=	4663,
		H_max	=	15200,
		average_fuel_consumption	=	0.61,
		CAS_min	=	55,
		V_opt	=	120,
		V_take_off	=	59,
		V_land	=	59,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-1.323,	-2.107,	1.541},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{3.821,	-2.107,	0},
		AOA_take_off	=	0.16,
		stores_number	=	14,
		bank_angle_max	=	60,
		Ny_min	=	-2,
		Ny_max	=	7.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	306,
		V_max_h	=	650,
		wing_area	=	36.5,
		wing_span	=	13.91,
		wing_type = VARIABLE_GEOMETRY,
		thrust_sum_max	=	8160,
		thrust_sum_ab	=	14520,
		Vy_max	=	250,
		length	=	16.7,
		height	=	5.7,
		flaps_maneuver	=	1,
		Mach_max	=	2.2,
		range	=	2780,
		RCS	=	4,
		Ny_max_e	=	7.5,
		detection_range_max	=	150,
		IR_emission_coeff	=	0.6,
		IR_emission_coeff_ab	=	2.2,
		engines_count	=	2,
		wing_tip_pos = 	{-2.5,	0,	6.75},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.45,	0.099,	-0.483},
				elevation	=	0,
				diameter	=	0.818,
				exhaust_length_ab	=	4,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-6.45,	0.099,	0.483},
				elevation	=	0,
				diameter	=	0.818,
				exhaust_length_ab	=	4,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = common_canopy_twin_seater(
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	39,
				pos = 	{3.34,	1.102,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	9,
				pos = 	{1.935,	1.102,	0},
			}, -- end of [2]
		}), -- end of crew_members
		brakeshute_name	=	0,
		tanker_type	=	2,
		air_refuel_receptacle_pos = 	{6.4,	0.63,	1.02},
		fires_pos = 
		{
			[1] = 	{-0.095,	-0.798,	0},
			[2] = 	{-1.4,	0.721,	0.797},
			[3] = 	{-0.825,	0.738,	-0.683},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-5.432,	0.099,	0.483},
			[9] = 	{-5.432,	0.099,	-0.483},
			[10] = 	{-0.14,	0.67,	1.45},
			[11] = 	{-0.14,	0.23,	-1.45},
		}, -- end of fires_pos
	}, -- end of [10]
	[11] = --mig-27, МиГ-27К
	{
		M_empty	=	11000,
		M_nominal	=	15200,
		M_max	=	18900,
		M_fuel_max	=	4500,
		H_max	=	17000,
		average_fuel_consumption	=	0.4244,
		CAS_min	=	76,
		V_opt	=	210,
		V_take_off	=	84,
		V_land	=	80,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-1.41,	-2.139,	1.391},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{4.6471,	-2.33,	0},
		AOA_take_off	=	0.16,
		stores_number	=	9,
		bank_angle_max	=	60,
		Ny_min	=	-2,
		Ny_max	=	5.9,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	375,
		V_max_h	=	523.61,
		wing_area	=	34,
		wing_span	=	14,
		wing_type = VARIABLE_GEOMETRY,
		thrust_sum_max	=	8000,
		thrust_sum_ab	=	11500,
		Vy_max	=	200,
		length	=	16.7,
		height	=	5.64,
		flaps_maneuver	=	1,
		Mach_max	=	1.7,
		range	=	1950,
		RCS	=	5,
		Ny_max_e	=	6.5,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.69,
		IR_emission_coeff_ab	=	3.0,
		engines_count	=	1,
		wing_tip_pos = 	{-2.466,	0.115,	7.107},
		nose_gear_wheel_diameter	=	0.541,
		main_gear_wheel_diameter	=	0.86,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-7.292,	-0.248,	0},
				elevation	=	0,
				diameter	=	1.178,
				exhaust_length_ab	=	8.631,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.4, 
			}, -- end of [1]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	27,
				pos = 	{4.207,	-0.321,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	4,
		fires_pos = 
		{
			[1] = 	{-2.117,	-0.9,	0},
			[2] = 	{-1.584,	0.176,	2.693},
			[3] = 	{-1.645,	0.213,	-2.182},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-6.548,	-0.248,	0},
			[9] = 	{-6.548,	-0.248,	0},
			[10] = 	{0.304,	-0.748,	0.442},
			[11] = 	{0.304,	-0.748,	-0.442},
		}, -- end of fires_pos
	}, -- end of [11]
	[12] = --su-24, Су-24М
	{
		M_empty	=	22300,
		M_nominal	=	33325,
		M_max	=	39700,
		M_fuel_max	=	11700,
		H_max	=	17500,
		average_fuel_consumption	=	0.8937,
		CAS_min	=	70,
		V_opt	=	210,
		V_take_off	=	78,
		V_land	=	75,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		
		nose_gear_pos 				= 	{ 5.599148, -2.497651, 0},
		main_gear_pos 				= 	{-2.832159, -2.450034, 1.687489},
		nose_gear_wheel_diameter	=	0.64,
		main_gear_wheel_diameter	=	0.940,
	
		nose_gear_amortizer_direct_stroke        =  0,  -- down from nose_gear_pos !!!
		nose_gear_amortizer_reversal_stroke      = -0.366912,  -- up 
		main_gear_amortizer_direct_stroke	     =  0, --  down from main_gear_pos !!!
		main_gear_amortizer_reversal_stroke      = -0.433269, --  up 
		nose_gear_amortizer_normal_weight_stroke = -0.075,-- down from nose_gear_pos
		main_gear_amortizer_normal_weight_stroke = -0.15, -- down from main_gear_pos

		
		
		radar_can_see_ground	=	true,
		AOA_take_off	=	0.17,
		stores_number	=	8,
		bank_angle_max	=	60,
		Ny_min	=	-2,
		Ny_max	=	5.9,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	388.9,
		V_max_h	=	472,
		tanker_type	=	4,
		wing_area	=	55.17,
		wing_span	=	17.64,
		wing_type = VARIABLE_GEOMETRY,
		thrust_sum_max	=	15600,
		thrust_sum_ab	=	22400,
		Vy_max	=	200,
		length	=	24.53,
		height	=	4.97,
		flaps_maneuver	=	1,
		Mach_max	=	1.35,
		range	=	1200,
		RCS	=	7.5,
		Ny_max_e	=	6.5,
		detection_range_max	=	0,
		IR_emission_coeff	=	1.5,
		IR_emission_coeff_ab	=	5.0,
		engines_count	=	2,
		wing_tip_pos = 	{-3,	0.413,	8.9},
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-9.417,	0.095,	-0.616},
				elevation	=	1.5,
				diameter	=	1.04,
				exhaust_length_ab	=	5,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.4, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-9.417,	0.095,	0.616},
				elevation	=	1.5,
				diameter	=	1.04,
				exhaust_length_ab	=	5,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.4, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	33,
                canopy_ejection_dir = {0.0, 1.0, 0.3},
                canopy_pos = {0, 0, 0},
				pos = {4.9, 0.475, 0.305},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	32,
                canopy_ejection_dir = {0.0, 1.0, -0.3},
                canopy_pos = {0, 0, 0},
				pos = {4.9, 0.475, -0.305},
                canopy_arg = 421,
                boarding_arg = 38,
			}, -- end of [2]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 9.0},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
            },
            Door1 = {
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 1}}}}},
            },
            HeadLights = {
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 51, "to", 0.0, "in", 5.0},},},},},
                {Transition = {"Any", "Off"},     Sequence = {{C = {{"Arg", 51, "to", 0.0, "in", 5.0},},},},},
                {Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 51, "to", 1.0, "in", 4.0},},},},},
                {Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 51, "to", 1.0, "in", 4.0},},},},},
            },
        }, -- end of mechanimations
		brakeshute_name	=	4,
		air_refuel_receptacle_pos = {7.610, 1.225, 0,035},--	{9.143,	1.142,	0},
		fires_pos = 
		{
			[1] = 	{-0.936,	-0.861,	0},
			[2] = 	{-0.454,	0.556,	1.272},
			[3] = 	{-0.454,	0.556,	-1.272},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-8.417,	0.095,	0.616},
			[9] = 	{-8.417,	0.095,	-0.616},
			[10] = 	{-1.763,	0.193,	1.47},
			[11] = 	{-1.763,	0.193,	-1.47},
		}, -- end of fires_pos
	}, -- end of [12]
	[13] = --su-30, Су-30
	{
		M_empty	=	17700,
		M_nominal	=	22000,
		M_max	=	33000,
		M_fuel_max	=	9400,
		H_max	=	17250,
		average_fuel_consumption	=	0.3075,
		CAS_min	=	60,
		V_opt	=	170,
		V_take_off	=	75,
		V_land	=	65,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-0.624,	-2.238,	2.256},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{5.207,	-2.238,	0},
		AOA_take_off	=	0.16,
		stores_number	=	10,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	8,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	403,
		V_max_h	=	590.3,
		wing_area	=	62,
		wing_span	=	14.7,
		thrust_sum_max	=	15200,
		thrust_sum_ab	=	25000,
		Vy_max	=	325,
		length	=	21.9,
		height	=	6.36,
		flaps_maneuver	=	1,
		Mach_max	=	2.35,
		range	=	3000,
		RCS	=	6,
		Ny_max_e	=	8,
		detection_range_max	=	250,
		IR_emission_coeff	=	1,
		IR_emission_coeff_ab	=	5,
		engines_count	=	2,
		wing_tip_pos = 	{-4.5,	0.4,	7.5},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.889,	-0.257,	-1.193},
				elevation	=	0,
				diameter	=	1.137,
				exhaust_length_ab	=	8.6,
				exhaust_length_ab_K	=	0.629,
				smokiness_level     = 	0.1, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-6.889,	-0.257,	1.193},
				elevation	=	0,
				diameter	=	1.137,
				exhaust_length_ab	=	8.6,
				exhaust_length_ab_K	=	0.629,
				smokiness_level     = 	0.1, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	36,
				pos = 	{7.916,	0.986,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = 	{6.651,	1.315,	0},
			}, -- end of [2]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.11, "at", 0.074, "sign", 2}}}, {C = {{"Arg", 38, "to", 0.9, "at", 0.14}}}}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "at", 0.18}}}, {C = {{"Arg", 38, "to", 0.89, "at", 0.074, "sign", -2}}}}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
            },
        }, -- end of mechanimations
		brakeshute_name	=	4,
		fires_pos = 
		{
			[1] = 	{-1.594,	-0.064,	0},
			[2] = 	{-1.073,	0.319,	5.304},
			[3] = 	{-1.187,	0.338,	-4.678},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-5.889,	-0.257,	1.193},
			[9] = 	{-5.889,	-0.257,	-1.193},
			[10] = 	{-1.257,	0.283,	3.05},
			[11] = 	{-1.257,	0.283,	-3.05},
		}, -- end of fires_pos
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	1,	0},
				pos = 	{-5.776,	1.4,	-0.422},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	1,	0},
				pos = 	{-5.776,	1.4,	0.422},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser
	}, -- end of [13]
	[14] = --fa-18
	{
		M_empty	=	10455,
		M_nominal	=	16651,
		M_max	=	25401,
		M_fuel_max	=	4930,
		H_max	=	15240,
		average_fuel_consumption	=	0.85,
		CAS_min	=	62,
		V_opt	=	180,
		V_take_off	=	69,
		V_land	=	65,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-2.319,	-1.846,	1.57},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{3.02,	-1.846,	0},
		AOA_take_off	=	0.16,
		stores_number	=	10,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	7,
		tand_gear_max	=	3.73,
		V_max_sea_level	=	361.1,
		V_max_h	=	541.7,
		tanker_type	=	2,
		wing_area	=	37,
		wing_span	=	11.43,
		wing_type = FOLDED_WING,
		thrust_sum_max	=	12000,
		thrust_sum_ab	=	19580,
		Vy_max	=	254,
		length	=	17.07,
		height	=	4.66,
		flaps_maneuver	=	1,
		Mach_max	=	1.8,
		range	=	1520,
		RCS	=	5,
		Ny_max_e	=	7.5,
		detection_range_max	=	160,
		IR_emission_coeff	=	0.73,
		IR_emission_coeff_ab	=	4.0,
		engines_count	=	2,
		wing_tip_pos = 	{-2.466,	0.115,	5.73},
		nose_gear_wheel_diameter	=	0.566,
		main_gear_wheel_diameter	=	0.778,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-8.005,	-0.003,	-0.48},
				elevation	=	-1.5,
				diameter	=	0.765,
				exhaust_length_ab	=	4,
				exhaust_length_ab_K	=	0.707,
				smokiness_level     = 	0.05, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-8.005,	-0.003,	0.48},
				elevation	=	-1.5,
				diameter	=	0.765,
				exhaust_length_ab	=	4,
				exhaust_length_ab_K	=	0.707,
				smokiness_level     = 	0.05, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	17,
				drop_canopy_name	=	24,
                canopy_pos = {3.8, 0.16, 0},
				pos = 	{3.755,	0.4,	0},
			}, -- end of [1]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 9.0},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
            },
            FoldableWings = {
                {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"Arg", 8, "to", 0.0, "in", 5.0}}}}, Flags = {"Reversible"}},
                {Transition = {"Extend", "Retract"}, Sequence = {{C = {{"Arg", 8, "to", 1.0, "in", 15.0}}}}, Flags = {"Reversible", "StepsBackwards"}},
            },
            LaunchBar = {
                {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"ChangeDriveTo", "HydraulicGravityAssisted"}, {"VelType", 2}, {"Arg", 85, "to", 1.0, "in", 4.5}}}}},
                {Transition = {"Extend", "Retract"}, Sequence = {{C = {{"ChangeDriveTo", "Hydraulic"}, {"VelType", 2}, {"Arg", 85, "to", 0.0, "in", 4.5}}}}},
                {Transition = {"Retract", "Stage"},  Sequence = {{C = {{"ChangeDriveTo", "HydraulicGravityAssisted"}, {"VelType", 2}, {"Arg", 85, "to", 0.745, "in", 4.0}}}}},
                {Transition = {"Stage", "Retract"},  Sequence = {{C = {{"ChangeDriveTo", "Hydraulic"}, {"VelType", 2}, {"Arg", 85, "to", 0.0, "in", 4.0}}}}},
                {Transition = {"Extend", "Stage"},   Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 1.0, "to", 0.745, "in", 1.0}}}}},
				{Transition = {"Stage", "Pull"},     Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 1.0, "to", 0.745, "in", 1.0}}}}},
                {Transition = {"Stage", "Extend"},   Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 0.745, "to", 1.0, "in", 0.2}}}}},
            },
        }, -- end of mechanimations
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{6.574,	0.866,	0.727},
		fires_pos = 
		{
			[1] = 	{-0.232,	0.262,	0},
			[2] = 	{-2.508,	0.08,	3.094},
			[3] = 	{-2.815,	0.056,	-3.639},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-7.128,	0.039,	0.5},
			[9] = 	{-7.728,	0.039,	-0.5},
			[10] = 	{-7.728,	0.039,	0.5},
			[11] = 	{-7.728,	0.039,	-0.5},
		}, -- end of fires_pos
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{-1.185,	-1.728,	-0.878},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{-1.185,	-1.728,	0.878},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser
	}, -- end of [14]
	[15] = --f-111
	{
		M_empty	=	20943,
		M_nominal	=	30000,
		M_max	=	45400,
		M_fuel_max	=	15500,
		H_max	=	13700,
		average_fuel_consumption	=	0.416,
		CAS_min	=	68,
		V_opt	=	210,
		V_take_off	=	82,
		V_land	=	72,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-0.592,	-2.075,	1.72},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{6.491,	-2.132,	0},
		AOA_take_off	=	0.16,
		stores_number	=	6,
		bank_angle_max	=	60,
		Ny_min	=	-2,
		Ny_max	=	5.9,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	388.9,
		V_max_h	=	617,
		tanker_type	=	1,
		wing_area	=	61,
		wing_span	=	19.2,
		wing_type = VARIABLE_GEOMETRY,
		thrust_sum_max	=	11300,
		thrust_sum_ab	=	18460,
		Vy_max	=	220,
		length	=	22.4,
		height	=	5.22,
		flaps_maneuver	=	1,
		Mach_max	=	2.2,
		range	=	3889,
		RCS	=	7.5,
		Ny_max_e	=	6,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.91,
		IR_emission_coeff_ab	=	0.96,
		engines_count	=	2,
		wing_tip_pos = 	{-5.428,	0.398,	9.6},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-7.156,	-0.108,	-0.772},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.621,
				exhaust_length_ab_K	=	0.76,
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-7.156,	-0.108,	0.772},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.621,
				exhaust_length_ab_K	=	0.76,
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	12,
				pos = 	{6.886,	0.267,	0.408},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = 	{6.886,	0.267,	-0.408},
			}, -- end of [2]
		}, -- end of crew_members
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{3.013,	0.75,	-0.587},
		fires_pos = 
		{
			[1] = 	{0.212,	0.853,	0.8},
			[2] = 	{-0.16,	0.52,	1.75},
			[3] = 	{-0.16,	0.52,	-1.75},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-6.168,	-0.088,	0.774},
			[9] = 	{-6.168,	-0.088,	-0.774},
			[10] = 	{2.1,	-1,	-0.8},
			[11] = 	{2.1,	-1,	0.8},
		}, -- end of fires_pos
	}, -- end of [15]
	[16] = --su-25, Су-25
	{
		M_empty	=	10099,
		M_nominal	=	12750,
		M_max	=	17350,
		M_fuel_max	=	2835,
		H_max	=	10000,
		average_fuel_consumption	=	0.4895,
		CAS_min	=	64,
		V_opt	=	180,
		V_take_off	=	72,
		V_land	=	68,
		has_afteburner	=	false,
		has_speedbrake	=	true,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-1,	-2.009,	1.352},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{2.808,	-2.15,	0},
		AOA_take_off	=	0.192,
		stores_number	=	10,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	5.9,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	292,
		V_max_h	=	271,
		wing_area	=	30.1,
		wing_span	=	14.35,
		thrust_sum_max	=	9856,
		thrust_sum_ab	=	9856,
		Vy_max	=	60,
		length	=	15.36,
		height	=	4.8,
		flaps_maneuver	=	1,
		Mach_max	=	0.82,
		range	=	1250,
		RCS	=	7,
		Ny_max_e	=	6.5,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.7,
		IR_emission_coeff_ab	=	0,
		engines_count	=	2,
		wing_tip_pos = 	{-2.7,	-0.111,	7.3},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-3.793,	-0.391,	-0.716},
				elevation	=	0,
				diameter	=	0.6,
				exhaust_length_ab	=	8.631,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-3.793,	-0.391,	0.716},
				elevation	=	0,
				diameter	=	0.6,
				exhaust_length_ab	=	8.631,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	34,
                canopy_pos = {0, 0, 0},
				pos = 	{3.029,	-0.092,	0},
			}, -- end of [1]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 1.96},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 1.87},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
            },
            HeadLights = {
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 208, "to", 0.0, "in", 3.0}, {"Arg", 209, "to", 0.0, "in", 3.0},},},},},
                {Transition = {"Any", "Off"},     Sequence = {{C = {{"Arg", 208, "set", 0.89}, {"Arg", 209, "set", 0.89},},},},},
                {Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 208, "to", 1.0, "in", 4.0}, {"Arg", 209, "to", 1.0, "in", 4.0},},},},},
                {Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 208, "to", 1.0, "in", 4.0}, {"Arg", 209, "to", 1.0, "in", 4.0},},},},},
            },
        }, -- end of mechanimations
		brakeshute_name	=	4,
		fires_pos = 
		{
			[1] = 	{-3.084,	-0.595,	-0.112},
			[2] = 	{-1.003,	0.189,	2.237},
			[3] = 	{-1.618,	0.175,	-2.408},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-2.87,	-0.596,	0.754},
			[9] = 	{-2.87,	-0.596,	-0.754},
			[10] = 	{-1.573,	0.145,	-2.172},
			[11] = 	{-1.924,	-0.04,	-1.934},
		}, -- end of fires_pos
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	1,	0},
				pos = 	{-3.677,	1.012,	-0.859},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	1,	0},
				pos = 	{-3.677,	1.012,	0.859},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser
	}, -- end of [16]
	[17] = --a-10a
	{
		-- Moved to CoreMods
	}, -- end of [17]
	[18] = --tu-160, Ту-160
	{
		M_empty	=	117000,
		M_nominal	=	200000,
		M_max	=	275000,
		M_fuel_max	=	171000,
		H_max	=	15000,
		average_fuel_consumption	=	0.3108,
		CAS_min	=	75,
		V_opt	=	236,
		V_take_off	=	79,
		V_land	=	78,
		has_afteburner	=	true,
		has_speedbrake	=	false,
		main_gear_pos = 	{-4.142,	-3.693,	3.66},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{15.622,	-3.843,	0},
		AOA_take_off	=	0.14,
		stores_number	=	2,
		bank_angle_max	=	45,
		Ny_min	=	0,
		Ny_max	=	3.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	286,
		V_max_h	=	611.11,
		tanker_type	=	4,
		wing_area	=	360,
		wing_span	=	55.7,
		wing_type = VARIABLE_GEOMETRY,
		thrust_sum_max	=	70000,
		thrust_sum_ab	=	120000,
		Vy_max	=	70,
		length	=	54.1,
		height	=	13.25,
		flaps_maneuver	=	0.5,
		Mach_max	=	2.05,
		range	=	12300,
		RCS	=	15,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	4,
		IR_emission_coeff_ab	=	10,
		engines_count	=	4,
		wing_tip_pos = 	{-6.627,	-0.265,	27.85},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-10.628,	-0.767,	-5.701},
				elevation	=	0,
				diameter	=	1.543,
				exhaust_length_ab	=	11.555,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-10.628,	-0.767,	-3.911},
				elevation	=	0,
				diameter	=	1.543,
				exhaust_length_ab	=	11.555,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [2]
			[3] = 
			{
				pos = 	{-10.628,	-0.767,	3.911},
				elevation	=	0,
				diameter	=	1.543,
				exhaust_length_ab	=	11.555,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [3]
			[4] = 
			{	
				pos = 	{-10.628,	-0.767,	5.701},
				elevation	=	0,
				diameter	=	1.543,
				exhaust_length_ab	=	11.555,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [4]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	12,
				pos = 	{18.984,	0.95,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = 	{18.984,	0.95,	0},
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = 	{18.984,	0.95,	0},
			}, -- end of [3]
			[4] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = 	{18.984,	0.95,	0},
			}, -- end of [4]
		}, -- end of crew_members
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{24.602,	1.68,	0},
		fires_pos = 
		{
			[1] = 	{0.163,	-0.445,	0},
			[2] = 	{0.453,	0.546,	5.255},
			[3] = 	{0.453,	0.546,	-5.255},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-9.628,	-0.767,	3.911},
			[9] = 	{-9.628,	-0.767,	-3.911},
			[10] = 	{-9.628,	-0.767,	5.7},
			[11] = 	{-9.628,	-0.767,	-5.7},
		}, -- end of fires_pos
	}, -- end of [18]
	[19] = --b-1
	{
		M_empty	=	82840,
		M_nominal	=	140000,
		M_max	=	213192,
		M_fuel_max	=	88450,
		H_max	=	15240,
		average_fuel_consumption	=	0.2923,
		CAS_min	=	75,
		V_opt	=	217,
		V_take_off	=	79,
		V_land	=	78,
		has_afteburner	=	true,
		has_speedbrake	=	false,
		main_gear_pos = 	{-2.821,	-3.615,	2.681},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{16.013,	-3.615,	0},
		AOA_take_off	=	0.14,
		stores_number	=	3,
		bank_angle_max	=	45,
		Ny_min	=	-2,
		Ny_max	=	3.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	333,
		V_max_h	=	369.4,
		tanker_type	=	1,
		wing_area	=	181,
		wing_span	=	41.67,
		wing_type = VARIABLE_GEOMETRY,
		thrust_sum_max	=	80000,
		thrust_sum_ab	=	130000,
		Vy_max	=	70,
		length	=	44.81,
		height	=	10.36,
		flaps_maneuver	=	1,
		Mach_max	=	1.68,
		range	=	12000,
		RCS	=	5,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	3,
		IR_emission_coeff_ab	=	8,
		engines_count	=	4,
		wing_tip_pos = 	{-3.996, -1.0,	20.835},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-9.75,	-1.249,	-4.549},
				elevation	=	0,
				diameter	=	1.068,
				exhaust_length_ab	=	10.977,
				exhaust_length_ab_K	=	0.76,	
				smokiness_level     = 	0.1, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-9.75,	-1.249,	-2.839},
				elevation	=	0,
				diameter	=	1.068,
				exhaust_length_ab	=	10.977,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [2]
			[3] = 
			{
				pos = 	{-9.75,	-1.249,	2.881},
				elevation	=	0,
				diameter	=	1.068,
				exhaust_length_ab	=	10.977,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [3]
			[4] = 
			{
				pos = 	{-9.75,	-1.249,	4.549},
				elevation	=	0,
				diameter	=	1.068,
				exhaust_length_ab	=	10.977,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [4]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	17,
				drop_canopy_name	=	0,
				pos = 	{17.034,	1.243,	0},
				bailout_arg = -1,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	17,
				drop_canopy_name	=	0,
				pos = 	{17.034,	1.243,	0},
				bailout_arg = -1,
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	17,
				drop_canopy_name	=	0,
				pos = 	{17.034,	1.243,	0},
				bailout_arg = -1,
			}, -- end of [3]
			[4] = 
			{
				ejection_seat_name	=	17,
				drop_canopy_name	=	0,
				pos = 	{17.034,	1.243,	0},
				bailout_arg = -1,
			}, -- end of [4]
		}, -- end of crew_members
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{20.237,	1.079,	0},
		fires_pos = 
		{
			[1] = 	{0.338,	-0.815,	0},
			[2] = 	{-3.491,	-0.153,	4.263},
			[3] = 	{-3.491,	-0.153,	-4.263},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-8.938,	-1.237,	2.985},
			[9] = 	{-8.938,	-1.237,	-2.985},
			[10] = 	{-8.938,	-1.154,	4.571},
			[11] = 	{-8.938,	-1.154,	-4.571},
		}, -- end of fires_pos
	}, -- end of [19]
	[20] = 
	{
		--moved out to core mods 
	}, -- end of [20]
	[21] = --tu-95, Ту-95МС
	{
		M_empty	=	96000,
		M_nominal	=	150000,
		M_max	=	185000,
		M_fuel_max	=	87000,
		H_max	=	12000,
		average_fuel_consumption	=	0.2527,
		CAS_min	=	72,
		V_opt	=	208,
		V_take_off	=	80,
		V_land	=	75,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-2.295,	-4.198,	6.942},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{14.203,	-4.597,	0},
		AOA_take_off	=	0.14,
		stores_number	=	1,
		bank_angle_max	=	45,
		Ny_min	=	0,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	175.6,
		V_max_h	=	230.6,
		tanker_type	=	4,
		wing_area	=	295,
		wing_span	=	50.04,
		thrust_sum_max	=	90000,
		thrust_sum_ab	=	90000,
		Vy_max	=	10.2,
		length	=	49.13,
		height	=	13.3,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.78,
		range	=	6400,
		RCS	=	100,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	1.1,
		IR_emission_coeff_ab	=	0,
		engines_count	=	4,
		wing_tip_pos = 	{-6.627,	-0.265,	25.02},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-1.896,	-1.069,	-12.104},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 

			}, -- end of [1]
			[2] = 
			{
				pos = 	{1.891,	-0.917,	-6.27},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [2]
			[3] = 
			{
				pos = 	{1.891,	-0.917,	6.27},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 				
			}, -- end of [3]
			[4] = 
			{
				pos = 	{-1.896,	-1.069,	12.104},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [4]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.916,	0.986,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [3]
			[4] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [4]
		}, -- end of crew_members
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{20.342,	0.892,	0},
		fires_pos = 
		{
			[1] = 	{1.983,	0.178,	0},
			[2] = 	{3.246,	0.942,	1.814},
			[3] = 	{3.246,	0.942,	-1.814},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{5.61,	-0.938,	6.325},
			[9] = 	{5.61,	-0.938,	-6.325},
			[10] = 	{0,	-0.522,	12.148},
			[11] = 	{0,	-0.522,	-12.148},
		}, -- end of fires_pos
	}, -- end of [21]
	[22] = --tu-142, Ту-142
	{
		M_empty	=	96000,
		M_nominal	=	150000,
		M_max	=	185000,
		M_fuel_max	=	87000,
		H_max	=	12000,
		average_fuel_consumption	=	0.2527,
		CAS_min	=	72,
		V_opt	=	208,
		V_take_off	=	80,
		V_land	=	75,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-2.295,	-4.166,	6.942},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{18.13,	-4.589,	0},
		AOA_take_off	=	0.14,
		stores_number	=	1,
		bank_angle_max	=	45,
		Ny_min	=	0,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	175.6,
		V_max_h	=	230.6,
		tanker_type	=	4,
		wing_area	=	295,
		wing_span	=	50.04,
		thrust_sum_max	=	90000,
		thrust_sum_ab	=	90000,
		Vy_max	=	10.2,
		length	=	49.13,
		height	=	13.3,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.83,
		range	=	6400,
		RCS	=	100,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	1.1,
		IR_emission_coeff_ab	=	0,
		engines_count	=	4,
		wing_tip_pos = 	{-6.627,	-0.265,	25.02},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-1.896,	-1.069,	-12.104},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{1.891,	-0.917,	-6.27},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 				
			}, -- end of [2]
			[3] = 
			{
				pos = 	{1.891,	-0.917,	6.27},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,	
				smokiness_level     = 	0.1, 
			}, -- end of [3]
			[4] = 
			{
				pos = 	{-1.896,	-1.069,	12.104},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [4]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.916,	0.986,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [3]
			[4] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [4]
		}, -- end of crew_members
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{24.26,	0.892,	0},
		fires_pos = 
		{
			[1] = 	{1.983,	0.178,	0},
			[2] = 	{3.246,	0.942,	1.814},
			[3] = 	{3.246,	0.942,	-1.814},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{5.61,	-0.938,	6.325},
			[9] = 	{5.61,	-0.938,	-6.325},
			[10] = 	{0,	-0.522,	12.148},
			[11] = 	{0,	-0.522,	-12.148},
		}, -- end of fires_pos
	}, -- end of [22]
	[23] = --b-52
	{
		M_empty	=	83460,
		M_nominal	=	200000,
		M_max	=	256735,
		M_fuel_max	=	141135,
		H_max	=	16764,
		average_fuel_consumption	=	0.193,
		CAS_min	=	62,
		V_opt	=	227,
		V_take_off	=	65,
		V_land	=	65,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-7.462,	-3.451,	1.806},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{8.442,	-3.451,	0},
		AOA_take_off	=	0,
		stores_number	=	3,
		bank_angle_max	=	45,
		Ny_min	=	0,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	178,
		V_max_h	=	266,
		tanker_type	=	1,
		wing_area	=	371,
		wing_span	=	56.4,
		thrust_sum_max	=	61680,
		thrust_sum_ab	=	61680,
		Vy_max	=	10.2,
		length	=	49.05,
		height	=	12.4,
		flaps_maneuver	=	1,
		Mach_max	=	0.95,
		range	=	16700,
		RCS	=	100,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	4,
		IR_emission_coeff_ab	=	0,
		engines_count	=	4,
		wing_tip_pos = 	{-6.627,	-0.265,	28.2},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			{
				pos = 	{-2.179,	-1.478,	-18.182},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.4, 
			},	
			{
				pos = 	{3.992,	-0.926,	-10.405},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.4, 
			},	
			{
				pos = 	{3.992,	-0.926,	10.405},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.4, 
			}, 
			{
				pos = 	{-2.179,	-1.478,	18.182},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.4, 
			}, 
 
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	18,
				drop_canopy_name	=	12,
				pos = 	{18.827,	0.879,	0},
				bailout_arg = -1,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	18,
				drop_canopy_name	=	0,
				pos = 	{18.827,	0.879,	0},
				bailout_arg = -1,
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	18,
				drop_canopy_name	=	0,
				pos = 	{18.827,	0.879,	0},
				bailout_arg = -1,
			}, -- end of [3]
			[4] = 
			{
				ejection_seat_name	=	18,
				drop_canopy_name	=	0,
				pos = 	{18.827,	0.879,	0},
				bailout_arg = -1,
			}, -- end of [4]
		}, -- end of crew_members
		brakeshute_name	=	1,
		air_refuel_receptacle_pos = 	{17.314,	1.838,	0},
		fires_pos = 
		{
			[1] = 	{-10.305,	-2.064,	0},
			[2] = 	{5.345,	1.584,	4.588},
			[3] = 	{5.345,	1.584,	-4.588},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{4.582,	-0.755,	10.138},
			[9] = 	{4.582,	-0.755,	-10.138},
			[10] = 	{-0.895,	-1.158,	18.02},
			[11] = 	{-0.895,	-1.158,	-18.02},
		}, -- end of fires_pos
	}, -- end of [23]
	[24] = --MiG-25PD, МиГ-25ПД
	{
		M_empty	=	20000,
		M_nominal	=	37500,
		M_max	=	41200,
		M_fuel_max	=	15245,
		H_max	=	24200,
		average_fuel_consumption	=	0.157,
		CAS_min	=	70,
		V_opt	=	280,
		V_take_off	=	75,
		V_land	=	75,
		has_afteburner	=	true,
		has_speedbrake	=	false,
		main_gear_pos = 	{-0.691,	-2.056,	2.162},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{4.594,	-2.056,	0},
		AOA_take_off	=	0.18,
		stores_number	=	4,
		bank_angle_max	=	60,
		Ny_min	=	-2,
		Ny_max	=	3.8,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	310,
		V_max_h	=	833.33,
		wing_area	=	61,
		wing_span	=	14,
		thrust_sum_max	=	17260,
		thrust_sum_ab	=	21950,
		Vy_max	=	250,
		length	=	23.82,
		height	=	6.1,
		flaps_maneuver	=	1,
		Mach_max	=	2.83,
		range	=	1920,
		RCS	=	10,
		Ny_max_e	=	4.5,
		detection_range_max	=	100,
		IR_emission_coeff	=	4,
		IR_emission_coeff_ab	=	8,
		engines_count	=	2,
		wing_tip_pos = 	{-4.922,	0.206,	6.908},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.862,	0.291,	-0.796},
				elevation	=	0,
				diameter	=	1.516,
				exhaust_length_ab	=	15.771,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.4, 
				
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-6.862,	0.291,	0.829},
				elevation	=	0,
				diameter	=	1.516,
				exhaust_length_ab	=	15.771,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.4, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	26,
				pos = 	{6.972,	0.8,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	4,
		fires_pos = 
		{
			[1] = 	{-2.351,	-0.696,	0},
			[2] = 	{-0.681,	0.749,	1.649},
			[3] = 	{-0.681,	0.749,	-1.649},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-6.023,	0.293,	0.829},
			[9] = 	{-6.023,	0.293,	-0.829},
			[10] = 	{-1.471,	0.694,	2.62},
			[11] = 	{-1.471,	0.694,	-2.62},
		}, -- end of fires_pos
	}, -- end of [24]
	[25] = --tu-22m3, Ту-22М3
	{
		M_empty	=	50000,
		M_nominal	=	88000,
		M_max	=	124000,
		M_fuel_max	=	50000,
		H_max	=	13500,
		average_fuel_consumption	=	0.965,
		CAS_min	=	75,
		V_opt	=	250,
		V_take_off	=	79,
		V_land	=	78,
		has_afteburner	=	true,
		has_speedbrake	=	false,
		main_gear_pos = 	{-4.489034,	-2.488620 - 0.68,	3.970252},
		nose_gear_pos = 	{9.026122 , -2.857422 - 0.3,  0},
		radar_can_see_ground	=	false,
		AOA_take_off	=	0.18,
		stores_number	=	9,
		bank_angle_max	=	60,
		Ny_min	=	-1,
		Ny_max	=	3.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	292.6,
		V_max_h	=	639,
		wing_area	=	183,
		wing_span	 =	34.28,
		wing_type 	 =  VARIABLE_GEOMETRY,
		wing_tip_pos = 	{-8.6,	-0.265,	16.8},
		thrust_sum_max	=	28600,
		thrust_sum_ab	=	49040,
		Vy_max	=	70,
		length	=	46.12,
		height	=	11.05,
		flaps_maneuver	=	0.5,
		Mach_max	=	1.88,
		range	=	2410,
		RCS	=	60,
		Ny_max_e	=	2.5,
		detection_range_max	=	0,
		IR_emission_coeff	=	4,
		IR_emission_coeff_ab	=	8,
		engines_count	=	2,
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-15.534,	0.682,	-0.869},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-15.534,	0.682,	1.008},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = {12.9, 0.55, -0.45},
                canopy_arg = 38,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = {12.9, 0.55, 0.45},
                canopy_arg = 38,
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = {10.5, 0.55, 0.45},
                canopy_arg = 38,
			}, -- end of [3]
			[4] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = {10.55, 0.55, -0.45},
                canopy_arg = 38,
			}, -- end of [4]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.89, "in", 5.0},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 5.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"Arg", 38, "set", 1.0}}}}},
            },
            Door1 = {DuplicateOf = "Door0"},
            Door2 = {DuplicateOf = "Door0"},
            Door3 = {DuplicateOf = "Door0"},
            HeadLights = {
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 208, "to", 0.0, "in", 3.0},},},},},
                {Transition = {"Any", "Off"},     Sequence = {{C = {{"Arg", 208, "set", 0.49},},},},},
                {Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 208, "to", 1.0, "in", 4.0},},},},},
                {Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 208, "to", 1.0, "in", 4.0},},},},},
            },
        }, -- end of mechanimations
		brakeshute_name	=	4,
		fires_pos = 
		{
			[1] = 	{5.207,	1.607,	0},
			[2] = 	{0.689,	-0.125,	3.955},
			[3] = 	{0.689,	-0.125,	-3.955},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-14.821,	0.624,	0.936},
			[9] = 	{-14.821,	0.624,	-0.936},
			[10] = 	{-14.821,	0.624,	0.936},
			[11] = 	{-14.821,	0.624,	-0.936},
		}, -- end of fires_pos
	}, -- end of [25]
	[26] = --a-50, А-50
	{
		M_empty	=	90000,
		M_nominal	=	160000,
		M_max	=	190000,
		M_fuel_max	=	70000,
		H_max	=	12247,
		average_fuel_consumption	=	0.235,
		CAS_min	=	54,
		V_opt	=	220,
		V_take_off	=	58,
		V_land	=	61,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-3.432,	-3.923,	3.952},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{11.146,	-4.009,	0},
		AOA_take_off	=	0.14,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	0.5,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	167.11,
		V_max_h	=	236.11,
		tanker_type	=	4,
		wing_area	=	300,
		wing_span	=	50.5,
		thrust_sum_max	=	47080,
		thrust_sum_ab	=	47080,
		Vy_max	=	10,
		length	=	46.59,
		height	=	14.76,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.77,
		range	=	7300,
		RCS	=	80,
		Ny_max_e	=	2,
		detection_range_max	=	500,
		IR_emission_coeff	=	4,
		IR_emission_coeff_ab	=	0,
		engines_count	=	4,
		wing_tip_pos = 	{-6.627,	-0.265,	25.25},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			{
				pos = 	{-0.322,	-0.302,	-10.525},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, 	
			{
				pos = 	{1.85,	-0.157,	-6.314},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, 
			{
				pos = 	{1.85,	-0.157,	6.314},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, 
			{
				pos = 	{-0.322,	-0.302,	10.525},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			},

		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.916,	0.986,	0},
                canopy_arg = -1,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
                canopy_arg = -1,
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
                canopy_arg = -1,
			}, -- end of [3]
			[4] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
                canopy_arg = -1,
			}, -- end of [4]
		}, -- end of crew_members
        mechanimations = {
            ServiceHatches = {
                {Transition = {"Close", "Open"}, Sequence = {{C = {{"PosType", 3}, {"Sleep", "for", 120.0}}}, {C = {{"Arg", 24, "set", 1.0}}}}},
                {Transition = {"Open", "Close"}, Sequence = {{C = {{"PosType", 3}, {"Sleep", "for", 120.0}}}, {C = {{"Arg", 24, "set", 0.0}}}}},
            },
        }, -- end of mechanimations
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{21.775,	0.764,	0},
		fires_pos = 
		{
			[1] = 	{3.433,	3.18,	0},
			[2] = 	{1.954,	2.531,	3.513},
			[3] = 	{1.954,	2.531,	-3.513},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{3.276,	-0.058,	6.429},
			[9] = 	{3.276,	-0.058,	-6.429},
			[10] = 	{1.379,	-0.299,	10.709},
			[11] = 	{1.379,	-0.299,	-10.709},
		}, -- end of fires_pos
	}, -- end of [26]
	[27] = --e-3
	{
		M_empty	=	60000,
		M_nominal	=	100000,
		M_max	=	148000,
		M_fuel_max	=	65000,
		H_max	=	12000,
		average_fuel_consumption	=	0.1893,
		CAS_min	=	54,
		V_opt	=	220,
		V_take_off	=	58,
		V_land	=	61,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-2.293,	-3.761,	4.147},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{17.671,	-3.665,	0},
		AOA_take_off	=	0.14,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	0.5,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	280.28,
		V_max_h	=	280.28,
		tanker_type	=	1,
		wing_area	=	283,
		wing_span	=	44.4,
		thrust_sum_max	=	38100,
		thrust_sum_ab	=	38100,
		Vy_max	=	10,
		length	=	46.61,
		height	=	12.93,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.82,
		range	=	12247,
		RCS	=	80,
		Ny_max_e	=	2,
		detection_range_max	=	500,
		IR_emission_coeff	=	4,
		IR_emission_coeff_ab	=	0,
		engines_count	=	4,
		wing_tip_pos = 	{-11,	0.65,	22},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			{
				pos = 	{-4.379,	-1.325,	-15.101},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			},
			{
				pos = 	{-0.406,	-1.797,	-9.346},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, 	
			{
				pos = 	{-0.406,	-1.797,	9.346},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, 
			{
				pos = 	{-4.379,	-1.325,	15.101},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.916,	0.986,	0},
                bailout_arg = -1,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
                bailout_arg = -1,
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
                bailout_arg = -1,
			}, -- end of [3]
			[4] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
                bailout_arg = -1,
			}, -- end of [4]
		}, -- end of crew_members
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{17.3,	1.3,	0},
		fires_pos = 
		{
			[1] = 	{-0.138,	-0.79,	0},
			[2] = 	{-0.138,	-0.79,	5.741},
			[3] = 	{-0.138,	-0.79,	-5.741},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-0.406,	-1.797,	9.346},
			[9] = 	{-0.406,	-1.797,	-9.346},
			[10] = 	{-4.379,	-1.325,	15.101},
			[11] = 	{-4.379,	-1.325,	-15.101},
		}, -- end of fires_pos
	}, -- end of [27]
	[28] = --il-78, Ил-78
	{
		M_empty	=	98000,
		M_nominal	=	150000,
		M_max	=	170000,
		M_fuel_max	=	70000,
		H_max	=	12000,
		average_fuel_consumption	=	0.3,
		CAS_min	=	54,
		V_opt	=	208,
		V_take_off	=	58,
		V_land	=	61,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-3.432,	-3.923,	3.952},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{11.146,	-4.009,	0},
		AOA_take_off	=	0.17,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	0.5,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	167,
		V_max_h	=	236.11,
		wing_area	=	300,
		wing_span	=	50.5,
		thrust_sum_max	=	47080,
		thrust_sum_ab	=	47080,
		Vy_max	=	10,
		length	=	46.59,
		height	=	14.76,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.77,
		range	=	7300,
		RCS	=	80,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	4,
		IR_emission_coeff_ab	=	0,
		engines_count	=	4,
		wing_tip_pos = 	{-8.627,	1.26,	25.25},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			{
				pos = 	{-0.322,	-0.302,	-10.525},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, 
			{
				pos = 	{1.85,	-0.157,	-6.314},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, 
			{
				pos = 	{1.85,	-0.157,	6.314},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, 
			{
				pos = 	{-0.322,	-0.302,	10.525},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, 
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.916,	0.986,	0},
                canopy_arg = -1,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
                canopy_arg = -1,
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
                canopy_arg = -1,
			}, -- end of [3]
			[4] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
                canopy_arg = -1,
			}, -- end of [4]
		}, -- end of crew_members
        mechanimations = {
            ServiceHatches = {
                {Transition = {"Close", "Open"}, Sequence = {{C = {{"PosType", 3}, {"Sleep", "for", 120.0}}}, {C = {{"Arg", 24, "set", 1.0}}}}},
                {Transition = {"Open", "Close"}, Sequence = {{C = {{"PosType", 3}, {"Sleep", "for", 120.0}}}, {C = {{"Arg", 24, "set", 0.0}}}}},
            },
        }, -- end of mechanimations
		brakeshute_name	=	0,
		is_tanker				=	4, -- PROBE_AND_DROGUE_3
		refueling_points_count	=	3,
		refueling_points = 
		{
			[1] = 	{ pos = {-44.109,	-3.309,	-2.676}, clientType = 2 },
			[2] = 	{ pos = {-29.44,	-3.194,	-16.15}, clientType = 1 },
			[3] = 	{ pos = {-29.44,	-3.194,	16.15}, clientType = 1 }
		}, -- end of refueling_points
		refueling_points_compartibility = {
			true, false, false,
			false, true, true,
			false, true, true
		},
		fires_pos = 
		{
			[1] = 	{3.433,	3.18,	0},
			[2] = 	{1.954,	2.531,	3.513},
			[3] = 	{1.954,	2.531,	-3.513},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{3.276,	-0.058,	6.429},
			[9] = 	{3.276,	-0.058,	-6.429},
			[10] = 	{1.379,	-0.299,	10.709},
			[11] = 	{1.379,	-0.299,	-10.709},
		}, -- end of fires_pos
	}, -- end of [28]
	[29] = --kc-10
	{
		M_empty	=	110664,
		M_nominal	=	150000,
		M_max	=	267000,
		M_fuel_max	=	80000,
		H_max	=	12000,
		average_fuel_consumption	=	0.127,
		CAS_min	=	54,
		V_opt	=	208,
		V_take_off	=	58,
		V_land	=	61,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-2.664,	-4.29,	5.693},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{19.708,	-4.355,	0},
		AOA_take_off	=	0.17,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	0.5,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	223.61,
		V_max_h	=	223.61,
		wing_area	=	367.7,
		wing_span	=	50.4,
		thrust_sum_max	=	71442,
		thrust_sum_ab	=	71442,
		Vy_max	=	10,
		length	=	55.35,
		height	=	17.7,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.77,
		range	=	7800,
		RCS	=	80,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	4,
		IR_emission_coeff_ab	=	0,
		engines_count	=	3,
		wing_tip_pos = 	{-6.627,	-0.265,	25.2},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			{
				pos = 	{1.013,	-1.899,	-8.043},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
			},
			{
				pos = 	{-27.25,	4.797,	0},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
			},
			{
				pos = 	{1.013,	-1.899,	8.043},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
			},
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.916,	0.986,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [3]
			[4] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [4]
		}, -- end of crew_members
		brakeshute_name	=	0,
		is_tanker				=	1, -- BOOM_AND_RECEPTACLE
		refueling_points_count	=	1,
		refueling_points = 
		{
			[1] =  { pos = {-28.956,	-9.016,	0}, clientType = 3 }
		}, -- end of refueling_points
		fires_pos = 
		{
			[1] = 	{7.166,	-1.843,	0},
			[2] = 	{3.863,	-0.629,	2.578},
			[3] = 	{3.863,	-0.629,	-2.578},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{5.354,	-1.868,	8.017},
			[9] = 	{5.354,	-1.868,	-8.017},
			[10] = 	{-23.974,	4.877,	0},
			[11] = 	{-23.974,	4.877,	0},
		}, -- end of fires_pos
	}, -- end of [29]
	[30] = --il-76, Ил-76
	{
		M_empty	=	100000,
		M_nominal	=	150000,
		M_max	=	170000,
		M_fuel_max	=	70000,
		InternalCargo = {
			nominalCapacity = 40000,
			maximalCapacity = 48000,
			para_unit_point = 126, -- количество парашютистов
			unit_point = 167, 	   -- количество пехотинцув
			area = {20, 3.15, 2.7},-- внутренний объем грузовой кабины длинна, ширина, высота, м
			unit_block = {0.64, 0.78}-- габариты для размещения одного парашютиста, длинна, ширина, м
		},
		H_max	=	12000,
		average_fuel_consumption	=	0.267,
		CAS_min	=	54,
		V_opt	=	208,
		V_take_off	=	58,
		V_land	=	61,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-3.432,	-3.923,	3.952},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{11.146,	-4.009,	0},
		AOA_take_off	=	0.17,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	0.5,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	167,
		V_max_h	=	236.11,
		wing_area	=	300,
		wing_span	=	50.5,
		thrust_sum_max	=	47080,
		thrust_sum_ab	=	47080,
		Vy_max	=	10,
		length	=	46.59,
		height	=	14.76,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.77,
		range	=	7300,
		RCS	=	80,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	4,
		IR_emission_coeff_ab	=	0,
		engines_count	=	4,
		wing_tip_pos = 	{-6.627,	-0.265,	25.25},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			{
				pos = 	{-0.322,	-0.302,	-10.525},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			},	
			{
				pos = 	{1.85,	-0.157,	-6.314},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, 	
			{
				pos = 	{1.85,	-0.157,	6.314},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			},
			{
				pos = 	{-0.322,	-0.302,	10.525},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, 

		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{17.0,	0.0,	-0.8},
                canopy_arg = -1,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{17.0,	0.0,	0.8},
                canopy_arg = -1,
			}, -- end of [2]
		}, -- end of crew_members
        mechanimations = {
            ServiceHatches = {
                {Transition = {"Close", "Open"}, Sequence = {{C = {{"PosType", 3}, {"Sleep", "for", 120.0}}}, {C = {{"Arg", 24, "set", 1.0}}}}},
                {Transition = {"Open", "Close"}, Sequence = {{C = {{"PosType", 3}, {"Sleep", "for", 120.0}}}, {C = {{"Arg", 24, "set", 0.0}}}}},
            },
        }, -- end of mechanimations
		fires_pos = 
		{
			[1] = 	{3.433,	3.18,	0},
			[2] = 	{1.954,	2.531,	3.513},
			[3] = 	{1.954,	2.531,	-3.513},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{3.276,	-0.058,	6.429},
			[9] = 	{3.276,	-0.058,	-6.429},
			[10] = 	{1.379,	-0.299,	10.709},
			[11] = 	{1.379,	-0.299,	-10.709},
		}, -- end of fires_pos
	}, -- end of [30]
	[31] = --c-130
	{
		M_empty	=	36400,
		M_nominal	=	70000,
		M_max	=	79380,
		M_fuel_max	=	20830,
		InternalCargo = {
			nominalCapacity = 19350,
			maximalCapacity = 21770,
			para_unit_point = 64, -- количество парашютистов
			unit_point = 92, 	  -- количество пехотинцув
			area = {12.19, 3.1, 2.6},-- внутренний объем грузовой кабины длинна, ширина, высота, м
			unit_block = {0.76, 0.775}-- габариты для размещения одного парашютиста, длинна, ширина, м
		},
		H_max	=	9315,
		average_fuel_consumption	=	0.06,
		CAS_min	=	54,
		V_opt	=	174,
		V_take_off	=	58,
		V_land	=	61,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-2.654,	-2.5,	2.746},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{8.133,	-2.5,	0},
		AOA_take_off	=	0.17,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	0.5,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	167.5,
		V_max_h	=	172.5,
		wing_area	=	152.1,
		wing_span	=	40.4,
		thrust_sum_max	=	44400,
		thrust_sum_ab	=	44400,
		Vy_max	=	9.1,
		length	=	29.79,
		height	=	11.66,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.63,
		range	=	8260,
		RCS	=	80,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	1,
		IR_emission_coeff_ab	=	0,
		engines_count	=	4,
		wing_tip_pos = 	{-6.627,	-0.265,	20.2},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{

			{
				pos = 	{-0.73,	1.105,	-10.335},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, 	
			{
				pos = 	{-0.742,	1.248,	-5.152},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			},
			{
				pos = 	{-0.742,	1.248,	5.152},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, 
			{
				pos = 	{-0.73,	1.105,	10.335},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			},

		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.0,	0.0,	-0.8},
				bailout_arg = -1,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.0,	0.0,	0.8},
				bailout_arg = -1,
			}, -- end of [2]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"}, Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
                {Transition = {"Open", "Close"}, Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
                {Transition = {"Open", "Board"}, Sequence = {{C = {{"Sleep", "for", 50.0}}}, {C = {{"Arg", 38, "from", 0.0, "to", 0.1 + 0.011, "in", 0.6}}}, {C = {{"Sleep", "for", 2.5}}}, {C = {{"Arg", 38, "to", 1.0, "in", 3.3}}}}},
                {Transition = {"Board", "Open"}, Sequence = {{C = {{"Sleep", "for", 10.0}}}, {C = {{"Arg", 38, "set", 0.0}}},                                {C = {{"Sleep", "for", 1.5}}}, {C = {{"Arg", 38, "to", 0.0, "in", 4.7}}}}, Flags = {"StepsBackwards"}},
            },
        },
		fires_pos = 
		{
			[1] = 	{-2.33,	1.807,	0},
			[2] = 	{-2.333,	1.807,	5.463},
			[3] = 	{-2.333,	1.807,	-5.463},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{0.586,	1.66,	4.841},
			[9] = 	{0.586,	1.66,	-4.841},
			[10] = 	{0.586,	1.546,	10.05},
			[11] = 	{0.586,	1.546,	-10.05},
		}, -- end of fires_pos
	}, -- end of [31]
	[32] = --mig-29k, МиГ-29К
	{
		M_empty	=	12700,
		M_nominal	=	13240,
		M_max	=	22400,
		M_fuel_max	=	4500,
		H_max	=	17000,
		average_fuel_consumption	=	0.2743,
		CAS_min	=	64,
		V_opt	=	222,
		V_take_off	=	67,
		V_land	=	67,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-0.758,	-1.534,	1.812},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{2.932,	-1.827,	0},
		AOA_take_off	=	0.17,
		stores_number	=	9,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	8,
		tand_gear_max	=	3.73,
		V_max_sea_level	=	388.9,
		V_max_h	=	638.8,
		tanker_type	=	4,
		wing_area	=	38,
		wing_span	=	11.99,
		wing_type = FOLDED_WING,
		thrust_sum_max	=	10160,
		thrust_sum_ab	=	16680,
		Vy_max	=	300,
		length	=	20.37,
		height	=	5.175,
		flaps_maneuver	=	1,
		Mach_max	=	2.17,
		range	=	1650,
		RCS	=	5,
		Ny_max_e	=	7.5,
		detection_range_max	=	200,
		IR_emission_coeff	=	0.77,
		IR_emission_coeff_ab	=	4,
		engines_count	=	2,
		wing_tip_pos = 	{-3.441,	0.109,	6.111},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-5.65,	0.082,	-0.9},
				elevation	=	0,
				diameter	=	0.96,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.5, 				
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-5.65,	0.082,	0.9},
				elevation	=	0,
				diameter	=	0.96,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.5, 				
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	29,
				pos = 	{4.716,	1.233,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{6.693,	1.275,	-0.775},
		fires_pos = 
		{
			[1] = 	{-1.36,	-0.185,	0},
			[2] = 	{-0.595,	0.294,	2.66},
			[3] = 	{-1.743,	0.234,	-3.769},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-4.471,	-0.059,	0.91},
			[9] = 	{-4.471,	-0.059,	-0.91},
			[10] = 	{-0.491,	0.629,	2.03},
			[11] = 	{-0.491,	-0.019,	0},
		}, -- end of fires_pos
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	0.999,	0.052},
				pos = 	{-0.937,	1.645,	-1.726},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	0.999,	-0.052},
				pos = 	{-0.937,	1.645,	1.726},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser
	}, -- end of [32]
	[33] = --s-3r
	{
		M_empty	=	12088,
		M_nominal	=	19278,
		M_max	=	23831,
		M_fuel_max	=	8000,
		H_max	=	7500,
		average_fuel_consumption	=	0.06,
		CAS_min	=	54,
		V_opt	=	82.2,
		V_take_off	=	60,
		V_land	=	52.8,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-2.071,	-1.477,	1.989},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{3.832,	-1.477,	0},
		AOA_take_off	=	0.14,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	-1,
		Ny_max	=	2.5,
		tand_gear_max	=	3.73,
		V_max_sea_level	=	222.7,
		V_max_h	=	231.7,
		wing_area	=	55.55,
		wing_span	=	20.93,
		wing_type = FOLDED_WING,
		thrust_sum_max	=	8414,
		thrust_sum_ab	=	8414,
		Vy_max	=	8,
		length	=	16.26,
		height	=	6.93,
		flaps_maneuver	=	1,
		Mach_max	=	0.682,
		range	=	3701,
		RCS	=	30,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.53,
		IR_emission_coeff_ab	=	0,
		engines_count	=	2,
		wing_tip_pos = 	{-2.821,	1.179,	10.409},
		nose_gear_wheel_diameter	=	0.531,
		main_gear_wheel_diameter	=	0.824,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-1.593,	0.172,	-2.434},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 				
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-1.593,	0.172,	2.434},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 				
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = 	{3.27,	0.748,	-0.521},
                bailout_arg = -1,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = 	{3.27,	0.748,	0.521},
                bailout_arg = -1,
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = 	{1.271,	0.748,	-0.521},
                bailout_arg = -1,
			}, -- end of [3]
			[4] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = 	{1.271,	0.748,	0.521},
                bailout_arg = -1,
			}, -- end of [4]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"}, Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
                {Transition = {"Open", "Close"}, Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
                {Transition = {"Open", "Board"}, Sequence = {{C = {{"Sleep", "for", 50.0}}}, {C = {{"Arg", 38, "to", 1.0, "in", 3.0}}}}},
                {Transition = {"Board", "Open"}, Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.0}}}}},
            },
            FoldableWings = {
                {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"Arg", 8, "to", 0.0, "in", 6.0}}}}, Flags = {"Reversible"}},
                {Transition = {"Extend", "Retract"}, Sequence = {{C = {{"Arg", 8, "to", 1.0, "in", 30.0}}}}, Flags = {"Reversible", "StepsBackwards"}},
				{Transition = {"Extend", "Stage"},   Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 1.0, "to", 0.745, "in", 1.0}}}}},
				{Transition = {"Stage", "Pull"},     Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 1.0, "to", 0.745, "in", 1.0}}}}},
            },
            LaunchBar = {
                {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"ChangeDriveTo", "HydraulicGravityAssisted"}, {"VelType", 2}, {"Arg", 85, "to", 1.0, "in", 4.5}}}}},
                {Transition = {"Extend", "Retract"}, Sequence = {{C = {{"ChangeDriveTo", "Hydraulic"}, {"VelType", 2}, {"Arg", 85, "to", 0.0, "in", 4.5}}}}},
                {Transition = {"Retract", "Stage"},  Sequence = {{C = {{"ChangeDriveTo", "HydraulicGravityAssisted"}, {"VelType", 2}, {"Arg", 85, "to", 0.745, "in", 4.0}}}}},
                {Transition = {"Stage", "Retract"},  Sequence = {{C = {{"ChangeDriveTo", "Hydraulic"}, {"VelType", 2}, {"Arg", 85, "to", 0.0, "in", 4.0}}}}},
                {Transition = {"Extend", "Stage"},   Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 1.0, "to", 0.745, "in", 1.0}}}}},				
				{Transition = {"Stage", "Pull"},     Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 0.7450, "to", 0.743, "in", 1.0}}}}},
                {Transition = {"Stage", "Extend"},   Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 0.745, "to", 1.0, "in", 0.2}}}}},
            },
        }, -- end of mechanimations
		brakeshute_name	=	0,
		is_tanker				=	2, -- PROBE_AND_DROGUE_1
		refueling_points_count	=	1,
		refueling_points = 
		{
			[1] = 	{ pos = {-20.505,	-3.686,	-3.893}, clientType = 3 }
		}, -- end of refueling_points
		fires_pos = 
		{
			[1] = 	{-0.386,	1.39,	0},
			[2] = 	{-0.386,	1.39,	1.899},
			[3] = 	{-0.386,	1.39,	-1.899},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-0.583,	0.172,	2.434},
			[9] = 	{-0.583,	0.172,	-2.434},
			[10] = 	{-2.345,	-0.517,	0},
			[11] = 	{2.345,	-0.517,	0},
		}, -- end of fires_pos
	}, -- end of [33]
	[34] = --mirage-2000
	{
		M_empty	=	7500,
		M_nominal	=	9525,
		M_max	=	17000,
		M_fuel_max	=	3160,
		H_max	=	16460,
		average_fuel_consumption	=	0.07,
		CAS_min	=	52,
		V_opt	=	170,
		V_take_off	=	64,
		V_land	=	64,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-1.121,	-1.748,	1.751},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{3.924,	-1.746,	0},
		AOA_take_off	=	0.14,
		stores_number	=	9,
		bank_angle_max	=	60,
		Ny_min	=	-2,
		Ny_max	=	8,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	403,
		V_max_h	=	660,
		tanker_type	=	2,
		wing_area	=	41,
		wing_span	=	9.13,
		thrust_sum_max	=	6430,
		thrust_sum_ab	=	9810,
		Vy_max	=	315.3,
		length	=	14.36,
		height	=	5.2,
		flaps_maneuver	=	1,
		Mach_max	=	2.3,
		range	=	1852,
		RCS	=	5,
		Ny_max_e	=	8,
		detection_range_max	=	150,
		IR_emission_coeff	=	0.8,
		IR_emission_coeff_ab	=	3,
		engines_count	=	1,
		wing_tip_pos = 	{-4.372,	-0.435,	4.583},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.63,	0.401,	0},
				elevation	=	0,
				diameter	=	0.9,
				exhaust_length_ab	=	6.8,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [1]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	40,
				pos = 	{3.369,	-0.146,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{5.928,	0.885,	0.521},
		fires_pos = 
		{
			[1] = 	{-1.606,	-0.489,	0},
			[2] = 	{-2.455,	-0.079,	1.466},
			[3] = 	{-2.521,	-0.136,	-2.015},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-5.63,	0.401,	0},
			[9] = 	{-5.63,	0.401,	0},
			[10] = 	{-2.346,	-0.448,	0},
			[11] = 	{2.346,	-0.448,	0},
		}, -- end of fires_pos
	}, -- end of [34]
	[35] = --tu-143
	{
		M_empty	=	1012,
		M_nominal	=	1100,
		M_max	=	1230,
		M_fuel_max	=	925,
		H_max	=	1000,
		average_fuel_consumption	=	0.485,
		CAS_min	=	50,
		V_opt	=	256,
		V_take_off	=	58,
		V_land	=	61,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		main_gear_pos = 	{-2.407,	-2.5,	5.693},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{8.133,	-2.5,	0},
		AOA_take_off	=	0.14,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	-1,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	258,
		V_max_h	=	258,
		wing_area	=	3.7,
		wing_span	=	1.4,
		thrust_sum_max	=	855,
		thrust_sum_ab	=	855,
		Vy_max	=	10,
		length	=	15.7,
		height	=	4.35,
		flaps_maneuver	=	1,
		Mach_max	=	2.2,
		range	=	180,
		RCS	=	60,
		Ny_max_e	=	2,
		detection_range_max	=	100,
		IR_emission_coeff	=	1,
		IR_emission_coeff_ab	=	0,
		engines_count	=	1,
		wing_tip_pos = 	{-6.627,	-0.265,	4.68},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.139,	0.214,	0},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
			}, -- end of [1]
		}, -- end of engines_nozzles
	}, -- end of [35]
	[36] = --tu-141
	{
		M_empty	=	2000,
		M_nominal	=	5000,
		M_max	=	7000,
		M_fuel_max	=	5000,
		H_max	=	1000,
		average_fuel_consumption	=	0.45,
		CAS_min	=	50,
		V_opt	=	278,
		V_take_off	=	58,
		V_land	=	61,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		main_gear_pos = 	{-2.407,	-2.5,	5.693},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{8.133,	-2.5,	0},
		AOA_take_off	=	0.14,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	-1,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	258,
		V_max_h	=	258,
		wing_area	=	3.7,
		wing_span	=	1.4,
		thrust_sum_max	=	855,
		thrust_sum_ab	=	855,
		Vy_max	=	10,
		length	=	15.7,
		height	=	4.35,
		flaps_maneuver	=	1,
		Mach_max	=	2.2,
		range	=	180,
		RCS	=	60,
		Ny_max_e	=	2,
		detection_range_max	=	100,
		IR_emission_coeff	=	1,
		IR_emission_coeff_ab	=	0,
		engines_count	=	1,
		wing_tip_pos = 	{-6.627,	-0.265,	6.394},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.139,	0.214,	0},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
			}, -- end of [1]
		}, -- end of engines_nozzles
	}, -- end of [36]
	[37] = --f-117
	{
		M_empty	=	13380,
		M_nominal	=	18000,
		M_max	=	23810,
		M_fuel_max	=	3840,
		H_max	=	10000,
		average_fuel_consumption	=	0.184,
		CAS_min	=	64,
		V_opt	=	270,
		V_take_off	=	85,
		V_land	=	68,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		main_gear_pos = 	{-0.942,	-2.009,	2.449},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{4.913,	-2.009,	0},
		AOA_take_off	=	0.14,
		stores_number	=	2,
		bank_angle_max	=	60,
		Ny_min	=	-1,
		Ny_max	=	4.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	292,
		V_max_h	=	289,
		tanker_type	=	1,
		wing_area	=	105.9,
		wing_span	=	13.2,
		thrust_sum_max	=	9800,
		thrust_sum_ab	=	9800,
		Vy_max	=	30,
		length	=	20.08,
		height	=	3.78,
		flaps_maneuver	=	1,
		Mach_max	=	0.95,
		range	=	2000,
		RCS	=	0.01,
		Ny_max_e	=	4,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.15,
		IR_emission_coeff_ab	=	0,
		engines_count	=	2,
		wing_tip_pos = 	{-6.627,	-0.265,	6.6},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-4.604,	0.039,	-1.427},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 				
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-4.604,	0.039,	1.427},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 				
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	17,
				drop_canopy_name	=	12,
				pos = 	{5.213,	0.744,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	2,
		air_refuel_receptacle_pos = 	{2.356,	1.119,	0},
		fires_pos = 
		{
			[1] = 	{-0.865,	1.01,	1},
			[2] = 	{-0.37,	-0.23,	3.01},
			[3] = 	{-0.37,	-0.23,	-3.01},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-4.45,	0.08,	1.7},
			[9] = 	{-4.45,	0.08,	-1.7},
			[10] = 	{2,	-0.56,	-1},
			[11] = 	{-4.08,	0.22,	0},
		}, -- end of fires_pos
	}, -- end of [37]
	[38] = --su-39, Су-25ТМ
	{
		M_empty	=	11496.4,
		M_nominal	=	14150,
		M_max	=	19500,
		M_fuel_max	=	3790,
		H_max	=	10000,
		average_fuel_consumption	=	0.25,
		CAS_min	=	64,
		V_opt	=	180,
		V_take_off	=	72,
		V_land	=	68,
		has_afteburner	=	false,
		has_speedbrake	=	true,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-0.714,	-2.009,	1.352},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{2.808,	-2.15,	0},
		AOA_take_off	=	0.192,
		stores_number	=	11,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	5.9,
		tand_gear_max	=	3.73,
		V_max_sea_level	=	292,
		V_max_h	=	271,
		wing_area	=	30.1,
		wing_span	=	14.36,
		thrust_sum_max	=	9856,
		thrust_sum_ab	=	9856,
		Vy_max	=	60,
		length	=	15.35,
		height	=	5.2,
		flaps_maneuver	=	0.2507,
		Mach_max	=	0.82,
		range	=	2250,
		RCS	=	7,
		Ny_max_e	=	6.5,
		detection_range_max	=	75,
		IR_emission_coeff	=	0.7,
		IR_emission_coeff_ab	=	0,
		engines_count	=	2,
		wing_tip_pos = 	{-2.7,	-0.111,	7.3},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-3.793,	-0.391,	-0.716},
				elevation	=	0,
				diameter	=	0.6,
				exhaust_length_ab	=	8.631,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-3.793,	-0.391,	0.716},
				elevation	=	0,
				diameter	=	0.6,
				exhaust_length_ab	=	8.631,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	38,
                canopy_pos = {0, 0, 0},
				pos = 	{3.029,	-0.092,	0},
			}, -- end of [1]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 1.96},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 1.87},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
            },
            HeadLights = {
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 208, "to", 0.0, "in", 0.3}, {"Arg", 209, "to", 0.0, "in", 0.3},},},},},
                {Transition = {"Any", "Off"},     Sequence = {{C = {{"Arg", 208, "to", 0.0, "in", 0.3}, {"Arg", 209, "to", 0.0, "in", 0.3},},},},},
                {Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 208, "to", 1.0, "in", 0.3}, {"Arg", 209, "to", 1.0, "in", 0.3},},},},},
                {Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 208, "to", 1.0, "in", 0.3}, {"Arg", 209, "to", 1.0, "in", 0.3},},},},},
            },
        }, -- end of mechanimations
		brakeshute_name	=	4,
		fires_pos = 
		{
			[1] = 	{-3.084,	-0.595,	-0.112},
			[2] = 	{-0.82,	0.275,	1.274},
			[3] = 	{-0.82,	0.275,	-1.274},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-2.87,	-0.596,	0.754},
			[9] = 	{-2.87,	-0.596,	-0.754},
			[10] = 	{-1.573,	0.145,	-2.172},
			[11] = 	{-1.924,	-0.04,	-1.934},
		}, -- end of fires_pos
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	1,	0},
				pos = 	{-3.677,	1.012,	-0.859},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	1,	0},
				pos = 	{-3.677,	1.012,	0.859},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser
	}, -- end of [38]
	[39] = --an-26b, Ан-26Б
	{
		M_empty	=	15850,
		M_nominal	=	23000,
		M_max	=	24000,
		M_fuel_max	=	5500,
		InternalCargo = {
			nominalCapacity = 5500,
			maximalCapacity = 5500,
			para_unit_point = 30, -- количество парашютистов
			unit_point = 39, 	  -- количество пехотинцув
			area = {11.1, 2.25, 1.91},-- внутренний объем грузовой кабины длинна, ширина, высота, м
			unit_block = {0.73, 1.1}-- габариты для размещения одного парашютиста, длинна, ширина, м
		},
		H_max	=	7500,
		average_fuel_consumption	=	0.2,
		CAS_min	=	50,
		V_opt	=	120.8,
		V_take_off	=	60,
		V_land	=	52.8,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-0.826,	-2.55,	3.969},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{7,	-2.55,	0},
		AOA_take_off	=	0.17,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	0.5,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	178,
		V_max_h	=	140,
		wing_area	=	75,
		wing_span	=	29.2,
		thrust_sum_max	=	22000,
		thrust_sum_ab	=	22000,
		Vy_max	=	8,
		length	=	23.8,
		height	=	8.575,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.55,
		range	=	2660,
		RCS	=	50,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.5,
		IR_emission_coeff_ab	=	0,
		engines_count	=	2,
		wing_tip_pos = 	{-1.189,	0.709,	14.6},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-3.688,	0.181,	-3.969},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-3.688,	0.181,	3.969},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.0,	0.0,	-0.8},
                canopy_arg = -1,
                bailout_arg = -1,
                boarding_arg = 38,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.0,	0.0,	0.8},
                canopy_arg = -1,
                bailout_arg = -1,
                boarding_arg = 38,
			}, -- end of [2]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Board"}, Sequence = {{C = {{"PosType", 3}, {"Sleep", "for", 60.0}}}, {C = {{"Arg", 38, "from", 0.0, "to", 0.051, "in", 0.333}}}, {C = {{"PosType", 3}, {"Sleep", "for", 0.75}}}, {C = {{"VelType", 4}, {"Arg", 38, "to", 1.0, "in", 1.25}}}}},
                {Transition = {"Board", "Close"}, Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 1.6}}}}},
            },
            Door1 = {DuplicateOf = "Door0"},
        }, -- end of mechanimations
		fires_pos = 
		{
			[1] = 	{-0.589,	0.856,	0},
			[2] = 	{-0.063,	0.993,	2.062},
			[3] = 	{-0.063,	0.993,	-2.062},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-0.103,	0.479,	3.969},
			[9] = 	{-0.103,	0.479,	-3.969},
			[10] = 	{-0.103,	0.479,	3.969},
			[11] = 	{-0.103,	0.479,	-3.969},
		}, -- end of fires_pos
	}, -- end of [39]
	[40] = --an-30m, Ан-30М
	{
		M_empty	=	15850,
		M_nominal	=	23000,
		M_max	=	24000,
		M_fuel_max	=	5500,
		H_max	=	7500,
		average_fuel_consumption	=	0.2,
		CAS_min	=	50,
		V_opt	=	120.8,
		V_take_off	=	60,
		V_land	=	52.8,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-0.826,	-2.55,	3.969},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{7,	-2.55,	0},
		AOA_take_off	=	0.17,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	0.5,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	178,
		V_max_h	=	140,
		wing_area	=	75,
		wing_span	=	29.2,
		thrust_sum_max	=	22000,
		thrust_sum_ab	=	22000,
		Vy_max	=	8,
		length	=	23.8,
		height	=	8.575,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.55,
		range	=	2660,
		RCS	=	50,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.5,
		IR_emission_coeff_ab	=	0,
		engines_count	=	2,
		wing_tip_pos = 	{-1.189,	0.709,	14.6},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-3.688,	0.181,	-3.969},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-3.688,	0.181,	3.969},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.0,	0.0,	-0.8},
                bailout_arg = -1,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.0,	0.0,	0.8},
                bailout_arg = -1,
			}, -- end of [2]
		}, -- end of crew_members
		fires_pos = 
		{
			[1] = 	{-0.589,	0.856,	0},
			[2] = 	{-0.063,	0.993,	2.062},
			[3] = 	{-0.063,	0.993,	-2.062},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-0.103,	0.479,	3.969},
			[9] = 	{-0.103,	0.479,	-3.969},
			[10] = 	{-0.103,	0.479,	3.969},
			[11] = 	{-0.103,	0.479,	-3.969},
		}, -- end of fires_pos
	}, -- end of [40]
	[41] = --e-2
	{
		M_empty	=	17090,
		M_nominal	=	20500,
		M_max	=	24687,
		M_fuel_max	=	5624,
		H_max	=	11275,
		average_fuel_consumption	=	0.3,
		CAS_min	=	43,
		V_opt	=	133.3,
		V_take_off	=	53,
		V_land	=	53,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		radar_can_see_ground	=	true,
		nose_gear_pos = {7.080, -2.486, 0.0},
		nose_gear_amortizer_direct_stroke			= 0,  -- down from nose_gear_pos !!!
		nose_gear_amortizer_reversal_stroke			= -0.300,  -- up 
		nose_gear_amortizer_normal_weight_stroke	= -0.225,-- down from nose_gear_pos
		nose_gear_wheel_diameter	= 0.547,
		main_gear_pos = {-0.134, -2.229, 3.016},
		main_gear_amortizer_direct_stroke		 = 0, --  down from main_gear_pos !!!
		main_gear_amortizer_reversal_stroke		 = -0.516, --  up 
		main_gear_amortizer_normal_weight_stroke = -0.064,-- down from main_gear_pos
		main_gear_wheel_diameter	= 0.874,
		AOA_take_off	=	0.14,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	0,
		Ny_max	=	2.5,
		tand_gear_max	=	3.73,
		V_max_sea_level	=	178.2,
		V_max_h	=	173.8,
		wing_area	=	65.03,
		wing_span	=	24.56,
		wing_type = FOLDED_WING,
		thrust_sum_max	=	22000,
		thrust_sum_ab	=	22000,
		Vy_max	=	12,
		length	=	17.55,
		height	=	5.59,
		flaps_maneuver	=	1,
		Mach_max	=	0.53,
		range	=	2854,
		RCS	=	50,
		Ny_max_e	=	2,
		detection_range_max	=	400,
		IR_emission_coeff	=	0.5,
		IR_emission_coeff_ab	=	0,
		engines_count	=	2,
		wing_tip_pos = 	{-0.614,	1.341,	12.279},
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-2.004,	0.438,	-3.293},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-2.004,	0.438,	3.293},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		fires_pos = 
		{
			[1] = 	{0.048,	1.008,	0},
			[2] = 	{0.048,	1.008,	2.322},
			[3] = 	{0.048,	1.008,	-2.322},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-0.267,	0.054,	3.293},
			[9] = 	{-0.267,	0.054,	-3.293},
			[10] = 	{-0.267,	0.054,	3.293},
			[11] = 	{-0.267,	0.054,	-3.293},
		}, -- end of fires_pos
		crew_members = 
		{
			[1] =
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{2.289, -0.345 - 0.2 * 4, -0.944 - 0.2 * 4},
                ejection_added_speed = {-0.5, 0.0, -30.0},
                canopy_arg = -1,
                bailout_arg = 38,
                boarding_arg = 38,
                ejection_order = 5,
			}, -- end of [1]
			[2] =
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{2.289, -0.345 - 0.2 * 3, -0.944 - 0.2 * 3},
                ejection_added_speed = {-0.5, 0.0, -30.0},
                canopy_arg = -1,
                bailout_arg = 38,
                boarding_arg = 38,
                ejection_order = 4,
			}, -- end of [2]
			[3] =
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{2.289, -0.345 - 0.2 * 2, -0.944 - 0.2 * 2},
                ejection_added_speed = {-0.5, 0.0, -30.0},
                canopy_arg = -1,
                bailout_arg = 38,
                boarding_arg = 38,
                ejection_order = 3,
			}, -- end of [3]
			[4] =
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{2.289, -0.345 - 0.2 * 1, -0.944 - 0.2 * 1},
                ejection_added_speed = {-0.5, 0.0, -30.0},
                canopy_arg = -1,
                bailout_arg = 38,
                boarding_arg = 38,
                ejection_order = 2,
			}, -- end of [4]
			[5] =
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{2.289, -0.345 - 0.2 * 0, -0.944 - 0.2 * 0},
                ejection_added_speed = {-0.5, 0.0, -30.0},
                canopy_arg = -1,
                bailout_arg = 38,
                boarding_arg = 38,
                ejection_order = 1,
			}, -- end of [5]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"PosType", 9}, {"Sleep", "for", 5.0}}}, {C = {{"Arg", 38, "set", 1.0}}}}}, -- TODO make jettisonable - Made Dragon
                {Transition = {"Open", "Board"},  Sequence = {{C = {{"PosType", 9}, {"Sleep", "for", 60.0}}}, {C = {{"Arg", 38, "to", 1.0, "in", 0.75}}}}},
                {Transition = {"Board", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 3.75}}}}},
            },
            Door1 = {DuplicateOf = "Door0"},
            Door2 = {DuplicateOf = "Door0"},
            Door3 = {DuplicateOf = "Door0"},
            Door4 = {DuplicateOf = "Door0"},
            FoldableWings = {
                {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"Arg", 8, "to", 0.0, "in", 6.0}}}}, Flags = {"Reversible"}},
                {Transition = {"Extend", "Retract"}, Sequence = {{C = {{"Arg", 8, "to", 1.0, "in", 30.0}}}}, Flags = {"Reversible", "StepsBackwards"}},
            },
            LaunchBar = {
                {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"VelType", 3}, {"Arg", 85, "to", 1.000, "in", 1.0}}}}},                
                {Transition = {"Retract", "Stage"},  Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"VelType", 3}, {"Arg", 85, "to", 0.866, "in", 1.0}}}}},
                {Transition = {"Any", "Retract"},  Sequence = {{C = {{"ChangeDriveTo", "Hydraulic"}, {"VelType", 2}, {"Arg", 85, "to", 0.000, "in", 6.0}}}}},
                {Transition = {"Extend", "Stage"},   Sequence = {
                        {C = {{"ChangeDriveTo", "Mechanical"}, {"Sleep", "for", 0.000}}},
                        {C = {{"Arg", 85, "from", 1.000, "to", 0.737, "in", 0.400}}},
                        {C = {{"Arg", 85, "from", 0.737, "to", 0.696, "in", 0.300}}},
                        {C = {{"Sleep", "for", 1.800}}},
                        {C = {{"Sleep", "for", 0.150}}},
                        {C = {{"Arg", 85, "from", 0.696, "to", 1.000, "in", 0.200}}},
                        {C = {{"PosType", 6}, {"Sleep", "for", 2.2}}},
                        {C = {{"Arg", 85, "from", 1.000, "to", 0.866, "in", 2.25}}},
                    },
                },				
				{Transition = {"Stage", "Pull"},     Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 0.866, "to", 0.866, "in", 1.0}}}}},
                {Transition = {"Stage", "Extend"},   Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 0.866, "to", 1.000, "in", 0.1}}}}},
            },
        }, -- end of mechanimations
	}, -- end of [41]
	[42] = --s-3r
	{
		M_empty	=	12088,
		M_nominal	=	19278,
		M_max	=	23831,
		M_fuel_max	=	5500,
		H_max	=	7500,
		average_fuel_consumption	=	0.06,
		CAS_min	=	54,
		V_opt	=	82.2,
		V_take_off	=	60,
		V_land	=	52.8,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-2.071,	-1.477,	1.989},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{3.832,	-1.477,	0},
		AOA_take_off	=	0.14,
		stores_number	=	6,
		bank_angle_max	=	45,
		Ny_min	=	-1,
		Ny_max	=	2.5,
		tand_gear_max	=	3.73,
		V_max_sea_level	=	222.7,
		V_max_h	=	231.7,
		tanker_type	=	2,
		wing_area	=	55.55,
		wing_span	=	20.93,
		wing_type = FOLDED_WING,
		thrust_sum_max	=	8414,
		thrust_sum_ab	=	8414,
		Vy_max	=	8,
		length	=	16.26,
		height	=	6.93,
		flaps_maneuver	=	1,
		Mach_max	=	0.682,
		range	=	3701,
		RCS	=	30,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.53,
		IR_emission_coeff_ab	=	0,
		engines_count	=	2,
		wing_tip_pos = 	{-2.821,	1.179,	10.409},
		nose_gear_wheel_diameter	=	0.531,
		main_gear_wheel_diameter	=	0.824,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-1.593,	0.172,	-2.434},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 				
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-1.593,	0.172,	2.434},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 				
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = 	{3.27,	0.748,	-0.521},
                bailout_arg = -1,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = 	{3.27,	0.748,	0.521},
                bailout_arg = -1,
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = 	{1.271,	0.748,	-0.521},
                bailout_arg = -1,
			}, -- end of [3]
			[4] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = 	{1.271,	0.748,	0.521},
                bailout_arg = -1,
			}, -- end of [4]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"}, Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
                {Transition = {"Open", "Close"}, Sequence = {{C = {{"Sleep", "for", 0.0}}}}},
                {Transition = {"Open", "Board"}, Sequence = {{C = {{"Sleep", "for", 50.0}}}, {C = {{"Arg", 38, "to", 1.0, "in", 3.0}}}}},
                {Transition = {"Board", "Open"}, Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.0}}}}},
            },
            FoldableWings = {
                {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"Arg", 8, "to", 0.0, "in", 6.0}}}}, Flags = {"Reversible"}},
                {Transition = {"Extend", "Retract"}, Sequence = {{C = {{"Arg", 8, "to", 1.0, "in", 30.0}}}}, Flags = {"Reversible", "StepsBackwards"}},
            },
            LaunchBar = {
                {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"ChangeDriveTo", "HydraulicGravityAssisted"}, {"VelType", 2}, {"Arg", 85, "to", 1.0, "in", 4.5}}}}},
                {Transition = {"Extend", "Retract"}, Sequence = {{C = {{"ChangeDriveTo", "Hydraulic"}, {"VelType", 2}, {"Arg", 85, "to", 0.0, "in", 4.5}}}}},
                {Transition = {"Retract", "Stage"},  Sequence = {{C = {{"ChangeDriveTo", "HydraulicGravityAssisted"}, {"VelType", 2}, {"Arg", 85, "to", 0.745, "in", 4.0}}}}},
                {Transition = {"Stage", "Retract"},  Sequence = {{C = {{"ChangeDriveTo", "Hydraulic"}, {"VelType", 2}, {"Arg", 85, "to", 0.0, "in", 4.0}}}}},
                {Transition = {"Extend", "Stage"},   Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 1.0, "to", 0.745, "in", 1.0}}}}},				
				{Transition = {"Stage", "Pull"},     Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 0.7450, "to", 0.743, "in", 1.0}}}}},
                {Transition = {"Stage", "Extend"},   Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 0.745, "to", 1.0, "in", 0.2}}}}},
            },
        }, -- end of mechanimations
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{6.054,	1.699,	0},
		fires_pos = 
		{
			[1] = 	{-0.386,	1.39,	0},
			[2] = 	{-0.386,	1.39,	1.899},
			[3] = 	{-0.386,	1.39,	-1.899},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-0.583,	0.172,	2.434},
			[9] = 	{-0.583,	0.172,	-2.434},
			[10] = 	{-2.345,	-0.517,	0},
			[11] = 	{2.345,	-0.517,	0},
		}, -- end of fires_pos
	}, -- end of [42]
	[43] = --av-8b
	{
		M_empty	=	5700,
		M_nominal	=	7123,
		M_max	=	14061,
		M_fuel_max	=	3590,
		H_max	=	9315,
		average_fuel_consumption	=	0.06,
		CAS_min	=	54,
		V_opt	=	174,
		V_take_off	=	58,
		V_land	=	61,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		main_gear_pos = 	{-1.444,	-1.209,	2.587},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{2.399,	-1.643,	0},
		AOA_take_off	=	0.14,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	-1,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	172.5,
		V_max_h	=	172.5,
		wing_area	=	21.37,
		wing_span	=	9.245,
		thrust_sum_max	=	96700,
		thrust_sum_ab	=	96700,
		Vy_max	=	9.1,
		length	=	14.12,
		height	=	3.551,
		flaps_maneuver	=	1,
		Mach_max	=	0.9,
		range	=	8260,
		RCS	=	5,
		Ny_max_e	=	6,
		detection_range_max	=	100,
		IR_emission_coeff	=	1,
		IR_emission_coeff_ab	=	0,
		engines_count	=	1,
		wing_tip_pos = 	{-6.627,	-0.265,	6.6},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-4.604,	0.039,	-1.427},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-4.604,	0.039,	1.427},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	12,
				pos = 	{16.972,	0.67,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = 	{16.972,	0.67,	0},
			}, -- end of [2]
		}, -- end of crew_members
		brakeshute_name	=	0,
	}, -- end of [43]
	[44] = --ea-6b
	{
		M_empty	=	36400,
		M_nominal	=	70000,
		M_max	=	79380,
		M_fuel_max	=	20830,
		H_max	=	9315,
		average_fuel_consumption	=	0.06,
		CAS_min	=	54,
		V_opt	=	174,
		V_take_off	=	58,
		V_land	=	61,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		main_gear_pos = 	{-2.654,	-2.5,	2.746},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{8.133,	-2.5,	0},
		AOA_take_off	=	0.14,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	-1,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	172.5,
		V_max_h	=	172.5,
		wing_area	=	162,
		wing_span	=	40.4,
		wing_type = FOLDED_WING,
		thrust_sum_max	=	44400,
		thrust_sum_ab	=	44400,
		Vy_max	=	9.1,
		length	=	29.79,
		height	=	11.66,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.55,
		range	=	8260,
		RCS	=	10,
		Ny_max_e	=	5,
		detection_range_max	=	100,
		IR_emission_coeff	=	0.8,
		IR_emission_coeff_ab	=	0,
		engines_count	=	2,
		wing_tip_pos = 	{-6.627,	-0.265,	6.6},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-4.604,	0.039,	-1.427},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-4.604,	0.039,	1.427},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	12,
				pos = 	{16.972,	0.67,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	0,
				pos = 	{16.972,	0.67,	0},
			}, -- end of [2]
		}, -- end of crew_members
		brakeshute_name	=	0,
	}, -- end of [44]
	[45] = --f-4e
	{
		M_empty	=	14461,
		M_nominal	=	24430,
		M_max	=	28055,
		M_fuel_max	=	4864,
		H_max	=	17907,
		average_fuel_consumption	=	0.3,
		CAS_min	=	45,
		V_opt	=	256,
		V_take_off	=	58,
		V_land	=	61,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-1.184,	-1.927,	2.714},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{6.157,	-2.014,	0},
		AOA_take_off	=	0.14,
		stores_number	=	9,
		bank_angle_max	=	60,
		Ny_min	=	-2,
		Ny_max	=	5.9,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	322,
		V_max_h	=	640,
		wing_area	=	49.24,
		wing_span	=	11.68,
		thrust_sum_max	=	16240,
		thrust_sum_ab	=	24400,
		Vy_max	=	253,
		length	=	19.2,
		height	=	5,
		flaps_maneuver	=	1,
		Mach_max	=	2.17,
		range	=	2593,
		RCS	=	7,
		Ny_max_e	=	6,
		detection_range_max	=	100,
		IR_emission_coeff	=	1,
		IR_emission_coeff_ab	=	4,
		engines_count	=	2,
		wing_tip_pos = 	{-4.207,	-0.086,	5.782},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-4.894,	-0.199,	-0.611},
				elevation	=	3.7,
				diameter	=	0.965,
				exhaust_length_ab	=	5.5,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.5, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-4.894,	-0.199,	0.611},
				elevation	=	3.7,
				diameter	=	0.965,
				exhaust_length_ab	=	5.5,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.5, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	41,
				pos = 	{4.763,	0.862,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	42,
				pos = 	{3.322,	0.978,	0},
			}, -- end of [2]
		}, -- end of crew_members
		brakeshute_name	=	0,
		fires_pos = 
		{
			[1] = 	{-0.664,	-0.496,	0},
			[2] = 	{0.173,	-0.307,	1.511},
			[3] = 	{0.173,	-0.307,	-1.511},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-4.899,	-0.212,	0.611},
			[9] = 	{-4.899,	-0.212,	-0.611},
			[10] = 	{-0.896,	1.118,	0},
			[11] = 	{0.445,	-0.436,	0},
		}, -- end of fires_pos
	}, -- end of [45]
	[47] = --c-17
	{
		M_empty	=	125645,
		M_nominal	=	193000,
		M_max	=	265350,
		M_fuel_max	=	132405,
		InternalCargo = {
			nominalCapacity = 56245,
			maximalCapacity = 77500,
			para_unit_point = 102, -- количество парашютистов
			unit_point = 102, 	   -- количество пехотинцув
			area = {15, 5.28, 3.96},-- внутренний объем грузовой кабины длинна, ширина, высота, м
			unit_block = {0.59, 1.32}-- габариты для размещения одного парашютиста, длинна, ширина, м
		},
		H_max	=	13715,
		average_fuel_consumption	=	0.2,
		CAS_min	=	54,
		V_opt	=	147.2,
		V_take_off	=	60,
		V_land	=	60,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-4.702,	-3.012,	4.3},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{14.09,	-2.99,	0},
		AOA_take_off	=	0.17,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	-1,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	194,
		V_max_h	=	180,
		tanker_type	=	1,
		wing_area	=	353,
		wing_span	=	51.76,
		thrust_sum_max	=	90000,
		thrust_sum_ab	=	90000,
		Vy_max	=	8,
		length	=	53.04,
		height	=	16.79,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.825,
		range	=	12993,
		RCS	=	80,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	3,
		IR_emission_coeff_ab	=	0,
		engines_count	=	4,
		wing_tip_pos = 	{-13.527,	4.161,	25.87},
		nose_gear_wheel_diameter	=	0.945,
		main_gear_wheel_diameter	=	1.114,
		engines_nozzles = 
		{
			{
				pos = 	{-2.988,	0.49,	-14.527},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 				
			}, 

			{
				pos = 	{-0.471,	1.099,	-7.93},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 				
			}, 
			{
				pos = 	{-0.471,	1.099,	7.93},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 				
			}, 
			{
				pos = 	{-2.988,	0.49,	14.527},
				elevation	=	0,
				diameter	=	1.085,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 				
			}, 
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.916,	0.986,	0},
                bailout_arg = -1,
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
                bailout_arg = -1,
			}, -- end of [2]
		}, -- end of crew_members
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{11.737,	4.251,	0},
		fires_pos = 
		{
			[1] = 	{-1.503,	3.288,	0},
			[2] = 	{-1.503,	3.288,	4.191},
			[3] = 	{-1.503,	3.288,	-4.191},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{2.538,	1.154,	7.93},
			[9] = 	{2.538,	1.154,	-7.93},
			[10] = 	{-0.868,	0.546,	14.527},
			[11] = 	{-0.868,	0.546,	-14.527},
		}, -- end of fires_pos
	}, -- end of [47]
	[48] = --su-17m4, Су-17М4
	{
		M_empty	=	10670,
		M_nominal	=	15230,
		M_max	=	19430,
		M_fuel_max	=	3770,
		H_max	=	15200,
		average_fuel_consumption	=	0.06,
		CAS_min	=	75,
		V_opt	=	174,
		V_take_off	=	100,
		V_land	=	79,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-1.691,	-1.637,	1.939},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{3.875,	-1.835,	0},
		AOA_take_off	=	0.14,
		stores_number	=	8,
		bank_angle_max	=	60,
		Ny_min	=	-2,
		Ny_max	=	5.9,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	375,
		V_max_h	=	510,
		wing_area	=	38.5,
		wing_span	=	13.68,
		wing_type = VARIABLE_GEOMETRY,
		thrust_sum_max	=	7800,
		thrust_sum_ab	=	11250,
		Vy_max	=	200,
		length	=	19.26,
		height	=	5.129,
		flaps_maneuver	=	1,
		Mach_max	=	1.7,
		range	=	1760,
		RCS	=	7,
		Ny_max_e	=	6,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.69,
		IR_emission_coeff_ab	=	3,
		engines_count	=	1,
		wing_tip_pos = 	{-4,	-0.2,	6.75},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-8.596,	0.216,	0},
				elevation	=	0,
				diameter	=	1,
				exhaust_length_ab	=	8.6,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     =   0.4,
			}, -- end of [1]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	44,
				pos = 	{4.2,	1.3,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	4,
		fires_pos = 
		{
			[1] = 	{0.458,	-0.559,	0},
			[2] = 	{-2.817,	-0.058,	3.362},
			[3] = 	{-3.529,	-0.07,	-3.594},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-7.596,	0.216,	0},
			[9] = 	{-7.596,	0.216,	0},
			[10] = 	{-1.462,	0.062,	2.28},
			[11] = 	{-1.462,	0.062,	-2.28},
		}, -- end of fires_pos
	}, -- end of [48]
	[49] = --mig-29g
	{
		M_empty = 10922, --11000 - unusable fuel 78kg 
		M_nominal	=	13240,
		M_max	=	19700,
		M_fuel_max	=	3376,
		H_max	=	18000,
		average_fuel_consumption	=	0.2743,
		CAS_min	=	60,
		V_opt	=	222,
		V_take_off	=	67,
		V_land	=	70,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		radar_can_see_ground	=	true,
		AOA_take_off	=	0.17,
		stores_number	=	7,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	8,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	416.7,
		V_max_h	=	680.6,
		wing_area	=	38.1,
		wing_span	=	11.36,
		thrust_sum_max	=	10160,
		thrust_sum_ab	=	16680,
		Vy_max	=	330,
		length	=	20.32,
		height	=	4.73,
		flaps_maneuver	=	1,
		Mach_max	=	2.3,
		range	=	1500,
		RCS	=	5,
		Ny_max_e	=	8,
		detection_range_max	=	160,
		IR_emission_coeff	=	0.77,
		IR_emission_coeff_ab	=	4,
		engines_count	=	2,
		wing_tip_pos = 	{-3.8,	0.14,	5.8},
		
		nose_gear_pos 								= {2.938,	-1.794,	0},
		nose_gear_amortizer_direct_stroke			= 0,  -- down from nose_gear_pos !!!
		nose_gear_amortizer_reversal_stroke			= 1.517 - 1.794,  -- up 
		nose_gear_amortizer_normal_weight_stroke	= -0.07,-- down from nose_gear_pos
		nose_gear_wheel_diameter					=	0.57,
		
		main_gear_pos 							 = {-0.678,-1.689,	1.544},
		main_gear_amortizer_direct_stroke		 = 0, --  down from main_gear_pos !!!
		main_gear_amortizer_reversal_stroke		 = 1.395 - 1.689, --  up 
		main_gear_amortizer_normal_weight_stroke = -0.1,-- down from main_gear_pos
		main_gear_wheel_diameter				 =	0.84,
		
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-5.534,	-0.063,	-0.909},
				elevation	=	-1.5,
				diameter	=	0.949,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.5,
				azimuth      = 2.5,
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-5.534,	-0.063, 0.909},
				elevation	=	-1.5,
				diameter	=	0.949,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.5,
				azimuth      = -2.5,
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	48,
				pos = 	{4.403,	1.209,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	4,
		fires_pos = 
		{
			[1] = 	{-1.36,	-0.185,	0},
			[2] = 	{-0.595,	0.294,	2.66},
			[3] = 	{-1.743,	0.234,	-3.769},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-4.471,	-0.059,	0.91},
			[9] = 	{-4.471,	-0.059,	-0.91},
			[10] = 	{-0.491,	0.629,	2.03},
			[11] = 	{-0.491,	-0.019,	0},
		}, -- end of fires_pos
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	0.999,	0.052},
				pos = 	{-0.937,	1.645,	-1.726},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	0.999,	-0.052},
				pos = 	{-0.937,	1.645,	1.726},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser
	}, -- end of [49]
	[50] = --mig-29c, МиГ-29С
	{
		M_empty = 11222, --11300 - unusable fuel 78kg 
		M_nominal	=	13240,
		M_max	=	19700,
		M_fuel_max	=	3493, --4450*0.785
		H_max	=	18000,
		average_fuel_consumption	=	0.2743,
		CAS_min	=	60,
		V_opt	=	222,
		V_take_off	=	67,
		V_land	=	70,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-0.68,	-1.525,	1.55},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{2.917,	-1.644,	0},
		AOA_take_off	=	0.17,
		stores_number	=	7,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	8,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	416.7,
		V_max_h	=	680.6,
		wing_area	=	38.1,
		wing_span	=	11.36,
		thrust_sum_max	=	10160,
		thrust_sum_ab	=	16680,
		Vy_max	=	330,
		length	=	20.32,
		height	=	4.73,
		flaps_maneuver	=	1,
		Mach_max	=	2.3,
		range	=	1500,
		RCS	=	5,
		Ny_max_e	=	8,
		detection_range_max	=	160,
		IR_emission_coeff	=	0.77,
		IR_emission_coeff_ab	=	4,
		engines_count	=	2,
		wing_tip_pos = 	{-3.8,	0.14,	5.8},
		nose_gear_wheel_diameter	=	0.57,
		main_gear_wheel_diameter	=	0.84,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-5.534,	-0.063,	-0.909},
				elevation	=	-1.5,
				diameter	=	0.949,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.5,
				azimuth      = 2.5,
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-5.534,	-0.063,	0.909},
				elevation	=	-1.5,
				diameter	=	0.949,
				exhaust_length_ab	=	8.629,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.5,
				azimuth      = -2.5,
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	47,
				pos = 	{4.403,	1.209,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	4,
		{
			[1] = 	{-1.36,	-0.185,	0},
			[2] = 	{-0.595,	0.294,	2.66},
			[3] = 	{-1.743,	0.234,	-3.769},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-4.471,	-0.059,	0.91},
			[9] = 	{-4.471,	-0.059,	-0.91},
			[10] = 	{-0.491,	0.629,	2.03},
			[11] = 	{-0.491,	-0.019,	0},
		}, -- end of fires_pos
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	0.999,	0.052},
				pos = 	{-0.937,	1.645,	-1.726},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	0.999,	-0.052},
				pos = 	{-0.937,	1.645,	1.726},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser
	}, -- end of [50]
	[51] = --su-24mr, Су-24МР
	{
		M_empty	=	22300,
		M_nominal	=	33325,
		M_max	=	39700,
		M_fuel_max	=	11700,
		H_max	=	17500,
		average_fuel_consumption	=	0.8937,
		CAS_min	=	70,
		V_opt	=	210,
		V_take_off	=	78,
		V_land	=	75,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-1.512,	-2.238,	1.89},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{7.016,	-2.454,	0},
		AOA_take_off	=	0.17,
		stores_number	=	5,
		bank_angle_max	=	60,
		Ny_min	=	-2,
		Ny_max	=	5.9,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	388.9,
		V_max_h	=	472,
		tanker_type	=	4,
		wing_area	=	55.17,
		wing_span	=	17.64,
		wing_type = VARIABLE_GEOMETRY,
		thrust_sum_max	=	15600,
		thrust_sum_ab	=	22400,
		Vy_max	=	200,
		length	=	24.53,
		height	=	4.97,
		flaps_maneuver	=	1,
		Mach_max	=	1.35,
		range	=	1200,
		RCS	=	7.5,
		Ny_max_e	=	6.5,
		detection_range_max	=	0,
		IR_emission_coeff	=	1.5,
		IR_emission_coeff_ab	=	5,
		engines_count	=	2,
		wing_tip_pos = 	{-3,	0.413,	8.9},	
		nose_gear_wheel_diameter	=	0.66,
		main_gear_wheel_diameter	=	0.943,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-9.417,	0.095,	-0.616},
				elevation	=	1.5,
				diameter	=	1.04,
				exhaust_length_ab	=	5,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.4, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-9.417,	0.095,	0.616},
				elevation	=	1.5,
				diameter	=	1.04,
				exhaust_length_ab	=	5,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.4, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	33,
                canopy_ejection_dir = {0.0, 1.0, 0.3},
                canopy_pos = {0, 0, 0},
				pos = {4.9, 0.475, 0.305},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	32,
                canopy_ejection_dir = {0.0, 1.0, -0.3},
                canopy_pos = {0, 0, 0},
				pos = {4.9, 0.475, -0.305},
                canopy_arg = 421,
                boarding_arg = 38,
			}, -- end of [2]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 9.0},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
            },
            Door1 = {
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 1}}}}},
            },
            HeadLights = {
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 51, "to", 0.0, "in", 5.0}, {"Arg", 208, "to", 0.0, "in", 2.0},},},},},
                {Transition = {"Any", "Off"},     Sequence = {{C = {{"Arg", 51, "to", 0.0, "in", 5.0}, {"Arg", 208, "to", 0.0, "in", 2.0},},},},},
                {Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 51, "to", 0.0, "in", 5.0}, {"Arg", 208, "to", 1.0, "in", 2.0},},},},},
                {Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 51, "to", 1.0, "in", 4.0}, {"Arg", 208, "to", 0.0, "in", 2.0},},},},},
            },
        }, -- end of mechanimations
		brakeshute_name	=	4,
		air_refuel_receptacle_pos = {7.610, 1.225, 0,035},--	{9.143,	1.142,	0},
		fires_pos = 
		{
			[1] = 	{-0.936,	-0.861,	0},
			[2] = 	{-0.454,	0.556,	1.272},
			[3] = 	{-0.454,	0.556,	-1.272},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-8.417,	0.095,	0.616},
			[9] = 	{-8.417,	0.095,	-0.616},
			[10] = 	{-1.763,	0.193,	1.47},
			[11] = 	{-1.763,	0.193,	-1.47},
		}, -- end of fires_pos
	}, -- end of [51]
	[52] = --f-16a
	{
		M_empty	=	8853,
		M_nominal	=	11000,
		M_max	=	19187,
		M_fuel_max	=	3104,
		H_max	=	15240,
		average_fuel_consumption	=	0.245,
		CAS_min	=	60,
		V_opt	=	220,
		V_take_off	=	65,
		V_land	=	68,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-0.846,	-1.579,	1.187},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{3.146,	-1.563,	0},
		AOA_take_off	=	0.16,
		stores_number	=	10,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	8,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	408,
		V_max_h	=	588.9,
		tanker_type	=	1,
		wing_area	=	28,
		wing_span	=	9.45,
		thrust_sum_max	=	8054,
		thrust_sum_ab	=	13160,
		Vy_max	=	250,
		length	=	14.52,
		height	=	5.02,
		flaps_maneuver	=	1,
		Mach_max	=	2,
		range	=	1500,
		RCS	=	4,
		Ny_max_e	=	8,
		detection_range_max	=	100,
		IR_emission_coeff	=	0.6,
		IR_emission_coeff_ab	=	3,
		engines_count	=	1,
		wing_tip_pos = 	{-2.704,	0.307,	4.649},
		nose_gear_wheel_diameter	=	0.443,
		main_gear_wheel_diameter	=	0.653,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.003,	0.261,	0},
				elevation	=	0,
				diameter	=	1.12,
				exhaust_length_ab	=	4,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.05, 
			}, -- end of [1]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	17,
				drop_canopy_name	=	23,
				canopy_pos			= {0,0,0},
				pos = 	{3.9,	1.4,	0},
			}, -- end of [1]
		}, -- end of crew_members
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{-0.051,	0.911,	0},
		fires_pos = 
		{
			[1] = 	{-0.707,	0.553,	-0.213},
			[2] = 	{-0.037,	0.285,	1.391},
			[3] = 	{-0.037,	0.285,	-1.391},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-5.003,	0.261,	0},
			[9] = 	{-5.003,	0.261,	0},
			[10] = 	{-0.707,	0.453,	1.036},
			[11] = 	{-0.707,	0.453,	-1.036},
		}, -- end of fires_pos
	}, -- end of [52]
	[53] = --fa-18c
	{
		M_empty		=	11631,
		M_nominal	=	16651,
		M_max		=	23541,
		M_fuel_max	=	4900,
		H_max		=	15240,
		average_fuel_consumption	=	0.85,
		CAS_min		=	62,
		V_opt		=	180,
		V_take_off	=	69,
		V_land		=	65,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos	= 	{-2.319,	-1.846,	1.57},
		radar_can_see_ground	=	true,
		nose_gear_pos	= 	{3.02,	-1.846,	0},
		AOA_take_off	=	0.16,
		stores_number	=	10,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	7,
		tand_gear_max	=	3.73,
		V_max_sea_level	=	361.1,
		V_max_h	=	541.7,
		tanker_type	=	2,
		wing_area	=	37,
		wing_span	=	11.43,
		wing_type = FOLDED_WING,
		thrust_sum_max	=	12000,
		thrust_sum_ab	=	19580,
		Vy_max	=	254,
		length	=	17.07,
		height	=	4.66,
		flaps_maneuver	=	1,
		Mach_max	=	1.8,
		range	=	1520,
		RCS	=	5,
		Ny_max_e	=	7.5,
		detection_range_max	=	160,
		IR_emission_coeff	=	0.73,
		IR_emission_coeff_ab	=	4.0,
		engines_count	=	2,
		wing_tip_pos = 	{-2.466,	0.115,	5.73},
		nose_gear_wheel_diameter	=	0.566,
		main_gear_wheel_diameter	=	0.778,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-8.005,	-0.003,	-0.48},
				elevation	=	-1.5,
				diameter	=	0.765,
				exhaust_length_ab	=	4,
				exhaust_length_ab_K	=	0.707,
				smokiness_level     = 	0.05, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-8.005,	-0.003,	0.48},
				elevation	=	-1.5,
				diameter	=	0.765,
				exhaust_length_ab	=	4,
				exhaust_length_ab_K	=	0.707,
				smokiness_level     = 	0.05, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	17,
				drop_canopy_name	=	24,
                canopy_pos = {3.8, 0.16, 0},
				pos = 	{3.755,	0.4,	0},
			}, -- end of [1]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 9.0},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.0},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
            },
            FoldableWings = {
                {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"Arg", 8, "to", 0.0, "in", 5.0}}}}, Flags = {"Reversible"}},
                {Transition = {"Extend", "Retract"}, Sequence = {{C = {{"Arg", 8, "to", 1.0, "in", 15.0}}}}, Flags = {"Reversible", "StepsBackwards"}},
            },
            LaunchBar = {
                {Transition = {"Retract", "Extend"}, Sequence = {{C = {{"ChangeDriveTo", "HydraulicGravityAssisted"}, {"VelType", 2}, {"Arg", 85, "to", 1.0, "in", 4.5}}}}},
                {Transition = {"Extend", "Retract"}, Sequence = {{C = {{"ChangeDriveTo", "Hydraulic"}, {"VelType", 2}, {"Arg", 85, "to", 0.0, "in", 4.5}}}}},
                {Transition = {"Retract", "Stage"},  Sequence = {{C = {{"ChangeDriveTo", "HydraulicGravityAssisted"}, {"VelType", 2}, {"Arg", 85, "to", 0.745, "in", 4.0}}}}},
                {Transition = {"Stage", "Retract"},  Sequence = {{C = {{"ChangeDriveTo", "Hydraulic"}, {"VelType", 2}, {"Arg", 85, "to", 0.0, "in", 4.0}}}}},
                {Transition = {"Extend", "Stage"},   Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 1.0, "to", 0.745, "in", 1.0}}}}},				
				{Transition = {"Stage", "Pull"},     Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 0.745, "to", 0.743, "in", 1.0}}}}},
                {Transition = {"Stage", "Extend"},   Sequence = {{C = {{"ChangeDriveTo", "Mechanical"}, {"Arg", 85, "from", 0.745, "to", 1.0, "in", 0.2}}}}},
            },
        }, -- end of mechanimations
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{6.731,	0.825,	0.492},
		fires_pos = 
		{
			[1] = 	{-0.232,	0.262,	0},
			[2] = 	{-2.508,	0.08,	3.094},
			[3] = 	{-2.815,	0.056,	-3.639},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-7.128,	0.039,	0.5},
			[9] = 	{-7.728,	0.039,	-0.5},
			[10] = 	{-7.728,	0.039,	0.5},
			[11] = 	{-7.728,	0.039,	-0.5},
		}, -- end of fires_pos
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{-1.185,	-1.728,	-0.878},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{-1.185,	-1.728,	0.878},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser
	}, -- end of [53]
	[54] = --su-25t, Су-25Т
	{
		M_empty	=	11496.4,
		M_nominal	=	14150,
		M_max	=	19500,
		M_fuel_max	=	3790,
		H_max	=	10000,
		average_fuel_consumption	=	0.25,
		CAS_min	=	64,
		V_opt	=	180,
		V_take_off	=	72,
		V_land	=	68,
		has_afteburner	=	false,
		has_speedbrake	=	true,
		main_gear_pos = 	{-0.714,	-2.009,	1.352},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{2.808,	-2.15,	0},
		AOA_take_off	=	0.192,
		stores_number	=	11,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	5.9,
		tand_gear_max	=	3.73,
		V_max_sea_level	=	292,
		V_max_h	=	271,
		wing_area	=	30.1,
		wing_span	=	14.36,
		thrust_sum_max	=	9856,
		thrust_sum_ab	=	9856,
		Vy_max	=	60,
		length	=	15.35,
		height	=	5.2,
		flaps_maneuver	=	1,
		Mach_max	=	0.82,
		range	=	2250,
		RCS	=	7,
		Ny_max_e	=	6.5,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.7,
		IR_emission_coeff_ab	=	0,
		engines_count	=	2,
		wing_tip_pos = 	{-2.7,	-0.111,	7.3},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-3.793,	-0.391,	-0.716},
				elevation	=	0,
				diameter	=	0.6,
				exhaust_length_ab	=	8.631,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-3.793,	-0.391,	0.716},
				elevation	=	0,
				diameter	=	0.6,
				exhaust_length_ab	=	8.631,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	49,
                canopy_pos = {3.41, 0, 0},
				pos = 	{3.029,	-0.092,	0},
			}, -- end of [1]
		}, -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 1.96},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 1.87},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
            },
            HeadLights = {
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 208, "to", 0.0, "in", 0.3}, {"Arg", 209, "to", 0.0, "in", 0.3},},},},},
                {Transition = {"Any", "Off"},     Sequence = {{C = {{"Arg", 208, "to", 0.0, "in", 0.3}, {"Arg", 209, "to", 0.0, "in", 0.3},},},},},
                {Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 208, "to", 1.0, "in", 0.3}, {"Arg", 209, "to", 1.0, "in", 0.3},},},},},
                {Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 208, "to", 1.0, "in", 0.3}, {"Arg", 209, "to", 1.0, "in", 0.3},},},},},
            },
        }, -- end of mechanimations
		brakeshute_name	=	4,
		fires_pos = 
		{
			[1] = 	{-3.084,	-0.595,	-0.112},
			[2] = 	{-0.82,	0.275,	1.274},
			[3] = 	{-0.82,	0.275,	-1.274},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-3.332,	-0.358,	0.7284},
			[9] = 	{-3.332,	-0.358,	-0.728},
			[10] = 	{-1.573,	0.145,	-2.172},
			[11] = 	{-1.924,	-0.04,	-1.934},
		}, -- end of fires_pos
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	1,	0},
				pos = 	{-3.677,	1.012,	-0.859},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	1,	0},
				pos = 	{-3.677,	1.012,	0.859},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser
	}, -- end of [54]
	[55] = --rq-1a
	{
		M_empty	=	430,
		M_nominal	=	800,
		M_max	=	1020,
		M_fuel_max	=	490,
		H_max	=	7620,
		average_fuel_consumption	=	0.06,
		CAS_min	=	20,
		V_opt	=	33.333333333333,
		V_take_off	=	20.833333333333,
		V_land	=	20.833333333333,
		has_afteburner	=	false,
		has_speedbrake	=	false,
        undercarriage_transmission = "Magnetic",
		main_gear_pos = 	{-0.11,	-1.608,	1.337},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{2.682,	-1.608,	0},
		AOA_take_off	=	0.034904013961606,
		stores_number	=	2,
		bank_angle_max	=	30,
		Ny_min	=	-1,
		Ny_max	=	2,
		tand_gear_max	=	0.08748,
		V_max_sea_level	=	72.222222222222,
		V_max_h	=	138.88888888889,
		wing_area	=	14.2,
		wing_span	=	14.8,
		thrust_sum_max	=	240,
		thrust_sum_ab	=	240,
		Vy_max	=	2,
		length	=	8.13,
		height	=	2.21,
		flaps_maneuver	=	1,
		Mach_max	=	0.4,
		range	=	1111.2,
		RCS	=	0.65,
		Ny_max_e	=	3,
		detection_range_max	=	10000,
		IR_emission_coeff	=	0.01,
		IR_emission_coeff_ab	=	0,
		engines_count	=	1,
		wing_tip_pos = 	{0,	0,	7.4},
		nose_gear_wheel_diameter	=	0.35,
		main_gear_wheel_diameter	=	0.35,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.5,	0,	0},
				elevation	=	0,
				diameter	=	0.4,
				exhaust_length_ab	=	0.4,
				exhaust_length_ab_K	=	0,
			}, -- end of [1]
		}, -- end of engines_nozzles
	}, -- end of [55]
	[56] = --tornado ids
	{
		M_empty	=	14090,
		M_nominal	=	20000,
		M_max	=	26490,
		M_fuel_max	=	4663,
		H_max	=	15200,
		average_fuel_consumption	=	0.61,
		CAS_min	=	55,
		V_opt	=	120,
		V_take_off	=	59,
		V_land	=	59,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-1.323,	-2.107,	1.541},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{3.821,	-2.107,	0},
		AOA_take_off	=	0.16,
		stores_number	=	14,
		bank_angle_max	=	60,
		Ny_min	=	-2,
		Ny_max	=	7.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	306,
		V_max_h	=	650,
		wing_area	=	36.5,
		wing_span	=	13.91,
		wing_type = VARIABLE_GEOMETRY,
		thrust_sum_max	=	8160,
		thrust_sum_ab	=	14520,
		Vy_max	=	250,
		length	=	16.7,
		height	=	5.7,
		flaps_maneuver	=	1,
		Mach_max	=	2.2,
		range	=	2780,
		RCS	=	4,
		Ny_max_e	=	7.5,
		detection_range_max	=	150,
		IR_emission_coeff	=	0.6,
		IR_emission_coeff_ab	=	2.2,
		engines_count	=	2,
		wing_tip_pos = 	{-2.5,	0,	6.75},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.45,	0.099,	-0.483},
				elevation	=	0,
				diameter	=	0.818,
				exhaust_length_ab	=	4,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-6.45,	0.099,	0.483},
				elevation	=	0,
				diameter	=	0.818,
				exhaust_length_ab	=	4,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = common_canopy_twin_seater(
		{
			[1] = 
			{
				ejection_seat_name	=	9,
				drop_canopy_name	=	39,
				pos = 	{3.34,	1.102,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	9,
				pos = 	{1.935,	1.102,	0},
			}, -- end of [2]
		}), -- end of crew_members
		brakeshute_name	=	0,
		fires_pos = 
		{
			[1] = 	{-0.095,	-0.798,	0},
			[2] = 	{-1.4,	0.721,	0.797},
			[3] = 	{-0.825,	0.738,	-0.683},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-5.432,	0.099,	0.483},
			[9] = 	{-5.432,	0.099,	-0.483},
			[10] = 	{-0.14,	0.67,	1.45},
			[11] = 	{-0.14,	0.23,	-1.45},
		}, -- end of fires_pos
	}, -- end of [56]
	[57] = --yak-40, Як-40
	{
		M_empty	=	9030,
		M_nominal	=	13000,
		M_max	=	14850,
		M_fuel_max	=	3080,
		H_max	=	11000,
		average_fuel_consumption	=	0.2,
		CAS_min	=	42,
		V_opt	=	145,
		V_take_off	=	60,
		V_land	=	50,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-0.724,	-1.98,	2.157},
		radar_can_see_ground	=	false,
		nose_gear_pos = 	{6.546,	-1.894,	0},
		AOA_take_off	=	0.15,
		stores_number	=	0,
		bank_angle_max	=	54,
		Ny_min	=	0.5,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	140,
		V_max_h	=	167,
		wing_area	=	70,
		wing_span	=	25,
		thrust_sum_max	=	44100,
		thrust_sum_ab	=	44100,
		Vy_max	=	9,
		length	=	20.36,
		height	=	6.5,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.65,
		range	=	900,
		RCS	=	50,
		Ny_max_e	=	3.4,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.5,
		IR_emission_coeff_ab	=	0,
		engines_count	=	3,
		wing_tip_pos = 	{-0.295,	0.765,	12.521},
		nose_gear_wheel_diameter	=	0.72,
		main_gear_wheel_diameter	=	1.1,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-5.039,	0.813,	-1.79},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-5.039,	0.813,	1.79},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, -- end of [2]
			[3] = 
			{
				pos = 	{-8.03,	1.274,	0},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.3, 
			}, -- end of [3]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.0,	0.0,	-0.8},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.0,	0.0,	0.8},
			}, -- end of [2]
		}, -- end of crew_members
        mechanimations = {
            HeadLights = {
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 51, "to", 0.0, "in", 1.0},},},},},
                {Transition = {"Any", "Off"},     Sequence = {{C = {{"Arg", 51, "to", 0.0, "in", 1.0},},},},},
                {Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 51, "to", 1.0, "in", 1.0},},},},},
                {Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 51, "to", 1.0, "in", 1.0},},},},},
            },
        }, -- end of mechanimations
		fires_pos = 
		{
			[1] = 	{-0.589,	0.7,	0},
			[2] = 	{-0.295,	0.7,	8},
			[3] = 	{-0.295,	0.7,	-8},
			[4] = 	{-0.295,	0.7,	4},
			[5] = 	{-0.295,	0.7,	-4},
			[6] = 	{-0.295,	0.7,	6},
			[7] = 	{-0.295,	0.7,	-6},
			[8] = 	{-3.887,	0.801,	1.921},
			[9] = 	{-3.887,	0.801,	-1.921},
			[10] = 	{-6.476,	1.261,	0},
			[11] = 	{-6.476,	1.261,	0},
		}, -- end of fires_pos
	}, -- end of [57]
	[58] = --a-10c
	{
		-- Moved to CoreMods
	}, -- end of [58]
	[59] = --f-15e
	{
		M_empty	=	17072,
		M_nominal	=	28440,
		M_max	=	36741,
		M_fuel_max	=	10246,
		H_max	=	18300,
		average_fuel_consumption	=	0.271,
		CAS_min	=	58,
		V_opt	=	220,
		V_take_off	=	61,
		V_land	=	71,
		has_afteburner	=	true,
		has_speedbrake	=	true,
		main_gear_pos = 	{-0.773,	-2.24,	1.371},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{4.659,	-2.24,	0},
		AOA_take_off	=	0.16,
		stores_number	=	12,
		bank_angle_max	=	60,
		Ny_min	=	-3,
		Ny_max	=	8,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	403,
		V_max_h	=	736.11,
		tanker_type	=	1,
		wing_area	=	56.5,
		wing_span	=	13.05,
		thrust_sum_max	=	13347,
		thrust_sum_ab	=	21952,
		Vy_max	=	275,
		length	=	19.43,
		height	=	5.63,
		flaps_maneuver	=	1,
		Mach_max	=	2.5,
		range	=	2540,
		RCS	=	5,
		Ny_max_e	=	8,
		detection_range_max	=	250,
		IR_emission_coeff	=	0.91,
		IR_emission_coeff_ab	=	4,
		engines_count	=	2,
		wing_tip_pos = 	{-3.9,	0.2,	6.6},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-6.751,	0.067,	-0.705},
				elevation	=	0,
				diameter	=	1.076,
				exhaust_length_ab	=	5.8,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-6.751,	0.067,	0.705},
				elevation	=	0,
				diameter	=	1.076,
				exhaust_length_ab	=	5.8,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [2]
		}, -- end of engines_nozzles
		crew_members = common_canopy_twin_seater({
			{
				pos 				= {6.277,	1.198,	0},
				ejection_seat_name	= 17,
				drop_canopy_name	= 59,
				canopy_pos			= {0,0,0}
			}, -- end of [1]
			{
				pilot_body_arg		= 472,
				ejection_seat_name	= 17,
				pos 				= {4.327,	1.198,	0},
			}, -- end of [2]
		}), -- end of crew_members
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 8.08},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.743},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
            },
            Door1 = {DuplicateOf = "Door0"},
            CrewLadder = {
                {Transition = {"Dismantle", "Erect"}, Sequence = {{C = {{"Arg", 91, "to", 0.9, "in", 1.5}}}, {C = {{"Sleep", "for", 5.0}}}}, Flags = {"Reversible"}},
                {Transition = {"Erect", "Dismantle"}, Sequence = {{C = {{"Arg", 91, "to", 0.0, "in", 2.7}}}, {C = {{"Sleep", "for", 0.0}}}}, Flags = {"Reversible", "StepsBackwards"}},
            },
        }, -- end of mechanimations
		brakeshute_name	=	0,
		air_refuel_receptacle_pos = 	{1.39,	0.41,	-1.66},
		fires_pos = 
		{
			[1] = 	{-1.842,	0.563,	0},
			[2] = 	{-1.644,	0.481,	2.87},
			[3] = 	{-1.389,	0.461,	-3.232},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-5.753,	0.06,	0.705},
			[9] = 	{-5.753,	0.06,	-0.705},
			[10] = 	{-0.992,	0.85,	0},
			[11] = 	{-1.683,	0.507,	-2.91},
		}, -- end of fires_pos
		chaff_flare_dispenser = 
		{
			[1] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{1.158,	-1.77,	-0.967},
			}, -- end of [1]
			[2] = 
			{
				dir = 	{0,	-1,	0},
				pos = 	{1.158,	-1.77,	0.967},
			}, -- end of [2]
		}, -- end of chaff_flare_dispenser
	}, -- end of [59]
	[60] = --kc-135
	{
		M_empty	=	44663,
		M_nominal	=	100000,
		M_max	=	146000,
		M_fuel_max	=	90700,
		H_max	=	12000,
		average_fuel_consumption	=	0.1893,
		CAS_min	=	54,
		V_opt	=	220,
		V_take_off	=	58,
		V_land	=	61,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-2.293,	-3.761,	4.147},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{17.671,	-3.665,	0},
		AOA_take_off	=	0.14,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	0.5,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	280.28,
		V_max_h	=	280.28,
		tanker_type	=	1,		
		wing_area	=	226,
		wing_span	=	40,
		thrust_sum_max	=	38100,
		thrust_sum_ab	=	38100,
		Vy_max	=	10,
		length	=	46.61,
		height	=	12.93,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.9,
		range	=	12247,
		RCS	=	80,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	4,
		IR_emission_coeff_ab	=	0,
		engines_count	=	4,
		wing_tip_pos = 	{-10,	0.46,	19.8},
		nose_gear_wheel_diameter	=	0.754,
		main_gear_wheel_diameter	=	0.972,
		engines_nozzles = 
		{

			{
				pos = 	{-5.024,	-1.353,	-13.986},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 
			}, 	
			{
				pos = 	{-0.347,	-1.875,	8.138},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 
			}, 	
			{
				pos = 	{-0.347,	-1.875,	-8.138},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 
			}, 
			{
				pos = 	{-5.024,	-1.353,	13.986},
				elevation	=	0,
				diameter	=	1.523,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 
			}, 

		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.916,	0.986,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [3]
			[4] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [4]
		}, -- end of crew_members
		brakeshute_name	=	0,
		is_tanker				=	1, -- BOOM_AND_RECEPTACLE
		refueling_points_count	=	1,
		refueling_points = 
		{
			[1] =  { pos =  {-23.029,	-5.65,	0}, clientType = 3 }
		}, -- end of refueling_points
		air_refuel_receptacle_pos = 	{13.32,	1.16,	0},
		fires_pos = 
		{
			[1] = 	{-0.138,	-0.79,	0},
			[2] = 	{-0.138,	-0.79,	5.741},
			[3] = 	{-0.138,	-0.79,	-5.741},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-0.347,	-1.875,	8.138},
			[9] = 	{-0.347,	-1.875,	-8.138},
			[10] = 	{-5.024,	-1.353,	13.986},
			[11] = 	{-5.024,	-1.353,	-13.986},
		}, -- end of fires_pos
	}, -- end of [60]
} -- end of PlaneConst

for index, plane in pairs(PlaneConst) do
	if plane.wing_span ~= nil or plane.length ~= nil then 
		plane.bigParkingRamp = plane.wing_span > 19 or plane.length > 40
	end
end