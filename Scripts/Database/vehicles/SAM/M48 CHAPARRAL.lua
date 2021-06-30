-- M48 Chaparral

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.M113);
GT.chassis.life = 1
GT.chassis.X_gear_1 = 1.0
GT.chassis.X_gear_2 = -2.25
GT.chassis.Z_gear_1 = 1.2
GT.chassis.Z_gear_2 = 1.2

GT.visual.shape = "M48";
GT.visual.shape_dstr = "M48_P1";

--chassis
GT.swing_on_run = true;


GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.max_range_finding_target = 10000;
GT.sensor.height = 2.52;

--Burning after hit
GT.visual.fire_size = 0.8; --relative burning size
GT.visual.fire_pos[1] = 2; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)
GT.visual.dust_pos = {1.8, -0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.0, 0.3, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.0, 0.0, 0.0}}

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 10000;

ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].pointer = "POINT_View";
GT.WS[ws].angles_mech = {
					{math.rad(180), math.rad(-180), math.rad(-9), math.rad(89)},
					};
GT.WS[ws].angles = {
					{math.rad(180), math.rad(70), math.rad(-9), math.rad(89)},
					{math.rad(70), math.rad(-70), math.rad(24), math.rad(89)},
					{math.rad(-70), math.rad(-180), math.rad(-9), math.rad(89)},
					};
GT.WS[ws].canSetTacticalDir = true;
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = 0.5;
GT.WS[ws].omegaZ = 0.6;
GT.WS[ws].pidY = {p=100,i=2,d=12, inn = 10.0};
GT.WS[ws].pidZ = {p=100,i=2,d=12, inn = 10.0};
GT.WS[ws].reference_angle_Y = math.pi;
GT.WS[ws].cockpit = {"ChaparralSight/ChaparralSight", { 0.0, 0.0, 0.0 }}

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.M48);
__LN.min_launch_angle = math.rad(15);
__LN.sightMasterMode = 1
__LN.sightIndicationMode = 1;
__LN = nil;

GT.Name = "M48 Chaparral";
GT.DisplayName = _("SAM Chaparral M48");
GT.Rate = 8;

GT.EPLRS = true

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = GT.WS[ws].LN[1].distanceMax;
GT.mapclasskey = "P0091000215";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Miss,M48_Chaparral,
				"AA_missile",
				"SR SAM",
				"IR Guided SAM",
				"Datalink"
				};
GT.category = "Air Defence";