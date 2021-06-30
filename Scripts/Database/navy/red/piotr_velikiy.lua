-- Piotr Velikiy 1144.2 CGN (KIROV Class Cruiser) 099

GT = {};
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "Piotr_Velikiy"
GT.visual.shape_dstr = ""


GT.life = 6500
GT.mass = 2.0e+007
GT.max_velocity = 16.0056
GT.race_velocity = 15.4333
GT.economy_velocity = 8.2889
GT.economy_distance = 7.408e+006
GT.race_distance = 4.8152e+006
GT.shipLength = 230
GT.Width = 30
GT.Height = 46
GT.Length = 252
GT.DeckLevel = 9
GT.X_nose = 59.1924
GT.X_tail = -64.9268
GT.Tail_Width = 8.6
GT.Gamma_max = 0.35
GT.Om = 0.02
GT.speedup = 0.369585
GT.R_min = 592.4
GT.distFindObstacles = 788.6

GT.numParking = 1
GT.Helicopter_Num_ = 1

GT.animation_arguments.water_propeller = -1;

GT.airWeaponDist = 190000
GT.airFindDist = 250000

GT.sensor = {};
GT.sensor.max_range_finding_target = 180000;
GT.sensor.min_range_finding_target = 0;
GT.sensor.max_alt_finding_target = 15000;
GT.sensor.min_alt_finding_target = 0;
GT.sensor.height = 15.0;

GT.Landing_Point = {-111.2, 6.42, 0.0}

-- weapon systems

GT.WS = {}
GT.WS.maxTargetDetectionRange = 550000;
GT.WS.radar_type = 102
GT.WS.searchRadarMaxElevation = math.rad(60);

local ws;

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.kortik)
GT.WS[ws].board = 4
GT.WS[ws].center = 'TARGET_KORTIK_1'
GT.WS[ws].angles[1][1] = math.rad(140);
GT.WS[ws].angles[1][2] = math.rad(-80);
GT.WS[ws].drawArgument1 = 17
GT.WS[ws].drawArgument2 = 18
GT.WS[ws].LN[1].BR = {{connector_name = 'POINT_KORTIK_1_1'},
                      {connector_name = 'POINT_KORTIK_1_2'},
                      {connector_name = 'POINT_KORTIK_1_1'},
                      {connector_name = 'POINT_KORTIK_1_2'},
                      {connector_name = 'POINT_KORTIK_1_1'},
                      {connector_name = 'POINT_KORTIK_1_2'},
                      {connector_name = 'POINT_KORTIK_1_1'},
                      {connector_name = 'POINT_KORTIK_1_2'}};
GT.WS[ws].LN[2].BR = {{connector_name = 'POINT_KORTIK-GUN_1_1'}, 
                      {connector_name = 'POINT_KORTIK-GUN_1_2'}};

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.kortik)
GT.WS[ws].board = 3
GT.WS[ws].center = 'TARGET_KORTIK_2'
--GT.WS[ws].maxLeft = math.rad(83)
--GT.WS[ws].maxRight = math.rad(-143)
GT.WS[ws].angles[1][1] = math.rad(80);
GT.WS[ws].angles[1][2] = math.rad(-140);
GT.WS[ws].drawArgument1 = 19
GT.WS[ws].drawArgument2 = 20
GT.WS[ws].LN[1].BR = {{connector_name = 'POINT_KORTIK_2_1'},
                      {connector_name = 'POINT_KORTIK_2_2'},
                      {connector_name = 'POINT_KORTIK_2_1'},
                      {connector_name = 'POINT_KORTIK_2_2'},
                      {connector_name = 'POINT_KORTIK_2_1'},
                      {connector_name = 'POINT_KORTIK_2_2'},
                      {connector_name = 'POINT_KORTIK_2_1'},
                      {connector_name = 'POINT_KORTIK_2_2'},};
GT.WS[ws].LN[2].BR = {{connector_name = 'POINT_KORTIK-GUN_2_1'}, 
                      {connector_name = 'POINT_KORTIK-GUN_2_2'}};

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.kortik)
GT.WS[ws].board = 4
GT.WS[ws].center = 'TARGET_KORTIK_3'
--GT.WS[ws].maxLeft = math.rad(83)
--GT.WS[ws].maxRight = math.rad(-93)
GT.WS[ws].angles[1][1] = math.rad(80);
GT.WS[ws].angles[1][2] = math.rad(-90);
GT.WS[ws].drawArgument1 = 21
GT.WS[ws].drawArgument2 = 22
GT.WS[ws].LN[1].BR = {{connector_name = 'POINT_KORTIK_3_1'},
                      {connector_name = 'POINT_KORTIK_3_2'},
                      {connector_name = 'POINT_KORTIK_3_1'},
                      {connector_name = 'POINT_KORTIK_3_2'},
                      {connector_name = 'POINT_KORTIK_3_1'},
                      {connector_name = 'POINT_KORTIK_3_2'},
                      {connector_name = 'POINT_KORTIK_3_1'},
                      {connector_name = 'POINT_KORTIK_3_2'},};
GT.WS[ws].LN[2].BR = {{connector_name = 'POINT_KORTIK-GUN_3_1'}, 
                      {connector_name = 'POINT_KORTIK-GUN_3_2'}};

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.kortik)
GT.WS[ws].board = 3
--GT.WS[ws].center = 'TARGET_KORTIK_4'
GT.WS[ws].pos = {-40.717, 18.55, -5.9};
--GT.WS[ws].maxLeft = math.rad(93)
--GT.WS[ws].maxRight = math.rad(-83)
GT.WS[ws].angles[1][1] = math.rad(90);
GT.WS[ws].angles[1][2] = math.rad(-80);
GT.WS[ws].drawArgument1 = 23
GT.WS[ws].drawArgument2 = 24
GT.WS[ws].LN[1].connectorFire = false;

--[[
GT.WS[ws].LN[1].BR = {{connector_name = 'POINT_KORTIK_4_1'},
                      {connector_name = 'POINT_KORTIK_4_2'},
                      {connector_name = 'POINT_KORTIK_4_1'},
                      {connector_name = 'POINT_KORTIK_4_2'},
                      {connector_name = 'POINT_KORTIK_4_1'},
                      {connector_name = 'POINT_KORTIK_4_2'},
                      {connector_name = 'POINT_KORTIK_4_1'},
                      {connector_name = 'POINT_KORTIK_4_2'},};
GT.WS[ws].LN[2].BR = {{connector_name = 'POINT_KORTIK-GUN_4_1'}, 
                      {connector_name = 'POINT_KORTIK-GUN_4_2'}};
]]
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.kortik)
GT.WS[ws].board = 4
GT.WS[ws].center = 'TARGET_KORTIK_5'
--GT.WS[ws].maxLeft = math.rad(83)
--GT.WS[ws].maxRight = math.rad(-98)
GT.WS[ws].angles[1][1] = math.rad(80);
GT.WS[ws].angles[1][2] = math.rad(-95);
GT.WS[ws].drawArgument1 = 25
GT.WS[ws].drawArgument2 = 26
GT.WS[ws].LN[1].BR = {{connector_name = 'POINT_KORTIK_5_1'},
                      {connector_name = 'POINT_KORTIK_5_2'},
                      {connector_name = 'POINT_KORTIK_5_1'},
                      {connector_name = 'POINT_KORTIK_5_2'},
                      {connector_name = 'POINT_KORTIK_5_1'},
                      {connector_name = 'POINT_KORTIK_5_2'},
                      {connector_name = 'POINT_KORTIK_5_1'},
                      {connector_name = 'POINT_KORTIK_5_2'},};
GT.WS[ws].LN[2].BR = {{connector_name = 'POINT_KORTIK-GUN_5_1'}, 
                      {connector_name = 'POINT_KORTIK-GUN_5_2'}};

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.kortik)
GT.WS[ws].board = 3
--GT.WS[ws].center = 'TARGET_KORTIK_6'
GT.WS[ws].pos = {-54.6906, 16.514, -5.95};
--GT.WS[ws].maxLeft = math.rad(98)
--GT.WS[ws].maxRight = math.rad(-83)
GT.WS[ws].angles[1][1] = math.rad(95);
GT.WS[ws].angles[1][2] = math.rad(-80);
GT.WS[ws].drawArgument1 = 27
GT.WS[ws].drawArgument2 = 28
--[[
GT.WS[ws].LN[1].BR = {{connector_name = 'POINT_KORTIK_6_1'},
                      {connector_name = 'POINT_KORTIK_6_2'},
                      {connector_name = 'POINT_KORTIK_6_1'},
                      {connector_name = 'POINT_KORTIK_6_2'},
                      {connector_name = 'POINT_KORTIK_6_1'},
                      {connector_name = 'POINT_KORTIK_6_2'},
                      {connector_name = 'POINT_KORTIK_6_1'},
                      {connector_name = 'POINT_KORTIK_6_2'},};
GT.WS[ws].LN[2].BR = {{connector_name = 'POINT_KORTIK-GUN_6_1'}, 
                      {connector_name = 'POINT_KORTIK-GUN_6_2'}};
]]

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK130);
GT.WS[ws].board = 2
GT.WS[ws].center = 'TARGET_AK130_1'
GT.WS[ws].drawArgument1 = 13
GT.WS[ws].drawArgument2 = 14
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_AK130_1_1'
GT.WS[ws].LN[1].BR[2].connector_name = 'POINT_AK130_1_2'

-- Klinok tracker, dummy
ws = GT_t.inc_ws();
GT.WS[ws] = {}
local klinok_tracker_ws = ws
GT.WS[ws].pos = {-100,10,0}
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-90), math.rad(90)},
                    };
GT.WS[ws].omegaY = 1
GT.WS[ws].omegaZ = 1
GT.WS[ws].reference_angle_Z = 0
GT.WS[ws].LN = {}
GT.WS[ws].LN[1] = {}
GT.WS[ws].LN[1].max_number_of_missiles_channels = 2
GT.WS[ws].LN[1].type = 102
GT.WS[ws].LN[1].distanceMin = 1500
GT.WS[ws].LN[1].distanceMax = 25000
GT.WS[ws].LN[1].ECM_K = 0.65
GT.WS[ws].LN[1].min_trg_alt = 10
GT.WS[ws].LN[1].max_trg_alt = 6000
GT.WS[ws].LN[1].reactionTime = 1

--в каждой из 4 WS увеличено количество ракет, т.к. барабанных ѕ” ¬ќ—≈ћ№
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_klinok)
GT.WS[ws].base = klinok_tracker_ws
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].pos = {1,0,0}
GT.WS[ws].LN[1].PL[1].ammo_capacity = 16; 
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_KINGAL_1_1'

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_klinok)
GT.WS[ws].base = klinok_tracker_ws
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].pos = {1,0,0}
GT.WS[ws].LN[1].PL[1].ammo_capacity = 16;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_KINGAL_1_2'

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_klinok)
GT.WS[ws].base = klinok_tracker_ws
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].pos = {1,0,0}
GT.WS[ws].LN[1].PL[1].ammo_capacity = 16;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_KINGAL_1_3'

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_klinok)
GT.WS[ws].base = klinok_tracker_ws
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].pos = {1,0,0}
GT.WS[ws].LN[1].PL[1].ammo_capacity = 16;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_KINGAL_1_4'

-- S-300 (rifM) tracker
ws = GT_t.inc_ws();
GT.WS[ws] = {}
local rifM_tracker_ws = ws
GT.WS[ws].pos = {-42.3,7.2,0}
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-90), math.rad(90)},
                    };
GT.WS[ws].omegaY = 1
GT.WS[ws].omegaZ = 1
GT.WS[ws].LN = {}
GT.WS[ws].LN[1] = {}
GT.WS[ws].LN[1].max_number_of_missiles_channels = 2
GT.WS[ws].LN[1].type = 102
GT.WS[ws].LN[1].distanceMin = 5000
GT.WS[ws].LN[1].distanceMax = 250000
GT.WS[ws].LN[1].reflection_limit = 0.049;
GT.WS[ws].LN[1].ECM_K = 0.4
GT.WS[ws].LN[1].min_trg_alt = 10
GT.WS[ws].LN[1].max_trg_alt = 27000

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rifM)
GT.WS[ws].base = rifM_tracker_ws
GT.WS[ws].pos = {1,0,0}
GT.WS[ws].angles[1][1] = math.rad(45);
GT.WS[ws].angles[1][2] = math.rad(-45);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_C-300_1_4'

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rifM)
GT.WS[ws].base = rifM_tracker_ws
GT.WS[ws].pos = {1,0,0}
GT.WS[ws].angles[1][1] = math.rad(45);
GT.WS[ws].angles[1][2] = math.rad(-45);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_C-300_1_2'

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rifM)
GT.WS[ws].base = rifM_tracker_ws
GT.WS[ws].pos = {1,0,0}
GT.WS[ws].angles[1][1] = math.rad(45);
GT.WS[ws].angles[1][2] = math.rad(-45);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_C-300_1_1'

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rifM)
GT.WS[ws].base = rifM_tracker_ws
GT.WS[ws].pos = {1,0,0}
GT.WS[ws].angles[1][1] = math.rad(45);
GT.WS[ws].angles[1][2] = math.rad(-45);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_C-300_1_4'

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rifM)
GT.WS[ws].base = rifM_tracker_ws
GT.WS[ws].pos = {1,0,0}
GT.WS[ws].angles[1][1] = math.rad(45);
GT.WS[ws].angles[1][2] = math.rad(-45);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_C-300_1_2'

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rifM)
GT.WS[ws].base = rifM_tracker_ws
GT.WS[ws].pos = {1,0,0}
GT.WS[ws].angles[1][1] = math.rad(45);
GT.WS[ws].angles[1][2] = math.rad(-45);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_C-300_1_1'

-- S-300 (rif) tracker
ws = GT_t.inc_ws();

GT.WS[ws] = {}
local rif_tracker_ws = ws
GT.WS[ws].pos = {56,12,0}
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-90), math.rad(90)},
                    };
GT.WS[ws].omegaY = 1
GT.WS[ws].omegaZ = 1
GT.WS[ws].LN = {}
GT.WS[ws].LN[1] = {}
GT.WS[ws].LN[1].max_number_of_missiles_channels = 2
GT.WS[ws].LN[1].type = 102
GT.WS[ws].LN[1].distanceMin = 5000
GT.WS[ws].LN[1].distanceMax = 200000
GT.WS[ws].LN[1].reflection_limit = 0.049;
GT.WS[ws].LN[1].ECM_K = 0.4
GT.WS[ws].LN[1].min_trg_alt = 25
GT.WS[ws].LN[1].max_trg_alt = 27000

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rif)
GT.WS[ws].base = rif_tracker_ws
GT.WS[ws].pos = {1,0,0}
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_C-300_1_4'

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rif)
GT.WS[ws].base = rif_tracker_ws
GT.WS[ws].pos = {1,0,0}
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_C-300_1_2'

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rif)
GT.WS[ws].base = rif_tracker_ws
GT.WS[ws].pos = {1,0,0}
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_C-300_1_1'

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rif)
GT.WS[ws].base = rif_tracker_ws
GT.WS[ws].pos = {1,0,0}
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_C-300_1_4'

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rif)
GT.WS[ws].base = rif_tracker_ws
GT.WS[ws].pos = {1,0,0}
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_C-300_1_2'

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rif)
GT.WS[ws].base = rif_tracker_ws
GT.WS[ws].pos = {1,0,0}
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_C-300_1_1'

-- ASM Granit (P-700 missile)
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_granit)
GT.WS[ws].pos = {41,12,0};
GT.WS[ws].LN[1].PL[1].ammo_capacity = 20;
GT.WS[ws].LN[1].max_number_of_missiles_channels = 20;
GT.WS[ws].LN[1].BR = {}
local cos60 = math.cos(-math.rad(60));
local sin60 = math.sin(-math.rad(60));
for i = 0,4 do
	local r = (8 - i*4)
	GT.WS[ws].LN[1].BR[i*4+1] = {pos = {r*cos60, r*sin60, -4.75}};
	GT.WS[ws].LN[1].BR[i*4+2] = {pos = {r*cos60, r*sin60, -2.3}};
	GT.WS[ws].LN[1].BR[i*4+3] = {pos = {r*cos60, r*sin60, 2.3}};
	GT.WS[ws].LN[1].BR[i*4+4] = {pos = {r*cos60, r*sin60, 4.75}};
end

GT.Name = "PIOTR"
GT.DisplayName = _("CGN 1144.2 Piotr Velikiy")
GT.Rate = 1900

GT.Sensors = { OPTIC = {"long-range naval optics", "long-range naval LLTV"},
                RADAR = {"S-300PS 40B6M tr navy",
                        "Tor 9A331",
                        "2S6 Tunguska",
                        --"KKS R-790 Tsunami-BM"
                        "piotr velikiy search radar",
                        },
            }

GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   ="no";
GT.mapclasskey = "P0091000066";
GT.attribute = {wsType_Navy,wsType_Ship,wsType_ArmedShip,SKORY,
                "Cruisers",
                "RADAR_BAND1_FOR_ARM",
                "DetectionByAWACS",
                };
GT.Categories = {
                    {name = "Armed Ship"},
                    {name = "HelicopterCarrier"},
                };