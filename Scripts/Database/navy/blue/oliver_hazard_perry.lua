-- Oliver Perry FFG-7CL (OLIVER HAZARD PERRY Class Frigate) FFG-7 - FF-61

GT = {};
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "perry"
GT.visual.shape_dstr = ""

GT.animation_arguments.state_flag_05 = 306; -- state flags with 0.05 step
GT.animation_arguments.flight_deck_fences = 150;


GT.life = 2100
GT.mass = 4.1e+006
GT.max_velocity = 14.9189
GT.race_velocity = 14.9189
GT.economy_velocity = 10.2889
GT.economy_distance = 8.334e+006
GT.race_distance = 2.778e+006
GT.shipLength = 124.3
GT.Width = 14.0
GT.Height = 31.5
GT.Length = 137.5
GT.DeckLevel = 5.8
GT.X_nose = 59.1924
GT.X_tail = -64.9268
GT.Tail_Width = 13.5
GT.Gamma_max = 0.35
GT.Om = 0.02
GT.speedup = 0.269786
GT.R_min = 275
GT.distFindObstacles = 462.5

GT.numParking = 1
GT.Helicopter_Num_ = 2

GT.airWeaponDist = 100000
GT.airFindDist = 150000

GT.Landing_Point = {-55.3, 4.73, 0.0};

GT.DM = {
    { area_name = "NOSE_R", area_arg = 70, area_life = 55, area_fire = { pos = {44.3,3.0,3.9}, size = 0.3}},
    { area_name = "BORT_R", area_arg = 71, area_life = 55, area_fire = { pos = {3.0,2.5,6.5}, size = 0.3}},
    { area_name = "KORMA_R", area_arg = 72, area_life = 55, area_fire = { pos = {-44.0,2.5,6.0}, size = 0.3}},
    { area_name = "NOSE_L", area_arg = 73, area_life = 55, area_fire = { pos = {44.3,3.0,-3.7}, size = 0.3}},
    { area_name = "BORT_L", area_arg = 74, area_life = 55, area_fire = { pos = {3.0,2.5,-6.5}, size = 0.3}},
    { area_name = "KORMA_L", area_arg = 75, area_life = 55, area_fire = { pos = {-44.0,2.5,6.0}, size = 0.3}},
    { area_name = "KABINA", area_arg = 80, area_life = 110, area_fire = { pos = {25.0,7.0,0.0}, size = 1.0}},
    { area_name = "RUBKA_TOP", area_arg = 77, area_life = 44, area_fire = { pos = {6.0,10.0,0.0}, size = 0.2}},
    { area_name = "NADSTROYKA", area_arg = 82, area_life = 55, area_fire = { pos = {-20.0,8.0,0.0}, size = 1.5}},
	{ area_name = "KORMA_TOP", area_arg = 78, area_life = 20, area_fire = { pos = {-54.0,4.0,0.0}, size = 1.0}},
	{ area_name = "KORMA_BACK", area_arg = 79, area_life = 20,},
    { area_name = "TOWER_NADSTROYKA", area_arg = 97, area_life = 33, area_fire = { pos = {-13.850, 10.65, 0.0}, size = 0.5}},
    { area_name = "ZA", area_arg = 99, area_life = 20, area_fire = { pos = {-38.40,11.56,0.0}, size = 0.2}},
    { area_name = "TPK", area_arg = 109, area_life = 26, area_fire = { pos = {38.53, 7.49,0.0}, size = 1.0}},
}

-- weapon systems

GT.WS = {}
GT.WS.maxTargetDetectionRange = 120000;
GT.WS.radar_type = 102
GT.WS.searchRadarMaxElevation = math.rad(40);

GT.animation_arguments.flag_animation = -1;
GT.radar1_period = 3.0;
GT.radar2_period = 1.0;
local ws;
-- top machineguns
ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = 'KABINA';
GT.WS[ws].angles = {
					{math.rad(150), math.rad(-105), math.rad(-5), math.rad(70)},
					};
GT.WS[ws].center = 'CENTER_TOWER_05'
GT.WS[ws].drawArgument1 = 23
GT.WS[ws].drawArgument2 = 24
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
__LN.type = 10;
__LN.BR[1].connector_name = 'POINT_GUN_05'
__LN.fireAnimationArgument = 122;

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = 'KABINA';
GT.WS[ws].angles = {
					{math.rad(105), math.rad(-150), math.rad(-5), math.rad(70)},
					};
GT.WS[ws].center = 'CENTER_TOWER_06'
GT.WS[ws].drawArgument1 = 25
GT.WS[ws].drawArgument2 = 26
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
__LN.type = 10;
__LN.BR[1].connector_name = 'POINT_GUN_06'
__LN.fireAnimationArgument = 123;

-- mid machineguns
ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = 'KABINA';
GT.WS[ws].angles = {
					{math.rad(155), math.rad(20), math.rad(-5), math.rad(70)},
					};
GT.WS[ws].reference_angle_Y = math.rad(90);
GT.WS[ws].center = 'CENTER_TOWER_07'
GT.WS[ws].drawArgument1 = 27
GT.WS[ws].drawArgument2 = 28
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
__LN.type = 10;
__LN.BR[1].connector_name = 'POINT_GUN_07'
__LN.fireAnimationArgument = 124;

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = 'KABINA';
GT.WS[ws].angles = {
					{math.rad(-20), math.rad(-155), math.rad(-5), math.rad(70)},
					};
GT.WS[ws].reference_angle_Y = math.rad(-90);
GT.WS[ws].center = 'CENTER_TOWER_08'
GT.WS[ws].drawArgument1 = 29
GT.WS[ws].drawArgument2 = 30
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
__LN.type = 10;
__LN.BR[1].connector_name = 'POINT_GUN_08'
__LN.fireAnimationArgument = 125;

-- autocannons 
ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = 'NADSTROYKA';
GT.WS[ws].angles = {
					{math.rad(170), math.rad(10), math.rad(-5), math.rad(40)},
					};
GT.WS[ws].reference_angle_Y = math.rad(90);
GT.WS[ws].center = 'CENTER_TOWER_03'
GT.WS[ws].drawArgument1 = 19
GT.WS[ws].drawArgument2 = 20
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.automatic_gun_25mm);
__LN.BR[1].connector_name = 'POINT_GUN_03'
__LN.fireAnimationArgument = 120;

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].area = 'NADSTROYKA';
GT.WS[ws].angles = {
					{math.rad(-10), math.rad(-170), math.rad(-5), math.rad(40)},
					};
GT.WS[ws].reference_angle_Y = math.rad(-90);
GT.WS[ws].center = 'CENTER_TOWER_04'
GT.WS[ws].drawArgument1 = 21
GT.WS[ws].drawArgument2 = 22
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.automatic_gun_25mm);
__LN.BR[1].connector_name = 'POINT_GUN_04'
__LN.fireAnimationArgument = 121;

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.phalanx )
GT.WS[ws].area = 'ZA';
GT.WS[ws].reference_angle_Y = math.rad(-180);
GT.WS[ws].angles[1][1] = math.rad(-20);
GT.WS[ws].angles[1][2] = math.rad(20);
GT.WS[ws].center = 'CENTER_TOWER_02'
GT.WS[ws].drawArgument1 = 17
GT.WS[ws].drawArgument2 = 18
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_GUN_02'
GT.WS[ws].LN[1].fireAnimationArgument = 119;

-- Mk 92 Fire Control System Trackers
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.MK92_CAS_WS[1]);
GT.WS[ws].pos = {24.0, 20.0, 0.0};
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.MK92_CAS_WS[2]);
GT.WS[ws].base = ws-1;
local MK92_trackers = {{{"self", ws-1}}, {{"self",ws}}};
GT.WS[ws-1].area = "KABINA";
GT.WS[ws].area = "KABINA";

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_MK41_SM2 )
GT.WS[ws].area = 'TPK';
GT.WS[ws].moveable = true
GT.WS[ws].center = 'CENTER_PU'
GT.WS[ws].angles_mech = {
					{math.rad(180), math.rad(-180), math.rad(-10), math.rad(90)},
					};
GT.WS[ws].angles = {
					{math.rad(135), math.rad(-135), math.rad(-10), math.rad(90)},
					};
GT.WS[ws].drawArgument1 = 49
GT.WS[ws].drawArgument2 = 50
GT.WS[ws].omegaY = 2
GT.WS[ws].omegaZ = 2
GT.WS[ws].reference_angle_Y = 0;
GT.WS[ws].reference_angle_Z = math.rad(35);
GT.WS[ws].pidY = {p=10, i=0.5, d=5, inn = 2};
GT.WS[ws].pidZ = GT.WS[ws].pidY;
GT.WS[ws].LN[1].reactionTime = 10;
GT.WS[ws].LN[1].depends_on_unit = MK92_trackers;
GT.WS[ws].LN[1].show_external_missile = true
GT.WS[ws].LN[1].min_launch_angle = math.rad(20);
GT.WS[ws].LN[1].barrels_reload_type = BarrelsReloadTypes.ORDINARY;
GT.WS[ws].LN[1].PL[1].ammo_capacity = 24;
GT.WS[ws].LN[1].PL[1].shot_delay = 12;
GT.WS[ws].LN[1].BR = { {connector_name = 'POINT_PU',}, }
-- harpoon missile (same launcher system)
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.HARPOON);
__LN.min_launch_angle = math.rad(30);
__LN.PL[1].ammo_capacity = 16;
__LN.BR = {{connector_name = 'POINT_PU',},}
__LN = nil;

MK92_trackers = nil;
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_MK75 )
GT.WS[ws].area = 'TOWER_NADSTROYKA';
GT.WS[ws].angles[1][1] = math.rad(-20);
GT.WS[ws].angles[1][2] = math.rad(20);
GT.WS[ws].reference_angle_Y = math.rad(-180);
GT.WS[ws].reference_angle_Z = math.rad(20);
GT.WS[ws].center = 'CENTER_TOWER_01'
GT.WS[ws].drawArgument1 = 13
GT.WS[ws].drawArgument2 = 14
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_GUN_01'
GT.WS[ws].LN[1].BR[1].recoilArgument = 117;
GT.WS[ws].LN[1].BR[1].recoilTime = 0.58;

GT.Name = "PERRY"
GT.DisplayName = _("Oliver Hazzard Perry class")
GT.Rate = 2500

GT.Sensors = { OPTIC = {"long-range naval optics"},
               RADAR = {
                    "Patriot str",
                    "perry search radar",
               }
             }

GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   ="no";
GT.mapclasskey = "P0091000069";
GT.attribute = {wsType_Navy,wsType_Ship,wsType_ArmedShip,PERRY,
                    "Frigates",
                    "RADAR_BAND1_FOR_ARM",
                    "DetectionByAWACS",
				};
GT.Categories = {
					{name = "Armed Ship"},
					{name = "HelicopterCarrier"}
				};