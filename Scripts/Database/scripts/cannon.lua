--Cannon Launchers
--

GT_t.LN_t.RPG = {} -- 73mm gun for human grenage launcher
GT_t.LN_t.RPG.type = 2
GT_t.LN_t.RPG.distanceMin = 10
GT_t.LN_t.RPG.distanceMax = 800
GT_t.LN_t.RPG.max_trg_alt = 300
GT_t.LN_t.RPG.reactionTime = 1
GT_t.LN_t.RPG.sensor = {}
set_recursive_metatable(GT_t.LN_t.RPG.sensor, GT_t.WSN_t[1])
GT_t.LN_t.RPG.PL = {}
GT_t.LN_t.RPG.PL[1] = {}
GT_t.LN_t.RPG.PL[1].shot_delay = 12
GT_t.LN_t.RPG.PL[1].reload_time = 60
GT_t.LN_t.RPG.PL[1].ammo_capacity = 3
GT_t.LN_t.RPG.PL[1].shell_name = {"2A28_73"};
GT_t.LN_t.RPG.BR = { {pos = {1.3, 0.5, 0} } }

GT_t.LN_t.tank_gun_2A28 = {} -- 73mm gun for BMP-1 BMD-1
GT_t.LN_t.tank_gun_2A28.type = 2
GT_t.LN_t.tank_gun_2A28.xc = 0.512
GT_t.LN_t.tank_gun_2A28.distanceMin = 10
GT_t.LN_t.tank_gun_2A28.distanceMax = 600
GT_t.LN_t.tank_gun_2A28.max_trg_alt = 300
GT_t.LN_t.tank_gun_2A28.reactionTime = 2
GT_t.LN_t.tank_gun_2A28.maxShootingSpeed = 9
GT_t.LN_t.tank_gun_2A28.sensor = {}
set_recursive_metatable(GT_t.LN_t.tank_gun_2A28.sensor, GT_t.WSN_t[2])
GT_t.LN_t.tank_gun_2A28.PL = {}
GT_t.LN_t.tank_gun_2A28.PL[1] = {}
GT_t.LN_t.tank_gun_2A28.PL[1].shot_delay = 7
GT_t.LN_t.tank_gun_2A28.PL[1].ammo_capacity = 40
GT_t.LN_t.tank_gun_2A28.PL[1].reload_time = 40 * 15;
GT_t.LN_t.tank_gun_2A28.PL[1].shell_name = {"2A28_73"};
GT_t.LN_t.tank_gun_2A28.BR = { {pos = {2.3, 0, 0} } }

GT_t.LN_t.tank_gun_105mm = {} -- M68 gun for M-48A5, M-60 Patton, M1128 Stryker MGS
GT_t.LN_t.tank_gun_105mm.type = 2
GT_t.LN_t.tank_gun_105mm.xc = 1.059
GT_t.LN_t.tank_gun_105mm.distanceMin = 10
GT_t.LN_t.tank_gun_105mm.distanceMax = 2500
GT_t.LN_t.tank_gun_105mm.max_trg_alt = 500
GT_t.LN_t.tank_gun_105mm.reactionTime = 2
GT_t.LN_t.tank_gun_105mm.maxShootingSpeed = 1
GT_t.LN_t.tank_gun_105mm.sensor = {}
set_recursive_metatable(GT_t.LN_t.tank_gun_105mm.sensor, GT_t.WSN_t[6])
GT_t.LN_t.tank_gun_105mm.PL = {}
GT_t.LN_t.tank_gun_105mm.PL[1] = {}
GT_t.LN_t.tank_gun_105mm.PL[1].shell_name = {"M68_105_AP"};
GT_t.LN_t.tank_gun_105mm.PL[1].automaticLoader = false;
GT_t.LN_t.tank_gun_105mm.PL[1].shot_delay = 10;
GT_t.LN_t.tank_gun_105mm.BR = { {pos = {5.2, 0,0} } }

GT_t.LN_t.tank_gun_120mm = {} -- M250 gun for M1A2 abrams, L44 gun for Leopard 2A4.
GT_t.LN_t.tank_gun_120mm.type = 2
GT_t.LN_t.tank_gun_120mm.distanceMin = 10
GT_t.LN_t.tank_gun_120mm.distanceMax = 3500
GT_t.LN_t.tank_gun_120mm.max_trg_alt = 500
GT_t.LN_t.tank_gun_120mm.reactionTime = 2
GT_t.LN_t.tank_gun_120mm.maxShootingSpeed = 9
GT_t.LN_t.tank_gun_120mm.sensor = {}
set_recursive_metatable(GT_t.LN_t.tank_gun_120mm.sensor, GT_t.WSN_t[7])
GT_t.LN_t.tank_gun_120mm.PL = {}
GT_t.LN_t.tank_gun_120mm.PL[1] = {}
GT_t.LN_t.tank_gun_120mm.PL[1].ammo_capacity = 2
GT_t.LN_t.tank_gun_120mm.PL[1].automaticLoader = false;
GT_t.LN_t.tank_gun_120mm.PL[1].shell_name = {"M256_120_AP"};
GT_t.LN_t.tank_gun_120mm.PL[1].shot_delay = 6
GT_t.LN_t.tank_gun_120mm.PL[2] = {}
GT_t.LN_t.tank_gun_120mm.PL[2].ammo_capacity = 14
GT_t.LN_t.tank_gun_120mm.PL[2].automaticLoader = false;
GT_t.LN_t.tank_gun_120mm.PL[2].shell_name = {"M256_120_AP"};
GT_t.LN_t.tank_gun_120mm.PL[2].shot_delay = 9
GT_t.LN_t.tank_gun_120mm.BR = { {pos = {5.2, 0, 0} } }

GT_t.LN_t.tank_gun_CN_120_26 = {} -- CN_120-26 gun for LeClerc
GT_t.LN_t.tank_gun_CN_120_26.type = 2
GT_t.LN_t.tank_gun_CN_120_26.distanceMin = 10
GT_t.LN_t.tank_gun_CN_120_26.distanceMax = 3500
GT_t.LN_t.tank_gun_CN_120_26.max_trg_alt = 500
GT_t.LN_t.tank_gun_CN_120_26.reactionTime = 2
GT_t.LN_t.tank_gun_CN_120_26.maxShootingSpeed = 9
GT_t.LN_t.tank_gun_CN_120_26.sensor = {}
set_recursive_metatable(GT_t.LN_t.tank_gun_CN_120_26.sensor, GT_t.WSN_t[7])
GT_t.LN_t.tank_gun_CN_120_26.PL = {}
GT_t.LN_t.tank_gun_CN_120_26.PL[1] = {}
GT_t.LN_t.tank_gun_CN_120_26.PL[1].ammo_capacity = 16
GT_t.LN_t.tank_gun_CN_120_26.PL[1].reload_time = 20 * 16;
GT_t.LN_t.tank_gun_CN_120_26.PL[1].shell_name = {"M256_120_AP"};
GT_t.LN_t.tank_gun_CN_120_26.PL[1].shot_delay = 5
GT_t.LN_t.tank_gun_CN_120_26.PL[2] = {}
GT_t.LN_t.tank_gun_CN_120_26.PL[2].ammo_capacity = 12
GT_t.LN_t.tank_gun_CN_120_26.PL[2].reload_time = 15 * 12;
GT_t.LN_t.tank_gun_CN_120_26.PL[2].shell_name = {"M256_120_AP"};
GT_t.LN_t.tank_gun_CN_120_26.PL[2].shot_delay = 15
GT_t.LN_t.tank_gun_CN_120_26.BR = { {pos = {6.24, 0, 0} } }

GT_t.LN_t.tank_gun_2A46 = {} -- 125mm D-81 gun for T-72, T-80, T-90
GT_t.LN_t.tank_gun_2A46.type = 2
GT_t.LN_t.tank_gun_2A46.distanceMin = 10
GT_t.LN_t.tank_gun_2A46.distanceMax = 3500
GT_t.LN_t.tank_gun_2A46.max_trg_alt = 500
GT_t.LN_t.tank_gun_2A46.reactionTime = 2
GT_t.LN_t.tank_gun_2A46.maxShootingSpeed = 9
GT_t.LN_t.tank_gun_2A46.sensor = {}
set_recursive_metatable(GT_t.LN_t.tank_gun_2A46.sensor, GT_t.WSN_t[7])
GT_t.LN_t.tank_gun_2A46.PL = {}
GT_t.LN_t.tank_gun_2A46.PL[1] = {}
GT_t.LN_t.tank_gun_2A46.PL[1].shot_delay = 8
GT_t.LN_t.tank_gun_2A46.PL[1].ammo_capacity = 12
GT_t.LN_t.tank_gun_2A46.PL[1].reload_time = 12*20; -- 20 sec per round for automatic loader
GT_t.LN_t.tank_gun_2A46.PL[1].shell_name = {"2A46M_125_AP"};
GT_t.LN_t.tank_gun_2A46.PL[2] = {}
GT_t.LN_t.tank_gun_2A46.PL[2].shot_delay = 30
GT_t.LN_t.tank_gun_2A46.PL[2].automaticLoader = false;
GT_t.LN_t.tank_gun_2A46.PL[2].ammo_capacity = 10
GT_t.LN_t.tank_gun_2A46.PL[2].reload_time = 10*15; -- 15 sec per round for stowage
GT_t.LN_t.tank_gun_2A46.PL[2].shell_name = {"2A46M_125_AP"};
GT_t.LN_t.tank_gun_2A46.BR = { {pos = {5.4, 0,0} } }

GT_t.LN_t.howitzer_M185 = {} -- M185 for M109A2/A3/A4, M284 for M109A5/A6
GT_t.LN_t.howitzer_M185.type = 6
GT_t.LN_t.howitzer_M185.distanceMin = 30
GT_t.LN_t.howitzer_M185.max_trg_alt = 5000
GT_t.LN_t.howitzer_M185.reactionTimeLOFAC = 3; -- убираем задержку на прицеливание
GT_t.LN_t.howitzer_M185.reactionTime = 100;
GT_t.LN_t.howitzer_M185.maxShootingSpeed = 0;
GT_t.LN_t.howitzer_M185.sensor = {}
set_recursive_metatable(GT_t.LN_t.howitzer_M185.sensor, GT_t.WSN_t[8])
GT_t.LN_t.howitzer_M185.PL = {}
GT_t.LN_t.howitzer_M185.PL[1] = {}
GT_t.LN_t.howitzer_M185.PL[1].ammo_capacity = 39
GT_t.LN_t.howitzer_M185.PL[1].automaticLoader = false;
GT_t.LN_t.howitzer_M185.PL[1].shell_name = {"M185_155"};
GT_t.LN_t.howitzer_M185.PL[1].shot_delay = 15
GT_t.LN_t.howitzer_M185.PL[1].reload_time = GT_t.LN_t.howitzer_M185.PL[1].ammo_capacity * 24;
GT_t.LN_t.howitzer_M185.BR = { {pos = {6.7, 0 ,0} } }

GT_t.LN_t.howitzer_2A64 = {} -- 152mm for SPG Msta
GT_t.LN_t.howitzer_2A64.type = 6
GT_t.LN_t.howitzer_2A64.xc = 0.608
GT_t.LN_t.howitzer_2A64.distanceMin = 30
GT_t.LN_t.howitzer_2A64.max_trg_alt = 5000
GT_t.LN_t.howitzer_2A64.reactionTimeLOFAC = 3; -- убираем задержку на прицеливание
GT_t.LN_t.howitzer_2A64.reactionTime = 100
GT_t.LN_t.howitzer_2A64.maxShootingSpeed = 0
GT_t.LN_t.howitzer_2A64.sensor = {}
set_recursive_metatable(GT_t.LN_t.howitzer_2A64.sensor, GT_t.WSN_t[8])
GT_t.LN_t.howitzer_2A64.PL = {}
GT_t.LN_t.howitzer_2A64.PL[1] = {}
GT_t.LN_t.howitzer_2A64.PL[1].ammo_capacity = 20
GT_t.LN_t.howitzer_2A64.PL[1].shell_name = {"2A64_152"};
GT_t.LN_t.howitzer_2A64.PL[1].shot_delay = 8
GT_t.LN_t.howitzer_2A64.PL[1].reload_time = GT_t.LN_t.howitzer_2A64.PL[1].ammo_capacity * 24;
GT_t.LN_t.howitzer_2A64.PL[1].automaticLoader = false;
GT_t.LN_t.howitzer_2A64.PL[2] = {}
GT_t.LN_t.howitzer_2A64.PL[2].ammo_capacity = 30
GT_t.LN_t.howitzer_2A64.PL[2].shell_name = {"2A64_152"};
GT_t.LN_t.howitzer_2A64.PL[2].shot_delay = 10
GT_t.LN_t.howitzer_2A64.PL[2].reload_time = GT_t.LN_t.howitzer_2A64.PL[2].ammo_capacity * 20;
GT_t.LN_t.howitzer_2A64.PL[2].automaticLoader = false;
GT_t.LN_t.howitzer_2A64.BR = { {pos = {8.7, 0 ,0} } }

GT_t.LN_t.howitzer_2A33 = {} --152mm for SPG 2S3 'AKATCIA'
GT_t.LN_t.howitzer_2A33.type = 6
GT_t.LN_t.howitzer_2A33.xc = 1.072
GT_t.LN_t.howitzer_2A33.distanceMin = 30
GT_t.LN_t.howitzer_2A33.max_trg_alt = 5000
GT_t.LN_t.howitzer_2A33.reactionTimeLOFAC = 3; -- убираем задержку на прицеливание
GT_t.LN_t.howitzer_2A33.reactionTime = 100
GT_t.LN_t.howitzer_2A33.maxShootingSpeed = 0
GT_t.LN_t.howitzer_2A33.sensor = {}
set_recursive_metatable(GT_t.LN_t.howitzer_2A33.sensor, GT_t.WSN_t[8])
GT_t.LN_t.howitzer_2A33.PL = {}
GT_t.LN_t.howitzer_2A33.PL[1] = {}
GT_t.LN_t.howitzer_2A33.PL[1].ammo_capacity = 12
GT_t.LN_t.howitzer_2A33.PL[1].shell_name = {"2A33_152"};
GT_t.LN_t.howitzer_2A33.PL[1].shot_delay = 18
GT_t.LN_t.howitzer_2A33.PL[1].automaticLoader = false;
GT_t.LN_t.howitzer_2A33.PL[1].reload_time = GT_t.LN_t.howitzer_2A33.PL[1].ammo_capacity * 28;
GT_t.LN_t.howitzer_2A33.PL[2] = {}
GT_t.LN_t.howitzer_2A33.PL[2].ammo_capacity = 34
GT_t.LN_t.howitzer_2A33.PL[2].shell_name = {"2A33_152"};
GT_t.LN_t.howitzer_2A33.PL[2].shot_delay = 23
GT_t.LN_t.howitzer_2A33.PL[2].automaticLoader = false;
GT_t.LN_t.howitzer_2A33.PL[2].reload_time = GT_t.LN_t.howitzer_2A33.PL[2].ammo_capacity * 25;
GT_t.LN_t.howitzer_2A33.BR = { {pos = {5.4, 0, 0} } }

GT_t.LN_t.howitzer_2A60 = {} -- 120mm howitzer-mortar for SPG 2S9 'NONA'
GT_t.LN_t.howitzer_2A60.type = 6
GT_t.LN_t.howitzer_2A60.xc = 0.967
GT_t.LN_t.howitzer_2A60.distanceMin = 30
GT_t.LN_t.howitzer_2A60.max_trg_alt = 2000
GT_t.LN_t.howitzer_2A60.reactionTimeLOFAC = 3; -- убираем задержку на прицеливание
GT_t.LN_t.howitzer_2A60.reactionTime = 100
GT_t.LN_t.howitzer_2A60.maxShootingSpeed = 0
GT_t.LN_t.howitzer_2A60.sensor = {}
set_recursive_metatable(GT_t.LN_t.howitzer_2A60.sensor, GT_t.WSN_t[8])
GT_t.LN_t.howitzer_2A60.PL = {}
GT_t.LN_t.howitzer_2A60.PL[1] = {}
GT_t.LN_t.howitzer_2A60.PL[1].ammo_capacity = 25
GT_t.LN_t.howitzer_2A60.PL[1].reload_time = GT_t.LN_t.howitzer_2A60.PL[1].ammo_capacity * 20;
GT_t.LN_t.howitzer_2A60.PL[1].shell_name = {"2A60_120"};
GT_t.LN_t.howitzer_2A60.PL[1].shot_delay = 4.3 -- 15 shots per minute
GT_t.LN_t.howitzer_2A60.BR = { {pos = {3, 0, 0} } }

GT_t.LN_t.howitzer_2A18 = {} -- 122mm D-30 for SPG 2S1 'GVOZDIKA'
GT_t.LN_t.howitzer_2A18.type = 6
GT_t.LN_t.howitzer_2A18.xc = 0.716
GT_t.LN_t.howitzer_2A18.distanceMin = 30
GT_t.LN_t.howitzer_2A18.max_trg_alt = 5000
GT_t.LN_t.howitzer_2A18.reactionTimeLOFAC = 3; -- убираем задержку на прицеливание
GT_t.LN_t.howitzer_2A18.reactionTime = 100
GT_t.LN_t.howitzer_2A18.maxShootingSpeed = 0
GT_t.LN_t.howitzer_2A18.sensor = {}
set_recursive_metatable(GT_t.LN_t.howitzer_2A18.sensor, GT_t.WSN_t[8])
GT_t.LN_t.howitzer_2A18.PL = {}
GT_t.LN_t.howitzer_2A18.PL[1] = {}
GT_t.LN_t.howitzer_2A18.PL[1].ammo_capacity = 12
GT_t.LN_t.howitzer_2A18.PL[1].shell_name = {"2A18_122"};
GT_t.LN_t.howitzer_2A18.PL[1].shot_delay = 13
GT_t.LN_t.howitzer_2A18.PL[1].reload_time = 12*20;
GT_t.LN_t.howitzer_2A18.PL[1].automaticLoader = false;
GT_t.LN_t.howitzer_2A18.PL[2] = {}
GT_t.LN_t.howitzer_2A18.PL[2].ammo_capacity = 28
GT_t.LN_t.howitzer_2A18.PL[2].shell_name = {"2A18_122"};
GT_t.LN_t.howitzer_2A18.PL[2].shot_delay = 20
GT_t.LN_t.howitzer_2A18.PL[2].reload_time = 28*25;
GT_t.LN_t.howitzer_2A18.PL[2].automaticLoader = false
GT_t.LN_t.howitzer_2A18.BR = { {pos = {5, 0, 0} } }

GT_t.LN_t.DANA_howitzer = {} --152mm for SpGH DANA
GT_t.LN_t.DANA_howitzer.type = 6
GT_t.LN_t.DANA_howitzer.xc = 1.072
GT_t.LN_t.DANA_howitzer.distanceMin = 30
GT_t.LN_t.DANA_howitzer.distanceMax = 18500
GT_t.LN_t.DANA_howitzer.max_trg_alt = 5000
GT_t.LN_t.DANA_howitzer.reactionTimeLOFAC = 3; -- убираем задержку на прицеливание
GT_t.LN_t.DANA_howitzer.reactionTime = 100
GT_t.LN_t.DANA_howitzer.maxShootingSpeed = 0
GT_t.LN_t.DANA_howitzer.sensor = {}
set_recursive_metatable(GT_t.LN_t.DANA_howitzer.sensor, GT_t.WSN_t[8])
GT_t.LN_t.DANA_howitzer.PL = {}
GT_t.LN_t.DANA_howitzer.PL[1] = {}
GT_t.LN_t.DANA_howitzer.PL[1].ammo_capacity = 36
GT_t.LN_t.DANA_howitzer.PL[1].shell_name = {"DANA_152"};
GT_t.LN_t.DANA_howitzer.PL[1].shot_delay = 20
GT_t.LN_t.DANA_howitzer.PL[1].automaticLoader = true;
GT_t.LN_t.DANA_howitzer.PL[1].reload_time = GT_t.LN_t.DANA_howitzer.PL[1].ammo_capacity * 28;
GT_t.LN_t.DANA_howitzer.PL[2] = {}
GT_t.LN_t.DANA_howitzer.PL[2].ammo_capacity = 24
GT_t.LN_t.DANA_howitzer.PL[2].shell_name = {"DANA_152"};
GT_t.LN_t.DANA_howitzer.PL[2].shot_delay = 40
GT_t.LN_t.DANA_howitzer.PL[2].automaticLoader = falsee;
GT_t.LN_t.DANA_howitzer.PL[2].reload_time = GT_t.LN_t.DANA_howitzer.PL[2].ammo_capacity * 20;
GT_t.LN_t.DANA_howitzer.BR = { {pos = {5.4, 0, 0} } }

GT_t.LN_t.gun_2A70 = {} -- BMP-3 100mm gun
GT_t.LN_t.gun_2A70.type = 6
GT_t.LN_t.gun_2A70.distanceMin = 100
GT_t.LN_t.gun_2A70.distanceMaxForFCS = 4000;
GT_t.LN_t.gun_2A70.max_trg_alt = 3000
GT_t.LN_t.gun_2A70.reactionTime = 3
GT_t.LN_t.gun_2A70.maxShootingSpeed = 9
GT_t.LN_t.gun_2A70.sensor = {}
set_recursive_metatable(GT_t.LN_t.gun_2A70.sensor, GT_t.WSN_t[11])
GT_t.LN_t.gun_2A70.PL = {}
GT_t.LN_t.gun_2A70.PL[1] = {}
GT_t.LN_t.gun_2A70.PL[1].ammo_capacity = 22
GT_t.LN_t.gun_2A70.PL[1].shell_name = {"UOF_17_100HE"};
GT_t.LN_t.gun_2A70.PL[1].shot_delay = 6
GT_t.LN_t.gun_2A70.PL[1].reload_time = 22 * 20
GT_t.LN_t.gun_2A70.PL[2] = {}
GT_t.LN_t.gun_2A70.PL[2].ammo_capacity = 18
GT_t.LN_t.gun_2A70.PL[2].shell_name = {"UOF_17_100HE"};
GT_t.LN_t.gun_2A70.PL[2].shot_delay = 12
GT_t.LN_t.gun_2A70.PL[2].automaticLoader = false
GT_t.LN_t.gun_2A70.PL[2].reload_time = 18 * 15
GT_t.LN_t.gun_2A70.BR = { {pos = {5, 0, 0} } }

-- end of Launchers

-- Weapon Systems
--
GT_t.WS_t.AK130 = {} -- equal to A-222
GT_t.WS_t.AK130.angles = {
					{math.rad(125), math.rad(-125), math.rad(-10), math.rad(70)},
					};
GT_t.WS_t.AK130.omegaY = 0.6
GT_t.WS_t.AK130.omegaZ = 0.6
GT_t.WS_t.AK130.reference_angle_Z = 0
GT_t.WS_t.AK130.LN = {}
GT_t.WS_t.AK130.LN[1] = {}
GT_t.WS_t.AK130.LN[1].type = 6
GT_t.WS_t.AK130.LN[1].distanceMin = 50
GT_t.WS_t.AK130.LN[1].max_trg_alt = 5000
GT_t.WS_t.AK130.LN[1].reactionTime = 15
GT_t.WS_t.AK130.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.AK130.LN[1].sensor, GT_t.WSN_t[10])
GT_t.WS_t.AK130.LN[1].PL = {}
GT_t.WS_t.AK130.LN[1].PL[1] = {}
GT_t.WS_t.AK130.LN[1].PL[1].ammo_capacity = 180
GT_t.WS_t.AK130.LN[1].PL[1].shell_name = {"A222_130"};
GT_t.WS_t.AK130.LN[1].PL[1].shot_delay = 0.75
GT_t.WS_t.AK130.LN[1].BR = { {pos = {8, 0, 0.1} }, {pos = {8, 0, -0.1} } }

GT_t.WS_t.AK100 = {}
GT_t.WS_t.AK100.angles = {
					{math.rad(125), math.rad(-125), math.rad(-10), math.rad(80)},
					};
GT_t.WS_t.AK100.omegaY = 0.6
GT_t.WS_t.AK100.omegaZ = 0.6
GT_t.WS_t.AK100.reference_angle_Y = 0
GT_t.WS_t.AK100.reference_angle_Z = 0
GT_t.WS_t.AK100.LN = {}
GT_t.WS_t.AK100.LN[1] = {}
GT_t.WS_t.AK100.LN[1].type = 6
GT_t.WS_t.AK100.LN[1].distanceMin = 50
GT_t.WS_t.AK100.LN[1].max_trg_alt = 5000
GT_t.WS_t.AK100.LN[1].reactionTime = 15
GT_t.WS_t.AK100.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.AK100.LN[1].sensor, GT_t.WSN_t[10])
GT_t.WS_t.AK100.LN[1].PL = {}
GT_t.WS_t.AK100.LN[1].PL[1] = {}
GT_t.WS_t.AK100.LN[1].PL[1].ammo_capacity = 175
GT_t.WS_t.AK100.LN[1].PL[1].shell_name = {"AK100_100"};
GT_t.WS_t.AK100.LN[1].PL[1].shot_delay = 1.1
GT_t.WS_t.AK100.LN[1].BR = { {pos = {2, 0, 0} } }

GT_t.WS_t.ship_FMC5 = {} -- MK45 127mm Navy artillery system 
GT_t.WS_t.ship_FMC5.angles = {
					{math.rad(130), math.rad(-130), math.rad(-5), math.rad(75)},
					};
GT_t.WS_t.ship_FMC5.omegaY = 0.6
GT_t.WS_t.ship_FMC5.omegaZ = 0.6
GT_t.WS_t.ship_FMC5.reference_angle_Z = 0
GT_t.WS_t.ship_FMC5.LN = {}
GT_t.WS_t.ship_FMC5.LN[1] = {}
GT_t.WS_t.ship_FMC5.LN[1].type = 6
GT_t.WS_t.ship_FMC5.LN[1].xc = 3
GT_t.WS_t.ship_FMC5.LN[1].distanceMin = 50
GT_t.WS_t.ship_FMC5.LN[1].max_trg_alt = 7500
GT_t.WS_t.ship_FMC5.LN[1].reactionTime = 15
GT_t.WS_t.ship_FMC5.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.ship_FMC5.LN[1].sensor, GT_t.WSN_t[10])
GT_t.WS_t.ship_FMC5.LN[1].PL = {}
GT_t.WS_t.ship_FMC5.LN[1].PL[1] = {}
GT_t.WS_t.ship_FMC5.LN[1].PL[1].ammo_capacity = 180
GT_t.WS_t.ship_FMC5.LN[1].PL[1].shell_name = {"MK45_127"};
GT_t.WS_t.ship_FMC5.LN[1].PL[1].shot_delay = 1
GT_t.WS_t.ship_FMC5.LN[1].BR = { {pos = {6.5, 0, 0} } }

GT_t.WS_t.ship_MK75 = {} -- 76mm artillery system
GT_t.WS_t.ship_MK75.angles = {
					{math.rad(-180), math.rad(180), math.rad(-4), math.rad(70)},
					};
GT_t.WS_t.ship_MK75.omegaY = 0.6
GT_t.WS_t.ship_MK75.omegaZ = 0.6
GT_t.WS_t.ship_MK75.reference_angle_Y = 0
GT_t.WS_t.ship_MK75.reference_angle_Z = 0
GT_t.WS_t.ship_MK75.LN = {}
GT_t.WS_t.ship_MK75.LN[1] = {}
GT_t.WS_t.ship_MK75.LN[1].type = 6
GT_t.WS_t.ship_MK75.LN[1].distanceMin = 50
GT_t.WS_t.ship_MK75.LN[1].max_trg_alt = 5000
GT_t.WS_t.ship_MK75.LN[1].reactionTime = 15
GT_t.WS_t.ship_MK75.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.ship_MK75.LN[1].sensor, GT_t.WSN_t[10])
GT_t.WS_t.ship_MK75.LN[1].PL = {}
GT_t.WS_t.ship_MK75.LN[1].PL[1] = {}
GT_t.WS_t.ship_MK75.LN[1].PL[1].ammo_capacity = 180
GT_t.WS_t.ship_MK75.LN[1].PL[1].shell_name = {"MK75_76"};
GT_t.WS_t.ship_MK75.LN[1].PL[1].shot_delay = 0.67
GT_t.WS_t.ship_MK75.LN[1].BR = { {pos = {4, 0, 0} } }

GT_t.WS_t.ship_AK176 = {} -- 76mm artillery system
GT_t.WS_t.ship_AK176.angles = {
					{math.rad(147), math.rad(-147), math.rad(-10), math.rad(80)},
					};
GT_t.WS_t.ship_AK176.omegaY = math.rad(35);
GT_t.WS_t.ship_AK176.omegaZ = math.rad(30);
GT_t.WS_t.ship_AK176.pidY = {p = 30, i = 0.0, d = 7.0, inn = 50};
GT_t.WS_t.ship_AK176.pidZ = {p = 30, i = 0.0, d = 7.0, inn = 50};
GT_t.WS_t.ship_AK176.reference_angle_Y = 0
GT_t.WS_t.ship_AK176.reference_angle_Z = 0
GT_t.WS_t.ship_AK176.LN = {}
GT_t.WS_t.ship_AK176.LN[1] = {}
GT_t.WS_t.ship_AK176.LN[1].type = 6
GT_t.WS_t.ship_AK176.LN[1].distanceMin = 50
GT_t.WS_t.ship_AK176.LN[1].max_trg_alt = 5000
GT_t.WS_t.ship_AK176.LN[1].reactionTime = 15
GT_t.WS_t.ship_AK176.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.ship_AK176.LN[1].sensor, GT_t.WSN_t[10])
GT_t.WS_t.ship_AK176.LN[1].PL = {}
GT_t.WS_t.ship_AK176.LN[1].PL[1] = {}
GT_t.WS_t.ship_AK176.LN[1].PL[1].ammo_capacity = 180
GT_t.WS_t.ship_AK176.LN[1].PL[1].shell_name = {"AK176_76"};
GT_t.WS_t.ship_AK176.LN[1].PL[1].shot_delay = 0.5
GT_t.WS_t.ship_AK176.LN[1].BR = { {pos = {4.3, 0, 0} } }