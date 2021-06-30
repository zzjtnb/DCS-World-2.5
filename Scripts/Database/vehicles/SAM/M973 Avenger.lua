-- HMMWV M973 Avenger

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.HMMWV);
GT.chassis.life = 1.5 
GT.chassis.armour_thickness = 0.002;

GT.visual.shape = "HMMWV_M973";
GT.visual.shape_dstr = "HMMWV_M973_P_1";

GT.animation_arguments.locator_rotation = 11;
GT.radar_rotation_period = 1;

--chassis
GT.swing_on_run = false;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.max_range_finding_target = 5200;
GT.sensor.height = 3.076;

--Burning after hit
GT.visual.fire_size = 0.7; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)
GT.animation_arguments.crew_presence = 50;

GT.driverViewPoint = {0.3, 1.5, -0.7};

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 10000;
-- GT.WS.radar_rotation_type = 0;

ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].type = 5;
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(-10), math.rad(70)},
					};
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = 1.0472;
GT.WS[ws].omegaZ = 1.0472;
GT.WS[ws].pidY = {p=100,i=2,d=12, inn = 10.0};
GT.WS[ws].pidZ = {p=100,i=2,d=12, inn = 10.0};
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].pointer = "POINT_ROCKET_01"
GT.WS[ws].cockpit = {"AvengerSight/AvengerSight", {-0.5, -0.3, -0.95 }}

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.stinger);
__LN.min_launch_angle = math.rad(5);
__LN.max_number_of_missiles_channels = 2;
__LN.maxShootingSpeed = 8.34; -- 30 км/ч
__LN.PL[1].ammo_capacity = 16;
__LN.PL[1].shot_delay = 40;
__LN.PL[1].reload_time = 400;
__LN.BR[1] = {connector_name = "POINT_ROCKET_01"};
__LN.BR[2] = {connector_name = "POINT_ROCKET_02"};
__LN.BR[3] = {connector_name = "POINT_ROCKET_03"};
__LN.BR[4] = {connector_name = "POINT_ROCKET_04"};
__LN.BR[5] = {connector_name = "POINT_ROCKET_05"};
__LN.BR[6] = {connector_name = "POINT_ROCKET_06"};
__LN.BR[7] = {connector_name = "POINT_ROCKET_07"};
__LN.BR[8] = {connector_name = "POINT_ROCKET_08"};
--__LN.customViewPoint = {"AvengerSight/AvengerSight", {-0.5, -0.3, -0.95 }};
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 4;

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[4]);
__LN.PL = { [1] = {} }
set_recursive_metatable(__LN.PL[1], GT_t.LN_t.machinegun_12_7_M2.PL[1]);
__LN.PL[1].shot_delay = 60/1100; -- улучшеная версия AN-M3 MG
__LN.PL[1].ammo_capacity = 200;
__LN.PL[1].portionAmmoCapacity = 200;
__LN.PL[1].reload_time = 25;
__LN.fireAnimationArgument = 23
__LN.BR[1].connector_name = 'POINT_MGUN'
--__LN.customViewPoint = {"AvengerSight/AvengerGunSight", {-0.3, 0.0, -1.15 }};
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;
__LN = nil;

GT.Name = "M1097 Avenger";
GT.DisplayName = _("SAM Avenger M1097");
GT.Rate = 10;

GT.Sensors = { OPTIC = {"generic SAM search visir", "generic SAM IR search visir"}}; -- temporary

GT.EPLRS = true

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = GT.WS[ws].LN[1].distanceMax;
GT.mapclasskey = "P0091000213";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_MissGun,Avenger_,
				"AA_missile",
				"AA_flak",
				"SR SAM",
				"IR Guided SAM",
				"Datalink"
				};
GT.category = "Air Defence";