-- hawk tr

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);

GT.visual.shape = "hawk-upr";
GT.visual.shape_dstr = "hawk-upr_p_1";

GT.snd.radarRotation = "RadarRotation"; -- не поворот, но звук работы

GT.sensor = {};
GT.sensor.max_range_finding_target = 90000;
GT.sensor.min_range_finding_target = 1500;
GT.sensor.max_alt_finding_target = 20000;
GT.sensor.height = 3;

--Burning after hit
GT.visual.fire_size = 0.5; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 500; --burning time (seconds)

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 90000;
GT.WS.radar_type = 103;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = "CENTER_TOWER"
GT.WS[ws].pointer = "POINT_RADAR"
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), 0, math.rad(89)},
					};
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = 1.3;
GT.WS[ws].omegaZ = 1.3;
GT.WS[ws].pidY = { p = 100, i = 0.0, d = 10};
GT.WS[ws].pidZ = { p = 100, i = 0.0, d = 10};
GT.WS[ws].reference_angle_Z = math.rad(10);

GT.WS[ws].LN = {};
GT.WS[ws].LN[1] = {};
GT.WS[ws].LN[1].type = 102;
GT.WS[ws].LN[1].reactionTime = 10;
GT.WS[ws].LN[1].depends_on_unit = {{{"Hawk pcp"}}};
GT.WS[ws].LN[1].distanceMin = GT.sensor.min_range_finding_target;
GT.WS[ws].LN[1].distanceMax = GT.sensor.max_range_finding_target;
GT.WS[ws].LN[1].ECM_K = 0.5;
GT.WS[ws].LN[1].reflection_limit = 0.22;
GT.WS[ws].LN[1].min_trg_alt = 25;
GT.WS[ws].LN[1].max_trg_alt = GT.sensor.max_alt_finding_target;
GT.WS[ws].LN[1].max_number_of_missiles_channels = 2;
GT.WS[ws].LN[1].beamWidth = math.rad(90);

local base = ws;

-- virtual searching beam
ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].pos = {0, 0, 0};
GT.WS[ws].base = base;
GT.WS[ws].angles = {
					{math.rad(10), math.rad(-10), math.rad(-10), math.rad(10)},
					};
GT.WS[ws].omegaY = 3;
GT.WS[ws].omegaZ = 3;
GT.WS[ws].pidY = {p=100,i=0.1,d=10, inn=30};
GT.WS[ws].pidZ = {p=100,i=0.1,d=10, inn=30};
GT.WS[ws].LN = {};
GT.WS[ws].LN[1] = {};
GT.WS[ws].LN[1].type = 101;
GT.WS[ws].LN[1].max_number_of_missiles_channels = 1;
GT.WS[ws].LN[1].distanceMin = GT.sensor.min_range_finding_target;
GT.WS[ws].LN[1].distanceMax = GT.sensor.max_range_finding_target;
GT.WS[ws].LN[1].ECM_K = 0.5;
GT.WS[ws].LN[1].reflection_limit = 0.22;
GT.WS[ws].LN[1].min_trg_alt = 25;
GT.WS[ws].LN[1].max_trg_alt = GT.sensor.max_alt_finding_target;
GT.WS[ws].LN[1].reactionTime = 10;
GT.WS[ws].LN[1].beamWidth = math.rad(90);

GT.Name = "Hawk tr";
GT.Aliases = {"Hawk AN/MPQ-46 TR"}
GT.DisplayName = _("SAM Hawk TR AN/MPQ-46");
GT.Rate = 20;

GT.Sensors = {RADAR = GT.Name, };

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000083";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar,Hawk_Track_Radar,
				"MR SAM",
				"SAM TR",
				"RADAR_BAND1_FOR_ARM",
				"RADAR_BAND2_FOR_ARM",
				};
GT.category = "Air Defence";