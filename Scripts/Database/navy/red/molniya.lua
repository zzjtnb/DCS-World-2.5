-- Molniya 1241.1MP FSG (TARANTUL-3 Class Corvette) 954 €ў ­®ўҐж

GT = {};
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "molniya"
GT.visual.shape_dstr = ""

GT.animation_arguments.alarm_state = 9;
GT.radar1_period = 3.0;
GT.radar2_period = 1.0;

GT.life = 1100
GT.mass = 455000
GT.max_velocity = 18.52
GT.race_velocity = 18.52
GT.economy_velocity = 7.20222
GT.economy_distance = 3.0558e+006
GT.race_distance = 740800
GT.shipLength = 50.41
GT.Width = 11.9
GT.Height = 17.1
GT.Length = 56.1
GT.DeckLevel = 3.5
GT.X_nose = 24.3545
GT.X_tail = -25.8496
GT.Tail_Width = 9
GT.Gamma_max = 0.35
GT.Om = 0.02
GT.speedup = 1.01899
GT.R_min = 112.2
GT.distFindObstacles = 218.3

GT.airWeaponDist = 2000
GT.airFindDist = 21000

-- weapon systems

GT.DM = {
    { area_name = "NOSE_R", 	area_arg = 70, area_life = 55, area_fire = { pos = {18.0,2.3,2.3}, size = 0.3}},
    { area_name = "BORT_R", 	area_arg = 71, area_life = 55, area_fire = { pos = {-3.0,1.0,5.0}, size = 0.3}},
    { area_name = "KORMA_R", 	area_arg = 72, area_life = 55, area_fire = { pos = {-17.5,1.2,4.7}, size = 0.3}},
    { area_name = "NOSE_L", 	area_arg = 73, area_life = 55, area_fire = { pos = {18.0,2.2,-2.3}, size = 0.3}},
    { area_name = "BORT_L", 	area_arg = 74, area_life = 55, area_fire = { pos = {-3.0,1.0,-5.0}, size = 0.3}},
    { area_name = "KORMA_L", 	area_arg = 75, area_life = 55, area_fire = { pos = {-17.5,1.5,-4.7}, size = 0.3}},
    { area_name = "KABINA", 	area_arg = 76, area_life = 110, area_fire = { pos = {4.0,6.0,0.0}, size = 0.5}},
    { area_name = "RUBKA", 		area_arg = 77, area_life = 44, area_fire = { pos = {0.0, 9.5, 0.0}, size = 0.5}},
    { area_name = "NADSTROYKA",	area_arg = 78, area_life = 55, area_fire = { pos = {-19.0, 4.0, 0.0}, size = 1.0}},
    { area_name = "TOWER_F", 	area_arg = 97, area_life = 33, area_fire = { pos = {14.5, 5.0, 0.0}, size = 0.5}},
    { area_name = "ZA_01", 		area_arg = 99, area_life = 27, area_fire = { pos = {-15.85,6.76,2.27}, size = 0.5}},
    { area_name = "ZA_02", 		area_arg = 100, area_life = 27,area_fire = { pos = {-15.85,6.76,-2.27}, size = 0.5}},
    { area_name = "TPK_01_R", 	area_arg = 109, area_life = 16, area_fire = { pos = {-3.0,6.0,4.5}, size = 0.4}},
    { area_name = "TPK_02_L", 	area_arg = 110, area_life = 16, area_fire = { pos = {-3.0,6.0,-4.5}, size = 0.4}},
}

GT.WS = {};
GT.WS.maxTargetDetectionRange = 120000; 
GT.WS.radar_type = 104
GT.WS.searchRadarMaxElevation = math.rad(40);

local ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[1]);
GT.WS[ws].pos = {-2.0, 16.0, 0.0};
GT.WS[ws].drawArgument1 = 4;
GT.WS[ws].LN[1].min_trg_alt = 4;
GT.WS[ws].area = "RUBKA";
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[2]);
GT.WS[ws].LN[1].min_trg_alt = 4;
GT.WS[ws].base = ws-1;
GT.WS[ws].area = "RUBKA";
-- manual optical station
ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].pos = {-7.0, 8.6, 0.0};
GT.WS[ws].board = 2;
GT.WS[ws].angles = {{math.rad(150), math.rad(-150), math.rad(-11), math.rad(8)}};
GT.WS[ws].omegaY = math.rad(120);
GT.WS[ws].omegaZ = math.rad(80);
GT.WS[ws].pidY = {p=130, i=0.1, d=20, inn = 50};
GT.WS[ws].pidZ = {p=100, i=0.1, d=12, inn = 50};
GT.WS[ws].LN = {
	[1] = {
		type = 103,
		reactionTime = 1,
		distanceMin = 10,
		distanceMax = 3000,
		min_trg_alt = -1,
		max_trg_alt = 1000,
		beamWidth = math.rad(90)
		}
}
local trackers_for_AK630 = {{{"self", ws-2}}, {{"self", ws-1}}, {{"self", ws}}};

-- правая турель
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK630);
GT.WS[ws].area = "ZA_01";
GT.WS[ws].board = 2
GT.WS[ws].angles = {
					{math.rad(155), math.rad(-7), math.rad(-11), math.rad(88)},
					{math.rad(-7), math.rad(-70), math.rad(-8), math.rad(88)},
					{math.rad(-70), math.rad(-150), math.rad(8), math.rad(88)},
}
GT.WS[ws].center = 'Center_Tower_03'
GT.WS[ws].drawArgument1 = 17
GT.WS[ws].drawArgument2 = 18
GT.WS[ws].LN[1].depends_on_unit = trackers_for_AK630;
GT.WS[ws].LN[1].reactionTime = 1;
GT.WS[ws].LN[1].BR[1].connector_name = 'Point_Gun_03';
GT.WS[ws].LN[1].fireAnimationArgument = 119;

-- левая турель
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK630);
GT.WS[ws].area = "ZA_02";
GT.WS[ws].board = 2;
GT.WS[ws].angles = {
					{math.rad(150), math.rad(70), math.rad(8), math.rad(88)},
					{math.rad(70), math.rad(7), math.rad(-8), math.rad(88)},
					{math.rad(7), math.rad(-155), math.rad(-11), math.rad(88)},
}
GT.WS[ws].center = 'Center_Tower_02';
GT.WS[ws].drawArgument1 = 19;
GT.WS[ws].drawArgument2 = 20;
GT.WS[ws].LN[1].depends_on_unit = trackers_for_AK630;
GT.WS[ws].LN[1].reactionTime = 1;
GT.WS[ws].LN[1].BR[1].connector_name = 'Point_Gun_02';
GT.WS[ws].LN[1].fireAnimationArgument = 120;

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = "TOWER_F";
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_AK176)
GT.WS[ws].center = 'Center_Tower_01'
GT.WS[ws].drawArgument1 = 13
GT.WS[ws].drawArgument2 = 14
GT.WS[ws].LN[1].BR[1].connector_name = 'Point_Gun_01'
GT.WS[ws].LN[1].BR[1].recoilArgument = 117;
GT.WS[ws].LN[1].BR[1].recoilTime = 0.4;

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_MOSKIT)
GT.WS[ws].area = "TPK_01_R";
GT.WS[ws].pos = {-2.33,7.023,-4.656}
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 177}
GT.WS[ws].LN[1].BR = {
                        {
                            connector_name = 'Point_ROCKET_01',
                            drawArgument = 302,
                        },
                    }

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_MOSKIT)
GT.WS[ws].area = "TPK_02_L";
GT.WS[ws].pos = {-2.33,7.023,-4.656}
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 178}
GT.WS[ws].LN[1].BR = {
                        {
                            connector_name = 'Point_ROCKET_02',
                            drawArgument = 303,
                        },
                    }

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = "TPK_01_R";
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_MOSKIT)
GT.WS[ws].pos = {-2.33,7.023,4.656}
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 179}
GT.WS[ws].LN[1].BR = {
                        {
                            connector_name = 'Point_ROCKET_03',
                            drawArgument = 304,
                        },
                    }

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = "TPK_02_L";
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_MOSKIT)
GT.WS[ws].pos = {-2.33,7.023,4.656}
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 180}
GT.WS[ws].LN[1].BR = {
                        {
                            connector_name = 'Point_ROCKET_04',
                            drawArgument = 305,
                        },
                    };

GT.Name = "MOLNIYA"
GT.DisplayName = _("FSG 1241.1MP Molniya")
GT.Rate = 1000

GT.Sensors = {  OPTIC = {
                            "long-range naval optics",
                            "long-range naval LLTV",
                            --"long-range naval FLIR",
                        },
                RADAR = {
                            "molniya search radar",
                            --"KKS R-790 Tsunami-BM" --комплекс космической связи Р-790 "Цунами-БМ" РКР "Москва" класс "Слава"
                        }
            };
GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   ="no";
GT.mapclasskey = "P0091000070";
GT.attribute = {wsType_Navy,wsType_Ship,wsType_ArmedShip,MOLNIYA,
                "Corvettes",
                "DetectionByAWACS",
				"NO_SAM"
				};
GT.Categories = {
					{name = "Armed Ship"}
				};