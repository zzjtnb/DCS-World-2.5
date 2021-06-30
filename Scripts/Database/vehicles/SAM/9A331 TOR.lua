-- SAM 'TOR' 9A331

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MTT);

GT.visual.shape = "9a331";
GT.visual.shape_dstr = "9a331_p_1";

--chassis
GT.swing_on_run = false;
GT.animation_arguments.locator_rotation = 11;
GT.snd.radarRotation = "RadarRotation";
GT.radar_rotation_period = 1.0;
GT.toggle_alarm_state_interval = 10.0;

GT.sensor = {};
GT.sensor.max_range_finding_target = 25000;
GT.sensor.min_range_finding_target = 500;
GT.sensor.max_alt_finding_target = 8000;
GT.sensor.min_alt_finding_target = 20;
GT.sensor.height = 5.118;

--Burning after hit
GT.visual.fire_size = 1.0; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)
GT.visual.dust_pos = {3.5, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.6, 0.5, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.1, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 25000;
GT.WS.radar_type = 104;
GT.WS.radar_rotation_type = 1;
GT.WS.searchRadarMaxElevation = math.rad(45);

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].pointer = "POINT_SIGHT_01";
GT.WS[ws].center = "CENTER_TOWER";
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(-4), math.rad(85)},
					};
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(40);
GT.WS[ws].pidY = {p=40,i=0.1,d=7, inn = 3};
GT.WS[ws].pidZ = {p=100,i=0.1,d=10, inn = 10};
GT.WS[ws].reference_angle_Y = math.pi;
GT.WS[ws].mount_before_move = true;
GT.WS[ws].isoviewOffset = {0.0, 6.0, 0.0};
GT.WS[ws].PPI_view = "GenericPPI/GenericPPI"

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._9A330);
__LN.BR = {
			{connector_name = 'POINT_ROCKET_01',drawArgument = 4},
			{connector_name = 'POINT_ROCKET_02',drawArgument = 5},
			{connector_name = 'POINT_ROCKET_03',drawArgument = 6},
			{connector_name = 'POINT_ROCKET_04',drawArgument = 7},
			{connector_name = 'POINT_ROCKET_05',drawArgument = 18},
			{connector_name = 'POINT_ROCKET_06',drawArgument = 19},
			{connector_name = 'POINT_ROCKET_07',drawArgument = 27},
			{connector_name = 'POINT_ROCKET_08',drawArgument = 28},
		};
__LN.customViewPoint = { "genericMissile", {0.0, 0.0, 0.0} };
__LN = nil;

GT.Name = "Tor 9A331";
GT.DisplayName = _("SAM SA-15 Tor 9A331");
GT.Rate = 25;

GT.Sensors = { OPTIC = {"generic SAM search visir"}, RADAR = GT.Name, };

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000087";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar_Miss,Tor_,
				"AA_missile",
				"SR SAM",
				"SAM SR",
				"SAM TR",
				"RADAR_BAND1_FOR_ARM",
				};
GT.category = "Air Defence";
