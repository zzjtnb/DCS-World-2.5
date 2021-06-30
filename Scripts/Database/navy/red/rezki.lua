-- Rezky 1135M FF (KRIVAK-2 Class Frigate) 916

GT = {};
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "rezky"
GT.visual.shape_dstr = ""


GT.life = 1800
GT.mass = 3.65e+006
GT.max_velocity = 16.4622
GT.race_velocity = 15.4333
GT.economy_velocity = 10.2889
GT.economy_distance = 8.5192e+006
GT.race_distance = 2.9632e+006
GT.shipLength = 113.9
GT.Width = 9
GT.Height = 22.7
GT.Length = 123.0
GT.DeckLevel = 4.7
GT.X_nose = 50.6689
GT.X_tail = -63.417
GT.Tail_Width = 10.4
GT.Gamma_max = 0.35
GT.Om = 0.02
GT.speedup = 0.365728
GT.R_min = 247
GT.distFindObstacles = 420.5

GT.animation_arguments.water_propeller = -1;

GT.airWeaponDist = 16000 -- дальность поражения "Осой"
GT.airFindDist = 30000 -- дальность обнаружения "Осой"

GT.DM = {
    { area_name = "DATA_RIGHTBOARD_FRONT", area_arg = 70, area_life = 70, area_fire = { pos = { 39.0, 3.27, 3.8}, size = 0.4}},
	{ area_name = "DATA_RIGHTBOARD_CENTER", area_arg = 71, area_life = 70, area_fire = { pos = { 3.5, 1.98, 6.4}, size = 0.4}},
	{ area_name = "DATA_RIGHTBOARD_BACK", area_arg = 72, area_life = 50, area_fire = { pos = { -31.5, 3.5, 6.4}, size = 0.4}},
	{ area_name = "DATA_LEFTBOARD_FRONT", area_arg = 73, area_life = 70, area_fire = { pos = { 33.178, 3.27, -5.0}, size = 0.4}},
	{ area_name = "DATA_LEFTBOARD_CENTER", area_arg = 74, area_life = 70, area_fire = { pos = { 3.5, 1.98, -7.4}, size = 0.4}},
	{ area_name = "DATA_LEFTBOARD_BACK", area_arg = 75, area_life = 50, area_fire = { pos = { -34.0, 2, -7.2}, size = 0.4}},
	{ area_name = "DATA_NADSTR_FRONT", area_arg = 76, area_life = 50, area_fire = { pos = { 8.5, 11, -0.2}, size = 0.3}},
	{ area_name = "DATA_PALUBA_CENTER", area_arg = 77, area_life = 50, area_fire = { pos = { -8.0, 5.2, -0.5}, size = 0.4}},
	{ area_name = "DATA_PALUBA_BACK", area_arg = 78, area_life = 50, area_fire = { pos = { -52.0, 5.2, 0.0}, size = 0.3}}
}

-- weapon systems

GT.WS = {}
GT.WS.maxTargetDetectionRange = 30000;
GT.WS.radar_type = 102
GT.WS.searchRadarMaxElevation = math.rad(40);

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.OSA_tracker);
GT.WS[ws].pos = {12.0, 12.0, 0.0};
GT.WS[ws].angles[1][1] = math.rad(125);
GT.WS[ws].angles[1][2] = math.rad(-125);
local osa_trackers1 = {{{"self", ws}}};

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.OSA_tracker);
GT.WS[ws].pos = {-8.0, 13.0, 0.0};
GT.WS[ws].board = 2;
GT.WS[ws].angles[1][1] = math.rad(135);
GT.WS[ws].angles[1][2] = math.rad(-135);
local osa_trackers2 = {{{"self", ws}}};

local ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_OSA_M)
GT.WS[ws].drawArgument1 = 49
GT.WS[ws].drawArgument2 = 50
GT.WS[ws].pos = {29.485,8.704,0}
GT.WS[ws].angles[1][1] = math.rad(125);
GT.WS[ws].angles[1][2] = math.rad(-125);
GT.WS[ws].LN[1].depends_on_unit = osa_trackers1;
GT.WS[ws].LN[1].BR = { {connector_name = 'POINT_OSA_1_1' }, { connector_name = 'POINT_OSA_1_2' }}


ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_OSA_M)
GT.WS[ws].board = 2
GT.WS[ws].drawArgument1 = 51
GT.WS[ws].drawArgument2 = 52
GT.WS[ws].angles[1][1] = math.rad(135);
GT.WS[ws].angles[1][2] = math.rad(-135);
GT.WS[ws].pos = {-27.249,8.999,0}
GT.WS[ws].LN[1].depends_on_unit = osa_trackers2;
GT.WS[ws].LN[1].BR = { {connector_name = 'POINT_OSA_2_1' }, { connector_name = 'POINT_OSA_2_2' }}


ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].board = 2
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK100)
GT.WS[ws].drawArgument1 = 13
GT.WS[ws].drawArgument2 = 14
GT.WS[ws].center = 'TARGET_AK100_1_1'
--GT.WS[ws].LN[1].depends_on_unit = lev_tracker;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_AK100_1_1'

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].board = 2
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK100)
GT.WS[ws].drawArgument1 = 15
GT.WS[ws].drawArgument2 = 16
GT.WS[ws].center = 'TARGET_AK100_2_1'
--GT.WS[ws].LN[1].depends_on_unit = lev_tracker;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_AK100_2_1'

GT.Name = "REZKY"
GT.DisplayName = _("FF 1135M Rezky")
GT.Rate = 1460

GT.Sensors = { OPTIC = {"long-range naval optics", "long-range naval LLTV"},
                RADAR = {
                            "Osa 9A33 ln",
                            "rezki search radar",
                        },
            };

GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   ="no";
GT.mapclasskey = "P0091000069";
GT.attribute = {wsType_Navy,wsType_Ship,wsType_ArmedShip,REZKY,
                    "Frigates",
                    "RADAR_BAND2_FOR_ARM",
				};
GT.Categories = {
					{name = "Armed Ship"}
				};