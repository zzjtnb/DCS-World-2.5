-- P-19 S-125 SR

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);

GT.visual.shape = "Zil_p19_Radar";
GT.visual.shape_dstr = "Zil_p19_Radar_p_1";

--chassis
GT.animation_arguments.locator_rotation = 11;
GT.radar_rotation_period = -6.0;
GT.snd.radarRotation = "RadarRotation";

GT.sensor = {};
GT.sensor.max_range_finding_target = 160000;
GT.sensor.min_range_finding_target = 1500;
GT.sensor.max_alt_finding_target = 30000;
GT.sensor.height = 5.841;

GT.WS = {};
GT.WS.maxTargetDetectionRange = 160000;
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
    GT.WS[ws].pos = {0,3,0}
	GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), 0, math.rad(20)},
					};
    GT.WS[ws].omegaY = 3
    GT.WS[ws].omegaZ = 3

    GT.WS[ws].LN = {}
    GT.WS[ws].LN[1] = {}
    GT.WS[ws].LN[1].type = 101
    GT.WS[ws].LN[1].reactionTime = 9; --9+6+непредвиденные паузы  = 16
    GT.WS[ws].LN[1].reflection_limit = 0.18;
    GT.WS[ws].LN[1].distanceMin = 1500
    GT.WS[ws].LN[1].distanceMax = GT.sensor.max_range_finding_target
	GT.WS[ws].LN[1].ECM_K = 0.5;
    GT.WS[ws].LN[1].min_trg_alt = 25
    GT.WS[ws].LN[1].max_trg_alt = GT.sensor.max_alt_finding_target

end --for

GT.Name = "p-19 s-125 sr";
GT.DisplayName = _("SAM SR P-19");
GT.Rate = 20;

GT.Sensors = { RADAR = GT.Name };

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000083";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar,SA3_SR,
				"MR SAM",
				"SAM SR",
				"RADAR_BAND1_FOR_ARM",
				"RADAR_BAND2_FOR_ARM",
				};
GT.category = "Air Defence";