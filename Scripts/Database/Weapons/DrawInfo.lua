-- Containers elements animation/smoke colors data.
-- Copyright (C) 2004, Eagle Dynamics.

-- the file is not intended for an end-user editing (except smokes)

-- the file is not intended for an end-user editing
-- pylons and containers names definitions

Pylons = {}
Pylons["UB-13"]               = { index  = 1    			} -- UB-13
Pylons["mbd-3"]               = { index  = 3    			} -- MBD_3
Pylons["lau-88"]              = { index  = 4    			} -- LAU_88
Pylons["b-20"]                = { index  = 6    			} -- B_20
Pylons["mbd"]                 = { index  = 21   			} -- MBD
Pylons["mbd-4"]               = { index  = 22   			} -- MBD_4
Pylons["tu-22m3-mbd"]         = { index  = 23   			} -- TU_22_MBD
Pylons["c-25pu"]              = { index  = 24   			} -- S_25_PU
Pylons["9m120"]               = { index  = 34   			} -- AT_9M120
Pylons["9m120m"]              = { index  = 35   			} -- AT_9M120M
Pylons["LAU-105"]             = { index  = MBD_A10_2		} -- MBD_A10_2
Pylons["M299_AGM114"]         = { index  = 43   			} -- AGM_114_Pilon
Pylons["9m114-pilon"]         = { index  = 44   			} -- AT_6_9M114
Pylons["f4-pilon"]            = { index  = 45   			} -- F4_PILON
Pylons["apu-60-2_L"]          = { index  = 46   			} -- MER_L_P_60
Pylons["apu-60-2_R"]          = Pylons["apu-60-2_L"]



Pylons["tow-pilon"]           = { index  = 48   			} -- MER_TOW
Pylons["b52-mbd_mk84"]        = { index  = 50   			} -- MER_9_B52
Pylons["b52-mbd_m117"]        = { index  = 51   			} -- MER_12_B52
Pylons["b52-mbd_agm86"]       = { index  = 52   			} -- MBD_6_B52
Pylons["boz-100"]             = { index  = 58   			} -- BOZ_100
Pylons["suu-25"]              = { index  = 70   			} -- SUU_25 -- not pylon
Pylons["mer2"]                = { index  = 73   			} -- mer-2
Pylons["apu-6"]               = { index  = 75   			} -- apu-6
Pylons["MBD-2-67U"]           = { index  = 76   			} -- MBD-2-67U
Pylons["lau-118a"]            = { index  = 79   			} -- LAU_118A
Pylons["AKU-58"]              = { index  = 80, 				  -- AKU_58
								  animation = {
											arg_num      = 12,
											rate_out     = 17.0, -- arg units per second
											rate_in      = 1.0, -- arg units per second
											init_value   = 0.0
											}
								} 
Pylons["KMGU-2"]              = { index  = 81   			} -- KMGU_2
Pylons["APU-68"]              = { index  = 92   			} -- APU_68
Pylons["APU-73"]              = { index  = 93   			} -- APU_73
Pylons["APU-170"]             = { index  = 96   			} -- APU_170
Pylons["LAU-117"]             = { index  = 97   			} -- LAU_117
Pylons["9K114_Shturm"]        = { index  = 100              } 
Pylons["M272_AGM114"]         = { index  = M279_AGM114      } 
Pylons["BRU-42_LS"] 		  = { index  = TER_LS 			} -- BRU-42
Pylons["BRU-42_LS_(SUU-25)"]  = { index  = SUU_25x3 		} -- TER 3 * SUU_25
Pylons["BRU-42_HS"] 		  = { index  = 178 				} -- TER 3 * SUU_25
Pylons["mbd3-u6-68"]		  = { index  = 179				} 

Pylons["B-8V20A"]					= { index  = 98  }
Pylons["LAU-10"]					= { index  = 8   }
Pylons["LAU-61"]					= { index  = 9   }
Pylons["LAU-68"]					= { index  = 105 }
Pylons["LAU-131"]					= { index  = 114 }
Pylons["BRU-42_LS_(LAU-68)"]		= { index  = 124 }
Pylons["BRU-42_LS_(LAU-131)"]		= { index  = 133 }
Pylons["M261"]						= { index  = 168 }
Pylons["MBD-3-LAU-61"]				= { index  = 33  }
Pylons["MBD-3-LAU-68"]				= { index  = 33  }
Pylons["OH-58D_Gorgona"]			= { index  = 144 }
Pylons["UB-32M1"]		  			= { index  = 2   }
Pylons["XM158"]		  				= { index  = 162 }
Pylons["MER-5E"]	  				= { index  = 106 }
Pylons["LAU-3"]						= { index  = 182 }

rot_nil = {}
rot_nil[1] = 0.0
rot_nil[2] = 0.0

arg_ch_rng = {}
arg_ch_rng[1] = 0.0
arg_ch_rng[2] = 1.0

Control_Containers = {}

rotz = {}
rotz[1] = 0.0
rotz[2] = -30.0

Control_Containers[18] = {
		  rot_x  = rot_nil,
	  	  rot_y  = rot_nil,
		  rot_z  = rotz,
		  arg_x  = 0,
		  arg_y  = 0,
		  arg_z  = 14,
		  rate_x = 0,
		  rate_y = 0,
          rate_z = 45, -- grads
		  arg_x_ch_range = arg_ch_rng,
		  arg_y_ch_range = arg_ch_rng,
		  arg_z_ch_range = arg_ch_rng,
          init_state = true
                 } -- SPPU_22
				 
rotz = {}
rotz[1] = 0.0
rotz[2] = 1.0

Control_Containers[19] = {
		  rot_x  = rot_nil,
	  	  rot_y  = rot_nil,
		  rot_z  = rotz,
		  arg_x  = 0,
		  arg_y  = 0,
		  arg_z  = 12,
		  rate_x = 0,
		  rate_y = 0,
                  rate_z = 1.0, -- arg units
		  arg_x_ch_range = arg_ch_rng,
		  arg_y_ch_range = arg_ch_rng,
		  arg_z_ch_range = arg_ch_rng,
                  init_state = false
                 } -- KINGAL (actually MERCURY)

arg_ch_rng_z = {}
arg_ch_rng_z[1] = -0.733
arg_ch_rng_z[2] = 0.1

rotz = {}
rotz[1] = -66.0
rotz[2] = 9.0

arg_ch_rng_y = {}
arg_ch_rng_y[1] = 0.778
arg_ch_rng_y[2] = -0.133

roty = {}
roty[1] = -70.0
roty[2] = 12.0

Control_Containers[160] = {
		  rot_x  = rot_nil,
	  	  rot_y  = roty,
		  rot_z  = rotz,
		  arg_x  = 0,
		  arg_y  = 511,
		  arg_z  = 512,
		  rate_x = 0,
		  rate_y = 45,
          rate_z = 45, -- grads
		  arg_x_ch_range = arg_ch_rng,
		  arg_y_ch_range = arg_ch_rng_y,
		  arg_z_ch_range = arg_ch_rng_z,
          init_state = true
} -- AB-212 M134 Left

arg_ch_rng_y = {}
arg_ch_rng_y[1] = 0.133
arg_ch_rng_y[2] = -0.778

roty = {}
roty[1] = -12.0
roty[2] = 70.0

Control_Containers[161] = {
		  rot_x  = rot_nil,
	  	  rot_y  = roty,
		  rot_z  = rotz,
		  arg_x  = 0,
		  arg_y  = 511,
		  arg_z  = 512,
		  rate_x = 0,
		  rate_y = 45,
          rate_z = 45, -- grads
		  arg_x_ch_range = arg_ch_rng,
		  arg_y_ch_range = arg_ch_rng_y,
		  arg_z_ch_range = arg_ch_rng_z,
          init_state = true
} -- AB-212 M134 Right
	
Control_Containers[174] = {
		  rot_x  = rot_nil,
	  	  rot_y  = {-36,54},
		  rot_z  = {-40,10},
		  arg_x  = 0,
		  arg_y  = 423,
		  arg_z  = 424,
		  rate_x = 0,
		  rate_y = 45,
          rate_z = 45, -- grads
		  arg_x_ch_range = arg_ch_rng,
		  arg_y_ch_range = {0.2,-0.3},
		  arg_z_ch_range = {-0.44,0.111},
          init_state = true,
		  arg_c_num  = 426,
		  init_c = -0.6,
} -- AB-212 M134 Door Left

Control_Containers[175] = {
		  rot_x  = rot_nil,
	  	  rot_y  = {-54,36},
		  rot_z  = {-40,10},
		  arg_x  = 0,
		  arg_y  = 423,
		  arg_z  = 424,
		  rate_x = 0,
		  rate_y = 45,
          rate_z = 45, -- grads
		  arg_x_ch_range = arg_ch_rng,
		  arg_y_ch_range = {0.3,-0.2},
		  arg_z_ch_range = {-0.44,0.111},
          init_state = true,
		  arg_c_num  = 426,
		  init_c = -0.6,
} -- AB-212 M134 Door Right

Control_Containers[176] = {
		  rot_x  = rot_nil,
	  	  rot_y  = {-36,54},
		  rot_z  = {-54,10},
		  arg_x  = 0,
		  arg_y  = 423,
		  arg_z  = 424,
		  rate_x = 0,
		  rate_y = 60,
          rate_z = 60, -- grads
		  arg_x_ch_range = arg_ch_rng,
		  arg_y_ch_range = {0.2,-0.3},
		  arg_z_ch_range = {-0.6,0.111},
          init_state = true,
		  arg_c_num  = 426,
		  init_c = -0.6,
} -- AB-212 M60 Door Left

Control_Containers[177] = {
		  rot_x  = rot_nil,
	  	  rot_y  = {-54,36},
		  rot_z  = {-54,10},
		  arg_x  = 0,
		  arg_y  = 423,
		  arg_z  = 424,
		  rate_x = 0,
		  rate_y = 60,
          rate_z = 60, -- grads
		  arg_x_ch_range = arg_ch_rng,
		  arg_y_ch_range = {0.3,-0.2},
		  arg_z_ch_range = {-0.6,0.111},
          init_state = true,
		  arg_c_num  = 426,
		  init_c = -0.6,
} -- AB-212 M60 Door Right


Control_Containers[183] = {
		  rot_x  = rot_nil,
	  	  --rot_y  = {-40,40},
		  rot_y  = {-40,40},
		  rot_z  = {-40,10},
		  arg_x  = 0,
		  arg_y  = 423,
		  arg_z  = 424,
		  rate_x = 0,
		  rate_y = 60,
          rate_z = 60, -- grads
		  arg_x_ch_range = arg_ch_rng,
		  arg_y_ch_range = {0.225,-0.218},
		  arg_z_ch_range = {-0.444,0.111},
          init_state = true,
		  arg_c_num  = 0,
		  init_c = -0.6,
} -- KORD

Control_Containers[184] = {
		  rot_x  = rot_nil,
	  	  rot_y  = {-40,35},
		  rot_z  = {-40,10},
		  arg_x  = 0,
		  arg_y  = 423,
		  arg_z  = 424,
		  rate_x = 0,
		  rate_y = 60,
          rate_z = 60, -- grads
		  arg_x_ch_range = arg_ch_rng,
		  arg_y_ch_range = {0.222,-0.1944},
		  arg_z_ch_range = {-0.444,0.111},
          init_state = true,
		  arg_c_num  = 0,
		  init_c = -0.6,
} -- PKT

	
Weapon_containers = {}

rotz = {}
rotz[1] = 0.0
rotz[2] = 1.0

Weapon_containers[94] = {rot_x  = rot_nil,
		       rot_y  = rot_nil,
		       rot_z  = rotz,
		       arg_x  = 0,
		       arg_y  = 0,
		       arg_z  = 12,
		       rate_x = 0,
		       rate_y = 0,
               rate_z = 2.86, -- arg units, 0.35 seconds
		       arg_x_ch_range = arg_ch_rng,
		       arg_y_ch_range = arg_ch_rng,
		       arg_z_ch_range = arg_ch_rng,
                       init_state = false
                      } -- KMGU_2_AO_2_5RT

Weapon_containers[95] = {rot_x  = rot_nil,
		       rot_y  = rot_nil,
		       rot_z  = rotz,
		       arg_x  = 0,
		       arg_y  = 0,
		       arg_z  = 12,
		       rate_x = 0,
		       rate_y = 0,
               rate_z = 2.86, -- arg units, 0.35 seconds
		       arg_x_ch_range = arg_ch_rng,
		       arg_y_ch_range = arg_ch_rng,
		       arg_z_ch_range = arg_ch_rng,
                       init_state = false
                      } -- KMGU_2_PTAB_2_5KO

Weapon_containers[86] = 
{
	rot_x  = rot_nil,
	rot_y  = rot_nil,
	rot_z  = {0,-11},
	arg_x  = 0,
	arg_y  = 0,
	arg_z  = 14,
	rate_x = 0,
	rate_y = 0,
    rate_z = 20, -- arg units
	arg_x_ch_range = arg_ch_rng,
	arg_y_ch_range = arg_ch_rng,
	arg_z_ch_range = arg_ch_rng,
    init_state = false,
	nurs_args 		   = {6, 5, 8, 9, 10, 11},
	launched_arg_state = 1.0,
} --APU_6_VIKHR


-- connector name	'tube_1,	'tube_2' ... 'tube_n'
-- nurs_args		arg_tube_1, arg_tube_2 .. arg_tube_n
-- default args for rocket containers :  5,6,7,8,9,10,...  etc


Weapon_containers[148] = 
{
	nurs_args = {13,8,5,1,15,3,18,17,12,19,14,9,10,7,16,11,20,2,6,4}
} --B8B20A

Weapon_containers[149]  = Weapon_containers[148]
Weapon_containers[150]  = Weapon_containers[148]
Weapon_containers[98]   = Weapon_containers[148]

--B-20
Weapon_containers[6]    = Weapon_containers[148]
Weapon_containers[68]   = Weapon_containers[148]
Weapon_containers[151]  = Weapon_containers[148]

Weapon_containers[167] = 
{
	nurs_args = {12,13,14,15,16,17,18}
} --XM158 M257

Weapon_containers[182] = 
{
	nurs_args = {4,5},
	launched_arg_state = 1.0
} --LAU-3 WP
Weapon_containers[183]    = Weapon_containers[182]
Weapon_containers[184]    = Weapon_containers[182]
Weapon_containers[185]    = Weapon_containers[182]
Weapon_containers[186]    = Weapon_containers[182]

--s-25 pu 
Weapon_containers[7] = 
{
	nurs_args 		   = {5},
	launched_arg_state = 1.0
}
Weapon_containers[87] = Weapon_containers[7]
