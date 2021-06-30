-- roland radar

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MARDER);

GT.visual.shape = "roland-rls";
GT.visual.shape_dstr = "Marder_p_1";

--chassis
GT.swing_on_run = false;
GT.animation_arguments.locator_rotation = 11;
GT.radar_rotation_period = 3.0;
GT.snd.radarRotation = "RadarRotation";
GT.toggle_alarm_state_interval = 5.0;

GT.sensor = {};
GT.sensor.max_range_finding_target = 35000;
GT.sensor.min_range_finding_target = 1500;
GT.sensor.max_alt_finding_target = 6000;
GT.sensor.height = 6.87;

GT.WS = {};
GT.WS.maxTargetDetectionRange = 35000;
GT.WS.radar_type = 104;
GT.WS.radar_rotation_type = 0;

local ws = 0;
for i = 1,10 do
    ws = GT_t.inc_ws();
	GT.WS[ws] = {}
    GT.WS[ws].pos = {0,10,0}
	GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), 0, math.rad(40)},
					};
    GT.WS[ws].omegaY = 3
    GT.WS[ws].omegaZ = 3

    GT.WS[ws].LN = {}
    GT.WS[ws].LN[1] = {}
    GT.WS[ws].LN[1].type = 101
    GT.WS[ws].LN[1].reactionTime = 12;
	GT.WS[ws].LN[1].reflection_limit = 0.18;
    GT.WS[ws].LN[1].distanceMin = GT.sensor.min_range_finding_target;
    GT.WS[ws].LN[1].distanceMax = GT.sensor.max_range_finding_target;
	GT.WS[ws].LN[1].ECM_K = 0.65;
    GT.WS[ws].LN[1].min_trg_alt = 15
    GT.WS[ws].LN[1].max_trg_alt = GT.sensor.max_alt_finding_target;

end --for

--Burning after hit
GT.visual.fire_size = 0.8; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)

GT.Name = "Roland Radar";
GT.DisplayName = _("SAM Roland rdr");
GT.Rate = 10;

GT.Sensors = {RADAR = GT.Name, };

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000083";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar,Roland_Search_Radar,
				"SAM SR",
				"RADAR_BAND1_FOR_ARM",
				"RADAR_BAND2_FOR_ARM",
				};
GT.category = "Air Defence";