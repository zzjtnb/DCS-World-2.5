-- SAM 1S91 'KUB' str

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.GM578);

GT.visual.shape = "1c91";
GT.visual.shape_dstr = "2p25_p_1";


--chassis
GT.swing_on_run = false;
GT.animation_arguments.locator_rotation = 11;
GT.radar_rotation_period = 4.0;
GT.snd.radarRotation = "RadarRotation";

GT.sensor = {};
GT.sensor.max_range_finding_target = 70000;
GT.sensor.min_range_finding_target = 1000;
GT.sensor.max_alt_finding_target = 14000;
GT.sensor.height = 5.872;

--Burning after hit
GT.visual.fire_size = 0.8; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 70000;
GT.WS.radar_type = 103;
GT.WS.searchRadarMaxElevation = math.rad(30);
GT.WS.radar_rotation_type = 1;
GT.WS.fire_on_march = false;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].newZ = GT_t.ANGLE_Z_TRANSLATION_OPTIONS.TRANSLATE_MAX_ANGLE_TO_ONE;
GT.WS[ws].pos = {0,5,0};
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(0), math.rad(45)},
					};
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].mount_before_move = true;
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(30);
GT.WS[ws].pidY = {p=40,i=0.1, d=8, inn = 5};
GT.WS[ws].pidZ = {p=80,i=0.1, d=9, inn = 10};

GT.WS[ws].LN = {};
GT.WS[ws].LN[1] = {};
GT.WS[ws].LN[1].type = 102;
GT.WS[ws].LN[1].reflection_limit = 0.18;
GT.WS[ws].LN[1].distanceMin = 1000;
GT.WS[ws].LN[1].distanceMax = 70000;
GT.WS[ws].LN[1].min_trg_alt = 20;
GT.WS[ws].LN[1].max_trg_alt = 14000;
GT.WS[ws].LN[1].reactionTime = 20;
GT.WS[ws].LN[1].max_number_of_missiles_channels = 2;
GT.WS[ws].LN[1].beamWidth = math.rad(90);
GT.WS[ws].LN[1].ECM_K = 0.65;
GT.WS[ws].LN[1].maxShootingSpeed = 0;

GT.Name = "Kub 1S91 str";
GT.Aliases = {"SA-6 Kub STR 9S91"}
GT.DisplayName = _("SAM SA-6 Kub STR 9S91");
GT.Rate = 15;

GT.Sensors = { RADAR = GT.Name, };

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000083";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar,KUB_1C91,
				"MR SAM",
				"SAM SR",
				"SAM TR",
				"RADAR_BAND1_FOR_ARM",
				"RADAR_BAND2_FOR_ARM",
				};
GT.category = "Air Defence";
