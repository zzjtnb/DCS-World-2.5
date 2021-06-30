-- SAM 9S18M1 'BUK' sr

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MTT);

GT.visual.shape = "9S18M1";
GT.visual.shape_dstr = "9S18M1_P_1";
GT.toggle_alarm_state_interval = 60.0;


--chassis
GT.swing_on_run = false;
GT.animation_arguments.locator_rotation = 11;
GT.radar_rotation_period = 12.0;
GT.snd.radarRotation = "RadarRotation";


GT.sensor = {};
GT.sensor.max_range_finding_target = 100000;
GT.sensor.min_range_finding_target = 2000;
GT.sensor.max_alt_finding_target = 25000;
GT.sensor.height = 7.534;

GT.WS = {};
GT.WS.maxTargetDetectionRange = 120000;
GT.WS.radar_type = 103;
GT.WS.radar_rotation_type = 1;
GT.WS.fire_on_march = false;

--Burning after hit
GT.visual.fire_size = 0.8; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)

local ws = 0;
for i = 1,10 do
    ws = GT_t.inc_ws();
	GT.WS[ws] = {}
    GT.WS[ws].pos = {0,3,0}
	GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(-10), math.rad(60)},
					};
    GT.WS[ws].omegaY = 1
    GT.WS[ws].omegaZ = 1
	GT.WS[ws].pidY = {p=100, i=0, d=10, inn=10};
	GT.WS[ws].pidZ = {p=100, i=0, d=10, inn=10};
	GT.WS[ws].mount_before_move = true;

    GT.WS[ws].LN = {}
    GT.WS[ws].LN[1] = {}
    GT.WS[ws].LN[1].type = 101
	GT.WS[ws].LN[1].reactionTime = 14;
    GT.WS[ws].LN[1].distanceMin = GT.sensor.min_range_finding_target;
    GT.WS[ws].LN[1].distanceMax = GT.sensor.max_range_finding_target;
	GT.WS[ws].LN[1].ECM_K = 0.65;
    GT.WS[ws].LN[1].min_trg_alt = 25
    GT.WS[ws].LN[1].max_trg_alt = GT.sensor.max_alt_finding_target;
	GT.WS[ws].LN[1].reflection_limit = 0.18;
	GT.WS[ws].LN[1].maxShootingSpeed = 0;

end --for

GT.Name = "SA-11 Buk SR 9S18M1";
GT.DisplayName = _("SAM SA-11 Buk SR 9S18M1");
GT.Rate = 20;

GT.Sensors = { RADAR = GT.Name, };

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000083";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar,BUK_9C18M1,
				"MR SAM",
				"SAM SR",
				"RADAR_BAND1_FOR_ARM",
				};
GT.category = "Air Defence";