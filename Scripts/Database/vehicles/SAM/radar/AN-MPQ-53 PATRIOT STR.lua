-- AN/MPQ-53 Patriot str&tr

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);

GT.visual.shape = "patriot-rls";
GT.visual.shape_dstr = "Patriot-rls_p_1";

GT.snd.radarRotation = "RadarRotation"; -- не поворот, но звук работы

--chassis
GT.sensor = {};
GT.sensor.max_range_finding_target = 160000;
GT.sensor.min_range_finding_target = 3000;
GT.sensor.max_alt_finding_target = 30000;
GT.sensor.height = 5.895;

-- 9 trackers, first tracker is main, other 8 are limited in sector within 110 degree

--Burning after hit
GT.visual.fire_size = 0.6; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)

-- zero tracker, dummy
GT.WS = {};
GT.WS.maxTargetDetectionRange = 200000;
GT.WS.radar_type = 102;
GT.WS.radar_rotation_type = 0;
GT.WS.searchRadarMaxElevation = math.rad(60);

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].pos = {0,5,0};
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), 0, math.rad(80)},
					};
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = 0.523599;
GT.WS[ws].omegaZ = 0.523599;
GT.WS[ws].pidY = {p = 10, i = 0.02, d = 3, inn = 1.2}
GT.WS[ws].pidZ = {p = 10, i = 0.02, d = 3, inn = 1.2}
GT.WS[ws].LN = {};
GT.WS[ws].LN[1] = {};
GT.WS[ws].LN[1].max_number_of_missiles_channels = 2;
GT.WS[ws].LN[1].type = 102;
GT.WS[ws].LN[1].reactionTime = 15;
GT.WS[ws].LN[1].reflection_limit = 0.049;
GT.WS[ws].LN[1].distanceMin = 3000;
GT.WS[ws].LN[1].distanceMax = GT.sensor.max_range_finding_target;
GT.WS[ws].LN[1].ECM_K = 0.4;
GT.WS[ws].LN[1].min_trg_alt = 60;
GT.WS[ws].LN[1].max_trg_alt = 30000;
GT.WS[ws].LN[1].beamWidth = math.rad(90);
GT.WS[ws].LN[1].depends_on_unit = {{{"Patriot ECS",},},};

for i = 1,7 do -- 1 + 7 tracker's
    ws = GT_t.inc_ws();
	GT.WS[ws] = {};
    GT.WS[ws].base = 1;
    GT.WS[ws].pos = {0,0,0};
	GT.WS[ws].angles = {
					{math.rad(55), math.rad(-55), 0, math.rad(80)},
					};
    GT.WS[ws].omegaY = 3;
    GT.WS[ws].omegaZ = 3;
    GT.WS[ws].LN = {};
	GT.WS[ws].LN[1] = {};
	set_recursive_metatable(GT.WS[ws].LN[1], GT.WS[1].LN[1])
end -- for

GT.Name = "Patriot str";
GT.DisplayName = _("SAM Patriot STR AN/MPQ-53");
GT.Rate = 20;

GT.Sensors = {RADAR = GT.Name, };

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000083";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar,Patr_AN_MPQ_53_P,
				"LR SAM",
				"SAM SR",
				"SAM TR",
				"RADAR_BAND1_FOR_ARM",
				"Datalink"
				};
GT.category = "Air Defence";