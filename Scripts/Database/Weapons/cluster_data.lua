function cluster_desc(type_, level3, data, out)

	local res = out or { } 
	
	res.model	  = ""
	res.mass  	  = 0
	res.char_time = 0
		
	copy_origin(res,data)
	
	dbtype("wAmmunition",res)

	local cluster_scheme = "schemes/cluster/"..data.cluster_scheme..".sch";
	
	res.server = 
	{
		scheme = cluster_scheme;
		warhead = {fantom = 0; }
	}

	res.client = 
	{
		scheme = cluster_scheme;
		warhead = {fantom = 1; }
	}
	
	copy_recursive(res.server, data.scheme);
	copy_recursive(res.client, data.scheme);
	
	if res.server.warhead2 ~= nil then
	res.server.warhead2.fantom = 0;
	end
	if res.client.warhead2 ~= nil then
	res.client.warhead2.fantom = 1;
	end
		
	if type(type_) == "table" then 
		res.ws_type		 = type_;
	else
		res.ws_type		 = {wsType_Weapon, wsType_Bomb, level3, _G[type_] };
	end
	
	res.name 		 = data.name;
	res.display_name = data.name;
	res.type_name 	 = data.type_name;
	
	return res
end

function combine_cluster(a, b, cluster_scheme)
	local res;
	res = {};
	
	a.scheme.cluster.I = a.scheme.cluster.I or calcIyz(a.scheme.cluster.mass, a.scheme.cluster.L, 0)
	a.scheme.cluster.Ma = a.scheme.cluster.Ma or calcMa(a.scheme.cluster.I, a.scheme.cluster.L, calcS(a.scheme.cluster.caliber), 100)
	a.scheme.cluster.Mw = a.scheme.cluster.Mw or calcMw(a.scheme.cluster.I, a.scheme.cluster.L, calcS(a.scheme.cluster.caliber))
	
	a.scheme.warhead.caliber = a.scheme.cluster.caliber * 1000 --mm
	
	copy_recursive(res, a);
	copy_recursive(res.scheme, b);
	res.cluster_scheme = cluster_scheme or "cluster";
	
	return res;
end


PTAB_2_5_DATA = -- KMGU
{
	scheme = 
	{
		cluster = 
		{
			mass 		= 2.8,	
			caliber 	= 0.068,	
			cx_coeff	= {1,0.39,0.38,0.236,1.31},
			L			= 0.332,
			I			= 0.025719,
			Ma			= 0.137484,
			Mw			= 1.208365,

			model_name  = "PTAB-2_5KO"
		},
		
		warhead = warheads["PTAB-2-5"],
	},

	name    = _("PTAB-2-5"),
	type_name = _("cluster"),
};


Cluster_MLRS_DATA = --cluster MLRS
{
	scheme = 
	{
		cluster = 
		{
			mass 		= 2.8,	
			caliber 	= 0.068,	
			cx_coeff	= {1,0.39,0.38,0.236,1.31},
			L			= 0.332,
			I			= 0.025719,
			Ma			= 0.137484,
			Mw			= 1.208365,

			model_name  = "PTAB-2_5KO"
		},
		
		warhead = warheads["Cluster_M77"], 
	},

	name    = _("M77 submunitions"),
	type_name = _("cluster"),
};


Cluster_SMERCH_DATA = --cluster SMERCH
{
	scheme = 
	{
		cluster = 
		{
			mass 		= 2.8,	
			caliber 	= 0.068,	
			cx_coeff	= {1,0.39,0.38,0.236,1.31},
			L			= 0.332,
			I			= 0.025719,
			Ma			= 0.137484,
			Mw			= 1.208365,

			model_name  = "PTAB-2_5KO"
		},
		
		warhead = warheads["Cluster_9N235"], 
	},

	name    = _("9N235 submunitions"),
	type_name = _("cluster"),
};


PTAB_10_5_DATA = -- RBK-500
{
	scheme = 
	{
		cluster = 
		{
			mass            = 4.600000,
			caliber         = 0.080000,
			cx_coeff        = {1.000000, 0.390000, 0.380000, 0.236000, 1.310000},
			L               = 0.400000,
			I               = 0.061333,
			Ma              = 0.196612,
			Mw              = 0.722107,
			
			model_name 	= "PTAB-2_5KO",
		},
	
		warhead = warheads["PTAB-10-5"],
	},
	
	name    = _("PTAB-10-5"),
	type_name = _("cluster"),
};

AO_2_5_DATA =
{
	scheme = 
	{
		cluster = 
		{
			mass 		= 2.8,	
			caliber 	= 0.068,	
			cx_coeff	= {1,0.39,0.38,0.236,1.31},
			L			= 0.332,
			I			= 0.025719,
			Ma			= 0.137484,
			Mw			= 0.208365,
			
			model_name  = "AO-2_5RT",
		},
		
		warhead = simple_warhead(3.0),
	},
	
	name    = _("AO-2-5"),
	type_name = _("cluster"),
};

MK118_DATA = -- Mk-20 CBU
{
	scheme = 
	{
		cluster =
		{
				mass            = 0.590000,
				caliber         = 0.053000,
				cx_coeff        = {1.000000, 0.390000, 0.380000, 0.236000, 1.310000},
				L               = 0.343000,
				I               = 0.005784,
				Ma              = 0.049268,
				Mw              = 0.211020,
				
				model_name	    = "mk-118",
		},
		
		warhead = warheads["MK118"],
	},

	name    = _("Mk 118"),
	type_name = _("cluster"),
}

BLU61_DATA =
{
	scheme = 
	{
		cluster =
		{
			mass 			= 2.8,	
			caliber 		= 0.068,	
			cx_coeff		= {1,0.39,0.38,0.236,1.31},
			L				= 0.332,
			I				= 0.025719,
			Ma              = 0.049268,
			Mw              = 0.211020,
			model_name	    = "RBK_500_SHOAB_bomb",
		},
		
		warhead = warheads["BLU_61"],
	},

	name    = _("BLU-61"),
	type_name = _("cluster"),
}

BLU97B_DATA = 
{
	scheme = 
	{
		cluster =
		{
				mass            = 1.540000,
				caliber         = 0.063000,
				cx_coeff        = {1.000000, 0.390000, 0.380000, 0.236000, 1.310000},
				L               = 1.68000,
			
				model_name	    = "PTAB-2_5KO",
		},
		
		warhead = simple_warhead(2.0),
	},

	name    = _("BLU-97B"),
	type_name = _("cluster"),
}


CBU97_CLUSTER_SCHEME_DATA = 
{
	panel1 =
	{
		op_time					= 50,
		wind_sigma				= 5,
		impulse_sigma			= 1,
		moment_sigma			= 10,
		mass					= 15,
		caliber					= 0.1,
		L						= 2.3552,
		I						= 6,
		Ma						= 0.5,
		Mw						= 1,
		cx_coeff				= {1, 0.4,0.4,0.3,1.4},
		model_name				= "cbu97_panel1",
		init_pos				= {{0,0,0}},
		init_impulse			= {{0, 14.14, 0}},
	},
	
	panel2 =
	{
		op_time					= 50,
		wind_sigma				= 5,
		impulse_sigma			= 1,
		moment_sigma			= 10,
		mass					= 15,
		caliber					= 0.1,
		L						= 2.3552,
		I						= 6,
		Ma						= 0.5,
		Mw						= 1,
		cx_coeff				= {1, 0.4,0.4,0.3,1.4},
		model_name				= "cbu97_panel2",
		init_pos				= {{0,0,0}},
		init_impulse			= {{0, -10, -10}},
	},
	
	panel3 =
	{
		op_time					= 50,
		wind_sigma				= 5,
		impulse_sigma			= 1,
		moment_sigma			= 10,
		mass					= 15,
		caliber					= 0.1,
		L						= 2.3552,
		I						= 6,
		Ma						= 0.5,
		Mw						= 1,
		cx_coeff				= {1, 0.4,0.4,0.3,1.4},
		model_name				= "cbu97_panel3",
		init_pos				= {{0,0,0}},
		init_impulse			= {{0, 14.14, 0}},
	},
	
	dispenser = 
	{
		op_time					= 9000,
		wind_sigma				= 20,
		impulse_sigma			= 1,
		moment_sigma			= 1,
		mass					= 360,
		caliber					= 0.45,
		L						= 2.5,
		I						= 100,
		Ma						= 0.228,
		Mw						= 2.33,
		cx_coeff				= {1, 1, 1, 1, 2},
		model_name				= "cbu97_shaft",
		set_start_args			= {0,12,13},
		spawn_args_change		= {{1,12,0},{1,1,0.6}},
		spawn_time				= {0.02, 0.22, 0.42},
		spawn_weight_loss		= {0, 150, 150},
		spawm_args_change		= {{1,1,1},{1,12,0},{2,2,1}},
		op_spawns				= 3,
	},
	
	empty_dispenser = 
	{
		op_time					= 50,
		wind_sigma				= 5,
		impulse_sigma			= 1,
		moment_sigma			= 1,
		mass					= 45,
		caliber					= 0.45,
		L						= 2.5,
		I						= 2,
		Ma						= 0.03,
		Mw						= 0.3,
		cx_coeff				= {1, 1, 1, 1, 2},
		model_name				= "cbu97_shaft",
		set_start_args			= {0, 1, 2},
		spawn_options			= {{2, 2, 1}},
	},
	
	BLU_108 =
	{
		op_time					= 9000,
		count					= 10,
		effect_count			= 10,
		wind_sigma				= 5,
		impulse_sigma			= 1,
		moment_sigma			= 2,
		mass					= 29.5,
		caliber					= 0.133,
		L						= 0.7,
		I						= 2.4,
		Ma						= 0.90985,
		Mw						= 1.67549,
		cx_coeff				= {1, 0.39, 0.38, 0.236, 1.31},
		model_name				= "cbu97_blu108",
		set_start_args			= {13},
		connectors_model_name	= "cbu97_shaft",
		explosion_impulse_coeff	= 42,
		explosion_center		= {{0.36,0,0},{-0.44,0,0}},
		release_rnd_coeff		= 5,
		chute_open_time			= 0.3,
		chute_diam				= 2,
		chute_Cx				= 1.2,
		chute_rnd_coeff			= 0.3,
		spawn_options			= {{0,1,5},{0,2,5}},
			
		submunition_engine_impulse			= 60,
		submunition_engine_fuel_mass		= 0.1,
		submunition_engine_work_time		= 0.22,
		submunition_engine_rotation_moment	= 9,
		submunition_engine_start_height		= 32,
		skeets_release_delay				= 1.05,
		skeets_in_seq_release_delay			= 0.02,
		main_chute_open_speed				= 4,
		extr_chute_max_diam					= 0.3,
		opening_speed_k						= 2,
		jump_error_sum						= 440,
	},
	
	BLU_108_panel =
	{
		op_time 				= 50,
		wind_sigma				= 5,
		impulse_sigma			= 1,
		moment_sigma			= 1,
		mass					= 5,
		caliber					= 0.1,
		L						= 1,
		I						= 1,
		Ma						= 0.5,
		Mw						= 1,
		cx_coeff				= {1, 0.4, 0.4, 0.4, 1.4},
		model_name				= "cbu97_blu108_panel",
		init_pos				= {{0,0,0}},
		init_impulse			= {{0,125,0}},
		spawn_options			= {{0,1,1}},
	},
	
	skeet = 
	{
		op_time					= 9000,
		count					= 4,
		effect_count			= 4,
		wind_sigma				= 1,
		impulse_sigma			= 1,
		moment_sigma			= 1,
		mass					= 5,
		caliber					= 0.1,
		L						= 1,
		I						= 1,
		Ma						= 1,
		Mw						= 1,
		cx_coeff				= {1, 0.4, 0.4, 0.4, 1.4},
		model_name				= "cbu97_skeet",
		init_pos				= {{0.02,-0.15,0},{0.02,0.15,0},{0.25,-0.15,0},{0.25,0.15,0}},
		omega_impulse_coeff		= 3.6,
		release_rnd_coeff		= 12,
		set_start_args			= 10,
		spawm_options			= {{2,2,1},{3,3,1},{4,4,1},{5,5,1}},
			
		shell_model_name		= "shell",
		seeker_local_point		= {{0.05, -0.07, 0}},
		seeker_rotation_point	= {0, 0, 0},
		seeker_max_angle		= 0.392699,
		seeker_max_range		= 160,
		seeker_activation_time	= 0.3,
		shot_error				= 0.05,
		aim_lock_efficiency		= 0.66,
		shell_speed				= 500,
	},
	warhead = warheads["CBU97"],
}

HEAT_DATA =  -- BL-775
{
	scheme = 
	{
		cluster =
		{
				mass            = 0.590000,
				caliber         = 0.053000,
				cx_coeff        = {1.000000, 0.390000, 0.380000, 0.236000, 1.310000},
				L               = 0.343000,
				I               = 0.005784,
				Ma              = 0.049268,
				Mw              = 0.211020,
				
				model_name	    = "PTAB-2_5KO",
		},
		
		warhead = warheads["HEAT"],
	},

	name    = _("HEAT"),
	type_name = _("cluster"),
}



-- old data , still used
Cluster =
{
[94] = {
		prelaunch_time		= 0.6,
		block_unload_time	= 0.2,
		blocks_count		= 8,
		elements_in_block	= 12,
		element				= 65, -- AO_2_5RT 
		element_void		= 67
	}, -- KMGU_2_AO_2_5RT
[95] = {
		prelaunch_time		= 0.6,
		block_unload_time	= 0.2,
		blocks_count		= 8,
		elements_in_block	= 12,
		element				= 66, -- PTAB_2_5KO
		element_void		= 68
	}, -- KMGU_2_PTAB_2_5KO
}