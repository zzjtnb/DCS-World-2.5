-- Frigate 1124.4 FFL (ALBATROS Class Frigate) 064

GT = {};
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "albatros"
GT.visual.shape_dstr = ""


GT.life = 1600;
GT.mass = 1.12e+006;
GT.max_velocity = 15.4333;
GT.race_velocity = 13.89;
GT.economy_velocity = 7.20222;
GT.economy_distance = 4.63e+006;
GT.race_distance = 1.7594e+006;
GT.shipLength = 65;
GT.Width = 9.5;
GT.Height = 15.8;
GT.Length = 70;
GT.DeckLevel = 3.3;
GT.X_nose = 31.4092;
GT.X_tail = -32.498;
GT.Tail_Width = 7.2;
GT.Gamma_max = 0.35;
GT.Om = 0.02;
GT.speedup = 0.567114;
GT.R_min = 140;
GT.distFindObstacles = 260;

GT.animation_arguments.water_propeller = -1;

GT.airWeaponDist = 16000; -- дальность поражения "Осой-М"
GT.airFindDist = 30000; -- дальность обнаружения "Осой-М"

GT.DM = {
    { area_name = "DATA_RIGHTBOARD_FRONT", area_arg = 70, area_life = 60, 	area_fire = { pos = { 26.0, 2.7, 1.2}, size = 0.4}},
	{ area_name = "DATA_RIGHTBOARD_CENTER", area_arg = 71, area_life = 60, 	area_fire = { pos = { 5.0, 1.8, 4.0}, size = 0.4}},
	{ area_name = "DATA_RIGHTBOARD_BACK", area_arg = 72, area_life = 40, 	area_fire = { pos = { -31.4, 1.5, 3.5}, size = 0.3}},
	{ area_name = "DATA_LEFTBOARD_FRONT", area_arg = 73, area_life = 60, 	area_fire = { pos = { 22.5, 1.1, -1.8}, size = 0.3}},
	{ area_name = "DATA_LEFTBOARD_CENTER", area_arg = 74, area_life = 60, 	area_fire = { pos = { 3.8, 1.5, -4.7}, size = 0.5}},
	{ area_name = "DATA_LEFTBOARD_BACK", area_arg = 75, area_life = 40, 	area_fire = { pos = { -31.5, 1.5, -4.3}, size = 0.4}},
	{ area_name = "DATA_NADSTR_FRONT", area_arg = 76, area_life = 40, 		area_fire = { pos = { 14.0, 6.3, 0.0}, size = 0.4}},
	{ area_name = "DATA_PALUBA_CENTER", area_arg = 77, area_life = 40, 		area_fire = { pos = { -10.2, 2.8, 0.0}, size = 0.4}},
	{ area_name = "DATA_PALUBA_BACK", area_arg = 78, area_life = 40, 		area_fire = { pos = { -32.8, 2.8, 0.0}, size = 0.4}}
}

-- weapon systems

GT.WS = {}
GT.WS.maxTargetDetectionRange = 30000;
GT.WS.radar_type = 104
GT.WS.searchRadarMaxElevation = math.rad(40);

local ws;
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[1]);
GT.WS[ws].pos = {-20.0, 8.0, 2.0};
GT.WS[ws].board = 2;
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[2]);
GT.WS[ws].base = ws-1;
local vympel_trackers = {{{"self", ws-1}}, {{"self", ws}}};

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.OSA_tracker);
GT.WS[ws].pos = {8.0, 9.0, 0.0};
GT.WS[ws].angles[1][1] = math.rad(135);
GT.WS[ws].angles[1][2] = math.rad(-135);
local osa_trackers = {{{"self", ws}}}

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_OSA_M);
GT.WS[ws].angles[1][1] = math.rad(135);
GT.WS[ws].angles[1][2] = math.rad(-135);
GT.WS[ws].omegaY = 1.2;
GT.WS[ws].omegaZ = 1.2;
GT.WS[ws].pidY = {p=30, i=0.1, d=6, inn = 3};
GT.WS[ws].pidZ = GT.WS[ws].pidY;
GT.WS[ws].drawArgument1 = 49;
GT.WS[ws].drawArgument2 = 50;
GT.WS[ws].pos = {23.58,6.456,0};
GT.WS[ws].LN[1].depends_on_unit = osa_trackers;
GT.WS[ws].LN[1].BR = {
                        { connector_name = 'POINT_OSA_1_1' },
                        { connector_name = 'POINT_OSA_1_2' }
                    };
-- АК-630
ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].board = 2;
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK630)
GT.WS[ws].center = 'TARGET_AK630_1'
GT.WS[ws].angles = { {math.rad(150), math.rad(-120), math.rad(-12), math.rad(88)}};
GT.WS[ws].drawArgument1 = 17
GT.WS[ws].drawArgument2 = 18
GT.WS[ws].LN[1].depends_on_unit = vympel_trackers;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_AK630_1_1'
                    
-- АК-176
ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_AK176);
GT.WS[ws].board = 2;
GT.WS[ws].center = 'TARGET_AK_176_1';
GT.WS[ws].drawArgument1 = 13;
GT.WS[ws].drawArgument2 = 14;
--GT.WS[ws].LN[1].depends_on_unit = vympel_trackers;
--GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_AK176_1_1';
GT.WS[ws].LN[1].BR[1].pos = { 1.0, 0.75, 0.0}

GT.Name = "ALBATROS";
GT.DisplayName = _("FFL 1124.4 Grisha");
GT.Rate = 2000;

GT.Sensors = {  OPTIC = {"long-range naval optics"},
                RADAR = {
                            "Osa 9A33 ln",
                            "albatros search radar",
                        }
            };

GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   ="no";
GT.mapclasskey = "P0091000070";
GT.attribute = {wsType_Navy,wsType_Ship,wsType_ArmedShip,ALBATROS,
                    "Frigates",
                    "RADAR_BAND2_FOR_ARM",
				};
GT.Categories = {
					{name = "Armed Ship"}
				};