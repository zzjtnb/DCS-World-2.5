-- default values
--[[
	reload_time - 3600 s
	shot_delay - 1 s
	launch_delay - 1 s
	maxShootingSpeed - unlimited
	min_trg_alt - 0 m
	max_trg_alt - 10 m
	reflection_limit - 0.0 (unlimited detection)
	reactionTime - 1 s
	barrels_reload_type - 1
	external_tracking_awacs - false
	show_external_missile - false
]]

GT_t.LN_t.TOW = {} -- for M2 Bradley and M1134 Stryker ATGM
GT_t.LN_t.TOW.type = 33
GT_t.LN_t.TOW.distanceMin = 50
GT_t.LN_t.TOW.distanceMax = 3800
GT_t.LN_t.TOW.max_trg_alt = 3000
GT_t.LN_t.TOW.reactionTime = 10;
GT_t.LN_t.TOW.launch_delay = 2;
GT_t.LN_t.TOW.beamWidth = math.rad(1);
GT_t.LN_t.TOW.radialDisperse = 2.0;
GT_t.LN_t.TOW.dispertionReductionFactor = 0.986;
GT_t.LN_t.TOW.missileControlInterval = 0.1;
GT_t.LN_t.TOW.maxShootingSpeed = 0; -- during TOW missile flight platform should stand still
GT_t.LN_t.TOW.sensor = {}
set_recursive_metatable(GT_t.LN_t.TOW.sensor, GT_t.WSN_t[0])
GT_t.LN_t.TOW.PL = {}
GT_t.LN_t.TOW.PL[1] = {}
GT_t.LN_t.TOW.PL[1].type_ammunition={4,4,11,160};
GT_t.LN_t.TOW.PL[1].name_ammunition=_("TOW");
GT_t.LN_t.TOW.PL[1].automaticLoader = false;
GT_t.LN_t.TOW.PL[1].ammo_capacity = 1;
GT_t.LN_t.TOW.PL[1].shot_delay = 25;
GT_t.LN_t.TOW.BR = {
                {pos = {0.7, 0.4, -1.3} },
                {pos = {0.7, 0.5, -1.3} }
            };
GT_t.LN_t.TOW.inclination_correction_upper_limit = math.rad(45);
GT_t.LN_t.TOW.inclination_correction_bias = math.rad(1.1);
			
GT_t.LN_t.Malutka = {} -- 9M14 Malutka (AT-3 "Sagger") for BMP-1, BMD-1
GT_t.LN_t.Malutka.type = 33
GT_t.LN_t.Malutka.pos = {-0.099, 1.753,0}
GT_t.LN_t.Malutka.xc = 0.512
GT_t.LN_t.Malutka.distanceMin = 100
GT_t.LN_t.Malutka.distanceMax = 3000
GT_t.LN_t.Malutka.max_trg_alt = 3000
GT_t.LN_t.Malutka.reactionTime = 10;
GT_t.LN_t.Malutka.launch_delay = 20;
GT_t.LN_t.Malutka.radialDisperse = 1.4;
GT_t.LN_t.Malutka.dispertionReductionFactor = 0.993;
GT_t.LN_t.Malutka.missileControlInterval = 0.18;
GT_t.LN_t.Malutka.maxShootingSpeed = 0
GT_t.LN_t.Malutka.show_external_missile = true
GT_t.LN_t.Malutka.sensor = {}
set_recursive_metatable(GT_t.LN_t.Malutka.sensor, GT_t.WSN_t[0])
GT_t.LN_t.Malutka.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY; 
GT_t.LN_t.Malutka.PL = {}
GT_t.LN_t.Malutka.PL[1] = {}
GT_t.LN_t.Malutka.PL[1].ammo_capacity = 4;
GT_t.LN_t.Malutka.PL[1].reload_time = 4*20
GT_t.LN_t.Malutka.PL[1].automaticLoader = false;
GT_t.LN_t.Malutka.PL[1].type_ammunition={4,4,11,127};
GT_t.LN_t.Malutka.PL[1].name_ammunition=_("9M14")
GT_t.LN_t.Malutka.PL[1].shot_delay = 20;
GT_t.LN_t.Malutka.BR = { {connector_name = 'POINT_MISSILE'} }

GT_t.LN_t.Kornet = {}
GT_t.LN_t.Kornet.type = 33
GT_t.LN_t.Kornet.beamWidth = math.rad(1);
GT_t.LN_t.Kornet.distanceMin = 500
GT_t.LN_t.Kornet.distanceMax = 5000
GT_t.LN_t.Kornet.max_trg_alt = 3000
GT_t.LN_t.Kornet.reactionTime = 10
GT_t.LN_t.Kornet.launch_delay = 20
GT_t.LN_t.Kornet.radialDisperse = 3.2;
GT_t.LN_t.Kornet.dispertionReductionFactor = 0.97;
GT_t.LN_t.Kornet.missileControlInterval = 0.2;
GT_t.LN_t.Kornet.maxShootingSpeed = 0
GT_t.LN_t.Kornet.show_external_missile = false
GT_t.LN_t.Kornet.sensor = {}
set_recursive_metatable(GT_t.LN_t.Kornet.sensor, GT_t.WSN_t[0])
GT_t.LN_t.Kornet.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT_t.LN_t.Kornet.PL = {}
GT_t.LN_t.Kornet.PL[1] = {};
GT_t.LN_t.Kornet.PL[1].automaticLoader = false;
GT_t.LN_t.Kornet.PL[1].shot_delay = 30;
GT_t.LN_t.Kornet.PL[1].ammo_capacity = 5;
GT_t.LN_t.Kornet.PL[1].reload_time = 30 * 5;
GT_t.LN_t.Kornet.PL[1].type_ammunition={4,4,11,153}
GT_t.LN_t.Kornet.PL[1].name_ammunition=_("9M133");
GT_t.LN_t.Kornet.BR = { {pos = {1.366, 0, 0}, drawArgument = 4 } }
GT_t.LN_t.Kornet.inclination_correction_upper_limit = math.rad(45);
GT_t.LN_t.Kornet.inclination_correction_bias = math.rad(2);

GT_t.LN_t.Fagot = {} -- 9M111 'Fagot' ATGM for BMP-2
GT_t.LN_t.Fagot.type = 33
GT_t.LN_t.Fagot.distanceMin = 100
GT_t.LN_t.Fagot.distanceMax = 3000
GT_t.LN_t.Fagot.max_trg_alt = 3000
GT_t.LN_t.Fagot.reactionTime = 10
GT_t.LN_t.Fagot.launch_delay = 20
GT_t.LN_t.Fagot.radialDisperse = 3.0;
GT_t.LN_t.Fagot.dispertionReductionFactor = 0.988;
GT_t.LN_t.Fagot.missileControlInterval = 0.16;
GT_t.LN_t.Fagot.maxShootingSpeed = 0
GT_t.LN_t.Fagot.show_external_missile = false
GT_t.LN_t.Fagot.sensor = {}
set_recursive_metatable(GT_t.LN_t.Fagot.sensor, GT_t.WSN_t[0])
GT_t.LN_t.Fagot.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT_t.LN_t.Fagot.PL = {}
GT_t.LN_t.Fagot.PL[1] = {}
GT_t.LN_t.Fagot.PL[1].automaticLoader = false;
GT_t.LN_t.Fagot.PL[1].shot_delay = 30;
GT_t.LN_t.Fagot.PL[1].ammo_capacity = 4;
GT_t.LN_t.Fagot.PL[1].reload_time = 4*30;
GT_t.LN_t.Fagot.PL[1].type_ammunition={4,4,11,128}
GT_t.LN_t.Fagot.PL[1].name_ammunition=_("9M113")
GT_t.LN_t.Fagot.BR = { {pos = {1.366, 0.237,0}, drawArgument = 4 } }
GT_t.LN_t.Fagot.inclination_correction_upper_limit = math.rad(45);
GT_t.LN_t.Fagot.inclination_correction_bias = math.rad(0.4);

GT_t.LN_t._9M117 = {} -- for BMP-3 ATGM "Bastion"
GT_t.LN_t._9M117.type = 33
GT_t.LN_t._9M117.beamWidth = math.rad(1);
GT_t.LN_t._9M117.xc = 0.585
GT_t.LN_t._9M117.distanceMin = 100
GT_t.LN_t._9M117.distanceMax = 4000
GT_t.LN_t._9M117.max_trg_alt = 3000
GT_t.LN_t._9M117.reactionTime = 10
GT_t.LN_t._9M117.launch_delay = 10
GT_t.LN_t._9M117.radialDisperse = 2.7;
GT_t.LN_t._9M117.dispertionReductionFactor = 0.988;
GT_t.LN_t._9M117.missileControlInterval = 0.12;
GT_t.LN_t._9M117.maxShootingSpeed = 0
GT_t.LN_t._9M117.inclination_correction_upper_limit = math.rad(20);
GT_t.LN_t._9M117.inclination_correction_bias = math.rad(1);
GT_t.LN_t._9M117.sensor = {}
set_recursive_metatable(GT_t.LN_t._9M117.sensor, GT_t.WSN_t[0])
GT_t.LN_t._9M117.PL = {}
GT_t.LN_t._9M117.PL[1] = {}
GT_t.LN_t._9M117.PL[1].shot_delay = 8
GT_t.LN_t._9M117.PL[1].ammo_capacity = 8
GT_t.LN_t._9M117.PL[1].reload_time = 8 * 15;
GT_t.LN_t._9M117.PL[1].type_ammunition={4,4,11,129}
GT_t.LN_t._9M117.PL[1].name_ammunition=_("9M117")
GT_t.LN_t._9M117.BR = { {pos = {3.7, 0, -0.11}, drawArgument = 5 } }

GT_t.LN_t.Reflex = {} -- 9M119 - 'Reflex' ATGM for T-80UD
GT_t.LN_t.Reflex.type = 33
GT_t.LN_t.Reflex.beamWidth = math.rad(1);
GT_t.LN_t.Reflex.distanceMin = 500
GT_t.LN_t.Reflex.distanceMax = 5000
GT_t.LN_t.Reflex.max_trg_alt = 3000
GT_t.LN_t.Reflex.reactionTime = 10
GT_t.LN_t.Reflex.launch_delay = 10
GT_t.LN_t.Reflex.radialDisperse = 3.0;
GT_t.LN_t.Reflex.dispertionReductionFactor = 0.985;
GT_t.LN_t.Reflex.missileControlInterval = 0.1;
GT_t.LN_t.Reflex.maxShootingSpeed = 0; 
GT_t.LN_t.Reflex.show_external_missile = false
GT_t.LN_t.Reflex.inclination_correction_upper_limit = math.rad(20);
GT_t.LN_t.Reflex.inclination_correction_bias = math.rad(0.8);
GT_t.LN_t.Reflex.sensor = {}
set_recursive_metatable(GT_t.LN_t.Reflex.sensor, GT_t.WSN_t[0])
GT_t.LN_t.Reflex.PL = {}
GT_t.LN_t.Reflex.PL[1] = {};
GT_t.LN_t.Reflex.PL[1].shot_delay = 8;
GT_t.LN_t.Reflex.PL[1].ammo_capacity = 3;
GT_t.LN_t.Reflex.PL[1].reload_time = 60;
GT_t.LN_t.Reflex.PL[1].type_ammunition={4,4,11,156}
GT_t.LN_t.Reflex.PL[1].name_ammunition=_("9M119");
GT_t.LN_t.Reflex.PL[2] = {};
GT_t.LN_t.Reflex.PL[2].shot_delay = 30;
GT_t.LN_t.Reflex.PL[2].automaticLoader = false;
GT_t.LN_t.Reflex.PL[2].ammo_capacity = 3;
GT_t.LN_t.Reflex.PL[2].reload_time = 50;
GT_t.LN_t.Reflex.PL[2].type_ammunition={4,4,11,156}
GT_t.LN_t.Reflex.PL[2].name_ammunition=_("9M119");
GT_t.LN_t.Reflex.BR = { {pos = {1.366, 0, 0}}}

GT_t.LN_t.Svir = {} -- 9M119 - ATGM "Svir'" for T-72B
GT_t.LN_t.Svir.type = 33
GT_t.LN_t.Svir.beamWidth = math.rad(1);
GT_t.LN_t.Svir.distanceMin = 500
GT_t.LN_t.Svir.distanceMax = 4000
GT_t.LN_t.Svir.max_trg_alt = 3000
GT_t.LN_t.Svir.reactionTime = 10
GT_t.LN_t.Svir.launch_delay = 10
GT_t.LN_t.Svir.radialDisperse = 3.0;
GT_t.LN_t.Svir.dispertionReductionFactor = 0.985;
GT_t.LN_t.Svir.missileControlInterval = 0.1;
GT_t.LN_t.Svir.maxShootingSpeed = 0; 
GT_t.LN_t.Svir.show_external_missile = false
GT_t.LN_t.Svir.inclination_correction_upper_limit = math.rad(20);
GT_t.LN_t.Svir.inclination_correction_bias = math.rad(1);
GT_t.LN_t.Svir.sensor = {}
set_recursive_metatable(GT_t.LN_t.Svir.sensor, GT_t.WSN_t[0])
GT_t.LN_t.Svir.PL = {}
GT_t.LN_t.Svir.PL[1] = {};
GT_t.LN_t.Svir.PL[1].shot_delay = 8;
GT_t.LN_t.Svir.PL[1].ammo_capacity = 3;
GT_t.LN_t.Svir.PL[1].reload_time = 60;
GT_t.LN_t.Svir.PL[1].type_ammunition={4,4,11,157}
GT_t.LN_t.Svir.PL[1].name_ammunition=_("9M119");
GT_t.LN_t.Svir.PL[2] = {};
GT_t.LN_t.Svir.PL[2].shot_delay = 30;
GT_t.LN_t.Svir.PL[2].ammo_capacity = 3;
GT_t.LN_t.Svir.PL[2].reload_time = 50;
GT_t.LN_t.Svir.PL[1].automaticLoader = false;
GT_t.LN_t.Svir.PL[2].type_ammunition={4,4,11,157}
GT_t.LN_t.Svir.PL[2].name_ammunition=_("9M119");
GT_t.LN_t.Svir.BR = { {pos = {1.366, 0, 0}}}

GT_t.LN_t._9M120 = {} -- for BMPT (Ataka-T)
GT_t.LN_t._9M120.type = 33;
GT_t.LN_t._9M120.beamWidth = math.rad(1);
GT_t.LN_t._9M120.xc = 0.585;
GT_t.LN_t._9M120.distanceMin = 100;
GT_t.LN_t._9M120.distanceMax = 6000;
GT_t.LN_t._9M120.max_trg_alt = 3000;
GT_t.LN_t._9M120.reactionTime = 2;
GT_t.LN_t._9M120.launch_delay = 3;
GT_t.LN_t._9M120.radialDisperse = 2.0;
GT_t.LN_t._9M120.missileControlInterval = 0.2;
GT_t.LN_t._9M120.maxShootingSpeed = 0;
GT_t.LN_t._9M120.sensor = {}
set_recursive_metatable(GT_t.LN_t._9M120.sensor, GT_t.WSN_t[0]);
GT_t.LN_t._9M120.PL = {};
GT_t.LN_t._9M120.PL[1] = {};
GT_t.LN_t._9M120.PL[1].shot_delay = 0.01;
GT_t.LN_t._9M120.PL[1].ammo_capacity = 1;
GT_t.LN_t._9M120.PL[1].type_ammunition={4,4,11,153}
GT_t.LN_t._9M120.PL[1].name_ammunition=_("9M133");
GT_t.LN_t._9M120.PL[1].switch_on_delay = 3;
GT_t.LN_t._9M120.BR = { {pos = {3.7, 0, 0.0},} };


GT_t.LN_t._9M311 = {} -- Tunguska, Kashtan, Kortik
GT_t.LN_t._9M311.type = 33
GT_t.LN_t._9M311.xc = -1.072
GT_t.LN_t._9M311.distanceMin = 3000
GT_t.LN_t._9M311.distanceMax = 8000
GT_t.LN_t._9M311.reactionTime = 5;
GT_t.LN_t._9M311.launch_delay = 1;
GT_t.LN_t._9M311.radialDisperse = 0.0;
GT_t.LN_t._9M311.dispertionReductionFactor = 0.0;
GT_t.LN_t._9M311.missileControlInterval = 0.01;
GT_t.LN_t._9M311.maxShootingSpeed = 0.0;
GT_t.LN_t._9M311.reflection_limit = 0.1;
GT_t.LN_t._9M311.sensor = {}
set_recursive_metatable(GT_t.LN_t._9M311.sensor, GT_t.WSN_t[0])
GT_t.LN_t._9M311.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT_t.LN_t._9M311.PL = {}
GT_t.LN_t._9M311.PL[1] = {}
GT_t.LN_t._9M311.PL[1].ammo_capacity = 8;
GT_t.LN_t._9M311.PL[1].type_ammunition={4,4,11,90};
GT_t.LN_t._9M311.PL[1].name_ammunition=_("9M311")
GT_t.LN_t._9M311.PL[1].automaticLoader = false
GT_t.LN_t._9M311.PL[1].reload_time = 960;
GT_t.LN_t._9M311.PL[1].shot_delay = 0.1;
GT_t.LN_t._9M311.BR = { 
                       {connector_name = 'POINT_ROCKET_01',drawArgument = 4},
                       {connector_name = 'POINT_ROCKET_02',drawArgument = 5},
                       {connector_name = 'POINT_ROCKET_03',drawArgument = 6},
                       {connector_name = 'POINT_ROCKET_04',drawArgument = 7},
                       {connector_name = 'POINT_ROCKET_05',drawArgument = 18},
                       {connector_name = 'POINT_ROCKET_06',drawArgument = 19},
                     }
                     
GT_t.LN_t._9A310M1 = {} -- BUK
GT_t.LN_t._9A310M1.type = 4;
GT_t.LN_t._9A310M1.xc = -3.26;
GT_t.LN_t._9A310M1.distanceMin = 3000;
GT_t.LN_t._9A310M1.distanceMax = 35000;
GT_t.LN_t._9A310M1.reactionTime = 1;
GT_t.LN_t._9A310M1.launch_delay = 2;
GT_t.LN_t._9A310M1.maxShootingSpeed = 0;
GT_t.LN_t._9A310M1.show_external_missile = true;
GT_t.LN_t._9A310M1.sensor = {};
set_recursive_metatable(GT_t.LN_t._9A310M1.sensor, GT_t.WSN_t[0]);
GT_t.LN_t._9A310M1.reflection_limit = 0.02;
GT_t.LN_t._9A310M1.ECM_K = -1
GT_t.LN_t._9A310M1.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT_t.LN_t._9A310M1.PL = {};
GT_t.LN_t._9A310M1.PL[1] = {};
GT_t.LN_t._9A310M1.PL[1].ammo_capacity = 4;
GT_t.LN_t._9A310M1.PL[1].type_ammunition={4,4,34,87};
GT_t.LN_t._9A310M1.PL[1].name_ammunition=_("9M38");
GT_t.LN_t._9A310M1.PL[1].reload_time = 13*60; -- 13 minutes
GT_t.LN_t._9A310M1.PL[1].shot_delay = 0.1;
GT_t.LN_t._9A310M1.BR = {
                    {pos = {-1.477, 0.459,-1.08}, drawArgument = 4},
                    {pos = {-1.477, 0.459,-0.38}, drawArgument = 5},
                    {pos = {-1.477, 0.459, 0.43}, drawArgument = 6},
                    {pos = {-1.477, 0.459, 1.15}, drawArgument = 7},
                };

GT_t.LN_t._9A35 = {} -- Strela-10
GT_t.LN_t._9A35.type = 4
GT_t.LN_t._9A35.distanceMin = 800
GT_t.LN_t._9A35.distanceMax = 5000
GT_t.LN_t._9A35.reactionTime = 2;
GT_t.LN_t._9A35.launch_delay = 1;
GT_t.LN_t._9A35.reflection_limit = 0.2
GT_t.LN_t._9A35.ECM_K = -1
GT_t.LN_t._9A35.sensor = {}
set_recursive_metatable(GT_t.LN_t._9A35.sensor, GT_t.WSN_t[0])
GT_t.LN_t._9A35.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT_t.LN_t._9A35.PL = {}
GT_t.LN_t._9A35.PL[1] = {}
GT_t.LN_t._9A35.PL[1].ammo_capacity = 8
GT_t.LN_t._9A35.PL[1].type_ammunition={4,4,34,88};
GT_t.LN_t._9A35.PL[1].name_ammunition=_("9M37")
GT_t.LN_t._9A35.PL[1].automaticLoader = false
GT_t.LN_t._9A35.PL[1].reload_time = 960;
GT_t.LN_t._9A35.PL[1].shot_delay = 120;

GT_t.LN_t._9A330 = {} -- Tor
GT_t.LN_t._9A330.max_number_of_missiles_channels = 2;
GT_t.LN_t._9A330.type = 4;
GT_t.LN_t._9A330.distanceMin = 1500;
GT_t.LN_t._9A330.distanceMax = 12000;
GT_t.LN_t._9A330.inclination_correction_upper_limit = 0;
GT_t.LN_t._9A330.inclination_correction_bias = 0.0;
GT_t.LN_t._9A330.ECM_K = 0.8;
GT_t.LN_t._9A330.reactionTime = 6;
GT_t.LN_t._9A330.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT_t.LN_t._9A330.maxShootingSpeed = 0.0;
GT_t.LN_t._9A330.sensor = {};
set_recursive_metatable(GT_t.LN_t._9A330.sensor, GT_t.WSN_t[0]);
GT_t.LN_t._9A330.launch_delay = 4;
GT_t.LN_t._9A330.reflection_limit = 0.02;
GT_t.LN_t._9A330.beamWidth = math.rad(1);
GT_t.LN_t._9A330.PL = {};
GT_t.LN_t._9A330.PL[1] = {};
GT_t.LN_t._9A330.PL[1].ammo_capacity = 8;
GT_t.LN_t._9A330.PL[1].portionAmmoCapacity = 4;
GT_t.LN_t._9A330.PL[1].type_ammunition={4,4,34,89};
GT_t.LN_t._9A330.PL[1].name_ammunition=_("9M331");
GT_t.LN_t._9A330.PL[1].reload_time = 1080;
GT_t.LN_t._9A330.PL[1].shot_delay = 0.1;

GT_t.LN_t._9P31 = {} -- Strela-1
GT_t.LN_t._9P31.type = 4;
GT_t.LN_t._9P31.distanceMin = 500;
GT_t.LN_t._9P31.distanceMax = 4200;
GT_t.LN_t._9P31.reactionTime = 2;
GT_t.LN_t._9P31.launch_delay = 1;
GT_t.LN_t._9P31.reflection_limit = 0.22;
GT_t.LN_t._9P31.ECM_K = -1
GT_t.LN_t._9P31.sensor = {};
set_recursive_metatable(GT_t.LN_t._9P31.sensor, GT_t.WSN_t[0]);
GT_t.LN_t._9P31.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT_t.LN_t._9P31.PL = {};
GT_t.LN_t._9P31.PL[1] = {};
GT_t.LN_t._9P31.PL[1].ammo_capacity = 4;
GT_t.LN_t._9P31.PL[1].type_ammunition={4,4,34,86};
GT_t.LN_t._9P31.PL[1].name_ammunition=_("9M31");
GT_t.LN_t._9P31.PL[1].reload_time = 1200;
GT_t.LN_t._9P31.PL[1].shot_delay = 0.1;
GT_t.LN_t._9P31.PL[1].automaticLoader = false;
GT_t.LN_t._9P31.BR = {
                    {connector_name = "POINT_ROCKET_01",drawArgument = 4},
                    {connector_name = "POINT_ROCKET_02",drawArgument = 5},
                    {connector_name = "POINT_ROCKET_03",drawArgument = 6},
                    {connector_name = "POINT_ROCKET_04",drawArgument = 7},
                };

GT_t.LN_t._9A33 = {} -- Osa
GT_t.LN_t._9A33.type = 4
GT_t.LN_t._9A33.distanceMin = 1500
GT_t.LN_t._9A33.distanceMax = 10300
GT_t.LN_t._9A33.ECM_K = 0.8;
GT_t.LN_t._9A33.reactionTime = 3;
GT_t.LN_t._9A33.reflection_limit = 0.1;
-- скорострельность: 2 ракеты в минуту, пуск двух ракет с паузой 2-3 с.
GT_t.LN_t._9A33.launch_delay = 2;
GT_t.LN_t._9A33.maxShootingSpeed = 0.0;
GT_t.LN_t._9A33.beamWidth = math.rad(1);
GT_t.LN_t._9A33.sensor = {}
set_recursive_metatable(GT_t.LN_t._9A33.sensor, GT_t.WSN_t[0]);
GT_t.LN_t._9A33.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT_t.LN_t._9A33.PL = {}
GT_t.LN_t._9A33.PL[1] = {}
GT_t.LN_t._9A33.PL[1].ammo_capacity = 6
GT_t.LN_t._9A33.PL[1].type_ammunition={4,4,34,85}
GT_t.LN_t._9A33.PL[1].name_ammunition=_("9M33")
GT_t.LN_t._9A33.PL[1].reload_time = 1800;
GT_t.LN_t._9A33.PL[1].shot_delay = 0.1;
GT_t.LN_t._9A33.BR = { 
                       {connector_name = 'POINT_ROCKET_01',drawArgument = 4},
					   {connector_name = 'POINT_ROCKET_06',drawArgument = 19},
                       {connector_name = 'POINT_ROCKET_02',drawArgument = 5},
					   {connector_name = 'POINT_ROCKET_05',drawArgument = 18},
                       {connector_name = 'POINT_ROCKET_03',drawArgument = 6},
                       {connector_name = 'POINT_ROCKET_04',drawArgument = 7},
                     }

GT_t.LN_t._2P25 = {} -- Kub
GT_t.LN_t._2P25.type = 4
GT_t.LN_t._2P25.distanceMin = 4000
GT_t.LN_t._2P25.distanceMax = 25000
GT_t.LN_t._2P25.launch_delay = 5;
GT_t.LN_t._2P25.reactionTime = 3;
GT_t.LN_t._2P25.reflection_limit = 0.1;
GT_t.LN_t._2P25.ECM_K = -1
GT_t.LN_t._2P25.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT_t.LN_t._2P25.maxShootingSpeed = 0
GT_t.LN_t._2P25.show_external_missile = true
GT_t.LN_t._2P25.sensor = {}
set_recursive_metatable(GT_t.LN_t._2P25.sensor, GT_t.WSN_t[0])
GT_t.LN_t._2P25.PL = {}
GT_t.LN_t._2P25.PL[1] = {}
GT_t.LN_t._2P25.PL[1].shot_delay = 0.1;
GT_t.LN_t._2P25.PL[1].reload_time = 1800;
GT_t.LN_t._2P25.PL[1].automaticLoader = false;
GT_t.LN_t._2P25.PL[1].ammo_capacity = 3;
GT_t.LN_t._2P25.PL[1].type_ammunition={4,4,34,84};
GT_t.LN_t._2P25.PL[1].name_ammunition=_("3M9");
GT_t.LN_t._2P25.BR = {
                {connector_name = 'POINT_KUB_1_1',drawArgument = 4},
                {connector_name = 'POINT_KUB_1_2',drawArgument = 5},
                {connector_name = 'POINT_KUB_1_3',drawArgument = 6},
            };

GT_t.LN_t.M48 = {} -- Chaparral
GT_t.LN_t.M48.type = 4
GT_t.LN_t.M48.distanceMin = 500
GT_t.LN_t.M48.distanceMax = 8500
GT_t.LN_t.M48.reactionTime = 2
GT_t.LN_t.M48.reflection_limit = 0.22;
GT_t.LN_t.M48.ECM_K = -1
GT_t.LN_t.M48.max_number_of_missiles_channels = 2;
GT_t.LN_t.M48.launch_delay = 1;
GT_t.LN_t.M48.maxShootingSpeed = 0.0;
GT_t.LN_t.M48.show_external_missile = true
GT_t.LN_t.M48.sensor = {}
set_recursive_metatable(GT_t.LN_t.M48.sensor, GT_t.WSN_t[0])
GT_t.LN_t.M48.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT_t.LN_t.M48.PL = {}
GT_t.LN_t.M48.PL[1] = {}
GT_t.LN_t.M48.PL[1].ammo_capacity = 8;
GT_t.LN_t.M48.PL[1].automaticLoader = false;
GT_t.LN_t.M48.PL[1].type_ammunition={4,4,34,137};
GT_t.LN_t.M48.PL[1].name_ammunition=_("MIM-72G")
GT_t.LN_t.M48.PL[1].shot_delay = 40;
GT_t.LN_t.M48.PL[1].reload_time = 8*40;
GT_t.LN_t.M48.BR = {
                {connector_name = 'POINT_M48_1_1'},
                {connector_name = 'POINT_M48_1_2'},
                {connector_name = 'POINT_M48_1_3'},
                {connector_name = 'POINT_M48_1_4'},
            };

GT_t.LN_t.M192 = {}; -- Hawk
GT_t.LN_t.M192.type = 4;
GT_t.LN_t.M192.xc = -0.529;
GT_t.LN_t.M192.distanceMin = 1500;
GT_t.LN_t.M192.distanceMax = 45000;
GT_t.LN_t.M192.launch_delay = 5;
GT_t.LN_t.M192.reactionTime = 2;
GT_t.LN_t.M192.reflection_limit = 0.1;
GT_t.LN_t.M192.ECM_K = -1
GT_t.LN_t.M192.maxShootingSpeed = 0;
GT_t.LN_t.M192.show_external_missile = true;
GT_t.LN_t.M192.sensor = {};
set_recursive_metatable(GT_t.LN_t.M192.sensor, GT_t.WSN_t[0]);
GT_t.LN_t.M192.barrels_reload_type = BarrelsReloadTypes.SIMULTANEOUSLY;
GT_t.LN_t.M192.PL = {};
GT_t.LN_t.M192.PL[1] = {};
GT_t.LN_t.M192.PL[1].ammo_capacity = 3;
GT_t.LN_t.M192.PL[1].automaticLoader = false;
GT_t.LN_t.M192.PL[1].type_ammunition={4,4,34,98};
GT_t.LN_t.M192.PL[1].name_ammunition=_("MIM_23");
GT_t.LN_t.M192.PL[1].reload_time = 420;
GT_t.LN_t.M192.PL[1].shot_delay = 0.1;

GT_t.LN_t.M192.BR ={
                {connector_name = 'POINT_HAWK_1_1',drawArgument = 4},
                {connector_name = 'POINT_HAWK_1_2',drawArgument = 5},
                {connector_name = 'POINT_HAWK_1_3',drawArgument = 6},
            };


GT_t.LN_t.S125 = {}; -- V600, S125
GT_t.LN_t.S125.type = 4;
GT_t.LN_t.S125.distanceMin = 1500;
GT_t.LN_t.S125.distanceMax = 18000;
GT_t.LN_t.S125.maxShootingSpeed = 0;
GT_t.LN_t.S125.launch_delay = 10;
GT_t.LN_t.S125.reactionTime = 2;
GT_t.LN_t.S125.reflection_limit = 0.22;
GT_t.LN_t.S125.ECM_K = -1
GT_t.LN_t.S125.show_external_missile = true;
GT_t.LN_t.S125.sensor = {};
set_recursive_metatable(GT_t.LN_t.S125.sensor, GT_t.WSN_t[0]);
GT_t.LN_t.S125.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT_t.LN_t.S125.PL = {};
GT_t.LN_t.S125.PL[1] = {};
GT_t.LN_t.S125.PL[1].ammo_capacity = 4;
GT_t.LN_t.S125.PL[1].automaticLoader = false;
GT_t.LN_t.S125.PL[1].type_ammunition={4,4,34,97};
--GT_t.LN_t.S125.PL[1].name_ammunition="SA5B27";
GT_t.LN_t.S125.PL[1].portionAmmoCapacity = 2;
GT_t.LN_t.S125.PL[1].reload_time = 300*2; -- 5 min for each two barrels
GT_t.LN_t.S125.PL[1].shot_delay = 0.1;
GT_t.LN_t.S125.BR = {
                {connector_name = 'POINT_ROCKET_01'},
                {connector_name = 'POINT_ROCKET_02'},
                {connector_name = 'POINT_ROCKET_03'},
                {connector_name = 'POINT_ROCKET_04'},
            };


GT_t.LN_t.M901 = {}; -- Patriot
GT_t.LN_t.M901.type = 4;
GT_t.LN_t.M901.xc = -1.109;
GT_t.LN_t.M901.distanceMin = 3000;
GT_t.LN_t.M901.distanceMax = 100000;
GT_t.LN_t.M901.maxShootingSpeed = 0;
GT_t.LN_t.M901.launch_delay = 3;
GT_t.LN_t.M901.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT_t.LN_t.M901.reactionTime = 2;
GT_t.LN_t.M901.reflection_limit = 0.049;
GT_t.LN_t.M901.ECM_K = -1
GT_t.LN_t.M901.sensor = {};
set_recursive_metatable(GT_t.LN_t.M901.sensor, GT_t.WSN_t[0]);
GT_t.LN_t.M901.PL = {};
GT_t.LN_t.M901.PL[1] = {};
GT_t.LN_t.M901.PL[1].ammo_capacity = 4;
GT_t.LN_t.M901.PL[1].type_ammunition={4,4,34,92};
--GT_t.LN_t.M901.PL[1].name_ammunition="MIM_104";
GT_t.LN_t.M901.PL[1].reload_time = 3600;
GT_t.LN_t.M901.PL[1].shot_delay = 0.1;
GT_t.LN_t.M901.BR = {};

GT_t.LN_t.roland = {} -- Roland ADS
GT_t.LN_t.roland.type = 4
GT_t.LN_t.roland.xc = -3.255
GT_t.LN_t.roland.distanceMin = 1500
GT_t.LN_t.roland.distanceMax = 8000
GT_t.LN_t.roland.ECM_K = 0.65;
GT_t.LN_t.roland.reactionTime = 8
GT_t.LN_t.roland.launch_delay = 3;
GT_t.LN_t.roland.maxTrackingSpeed = 0.0;
GT_t.LN_t.roland.maxShootingSpeed = 0.0;
GT_t.LN_t.roland.beamWidth = math.rad(90);
GT_t.LN_t.roland.inclination_correction_upper_limit = math.rad(5.0);
GT_t.LN_t.roland.inclination_correction_bias = math.rad(5.0);
GT_t.LN_t.roland.sensor = {}
set_recursive_metatable(GT_t.LN_t.roland.sensor, GT_t.WSN_t[0])
GT_t.LN_t.roland.barrels_reload_type = BarrelsReloadTypes.SIMULTANEOUSLY;
GT_t.LN_t.roland.PL = {}
GT_t.LN_t.roland.PL[1] = {}
GT_t.LN_t.roland.PL[1].shot_delay = 6;
GT_t.LN_t.roland.PL[1].ammo_capacity = 10
GT_t.LN_t.roland.PL[1].reload_time = 300;
GT_t.LN_t.roland.PL[1].type_ammunition={4,4,34,99}
GT_t.LN_t.roland.PL[1].name_ammunition=_("ROLAND")
GT_t.LN_t.roland.BR = {};

GT_t.LN_t.HARPOON = {} -- Harpoon Missile Launcher
GT_t.LN_t.HARPOON.type = 1
GT_t.LN_t.HARPOON.distanceMin = 8000
GT_t.LN_t.HARPOON.distanceMax = 95000
GT_t.LN_t.HARPOON.reactionTime = 8
GT_t.LN_t.HARPOON.launch_delay = 2;
GT_t.LN_t.HARPOON.max_number_of_missiles_channels = 8;
GT_t.LN_t.HARPOON.external_tracking_awacs = true
GT_t.LN_t.HARPOON.sensor = {}
set_recursive_metatable(GT_t.LN_t.HARPOON.sensor, GT_t.WSN_t[0])
GT_t.LN_t.HARPOON.PL = {}
GT_t.LN_t.HARPOON.PL[1] = {}
GT_t.LN_t.HARPOON.PL[1].ammo_capacity = 1
GT_t.LN_t.HARPOON.PL[1].type_ammunition = {4,4,11,126}
--GT_t.LN_t.HARPOON.PL[1].name_ammunition = "AGM_84"
GT_t.LN_t.HARPOON.PL[1].reload_time = 1000000; -- never during the mission
GT_t.LN_t.HARPOON.PL[1].shot_delay = 2;
GT_t.LN_t.HARPOON.BR = { {pos = {0, 0, 0} } }

GT_t.WS_t.ship_klinok = {} -- SA-N-9 Guntlet (internal name "Kinshal", export name "Klinok"), navy analog of SAM TOR
GT_t.WS_t.ship_klinok.angles = {
					{math.rad(180), math.rad(-180), math.rad(-90), math.rad(90)},
					};
GT_t.WS_t.ship_klinok.reference_angle_Z = math.rad(90)
GT_t.WS_t.ship_klinok.moveable = false
GT_t.WS_t.ship_klinok.LN = {}
GT_t.WS_t.ship_klinok.LN[1] = {}
GT_t.WS_t.ship_klinok.LN[1].type = 4
GT_t.WS_t.ship_klinok.LN[1].distanceMin = 1500
GT_t.WS_t.ship_klinok.LN[1].distanceMax = 12000
GT_t.WS_t.ship_klinok.LN[1].ECM_K = 0.8
GT_t.WS_t.ship_klinok.LN[1].reactionTime = 6
GT_t.WS_t.ship_klinok.LN[1].sensor = {}
GT_t.WS_t.ship_klinok.LN[1].launch_delay = 3
GT_t.WS_t.ship_klinok.LN[1].reflection_limit = 0.02;
GT_t.WS_t.ship_klinok.LN[1].beamWidth = math.rad(90);
GT_t.WS_t.ship_klinok.LN[1].max_number_of_missiles_channels = 2
set_recursive_metatable(GT_t.WS_t.ship_klinok.LN[1].sensor, GT_t.WSN_t[0])
GT_t.WS_t.ship_klinok.LN[1].PL = {}
GT_t.WS_t.ship_klinok.LN[1].PL[1] = {}
GT_t.WS_t.ship_klinok.LN[1].PL[1].ammo_capacity = 8
GT_t.WS_t.ship_klinok.LN[1].PL[1].type_ammunition = {4,4,34,89};
--GT_t.WS_t.ship_klinok.LN[1].PL[1].name_ammunition=_("9M331")
GT_t.WS_t.ship_klinok.LN[1].PL[1].shot_delay = 0.1
GT_t.WS_t.ship_klinok.LN[1].PL[1].reload_time = 1000000; -- never during the mission
GT_t.WS_t.ship_klinok.LN[1].BR = { {pos = {0, 0, 0} } }

GT_t.WS_t.kortik = {} -- SA-N-11 Grisson (internal name "Kortik", export name "Kashtan"), Navy analog of SAM Tunguska
GT_t.WS_t.kortik.angles = {
					{math.rad(90), math.rad(-90), math.rad(-10), math.rad(90)},
					};
GT_t.WS_t.kortik.omegaY = math.rad(80);
GT_t.WS_t.kortik.omegaZ = math.rad(100);
GT_t.WS_t.kortik.pidY = {p=100, i=0.1, d=10, i=6}
GT_t.WS_t.kortik.pidZ = {p=100, i=0.1, d=10, i=6}
GT_t.WS_t.kortik.reference_angle_Z = 0
GT_t.WS_t.kortik.reference_angle_Y = 0
GT_t.WS_t.kortik.reloadAngleZ = math.rad(89.90);
__LN = add_launcher(GT_t.WS_t.kortik, GT_t.LN_t._9M311); -- missiles
__LN.maxShootingSpeed = 100; -- not limited
__LN.barrels_reload_type = BarrelsReloadTypes.SIMULTANEOUSLY;
__LN.PL[1].ammo_capacity = 64;
__LN.PL[1].reload_time = 10000000;
__LN.PL[1].shot_delay = 20;
__LN.PL[1].automaticLoader = true;
__LN.BR = {
            {pos = {2.5, 0.96, 1.6} },
            {pos = {2.5, 0.96, -1.6}},
            {pos = {2.5, 0.7, 1.6}  },
            {pos = {2.5, 0.7, -1.6} },
            {pos = {2.5, 0.96, 1.35} },
            {pos = {2.5, 0.96, -1.35}},
            {pos = {2.5, 0.7, 1.35}  },
            {pos = {2.5, 0.7, -1.35} },
        }

__LN = add_launcher(GT_t.WS_t.kortik, GT_t.LN_t.GSH_6_30K); -- guns
__LN.beamWidth = math.rad(90);
__LN.PL[1].ammo_capacity = 1000;
__LN.BR = { {pos = {2.5, 0.3, 1.55} },
            {pos = {2.5, 0.3, -1.55} }
        };
__LN = nil;

GT_t.WS_t.seasparrow = {} -- RIM-7, Navy analog of AIM-7
GT_t.WS_t.seasparrow.angles = {
					{math.rad(180), math.rad(-180), math.rad(-15), math.rad(85)},
					};
GT_t.WS_t.seasparrow.omegaY = 1
GT_t.WS_t.seasparrow.omegaZ = 1
GT_t.WS_t.seasparrow.distanceMin = 2000
GT_t.WS_t.seasparrow.distanceMax = 15000
GT_t.WS_t.seasparrow.ECM_K = 0.8;
GT_t.WS_t.seasparrow.reference_angle_Z = 0
GT_t.WS_t.seasparrow.LN = {}
GT_t.WS_t.seasparrow.LN[1] = {}
GT_t.WS_t.seasparrow.LN[1].type = 4
GT_t.WS_t.seasparrow.LN[1].launch_delay = 2;
GT_t.WS_t.seasparrow.LN[1].reactionTime = 3;
GT_t.WS_t.seasparrow.LN[1].reflection_limit = 0.02;
GT_t.WS_t.seasparrow.LN[1].min_launch_angle = math.rad(15.0)
GT_t.WS_t.seasparrow.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.seasparrow.LN[1].sensor, GT_t.WSN_t[0])
GT_t.WS_t.seasparrow.LN[1].beamWidth = math.rad(90);
GT_t.WS_t.seasparrow.LN[1].BR = { {pos = {0, 0, 0.9} }, {pos = {0, 0, -0.9} } }
GT_t.WS_t.seasparrow.LN[1].PL = {}
GT_t.WS_t.seasparrow.LN[1].PL[1] = {}
GT_t.WS_t.seasparrow.LN[1].PL[1].ammo_capacity = 8
GT_t.WS_t.seasparrow.LN[1].PL[1].type_ammunition = {4,4,34,28};
--GT_t.WS_t.seasparrow.LN[1].PL[1].name_ammunition = _("SEASPARROW")
GT_t.WS_t.seasparrow.LN[1].PL[1].shot_delay = 0.1;
GT_t.WS_t.seasparrow.LN[1].PL[1].reload_time = 1000000; -- never during the mission

GT_t.WS_t.ship_rif = {} -- S-300 5V55 missile, SA-N-6 Grumble (internal name "Fort", export name "Rif")
GT_t.WS_t.ship_rif.moveable = false
GT_t.WS_t.ship_rif.angles = {
					{math.rad(180), math.rad(-180), math.rad(-90), math.rad(90)},
					};
GT_t.WS_t.ship_rif.reference_angle_Z = math.rad(90)
GT_t.WS_t.ship_rif.LN = {}
GT_t.WS_t.ship_rif.LN[1] = {}
GT_t.WS_t.ship_rif.LN[1].type = 4
GT_t.WS_t.ship_rif.LN[1].distanceMin = 5000
GT_t.WS_t.ship_rif.LN[1].distanceMax = 120000
GT_t.WS_t.ship_rif.LN[1].ECM_K = 0.4
GT_t.WS_t.ship_rif.LN[1].reactionTime = 10
GT_t.WS_t.ship_rif.LN[1].launch_delay = 3;
GT_t.WS_t.ship_rif.LN[1].reflection_limit = 0.049;
GT_t.WS_t.ship_rif.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.ship_rif.LN[1].sensor, GT_t.WSN_t[0])
GT_t.WS_t.ship_rif.LN[1].beamWidth = math.rad(90);
GT_t.WS_t.ship_rif.LN[1].PL = {}
GT_t.WS_t.ship_rif.LN[1].PL[1] = {}
GT_t.WS_t.ship_rif.LN[1].PL[1].ammo_capacity = 8
GT_t.WS_t.ship_rif.LN[1].PL[1].type_ammunition = {4,4,34,80}
GT_t.WS_t.ship_rif.LN[1].PL[1].name_ammunition = _("5V55");
GT_t.WS_t.ship_rif.LN[1].PL[1].reload_time = 1000000; -- never during the mission
GT_t.WS_t.ship_rif.LN[1].BR = { {pos = {0, 0, 0} } }

GT_t.WS_t.ship_rifM = {} -- S-300PM 48N6E2 missile, SA-N-6 Grumble (internal name "Fort-M", export name "Rif-M")
GT_t.WS_t.ship_rifM.moveable = false
GT_t.WS_t.ship_rifM.angles = {
					{math.rad(180), math.rad(-180), math.rad(-90), math.rad(90)},
					};
GT_t.WS_t.ship_rifM.reference_angle_Z = math.rad(90)
GT_t.WS_t.ship_rifM.LN = {}
GT_t.WS_t.ship_rifM.LN[1] = {}
GT_t.WS_t.ship_rifM.LN[1].type = 4
GT_t.WS_t.ship_rifM.LN[1].distanceMin = 5000
GT_t.WS_t.ship_rifM.LN[1].distanceMax = 150000
GT_t.WS_t.ship_rifM.LN[1].ECM_K = 0.4;
GT_t.WS_t.ship_rifM.LN[1].reactionTime = 10
GT_t.WS_t.ship_rifM.LN[1].launch_delay = 3;
GT_t.WS_t.ship_rifM.LN[1].reflection_limit = 0.049;
GT_t.WS_t.ship_rifM.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.ship_rifM.LN[1].sensor, GT_t.WSN_t[0])
GT_t.WS_t.ship_rifM.LN[1].beamWidth = math.rad(1);
GT_t.WS_t.ship_rifM.LN[1].PL = {}
GT_t.WS_t.ship_rifM.LN[1].PL[1] = {}
GT_t.WS_t.ship_rifM.LN[1].PL[1].ammo_capacity = 5
GT_t.WS_t.ship_rifM.LN[1].PL[1].type_ammunition = {4,4,34,81}
--GT_t.WS_t.ship_rifM.LN[1].PL[1].name_ammunition = _("48N6E2")
GT_t.WS_t.ship_rifM.LN[1].PL[1].reload_time = 1000000; -- never during the mission
GT_t.WS_t.ship_rifM.LN[1].BR = { {pos = {0, 0, 0} } }

GT_t.WS_t.ship_bazalt = {} -- Bazalt 4K80 P-500, ASM SS-N-12 Sandbox
GT_t.WS_t.ship_bazalt.angles = {
					{math.rad(45), math.rad(-45), math.rad(-90), math.rad(90)},
					};
GT_t.WS_t.ship_bazalt.reference_angle_Z = math.rad(30)
GT_t.WS_t.ship_bazalt.moveable = false
GT_t.WS_t.ship_bazalt.LN = {}
GT_t.WS_t.ship_bazalt.LN[1] = {}
GT_t.WS_t.ship_bazalt.LN[1].type = 1
GT_t.WS_t.ship_bazalt.LN[1].distanceMin = 13000
GT_t.WS_t.ship_bazalt.LN[1].distanceMax = 555000
GT_t.WS_t.ship_bazalt.LN[1].reactionTime = 8
GT_t.WS_t.ship_bazalt.LN[1].launch_delay = 2;
GT_t.WS_t.ship_bazalt.LN[1].external_tracking_awacs = true;
GT_t.WS_t.ship_bazalt.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.ship_bazalt.LN[1].sensor, GT_t.WSN_t[0])
GT_t.WS_t.ship_bazalt.LN[1].PL = {}
GT_t.WS_t.ship_bazalt.LN[1].PL[1] = {}
GT_t.WS_t.ship_bazalt.LN[1].PL[1].ammo_capacity = 1
GT_t.WS_t.ship_bazalt.LN[1].PL[1].type_ammunition = {4,4,11,119}
--GT_t.WS_t.ship_bazalt.LN[1].PL[1].name_ammunition = _("4К80")
GT_t.WS_t.ship_bazalt.LN[1].PL[1].reload_time = 1000000; -- never during the mission
GT_t.WS_t.ship_bazalt.LN[1].BR = { {pos = {0, 0, 0} } }

GT_t.WS_t.ship_granit = {} -- Granit 3M45 P-700, SS-N-19 Shipwreck 
GT_t.WS_t.ship_granit.angles = {
					{math.rad(45), math.rad(-45), math.rad(-90), math.rad(90)},
					};
GT_t.WS_t.ship_granit.reference_angle_Z = math.rad(60);
GT_t.WS_t.ship_granit.moveable = false
GT_t.WS_t.ship_granit.LN = {}
GT_t.WS_t.ship_granit.LN[1] = {}
GT_t.WS_t.ship_granit.LN[1].type = 1
GT_t.WS_t.ship_granit.LN[1].distanceMin = 13000
GT_t.WS_t.ship_granit.LN[1].distanceMax = 550000
GT_t.WS_t.ship_granit.LN[1].reactionTime = 8
GT_t.WS_t.ship_granit.LN[1].launch_delay = 2;
GT_t.WS_t.ship_granit.LN[1].external_tracking_awacs = true
GT_t.WS_t.ship_granit.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.ship_granit.LN[1].sensor, GT_t.WSN_t[0])
GT_t.WS_t.ship_granit.LN[1].PL = {}
GT_t.WS_t.ship_granit.LN[1].PL[1] = {}
GT_t.WS_t.ship_granit.LN[1].PL[1].ammo_capacity = 2
GT_t.WS_t.ship_granit.LN[1].PL[1].type_ammunition = {4,4,11,120}
--GT_t.WS_t.ship_granit.LN[1].PL[1].name_ammunition = _("3M45")
GT_t.WS_t.ship_granit.LN[1].PL[1].reload_time = 1000000; -- never during the mission
GT_t.WS_t.ship_granit.LN[1].BR = { {pos = {0, 0, 0} } }

GT_t.WS_t.ship_MOSKIT = {} -- 3M80 MOSKIT (SS-N-22 Sunburn ASM-MSS)
GT_t.WS_t.ship_MOSKIT.angles = {
					{math.rad(45), math.rad(-45), math.rad(-90), math.rad(90)},
					};
GT_t.WS_t.ship_MOSKIT.reference_angle_Y = 0
GT_t.WS_t.ship_MOSKIT.reference_angle_Z = 0.20944
GT_t.WS_t.ship_MOSKIT.moveable = false
GT_t.WS_t.ship_MOSKIT.LN = {}
GT_t.WS_t.ship_MOSKIT.LN[1] = {}
GT_t.WS_t.ship_MOSKIT.LN[1].type = 1
GT_t.WS_t.ship_MOSKIT.LN[1].distanceMin = 10000
GT_t.WS_t.ship_MOSKIT.LN[1].distanceMax = 120000
GT_t.WS_t.ship_MOSKIT.LN[1].reactionTime = 12
GT_t.WS_t.ship_MOSKIT.LN[1].launch_delay = 5
GT_t.WS_t.ship_MOSKIT.LN[1].external_tracking_awacs = true;
GT_t.WS_t.ship_MOSKIT.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.ship_MOSKIT.LN[1].sensor, GT_t.WSN_t[0])
GT_t.WS_t.ship_MOSKIT.LN[1].PL = {}
GT_t.WS_t.ship_MOSKIT.LN[1].PL[1] = {}
GT_t.WS_t.ship_MOSKIT.LN[1].PL[1].ammo_capacity = 1
GT_t.WS_t.ship_MOSKIT.LN[1].PL[1].type_ammunition = {4,4,11,56}
--GT_t.WS_t.ship_MOSKIT.LN[1].PL[1].name_ammunition = _("3M80")
GT_t.WS_t.ship_MOSKIT.LN[1].PL[1].reload_time = 1000000;
GT_t.WS_t.ship_MOSKIT.LN[1].PL[1].shot_delay = 2
GT_t.WS_t.ship_MOSKIT.LN[1].BR = { {pos = {5, 0, 0} } }

GT_t.WS_t.ship_OSA_M = {} -- 9M33, SA-N-4
GT_t.WS_t.ship_OSA_M.angles = {
					{math.rad(180), math.rad(-180), math.rad(-0.5), math.rad(89.9)},
					};
GT_t.WS_t.ship_OSA_M.angles_mech = GT_t.WS_t.ship_OSA_M.angles;
GT_t.WS_t.ship_OSA_M.omegaY = 1;
GT_t.WS_t.ship_OSA_M.omegaZ = 1;
GT_t.WS_t.ship_OSA_M.reference_angle_Z = 0;
GT_t.WS_t.ship_OSA_M.reference_angle_Y = 0;
GT_t.WS_t.ship_OSA_M.reloadAngleY = math.rad(180);
GT_t.WS_t.ship_OSA_M.reloadAngleZ = math.rad(89.9);
__LN = add_launcher(GT_t.WS_t.ship_OSA_M, GT_t.LN_t._9A33);
__LN.ECM_K = -1
__LN.show_external_missile = true;
__LN.launch_delay = 3;
__LN.reactionTime = 1;
__LN.maxShootingSpeed = 15;
__LN.barrels_reload_type = BarrelsReloadTypes.SIMULTANEOUSLY;
__LN.beamWidth = math.rad(1);
__LN.PL[1].ammo_capacity = 22;
__LN.PL[1].shot_delay = 18;

GT_t.WS_t.ship_MK41_SM2 = {}
GT_t.WS_t.ship_MK41_SM2.moveable = false
GT_t.WS_t.ship_MK41_SM2.angles = {
					{math.rad(180), math.rad(-180), math.rad(-90), math.rad(90)},
					};
GT_t.WS_t.ship_MK41_SM2.LN = {}
GT_t.WS_t.ship_MK41_SM2.LN[1] = {}
GT_t.WS_t.ship_MK41_SM2.LN[1].type = 4
GT_t.WS_t.ship_MK41_SM2.LN[1].distanceMin = 4000
GT_t.WS_t.ship_MK41_SM2.LN[1].distanceMax = 100000
GT_t.WS_t.ship_MK41_SM2.LN[1].reactionTime = 1
GT_t.WS_t.ship_MK41_SM2.LN[1].launch_delay = 2
GT_t.WS_t.ship_MK41_SM2.LN[1].reflection_limit = 0.1
GT_t.WS_t.ship_MK41_SM2.LN[1].barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT_t.WS_t.ship_MK41_SM2.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.ship_MK41_SM2.LN[1].sensor, GT_t.WSN_t[0])
GT_t.WS_t.ship_MK41_SM2.LN[1].PL = {}
GT_t.WS_t.ship_MK41_SM2.LN[1].PL[1] = {}
GT_t.WS_t.ship_MK41_SM2.LN[1].PL[1].ammo_capacity = 15
GT_t.WS_t.ship_MK41_SM2.LN[1].PL[1].type_ammunition = {4,4,34,79}
--GT_t.WS_t.ship_MK41_SM2.LN[1].PL[1].name_ammunition = _("SM2")
GT_t.WS_t.ship_MK41_SM2.LN[1].PL[1].reload_time = 1000000; -- never during the mission
GT_t.WS_t.ship_MK41_SM2.LN[1].BR = { {pos = {0, 0, 0} } }

GT_t.WS_t.ship_HARPOON = {}
GT_t.WS_t.ship_HARPOON.angles = {
					{math.rad(180), math.rad(-180), math.rad(-90), math.rad(90)},
					};
GT_t.WS_t.ship_HARPOON.reference_angle_Z = 0.785398
GT_t.WS_t.ship_HARPOON.moveable = false
GT_t.WS_t.ship_HARPOON.LN = {}
add_launcher(GT_t.WS_t.ship_HARPOON, GT_t.LN_t.HARPOON);


GT_t.WS_t.ship_TOMAHAWK = {}
GT_t.WS_t.ship_TOMAHAWK.angles = {
					{math.rad(180), math.rad(-180), math.rad(-90), math.rad(90)},
					};
GT_t.WS_t.ship_TOMAHAWK.reference_angle_Z = math.rad(90)
GT_t.WS_t.ship_TOMAHAWK.moveable = false
GT_t.WS_t.ship_TOMAHAWK.LN = {}
GT_t.WS_t.ship_TOMAHAWK.LN[1] = {}
GT_t.WS_t.ship_TOMAHAWK.LN[1].type = 8
GT_t.WS_t.ship_TOMAHAWK.LN[1].reactionTime = 2
GT_t.WS_t.ship_TOMAHAWK.LN[1].launch_delay = 2
GT_t.WS_t.ship_TOMAHAWK.LN[1].external_tracking_awacs = true
GT_t.WS_t.ship_TOMAHAWK.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.ship_TOMAHAWK.LN[1].sensor, GT_t.WSN_t[0])
GT_t.WS_t.ship_TOMAHAWK.LN[1].PL = {}
GT_t.WS_t.ship_TOMAHAWK.LN[1].PL[1] = {}
GT_t.WS_t.ship_TOMAHAWK.LN[1].PL[1].ammo_capacity = 12
GT_t.WS_t.ship_TOMAHAWK.LN[1].PL[1].type_ammunition = {4,4,11,125}
--GT_t.WS_t.ship_TOMAHAWK.LN[1].PL[1].name_ammunition = _("BGM_109")
GT_t.WS_t.ship_TOMAHAWK.LN[1].PL[1].reload_time = 1000000; -- never during the mission
GT_t.WS_t.ship_TOMAHAWK.LN[1].PL[1].shot_delay = 1
GT_t.WS_t.ship_TOMAHAWK.LN[1].BR = { {pos = {2, 0, 0} } }

GT_t.LN_t.stinger = {}
GT_t.LN_t.stinger.type = 4
GT_t.LN_t.stinger.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT_t.LN_t.stinger.distanceMin = 200
GT_t.LN_t.stinger.distanceMax = 4500
GT_t.LN_t.stinger.reactionTime = 2;
GT_t.LN_t.stinger.launch_delay = 1;
GT_t.LN_t.stinger.reflection_limit = 0.22
GT_t.LN_t.stinger.ECM_K = -1
GT_t.LN_t.stinger.inclination_correction_upper_limit = math.rad(30);
GT_t.LN_t.stinger.inclination_correction_bias = math.rad(10.0);
GT_t.LN_t.stinger.sensor = {}
set_recursive_metatable(GT_t.LN_t.stinger.sensor, GT_t.WSN_t[0])
GT_t.LN_t.stinger.PL = {}
GT_t.LN_t.stinger.PL[1] = {}
GT_t.LN_t.stinger.PL[1].ammo_capacity = 3
GT_t.LN_t.stinger.PL[1].reload_time = 120;
GT_t.LN_t.stinger.PL[1].type_ammunition = {4,4,34,93}
GT_t.LN_t.stinger.PL[1].name_ammunition = _("FIM-92 Stinger")
GT_t.LN_t.stinger.PL[1].shot_delay = 0.01;
GT_t.LN_t.stinger.BR = { { pos = {1, 0, 0}, drawArgument = 4}, }

GT_t.WS_t.stinger_manpad = {}
GT_t.WS_t.stinger_manpad.pos = {-0.071, 1.623,0}
GT_t.WS_t.stinger_manpad.angles = {
					{math.rad(180), math.rad(-180), math.rad(-45), math.rad(80)},
					};
GT_t.WS_t.stinger_manpad.drawArgument1 = 0
GT_t.WS_t.stinger_manpad.drawArgument2 = 1
GT_t.WS_t.stinger_manpad.omegaY = 1.5;
GT_t.WS_t.stinger_manpad.omegaZ = 1.5;
GT_t.WS_t.stinger_manpad.pidY = {p=40,i=1.0,d=7, inn = 5};
GT_t.WS_t.stinger_manpad.pidZ = {p=40,i=1.0,d=7, inn = 5};
GT_t.WS_t.stinger_manpad.reloadAngleY = -100
GT_t.WS_t.stinger_manpad.LN = {}
GT_t.WS_t.stinger_manpad.LN[1] = {}
set_recursive_metatable(GT_t.WS_t.stinger_manpad.LN[1], GT_t.LN_t.stinger)
GT_t.WS_t.stinger_manpad.LN[1].PL[1].shot_delay = 13;
GT_t.WS_t.stinger_manpad.LN[1].PL[1].automaticLoader = false
GT_t.WS_t.stinger_manpad.LN[1].barrels_reload_type = BarrelsReloadTypes.ORDINARY;

GT_t.WS_t.stinger_comm_manpad = {}
GT_t.WS_t.stinger_comm_manpad.pos = {-0.071, 1.623,0}
GT_t.WS_t.stinger_comm_manpad.angles_mech = {
					{math.rad(180), math.rad(-180), math.rad(-90), math.rad(60)},
					};
GT_t.WS_t.stinger_comm_manpad.angles = {
					{math.rad(180), math.rad(-180), math.rad(-45), math.rad(60)},
					};
GT_t.WS_t.stinger_comm_manpad.drawArgument1 = 0
GT_t.WS_t.stinger_comm_manpad.drawArgument2 = 1
GT_t.WS_t.stinger_comm_manpad.omegaY = 2
GT_t.WS_t.stinger_comm_manpad.omegaZ = 2
GT_t.WS_t.stinger_comm_manpad.pidY = {p=40,i=1.0,d=7, inn = 5};
GT_t.WS_t.stinger_comm_manpad.pidZ = {p=40,i=1.0,d=7, inn = 5};
GT_t.WS_t.stinger_comm_manpad.reference_angle_Z = -math.rad(87) -- hand down
GT_t.WS_t.stinger_comm_manpad.LN = {}
GT_t.WS_t.stinger_comm_manpad.LN[1] = {}
GT_t.WS_t.stinger_comm_manpad.LN[1].type = 102
GT_t.WS_t.stinger_comm_manpad.LN[1].xc = 0
GT_t.WS_t.stinger_comm_manpad.LN[1].distanceMin = 200
GT_t.WS_t.stinger_comm_manpad.LN[1].distanceMax = 4500
GT_t.WS_t.stinger_comm_manpad.LN[1].min_trg_alt = 10
GT_t.WS_t.stinger_comm_manpad.LN[1].max_trg_alt = 3500
GT_t.WS_t.stinger_comm_manpad.LN[1].reactionTime = 5
GT_t.WS_t.stinger_comm_manpad.LN[1].reflection_limit = 0.22

GT_t.LN_t.igla = {}
GT_t.LN_t.igla.type = 4
GT_t.LN_t.igla.distanceMin = 500
GT_t.LN_t.igla.distanceMax = 5200
GT_t.LN_t.igla.reactionTime = 2;
GT_t.LN_t.igla.launch_delay = 1;
GT_t.LN_t.igla.maxShootingSpeed = 0
GT_t.LN_t.igla.reflection_limit = 0.22
GT_t.LN_t.igla.ECM_K = -1
GT_t.LN_t.igla.min_launch_angle = math.rad(-20);
GT_t.LN_t.igla.inclination_correction_upper_limit = math.rad(0);
GT_t.LN_t.igla.inclination_correction_bias = (0);
GT_t.LN_t.igla.sensor = {}
set_recursive_metatable(GT_t.LN_t.igla.sensor, GT_t.WSN_t[0])
GT_t.LN_t.igla.PL = {}
GT_t.LN_t.igla.PL[1] = {}
GT_t.LN_t.igla.PL[1].ammo_capacity = 3
GT_t.LN_t.igla.PL[1].shot_delay = 0.01
GT_t.LN_t.igla.PL[1].reload_time = 120
GT_t.LN_t.igla.PL[1].type_ammunition = {4,4,34,91}
GT_t.LN_t.igla.PL[1].name_ammunition = _("9M39")
GT_t.LN_t.igla.PL[1].automaticLoader = false
GT_t.LN_t.igla.BR = { { pos = {1, 0, 0}, drawArgument = 4}, }

GT_t.WS_t.igla_manpad = {};
GT_t.WS_t.igla_manpad.pos = {-0.071, 1.623,0};
GT_t.WS_t.igla_manpad.angles = {
					{math.rad(180), math.rad(-180), math.rad(-45), math.rad(80)},
					};
GT_t.WS_t.igla_manpad.drawArgument1 = 0;
GT_t.WS_t.igla_manpad.drawArgument2 = 1;
GT_t.WS_t.igla_manpad.omegaY = 1.5;
GT_t.WS_t.igla_manpad.omegaZ = 1.5;
GT_t.WS_t.igla_manpad.pidY = {p=40,i=1.0,d=7, inn = 5};
GT_t.WS_t.igla_manpad.pidZ = {p=40,i=1.0,d=7, inn = 5};
GT_t.WS_t.igla_manpad.reloadAngleY = -100; -- not constrained
GT_t.WS_t.igla_manpad.LN = {};
GT_t.WS_t.igla_manpad.LN[1] = {};
set_recursive_metatable(GT_t.WS_t.igla_manpad.LN[1], GT_t.LN_t.igla);
GT_t.WS_t.igla_manpad.LN[1].PL[1].shot_delay = 13;


GT_t.WS_t.igla_comm_manpad = {}
GT_t.WS_t.igla_comm_manpad.pos = {-0.071, 1.623,0}
GT_t.WS_t.igla_comm_manpad.angles = {
					{math.rad(180), math.rad(-180), math.rad(-45), math.rad(80)},
					};
GT_t.WS_t.igla_comm_manpad.omegaY = 2
GT_t.WS_t.igla_comm_manpad.omegaZ = 2
GT_t.WS_t.igla_comm_manpad.reference_angle_Z = 0
GT_t.WS_t.igla_comm_manpad.reference_angle_Y = 0
GT_t.WS_t.igla_comm_manpad.LN = {}
GT_t.WS_t.igla_comm_manpad.LN[1] = {}
GT_t.WS_t.igla_comm_manpad.LN[1].type = 102
GT_t.WS_t.igla_comm_manpad.LN[1].xc = 0
GT_t.WS_t.igla_comm_manpad.LN[1].distanceMin = 500
GT_t.WS_t.igla_comm_manpad.LN[1].distanceMax = 5200
GT_t.WS_t.igla_comm_manpad.LN[1].min_trg_alt = 10
GT_t.WS_t.igla_comm_manpad.LN[1].max_trg_alt = 2500
GT_t.WS_t.igla_comm_manpad.LN[1].reactionTime = 5
GT_t.WS_t.igla_comm_manpad.LN[1].reflection_limit = 0.22