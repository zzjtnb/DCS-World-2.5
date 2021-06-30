-- HAWK CWAR AN/MPQ-55. Continuous Wave Acquisition Radar—a search doppler radar with a 20 (+/−2) rpm rotation, for low altitude target detection.

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);

GT.visual.shape = "hawk-cwar";
GT.visual.shape_dstr = "hawk-cwar_p_1";

--chassis
GT.animation_arguments.locator_rotation = 11;
GT.radar_rotation_period = 3.0;
GT.snd.radarRotation = "RadarRotation";

GT.sensor = {};
GT.sensor.max_range_finding_target = 70000;
GT.sensor.min_range_finding_target = 1500;
GT.sensor.max_alt_finding_target = 3000;
GT.sensor.height = 2.5;

GT.WS = {};
GT.WS.maxTargetDetectionRange = 70000;
GT.WS.radar_type = 103;
GT.WS.radar_rotation_type = 0;

--Burning after hit
GT.visual.fire_size = 0.5; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 500; --burning time (seconds)

local ws = 0;
for i = 1,10 do
    ws = GT_t.inc_ws();
	GT.WS[ws] = {}
    GT.WS[ws].pos = {0,2.5,0}
	GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(-1), math.rad(10)},
					};
    GT.WS[ws].omegaY = 1
    GT.WS[ws].omegaZ = 1
	GT.WS[ws].pidY = { p = 100, i = 0.0, d = 10};
	GT.WS[ws].pidZ = { p = 100, i = 0.0, d = 10};

    GT.WS[ws].LN = {}
    GT.WS[ws].LN[1] = {}
    GT.WS[ws].LN[1].type = 101
	GT.WS[ws].LN[1].reactionTime = 11;
	GT.WS[ws].LN[1].reflection_limit = 0.22;
    GT.WS[ws].LN[1].distanceMin = 0
    GT.WS[ws].LN[1].distanceMax = 70000
	GT.WS[ws].LN[1].ECM_K = 0.6;
    GT.WS[ws].LN[1].min_trg_alt = 15
    GT.WS[ws].LN[1].max_trg_alt = 3000

end --for

GT.Name = "Hawk cwar";
GT.DisplayName = _("SAM Hawk CWAR AN/MPQ-55");
GT.Rate = 20;

GT.Sensors = { RADAR = {"Hawk sr"} };

GT.EPLRS = true

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000083";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar,Hawk_CWAR_Radar,
				"MR SAM",
				"SAM SR",
				"RADAR_BAND1_FOR_ARM",
				"RADAR_BAND2_FOR_ARM",
				"Datalink"
				};
GT.category = "Air Defence";