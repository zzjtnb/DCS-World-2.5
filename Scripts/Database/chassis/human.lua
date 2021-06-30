-- any human like manpad or AK soldier
GT_t.CH_t.HUMAN = {
    life = 0.08,
    mass = 90,
    length = 1,
    width = 1,
    max_road_velocity = 4,
    max_slope = 1.0,
    engine_power = 0.5,
	fordingDepth = 1.0,
    max_vert_obstacle = 1,
    max_acceleration = 3.0,
    min_turn_radius = 0.1,
    X_gear_1 = 0.3,
    Y_gear_1 = 0,
    Z_gear_1 = 0.0,
    X_gear_2 = 0.0,
    Y_gear_2 = 0,
    Z_gear_2 = 0.0,
	gear_type = GT_t.GEAR_TYPES.HUMAN,
    r_max = 0.53,
    armour_thickness = 0,
	human_figure = true,
}
-- Human animation params

GT_t.CH_t.HUMAN_ANIMATION = {
	walk = {
		argument = 5,
		start_distance = 0.42,
		start_begin = 0.0,
		start_end = 0.050,
		cycle_distance = 1.3,
		cycle_begin = 0.050,
		cycle_end = 0.150,
		stop_distance = 0.38,
		stop_begin = 0.150,
		stop_end = 0.206,
		to_run_distance = 1.8,
		to_run_begin = 0.213,
		to_run_end = 0.286,
	};
	
	run = {
		bot_argument = 6,
		human_argument = 7,
		start_distance = 0.7,
		start_begin = 0.0,
		start_end = 0.043,
		cycle_distance = 2.3,
		cycle_begin = 0.043,
		cycle_end = 0.113,
		stop_distance = 1.1,
		stop_begin = 0.113,
		stop_end = 0.200,
		to_walk_distance = 1.5,
		to_walk_begin = 0.214,
		to_walk_end = 0.285,
	};
	
	dead = {
		argument = 8,
		start_animation = 0.0,
		end_animation = 0.250,
		animation_time = 2.5,
	};
	
	breath = {
		argument = 15,
		start_animation = 0.0,
		end_animation = 1.0,
		animation_time = 10.0,
	};
	
	idle = {
		argument = 16,
		left_right_start = 0.0,
		left_right_end = 0.5,
		to_left_start = 0.5,
		to_left_end = 0.77,
		to_right_start = 0.77,
		to_right_end = 1.0,
	};
}

-- Human animation params