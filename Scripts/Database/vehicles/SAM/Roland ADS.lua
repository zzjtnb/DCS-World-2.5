-- Roland ADS

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MARDER);
GT.chassis.X_gear_2 = -2.05

GT.visual.shape = "roland";
GT.visual.shape_dstr = "Marder_p_1";

--chassis
GT.swing_on_run = false;
GT.animation_arguments.locator_rotation = 11;
GT.radar_rotation_period = 1.0;

GT.sensor = {};
GT.sensor.max_range_finding_target = 12000;
GT.sensor.min_range_finding_target = 1500;
GT.sensor.max_alt_finding_target = 6000;
GT.sensor.min_alt_finding_target = 20;
GT.sensor.height = 3.922;

--Burning after hit
GT.visual.fire_size = 0.8; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)
GT.visual.dust_pos = {3.05, 0.0, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.0, 0.5, -GT.chassis.Z_gear_2}

GT.animation_arguments.stoplights = 30;
GT.animation_arguments.headlights = 31;
GT.animation_arguments.markerlights = 32;

GT.driverViewConnectorName = {"DRIVER_POINT"}

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 12000;
GT.WS.radar_type = 104;
GT.WS.radar_rotation_type = 1;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(0), math.rad(60)},
					};
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = 0.523599;
GT.WS[ws].omegaZ = 0.523599;
GT.WS[ws].pidY = {p=10,i=0.0,d=3, inn = 1.5};
GT.WS[ws].pidZ = {p=10,i=0.0,d=2.5, inn = 2};
GT.WS[ws].pointer = 'POINT_SIGHT_01'
GT.WS[ws].PPI_view = "GenericPPI/GenericPPI"

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.roland);
__LN.min_launch_angle = math.rad(5);
__LN.BR = {
			{connector_name = 'POINT_ROLAND_2', drawArgument = 4 },
			{connector_name = 'POINT_ROLAND_1', drawArgument = 5},
		};
__LN.customViewPoint = { "genericMissile", {1.0, 0, 0 }, };
__LN = nil;

GT.Name = "Roland ADS";
GT.DisplayName = _("SAM Roland ADS");
GT.Rate = 15;

GT.Sensors = { OPTIC = {"generic SAM search visir", "generic SAM IR search visir"}, RADAR = GT.Name, };

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = GT.WS[ws].LN[1].distanceMax;
GT.mapclasskey = "P0091000086";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar_Miss,Roland_,
				"AA_missile",
				"SR SAM",
				"SAM SR",
				"SAM TR",
				"SAM LL",
				"RADAR_BAND1_FOR_ARM",
				"RADAR_BAND2_FOR_ARM",
				};
GT.category = "Air Defence";