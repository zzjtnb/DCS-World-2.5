-- Normandy CG-60 (TICONDEROGA Class Cruiser) CG-52 - CG-73

GT = {};
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "ticonderoga"
GT.visual.shape_dstr = ""

GT.animation_arguments.radar1_rotation = 11; -- вращение радара 1
GT.radar1_period = 3;
GT.animation_arguments.radar2_rotation = -1; -- вращение радара 2 отсутствует
GT.animation_arguments.radar3_rotation = -1; -- вращение радара 3 отсутствует
GT.animation_arguments.water_propeller = 8;
GT.animation_arguments.flight_deck_fences = 312;

GT.life = 2700;
GT.mass = 9.59e+006;
GT.max_velocity = 15.4333
GT.race_velocity = 15.4333
GT.economy_velocity = 10.2889
GT.economy_distance = 1.1112e+007
GT.race_distance = 2.778e+006
GT.shipLength = 160.7
GT.Width = 18.4
GT.Height = 37.2
GT.Length = 172.34
GT.DeckLevel = 8
GT.X_nose = 75.7412
GT.X_tail = -85.9824
GT.Tail_Width = 15
GT.Gamma_max = 0.35
GT.Om = 0.02
GT.speedup = 0.229734
GT.R_min = 345.6
GT.distFindObstacles = 568.4

GT.numParking = 1
GT.Helicopter_Num_ = 2

GT.airWeaponDist = 100000
GT.airFindDist = 150000

GT.Landing_Point = {-44.0, 9.93, 0.0}

GT.DM = {
    { area_name = "NOSE_R",			area_arg = 70,	area_life = 110, area_fire = { pos = {50.0, 4.0, 5.0}, size = 0.8}},
    { area_name = "BORT_R",			area_arg = 71,	area_life = 110, area_fire = { pos = {0.0,  2.0, 8.0}, size = 0.8}},
    { area_name = "KORMA_R", 		area_arg = 72,	area_life = 110, area_fire = { pos = {-70.0, 2.0, 7.7}, size = 0.8}},
    { area_name = "NOSE_L", 		area_arg = 73,	area_life = 110, area_fire = { pos = {50.0, 4.0, -5.0}, size = 0.8}},
    { area_name = "BORT_L", 		area_arg = 74,	area_life = 110, area_fire = { pos = {0.0,  2.0, -8.0}, size = 0.8}},
    { area_name = "KORMA_L", 		area_arg = 75,	area_life = 110, area_fire = { pos = {-70.0, 2.0, -7.7}, size = 0.8}},
	{ area_name = "NOSE_TOP",		area_arg = 76,	area_life = 80,  area_fire = { pos = {41.5, 7.5, 0.0}, size = 0.5}},
    { area_name = "RUBKA_TOP",		area_arg = 77,	area_life = 100,},
	{ area_name = "HP",				area_arg = 78,	area_life = 80,  area_fire = { pos = {-44.0, 9.6, 0.0}, size = 0.5}},
	{ area_name = "KORMA_BACK", 	area_arg = 79,	area_life = 110, area_fire = { pos = {-85.7, 2.0, 0.0}, size = 0.5}},
	{ area_name = "KABINA",			area_arg = 80,	area_life = 220, area_fire = { pos = {29.0, 15.0, 0.0}, size = 1.5}},
	{ area_name = "BORT_TOP_Back", 	area_arg = 81,	area_life = 80,  area_fire = { pos = {-62.5, 7.0, 0.0}, size = 0.5}},
	{ area_name = "NADSTROYKA",		area_arg = 82,	area_life = 220, area_fire = { pos = {-23.0, 12.0, 0.0}, size = 1.5}},
	{ area_name = "SUPERSTRUCTURE_Mid",	area_arg = 83,	area_life = 320, area_fire = { pos = {6.0, 8.0, 0.0}, size = 1.5}},
	{ area_name = "KORMA_TOP", 		area_arg = 84,	area_life = 40, area_fire = { pos = {-80.5, 4.2, 0.0}, size = 1.0}},
    { area_name = "TOWER_NOSE",		area_arg = 97,	area_life = 60, area_fire = { pos = {53.0, 9.0, 0.0}, size = 0.5}},
	{ area_name = "TOWER_KORMA",	area_arg = 98,	area_life = 60, area_fire = { pos = {-73.5, 5.5, 0.0}, size = 0.5}},
    { area_name = "ZA_R",			area_arg = 99,	area_life = 27, area_fire = { pos = {3.7, 17.15, 6.25}, size = 0.5}},
    { area_name = "ZA_L",			area_arg = 100,	area_life = 27, area_fire = { pos = {3.7, 17.15, -6.25}, size = 0.5}},
}

-- weapon systems
GT.WS = {}
local ws;
GT.WS.maxTargetDetectionRange = 450000;
GT.WS.radar_type = 102
GT.WS.searchRadarMaxElevation = math.rad(60);
GT.WS.searchRadarFrequencies = {{50.0e6, 54.0e6}, {2.0e9, 2.2e9}}

-- Nose Machineguns M2 .50cal
ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'CENTER_TOWER_06'
GT.WS[ws].drawArgument1 = 49
GT.WS[ws].drawArgument2 = 50
GT.WS[ws].angles = {
					{math.rad(20), math.rad(-145), math.rad(-5), math.rad(70)},
					};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
__LN.BR[1].connector_name = 'POINT_GUN_06'
__LN.fireAnimationArgument = 125;

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'CENTER_TOWER_07'
GT.WS[ws].drawArgument1 = 51
GT.WS[ws].drawArgument2 = 52
GT.WS[ws].angles = {
					{math.rad(145), math.rad(-20), math.rad(-5), math.rad(70)},
					};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
__LN.BR[1].connector_name = 'POINT_GUN_07'
__LN.fireAnimationArgument = 124;

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'CENTER_TOWER_05'
GT.WS[ws].drawArgument1 = 42
GT.WS[ws].drawArgument2 = 43
GT.WS[ws].reference_angle_Y = math.rad(-90);
GT.WS[ws].angles = {
					{math.rad(-15), math.rad(-170), math.rad(-5), math.rad(70)},
					};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
__LN.BR[1].connector_name = 'POINT_GUN_05'
__LN.fireAnimationArgument = 123;

-- Bushmaster Autogun
ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'CENTER_TOWER_09'
GT.WS[ws].drawArgument1 = 40
GT.WS[ws].drawArgument2 = 41
GT.WS[ws].angles = {
                    {math.rad(170), math.rad(10), math.rad(-5), math.rad(40)},
                    };
GT.WS[ws].reference_angle_Y = math.rad(90);
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.automatic_gun_25mm);
__LN.BR[1].connector_name = 'POINT_GUN_09'
__LN.fireAnimationArgument = 120;

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'CENTER_TOWER_08'
GT.WS[ws].drawArgument1 = 38
GT.WS[ws].drawArgument2 = 39
GT.WS[ws].angles = {
                    {math.rad(-10), math.rad(-170), math.rad(-5), math.rad(40)},
                    };
GT.WS[ws].reference_angle_Y = math.rad(-90);
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.automatic_gun_25mm);
__LN.BR[1].connector_name = 'POINT_GUN_08'
__LN.fireAnimationArgument = 121;

-- CIWS Phalanxs
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.phalanx )
GT.WS[ws].area = 'ZA_L'
GT.WS[ws].center = 'CENTER_TOWER_04'
GT.WS[ws].drawArgument1 = 36
GT.WS[ws].drawArgument2 = 37
GT.WS[ws].angles[1][1] = math.rad(177);
GT.WS[ws].angles[1][2] = math.rad(3);
GT.WS[ws].reference_angle_Y = math.rad(90);
GT.WS[ws].LN[1].fireAnimationArgument = 119;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_GUN_04'

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.phalanx )
GT.WS[ws].area = 'ZA_R'
GT.WS[ws].center = 'CENTER_TOWER_03'
GT.WS[ws].drawArgument1 = 25
GT.WS[ws].drawArgument2 = 26
GT.WS[ws].angles[1][1] = math.rad(-3);
GT.WS[ws].angles[1][2] = math.rad(-170);
GT.WS[ws].reference_angle_Y = math.rad(-90);
GT.WS[ws].LN[1].fireAnimationArgument = 118;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_GUN_03'

-- Artillery Guns
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_FMC5 )
GT.WS[ws].area = 'TOWER_NOSE'
GT.WS[ws].center = 'CENTER_TOWER_12'
GT.WS[ws].drawArgument1 = 0
GT.WS[ws].drawArgument2 = 1
GT.WS[ws].angles[1][1] = math.rad(156);
GT.WS[ws].angles[1][2] = math.rad(-156);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_GUN_01'
GT.WS[ws].LN[1].BR[1].recoilArgument = 33;
GT.WS[ws].LN[1].BR[1].recoilTime = 0.2;

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_FMC5 )
GT.WS[ws].area = 'TOWER_KORMA'
GT.WS[ws].center = 'CENTER_TOWER_02'
GT.WS[ws].drawArgument1 = 13
GT.WS[ws].drawArgument2 = 14
GT.WS[ws].angles_mech = {{math.rad(-30), math.rad(30), math.rad(-5), math.rad(75)}}
GT.WS[ws].angles= {
					{math.rad(-30), math.rad(168), math.rad(-5), math.rad(75)},
					{math.rad(168), math.rad(136), math.rad(18.5), math.rad(75)},
					{math.rad(136), math.rad(30), math.rad(-5), math.rad(75)}
					}
GT.WS[ws].reference_angle_Y = math.rad(-180);
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_GUN_02'
GT.WS[ws].LN[1].BR[1].recoilArgument = 34;
GT.WS[ws].LN[1].BR[1].recoilTime = 0.2;

-- Harpoon
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_HARPOON )
GT.WS[ws].area = 'KORMA_TOP';
GT.WS[ws].pos = {-83.594,7.002,-4.54}
GT.WS[ws].LN[1].PL[1].ammo_capacity = 8;
GT.WS[ws].LN[1].BR = {
						{connector_name = 'Rocket_Point_123', drawArgument = 153},
						{connector_name = 'Rocket_Point_124', drawArgument = 154},
						{connector_name = 'Rocket_Point_125', drawArgument = 155},
						{connector_name = 'Rocket_Point_126', drawArgument = 156},
						{connector_name = 'Rocket_Point_127', drawArgument = 157},
						{connector_name = 'Rocket_Point_128', drawArgument = 158},
						{connector_name = 'Rocket_Point_129', drawArgument = 159},
						{connector_name = 'Rocket_Point_130', drawArgument = 160},
					}
-- 9 AIGES trackers

ws = GT_t.inc_ws();
local first_EGES_tracker_id = ws;
GT.WS[ws] = {
	omegaY = 2,
	omegaZ = 2,
	pidY = {p=100, i=0.05, d=12, inn = 50},
	pidZ = {p=100, i=0.05, d=12, inn = 50},
	area = 'KABINA',
	pos = {0.0, 19.0, 0.0},
	angles = { {math.rad(180), math.rad(-180), math.rad(-90), math.rad(80)} },
	LN = {
		[1] = {
			type = 102,
			frequencyRange = {0.5e9, 0.58e9},
			distanceMin = 1000,
			distanceMax = 150000,
			reactionTime = 2.0,
			reflection_limit = 0.1,
			ECM_K = 0.5,
			min_trg_alt = 5,
			max_trg_alt = 30000,
			max_number_of_missiles_channels = 2,
			beamWidth = math.rad(90);
		}
	}
};
local AIGES_TRACKERS = {{{'self', ws}}}

for i=2,9 do
	ws = GT_t.inc_ws();
	GT.WS[ws] = {};
	set_recursive_metatable(GT.WS[ws], GT.WS[first_EGES_tracker_id]);
	table.insert(AIGES_TRACKERS, {{'self', ws}})
end;

--SM2 SAM
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_MK41_SM2 )
GT.WS[ws].area = 'NOSE_TOP'
GT.WS[ws].center = 'Rocket_Point_36'
GT.WS[ws].LN[1].depends_on_unit = AIGES_TRACKERS
GT.WS[ws].LN[1].PL[1].ammo_capacity = 45;
GT.WS[ws].LN[1].BR = {
	{connector_name = 'Rocket_Point_01', recoilArgument = 188, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_02', recoilArgument = 189, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_03', recoilArgument = 190, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_04', recoilArgument = 191, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_05', recoilArgument = 192, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_06', recoilArgument = 193, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_07', recoilArgument = 194, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_08', recoilArgument = 195, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	
	{connector_name = 'Rocket_Point_09', recoilArgument = 196, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_10', recoilArgument = 197, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_11', recoilArgument = 198, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_12', recoilArgument = 199, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_13', recoilArgument = 200, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_14', recoilArgument = 201, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_15', recoilArgument = 202, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_16', recoilArgument = 203, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	
	{connector_name = 'Rocket_Point_17', recoilArgument = 204, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_18', recoilArgument = 205, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_19', recoilArgument = 206, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_20', recoilArgument = 207, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_21', recoilArgument = 208, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_22', recoilArgument = 209, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_23', recoilArgument = 210, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_24', recoilArgument = 211, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	
	{connector_name = 'Rocket_Point_25', recoilArgument = 212, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_26', recoilArgument = 213, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_27', recoilArgument = 214, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_28', recoilArgument = 215, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_29', recoilArgument = 216, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_30', recoilArgument = 217, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_31', recoilArgument = 218, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_32', recoilArgument = 219, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	
	{connector_name = 'Rocket_Point_33', recoilArgument = 220, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_34', recoilArgument = 221, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_35', recoilArgument = 222, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_36', recoilArgument = 223, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_37', recoilArgument = 224, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_38', recoilArgument = 225, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_39', recoilArgument = 226, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_40', recoilArgument = 227, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	
	{connector_name = 'Rocket_Point_41', recoilArgument = 228, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_42', recoilArgument = 229, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_43', recoilArgument = 230, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_44', recoilArgument = 231, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_45', recoilArgument = 232, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
}

-- Back SM-2 VLS
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_MK41_SM2 )
GT.WS[ws].area = 'BORT_TOP_Back'
GT.WS[ws].center = 'Rocket_Point_115'
GT.WS[ws].LN[1].depends_on_unit = AIGES_TRACKERS
GT.WS[ws].LN[1].PL[1].ammo_capacity = 45;
GT.WS[ws].LN[1].BR = {
	{connector_name = 'Rocket_Point_78', recoilArgument = 265, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_79', recoilArgument = 266, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_80', recoilArgument = 267, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_81', recoilArgument = 268, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_82', recoilArgument = 269, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_83', recoilArgument = 270, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_84', recoilArgument = 271, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_85', recoilArgument = 272, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	
	{connector_name = 'Rocket_Point_86', recoilArgument = 273, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_87', recoilArgument = 274, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_88', recoilArgument = 275, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_89', recoilArgument = 276, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_90', recoilArgument = 277, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_91', recoilArgument = 278, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_92', recoilArgument = 279, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_93', recoilArgument = 280, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},

	{connector_name = 'Rocket_Point_94', recoilArgument = 281, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_95', recoilArgument = 282, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_96', recoilArgument = 283, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_97', recoilArgument = 284, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_98', recoilArgument = 285, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_99', recoilArgument = 286, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_100', recoilArgument = 287, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_101', recoilArgument = 288, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	
	{connector_name = 'Rocket_Point_102', recoilArgument = 289, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_103', recoilArgument = 290, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_104', recoilArgument = 291, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_105', recoilArgument = 292, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_106', recoilArgument = 293, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	
	{connector_name = 'Rocket_Point_107', recoilArgument = 294, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_108', recoilArgument = 295, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_109', recoilArgument = 296, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_110', recoilArgument = 297, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_111', recoilArgument = 298, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_112', recoilArgument = 299, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_113', recoilArgument = 300, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_114', recoilArgument = 301, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	
	{connector_name = 'Rocket_Point_115', recoilArgument = 302, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_116', recoilArgument = 303, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_117', recoilArgument = 304, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_118', recoilArgument = 305, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_119', recoilArgument = 306, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_120', recoilArgument = 307, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_121', recoilArgument = 308, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_122', recoilArgument = 309, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
}

-- Tomahawk Front
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_TOMAHAWK )
GT.WS[ws].area = 'NOSE_TOP';
GT.WS[ws].center = 'Rocket_Point_54';
GT.WS[ws].LN[1].max_number_of_missiles_channels = 16; -- unlimited
GT.WS[ws].LN[1].PL[1].ammo_capacity = 16;
GT.WS[ws].LN[1].BR = {
	{connector_name = 'Rocket_Point_46', recoilArgument = 233, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_47', recoilArgument = 234, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_48', recoilArgument = 235, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_49', recoilArgument = 236, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_50', recoilArgument = 237, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_51', recoilArgument = 238, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_52', recoilArgument = 239, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_53', recoilArgument = 240, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	                                                                                                    
	{connector_name = 'Rocket_Point_54', recoilArgument = 241, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_55', recoilArgument = 242, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_56', recoilArgument = 243, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_57', recoilArgument = 244, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_58', recoilArgument = 245, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_59', recoilArgument = 246, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_60', recoilArgument = 247, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_61', recoilArgument = 248, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
}

-- Tomahawk Rear
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_TOMAHAWK )
GT.WS[ws].area = 'BORT_TOP_Back';
GT.WS[ws].center = 'Rocket_Point_86';
GT.WS[ws].LN[1].max_number_of_missiles_channels = 16; -- unlimited
GT.WS[ws].LN[1].PL[1].ammo_capacity = 16;
GT.WS[ws].LN[1].BR = {
	{connector_name = 'Rocket_Point_62', recoilArgument = 249, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_63', recoilArgument = 250, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_64', recoilArgument = 251, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_65', recoilArgument = 252, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_66', recoilArgument = 253, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_67', recoilArgument = 254, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_68', recoilArgument = 255, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_69', recoilArgument = 256, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	                                                       
	{connector_name = 'Rocket_Point_70', recoilArgument = 257, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_71', recoilArgument = 258, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_72', recoilArgument = 259, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_73', recoilArgument = 260, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_74', recoilArgument = 261, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_75', recoilArgument = 262, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_76', recoilArgument = 263, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
	{connector_name = 'Rocket_Point_77', recoilArgument = 264, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1.0, recoilTime = 2},
}

GT.Name = "TICONDEROG"
GT.DisplayName = _("Ticonderoga class")
GT.Rate = 4000

GT.Sensors = {  OPTIC = {"long-range naval optics", "long-range naval LLTV", "long-range naval FLIR",},
                RADAR = {
                    "Patriot str",
                    "ticonderoga search radar",
                }
            };

GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   ="no";
GT.mapclasskey = "P0091000067";
GT.attribute = {wsType_Navy,wsType_Ship,wsType_ArmedShip,TICONDEROGA,
                    "Cruisers",
                    "RADAR_BAND1_FOR_ARM",
                    "DetectionByAWACS",
				};
GT.Categories = {
					{name = "Armed Ship"},
					{name = "HelicopterCarrier"}
				};