-- Moskva 1164 CG (SLAVA Class Cruiser) 121

GT = {};
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "moscow"
GT.visual.shape_dstr = ""

GT.animation_arguments.flight_deck_fences = 150;
GT.radar1_period = 6.0;
GT.radar2_period = 12.0;
GT.radar3_period = 3.0;

GT.life = 5200;
GT.mass = 1.128e+007
GT.max_velocity = 16.7194
GT.race_velocity = 15.4333
GT.economy_velocity = 9.26
GT.economy_distance = 1.49456e+007
GT.race_distance = 4.63e+006
GT.shipLength = 187
GT.Width = 20
GT.Height = 39
GT.Length = 187
GT.DeckLevel = 7.2
GT.X_nose = 81.75
GT.X_tail = -87.6572
GT.Tail_Width = 14.5
GT.Gamma_max = 0.35
GT.Om = 0.02
GT.speedup = 0.249144
GT.R_min = 374
GT.distFindObstacles = 611

GT.numParking = 1
GT.Helicopter_Num_ = 1

GT.airFindDist = 160000 -- дальность обнаружения "Рифом"
GT.airWeaponDist = 75000 -- дальность поражения "Рифом"

GT.Landing_Point = {-85.0, 5.92, 0.0} -- {-82.2, 6.526, 0.0}

GT.DM = {
    { area_name = "NOSE_R", 				area_arg = 70, area_life = 300, area_fire = { connector = "FIRE_NOSE_R", size = 0.3}},
	{ area_name = "BORT_R", 				area_arg = 71, area_life = 300, area_fire = { connector = "FIRE_BORT_R", size = 0.3}},
    { area_name = "KORMA_R", 				area_arg = 72, area_life = 300, area_fire = { connector = "FIRE_KORMA_R", size = 0.3}},
    { area_name = "NOSE_L", 				area_arg = 73, area_life = 300, area_fire = { connector = "FIRE_NOSE_L", size = 0.3}},
    { area_name = "BORT_L", 				area_arg = 74, area_life = 300, area_fire = { connector = "FIRE_BORT_L", size = 0.3}},
    { area_name = "KORMA_L", 				area_arg = 75, area_life = 300, area_fire = { connector = "FIRE_KORMA_L", size = 0.3}},
	{ area_name = "NOSE_TOP", 				area_arg = 76, area_life = 150},
	{ area_name = "BORT_TOP", 				area_arg = 77, area_life = 150},
	{ area_name = "KORMA_TOP", 				area_arg = 78, area_life = 150},
	{ area_name = "KORMA_BACK", 			area_arg = 79, area_life = 150},
	{ area_name = "RUBKA_R",				area_arg = 80, area_life = 100},
	{ area_name = "NADSTROYKA_CENTER_R",	area_arg = 81, area_life = 100},
	{ area_name = "NADSTROYKA_BACK_R",		area_arg = 82, area_life = 100},
	{ area_name = "RUBKA_L",				area_arg = 83, area_life = 100},
	{ area_name = "NADSTROYKA_CENTER_L",	area_arg = 84, area_life = 100},
	{ area_name = "NADSTROYKA_BACK_L",		area_arg = 85, area_life = 100},
	{ area_name = "AP_ZA_07",				area_arg = 95, area_life = 30},
	{ area_name = "AP_ZA_08",				area_arg = 96, area_life = 30},
	{ area_name = "TOWER_NOSE",				area_arg = 97, area_life = 80},
	{ area_name = "ZA_01",					area_arg = 99, area_life = 30},
	{ area_name = "ZA_02",					area_arg = 100, area_life = 30},
	{ area_name = "ZA_03",					area_arg = 101, area_life = 30},
	{ area_name = "ZA_04",					area_arg = 102, area_life = 30},
	{ area_name = "ZA_05",					area_arg = 103, area_life = 30},
	{ area_name = "ZA_06",					area_arg = 104, area_life = 30},
	{ area_name = "TPK_01_R",				area_arg = 109, area_life = 20},
	{ area_name = "TPK_01_L",				area_arg = 110, area_life = 20},
	{ area_name = "TPK_02_R",				area_arg = 111, area_life = 20},
	{ area_name = "TPK_02_L",				area_arg = 112, area_life = 20},
	{ area_name = "TPK_03_R",				area_arg = 113, area_life = 20},
	{ area_name = "TPK_03_L",				area_arg = 114, area_life = 20},
	{ area_name = "TPK_04_R",				area_arg = 115, area_life = 20},
	{ area_name = "TPK_04_L",				area_arg = 116, area_life = 20},
}

-- weapon systems
GT.WS = {}
GT.WS.maxTargetDetectionRange = 500000;
GT.WS.radar_type = 102
GT.WS.searchRadarMaxElevation = math.rad(40);
--Vympel Center
-- 1

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[1]);
GT.WS[ws].center = 'CENTER_RADAR_04'
GT.WS[ws].angles[1][1] = math.rad(140);
GT.WS[ws].angles[1][2] = math.rad(-140);
GT.WS[ws].drawArgument1 = 6
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[2]);
GT.WS[ws].base = ws-1;
local vympel_trackers1 = {{{"self", ws-1}}, {{"self", ws}}};
-- Vympel Right
-- 3
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[1]);
GT.WS[ws].center = 'CENTER_RADAR_05'
GT.WS[ws].angles[1][1] = math.rad(-10);
GT.WS[ws].angles[1][2] = math.rad(-170);
GT.WS[ws].drawArgument1 = 7
GT.WS[ws].reference_angle_Y = math.rad(-90);
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[2]);
GT.WS[ws].base = ws-1;
local vympel_trackers2 = {{{"self", ws-1}}, {{"self", ws}}};
--Vympel Left
-- 5
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[1]);
GT.WS[ws].center = 'CENTER_RADAR_06'
GT.WS[ws].angles[1][1] = math.rad(170);
GT.WS[ws].angles[1][2] = math.rad(10);
GT.WS[ws].drawArgument1 = 8
GT.WS[ws].reference_angle_Y = math.rad(90);
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[2]);
GT.WS[ws].base = ws-1;
local vympel_trackers3 = {{{"self", ws-1}}, {{"self", ws}}};

--Front
-- 7
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK630)
GT.WS[ws].center = "CENTER_TOWER_AK630_01"
GT.WS[ws].area = "ZA_01"
GT.WS[ws].drawArgument1 = 17
GT.WS[ws].drawArgument2 = 18
GT.WS[ws].angles = { {math.rad(140), math.rad(-140), math.rad(-12), math.rad(88)}};
GT.WS[ws].LN[1].depends_on_unit = vympel_trackers1;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_AK630_01'
-- 8
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK630)
GT.WS[ws].center = "CENTER_TOWER_AK630_02"
GT.WS[ws].area = "ZA_02"
GT.WS[ws].angles = { {math.rad(140), math.rad(-140), math.rad(-12), math.rad(88)}};
GT.WS[ws].drawArgument1 = 19
GT.WS[ws].drawArgument2 = 20
GT.WS[ws].LN[1].depends_on_unit = vympel_trackers1;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_AK630_02'

--Right
-- 9
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK630)
GT.WS[ws].center = "CENTER_TOWER_AK630_03"
GT.WS[ws].area = "ZA_03"
GT.WS[ws].angles = { {math.rad(-10), math.rad(-170), math.rad(-12), math.rad(88)}};
GT.WS[ws].reference_angle_Y = math.rad(-90);
GT.WS[ws].drawArgument1 = 21
GT.WS[ws].drawArgument2 = 22
GT.WS[ws].LN[1].depends_on_unit = vympel_trackers2;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_AK630_03'
-- 10
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK630)
GT.WS[ws].center = "CENTER_TOWER_AK630_04"
GT.WS[ws].area = "ZA_04"
GT.WS[ws].angles = { {math.rad(-10), math.rad(-170), math.rad(-12), math.rad(88)}};
GT.WS[ws].reference_angle_Y = math.rad(-90);
GT.WS[ws].drawArgument1 = 23
GT.WS[ws].drawArgument2 = 24
GT.WS[ws].LN[1].depends_on_unit = vympel_trackers2;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_AK630_04'

--Left
-- 11
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK630)
GT.WS[ws].center = "CENTER_TOWER_AK630_05"
GT.WS[ws].area = "ZA_05"
GT.WS[ws].angles = { {math.rad(170), math.rad(10), math.rad(-12), math.rad(88)}};
GT.WS[ws].reference_angle_Y = math.rad(90);
GT.WS[ws].drawArgument1 = 25
GT.WS[ws].drawArgument2 = 26
GT.WS[ws].LN[1].depends_on_unit = vympel_trackers3;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_AK630_05'
-- 12
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK630)
GT.WS[ws].center = "CENTER_TOWER_AK630_06"
GT.WS[ws].area = "ZA_06"
GT.WS[ws].angles = { {math.rad(170), math.rad(10), math.rad(-12), math.rad(88)}};
GT.WS[ws].reference_angle_Y = math.rad(90);
GT.WS[ws].drawArgument1 = 27
GT.WS[ws].drawArgument2 = 28
GT.WS[ws].LN[1].depends_on_unit = vympel_trackers3;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_AK630_06'

--13
-- Main Gun
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK130 )
GT.WS[ws].angles[1][1] = math.rad(120);
GT.WS[ws].angles[1][2] = math.rad(-120);
GT.WS[ws].center = "CENTER_TOWER_AK130_01"
GT.WS[ws].area = "TOWER_NOSE"
GT.WS[ws].drawArgument1 = 13
GT.WS[ws].drawArgument2 = 14
GT.WS[ws].LN[1].BR = 
{
	{
		connector_name = 'POINT_AK130_01_1',
		recoilArgument = 117,
		recoilTime = 0.6,
	},
	{
		connector_name = 'POINT_AK130_01_2',
		recoilArgument = 118,
		recoilTime = 0.6,
	}
}

-- 14
--Osa Tracker Right 
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.OSA_tracker);
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 55}
GT.WS[ws].center = 'CENTER_RADAR_12'
GT.WS[ws].area = "AP_ZA_07"
GT.WS[ws].angles[1][1] = math.rad(-10);
GT.WS[ws].angles[1][2] = math.rad(170);
GT.WS[ws].reference_angle_Y = math.rad(-90);
GT.WS[ws].drawArgument1 = 11
GT.WS[ws].drawArgument2 = 317
local osa_trackers1 = {{{"self", ws}}};
-- 15
--Osa Tracker Left
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.OSA_tracker);
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 323}
GT.WS[ws].center = 'CENTER_RADAR_11'
GT.WS[ws].area = "AP_ZA_08"
GT.WS[ws].angles[1][1] = math.rad(-170);
GT.WS[ws].angles[1][2] = math.rad(10);
GT.WS[ws].reference_angle_Y = math.rad(90);
GT.WS[ws].drawArgument1 = 12
GT.WS[ws].drawArgument2 = 319
local osa_trackers2 = {{{"self", ws}}};

-- 16
--Osa Launcher Right
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_OSA_M)
GT.WS[ws].center = "CENTER_TOWER_OSA_01"
GT.WS[ws].board = 2;
GT.WS[ws].drawArgument1 = 49
GT.WS[ws].drawArgument2 = 50
GT.WS[ws].angles[1][1] = math.rad(150);
GT.WS[ws].angles[1][2] = math.rad(-47);
GT.WS[ws].reloadAngleY = math.rad(0);
GT.WS[ws].LN[1].depends_on_unit = osa_trackers1;
GT.WS[ws].LN[1].BR = { {connector_name = 'POINT_OSA_01_1' }, { connector_name = 'POINT_OSA_01_2' }}
-- 17
--Osa Launcher Left
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_OSA_M)
GT.WS[ws].board = 2;
GT.WS[ws].center = "CENTER_TOWER_OSA_02"
GT.WS[ws].drawArgument1 = 51
GT.WS[ws].drawArgument2 = 52
GT.WS[ws].angles[1][1] = math.rad(47);
GT.WS[ws].angles[1][2] = math.rad(-150);
GT.WS[ws].reloadAngleY = math.rad(0);
GT.WS[ws].LN[1].depends_on_unit = osa_trackers2;
GT.WS[ws].LN[1].BR = { {connector_name = 'POINT_OSA_02_1' }, { connector_name = 'POINT_OSA_02_2' }}

-- 18
------------------------    BAZALTS  ----------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_bazalt)
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 177}
GT.WS[ws].center = 'POINT_BAZALT_01'
GT.WS[ws].area = "TPK_01_R"
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_BAZALT_01'
-- 19
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_bazalt)
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 178}
GT.WS[ws].center = 'POINT_BAZALT_02'
GT.WS[ws].area = "TPK_01_L"
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_BAZALT_02'
-- 20
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_bazalt)
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 179}
GT.WS[ws].center = 'POINT_BAZALT_03'
GT.WS[ws].area = "TPK_01_R"
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_BAZALT_03'
-- 21
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_bazalt)
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 180}
GT.WS[ws].center = 'POINT_BAZALT_04'
GT.WS[ws].area = "TPK_01_L"
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_BAZALT_04'
-- 22
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_bazalt)
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 181}
GT.WS[ws].center = 'POINT_BAZALT_05'
GT.WS[ws].area = "TPK_02_R"
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_BAZALT_05'
-- 23
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_bazalt)
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 182}
GT.WS[ws].center = 'POINT_BAZALT_06'
GT.WS[ws].area = "TPK_02_L"
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_BAZALT_06'
-- 24
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_bazalt)
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 183}
GT.WS[ws].center = 'POINT_BAZALT_07'
GT.WS[ws].area = "TPK_02_R"
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_BAZALT_07'
-- 25
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_bazalt)
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 184}
GT.WS[ws].center = 'POINT_BAZALT_08'
GT.WS[ws].area = "TPK_02_L"
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_BAZALT_08'
-- 26
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_bazalt)
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 185}
GT.WS[ws].center = 'POINT_BAZALT_09'
GT.WS[ws].area = "TPK_03_R"
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_BAZALT_09'
-- 27
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_bazalt)
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 186}
GT.WS[ws].center = 'POINT_BAZALT_10'
GT.WS[ws].area = "TPK_03_L"
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_BAZALT_10'
-- 28
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_bazalt)
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 187}
GT.WS[ws].center = 'POINT_BAZALT_11'
GT.WS[ws].area = "TPK_03_R"
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_BAZALT_11'
-- 29
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_bazalt)
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 188}
GT.WS[ws].center = 'POINT_BAZALT_12'
GT.WS[ws].area = "TPK_03_L"
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_BAZALT_12'
-- 30
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_bazalt)
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 189}
GT.WS[ws].center = 'POINT_BAZALT_13'
GT.WS[ws].area = "TPK_04_R"
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_BAZALT_13'
-- 31
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_bazalt)
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 190}
GT.WS[ws].center = 'POINT_BAZALT_14'
GT.WS[ws].area = "TPK_04_L"
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_BAZALT_14'
-- 32
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_bazalt)
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 191}
GT.WS[ws].center = 'POINT_BAZALT_15'
GT.WS[ws].area = "TPK_04_R"
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_BAZALT_15'
-- 33
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_bazalt)
GT.WS[ws].animation_alarm_state = {time = 1.5, arg = 192}
GT.WS[ws].center = 'POINT_BAZALT_16'
GT.WS[ws].area = "TPK_04_L"
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_BAZALT_16'

---------------------     S-300 (rif)    ------------------

-- 34
--tracker
ws = GT_t.inc_ws();
GT.WS[ws] = {}
local rif_tracker_ws = ws
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-90), math.rad(90)},
                    };
GT.WS[ws].center = 'CENTER_RADAR_13'
GT.WS[ws].area = "BORT_TOP"
GT.WS[ws].omegaY = math.rad(20)
GT.WS[ws].omegaZ = 1
GT.WS[ws].drawArgument1 = 10
GT.WS[ws].LN = {}
GT.WS[ws].LN[1] = {}
GT.WS[ws].LN[1].type = 102
GT.WS[ws].LN[1].distanceMin = 2000
GT.WS[ws].LN[1].distanceMax = GT.airFindDist
GT.WS[ws].LN[1].reflection_limit = 0.049;
GT.WS[ws].LN[1].ECM_K = 0.4;
GT.WS[ws].LN[1].min_trg_alt = 25
GT.WS[ws].LN[1].max_trg_alt = 27000
GT.WS[ws].LN[1].reactionTime = 1
-- 35
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rif)
GT.WS[ws].animation_alarm_state = {time = 2, arg = 193}
GT.WS[ws].base = rif_tracker_ws
GT.WS[ws].center = 'CENTER_FORT_PU_01'
GT.WS[ws].area = "BORT_TOP"
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].LN[1].beamWidth = math.rad(90);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_FORT_01'
-- 36
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rif)
GT.WS[ws].animation_alarm_state = {time = 2, arg = 194}
GT.WS[ws].base = rif_tracker_ws
GT.WS[ws].center = 'CENTER_FORT_PU_02'
GT.WS[ws].area = "BORT_TOP"
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].LN[1].beamWidth = math.rad(90);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_FORT_02'
-- 37
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rif)
GT.WS[ws].animation_alarm_state = {time = 2, arg = 195}
GT.WS[ws].base = rif_tracker_ws
GT.WS[ws].center = 'CENTER_FORT_PU_03'
GT.WS[ws].area = "BORT_TOP"
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].LN[1].beamWidth = math.rad(90);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_FORT_03'
-- 38
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rif)
GT.WS[ws].animation_alarm_state = {time = 2, arg = 196}
GT.WS[ws].base = rif_tracker_ws
GT.WS[ws].center = 'CENTER_FORT_PU_04'
GT.WS[ws].area = "BORT_TOP"
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].LN[1].beamWidth = math.rad(90);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_FORT_04'
-- 39
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rif)
GT.WS[ws].animation_alarm_state = {time = 2, arg = 197}
GT.WS[ws].base = rif_tracker_ws
GT.WS[ws].center = 'CENTER_FORT_PU_05'
GT.WS[ws].area = "BORT_TOP"
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].LN[1].beamWidth = math.rad(90);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_FORT_05'
-- 40
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rif)
GT.WS[ws].animation_alarm_state = {time = 2, arg = 198}
GT.WS[ws].base = rif_tracker_ws
GT.WS[ws].center = 'CENTER_FORT_PU_06'
GT.WS[ws].area = "BORT_TOP"
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].LN[1].beamWidth = math.rad(90);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_FORT_06'
-- 41
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rif)
GT.WS[ws].animation_alarm_state = {time = 2, arg = 199}
GT.WS[ws].base = rif_tracker_ws
GT.WS[ws].center = 'CENTER_FORT_PU_07'
GT.WS[ws].area = "BORT_TOP"
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].LN[1].beamWidth = math.rad(90);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_FORT_07'
-- 42
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_rif)
GT.WS[ws].animation_alarm_state = {time = 2, arg = 200}
GT.WS[ws].base = rif_tracker_ws
GT.WS[ws].center = 'CENTER_FORT_PU_08'
GT.WS[ws].area = "BORT_TOP"
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].LN[1].beamWidth = math.rad(90);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_FORT_08'

GT.Name = "MOSCOW"
GT.DisplayName = _("CG 1164 Moskva")
GT.Rate = 4500

GT.Sensors = { OPTIC = {"long-range naval optics", "long-range naval LLTV", "long-range naval FLIR"},
                RADAR = {"S-300PS 40B6M tr navy", --"Форт С-300Ф"
                        "Osa 9A33 ln", -- "Оса-М"
                        "moskva search radar",
                        --"KKS R-790 Tsunami-BM" --комплекс космической связи Р-790 "Цунами-БМ" РКР "Москва" класс "Слава"
                }
            };

GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   ="yes";
GT.mapclasskey = "P0091000067";
GT.attribute = {wsType_Navy,wsType_Ship,wsType_HCarrier,MOSCOW,
               "Cruisers",
               "RADAR_BAND1_FOR_ARM",
               "DetectionByAWACS",
                };
GT.Categories = {
                    {name = "Armed Ship"},
                    {name = "HelicopterCarrier"},
                };
