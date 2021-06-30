-- Neustrashimy 11540 FFG (NEUSTRASHIMY Class Frigate) 712

GT = {};
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "neustrash"
GT.visual.shape_dstr = ""


GT.life = 2180
GT.mass = 4250000
GT.max_velocity = 16.4622
GT.race_velocity = 16.4622
GT.economy_velocity = 8.23111
GT.economy_distance = 8.334e+006
GT.race_distance = 2.9632e+006
GT.shipLength = 120
GT.Width = 15.6
GT.Height = 29.9
GT.Length = 131
GT.DeckLevel = 4.8
GT.X_nose = 52.2
GT.X_tail = -64.3
GT.Tail_Width = 12.7
GT.Gamma_max = 0.35
GT.Om = 0.02
GT.speedup = 0.367215
GT.R_min = 246
GT.distFindObstacles = 419

GT.numParking = 1
GT.Helicopter_Num_ = 1

GT.animation_arguments.water_propeller = -1;

GT.airWeaponDist = 12000
GT.airFindDist = 27000

GT.Landing_Point = {-48.6, 5.30, 0.0}
GT.animation_arguments.alarm_state = -1;
GT.animation_arguments.radar1_rotation = 2; -- второй аргумент вращает основной радар
GT.animation_arguments.radar2_rotation = 3;
GT.animation_arguments.radar3_rotation = -1;
GT.radar1_period = 12.0;
GT.radar2_period = 2.0;

-- weapon systems
GT.WS = {}
GT.WS.maxTargetDetectionRange = 27000;
GT.WS.radar_type = 104
GT.WS.searchRadarMaxElevation = math.rad(40);

local ws;
--[[
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.LEV);
GT.WS[ws].pos = {17.0, 16.0, 0.0};
GT.WS[ws].angles[1][1] = math.rad(150);
GT.WS[ws].angles[1][2] = math.rad(-150);
GT.WS[ws].drawArgument1 = 4;
GT.WS[ws].newZ = false;
local LEV_TRACKER = {{{"self", ws}}};
]]
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK100)
GT.WS[ws].newZ = GT_t.ANGLE_Z_TRANSLATION_OPTIONS.TRANSLATE_MIN_ANGLE_TO_MINUS_ONE;
GT.WS[ws].new_rotation = false;
GT.WS[ws].board = 1
GT.WS[ws].angles = {
					{math.rad(150), math.rad(-150), -0.2, math.rad(90)},
					};
GT.WS[ws].drawArgument1 = 13
GT.WS[ws].drawArgument2 = 14
GT.WS[ws].pos = {43.378,10.098,0.0}
--GT.WS[ws].LN[1].depends_on_unit = LEV_TRACKER;
GT.WS[ws].LN[1].BR[1].pos = {5.4,0.0,0.0}

-- kortik battle modules
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.kortik)
GT.WS[ws].newZ = GT_t.ANGLE_Z_TRANSLATION_OPTIONS.TRANSLATE_MIN_ANGLE_TO_MINUS_ONE;
GT.WS[ws].new_rotation = false;
GT.WS[ws].board = 3
GT.WS[ws].pos = {-28.2,11.548,-4.8}
GT.WS[ws].drawArgument1 = 19
GT.WS[ws].drawArgument2 = 20

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.kortik)
GT.WS[ws].newZ = GT_t.ANGLE_Z_TRANSLATION_OPTIONS.TRANSLATE_MIN_ANGLE_TO_MINUS_ONE;
GT.WS[ws].new_rotation = false;
GT.WS[ws].board = 4
GT.WS[ws].pos = {-28.2,11.548,4.8}
GT.WS[ws].drawArgument1 = 17
GT.WS[ws].drawArgument2 = 18

-- klinok tracker, dummy
ws = GT_t.inc_ws();
GT.WS[ws] = {}
local klinok_tracker_ws = ws
GT.WS[ws].pos = {37.5,5.479,0}
GT.WS[ws].omegaY = 1
GT.WS[ws].omegaZ = 1
GT.WS[ws].drawArgument1 = 6;
-- зона обнаружения
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(0), math.rad(64)},
					};
GT.WS[ws].LN = {}
GT.WS[ws].LN[1] = {}
GT.WS[ws].LN[1].type = 102
GT.WS[ws].LN[1].reflection_limit = 0.02;
GT.WS[ws].LN[1].distanceMin = 1000
GT.WS[ws].LN[1].distanceMax = 27000
GT.WS[ws].LN[1].ECM_K = 0.65
GT.WS[ws].LN[1].min_trg_alt = 10
GT.WS[ws].LN[1].max_trg_alt = 23000

for i = 0,3 do
    ws = GT_t.inc_ws();
	GT.WS[ws] = {}
    set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_klinok)
    GT.WS[ws].base = klinok_tracker_ws
	GT.WS[ws].angles[1][1] = math.rad(30);
	GT.WS[ws].angles[1][2] = math.rad(-30);
    GT.WS[ws].pos = {1.65 - math.floor(i/2)*3.3, 1.0, -1.65 + 3.3*(i-math.floor(i/2)*2)}
end -- for

GT.Name = "NEUSTRASH"
GT.DisplayName = _("FFG 11540 Neustrashimy")
GT.Rate = 1500
   
GT.Sensors = {  OPTIC = {"long-range naval optics", "long-range naval LLTV"},
                RADAR = {
                            "Tor 9A331", "2S6 Tunguska",
                            "neustrashimy search radar",
                        },
            }

GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   ="no";
GT.mapclasskey = "P0091000069";
GT.attribute = {wsType_Navy,wsType_Ship,wsType_ArmedShip,NEUSTRASH,
                "Frigates",
                "RADAR_BAND1_FOR_ARM"
				};
GT.Categories = {
					{name = "Armed Ship"},
					{name = "HelicopterCarrier"}
				};