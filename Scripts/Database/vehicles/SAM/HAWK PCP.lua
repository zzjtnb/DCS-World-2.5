-- HAWK Platoon Command Post

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);

GT.visual.shape = "hawk-cv";
GT.visual.shape_dstr = "hawk-cv_p_1";

--Burning after hit
GT.visual.fire_size = 0.8; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 500; --burning time (seconds)

GT.sensor = {};
GT.sensor.max_range_finding_target = 160000;
GT.sensor.min_range_finding_target = 1500;
GT.sensor.max_alt_finding_target = 25000;
GT.sensor.height = 7.534;

GT.WS = {};
GT.WS.maxTargetDetectionRange = 160000;
GT.WS.fire_on_march = false;

ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].pos = {0,3,0};
GT.WS[ws].angles = {
				{math.rad(180), math.rad(-180), math.rad(-10), math.rad(90)},
				};
GT.WS[ws].omegaY = 3;
GT.WS[ws].omegaZ = 3;

GT.WS[ws].LN = {};
GT.WS[ws].LN[1] = {};
GT.WS[ws].LN[1].type = 100;
GT.WS[ws].LN[1].reactionTime = 0.1;
GT.WS[ws].LN[1].distanceMin = GT.sensor.min_range_finding_target;
GT.WS[ws].LN[1].distanceMax = GT.sensor.max_range_finding_target;
GT.WS[ws].LN[1].min_trg_alt = 15;
GT.WS[ws].LN[1].max_trg_alt = GT.sensor.max_alt_finding_target;
GT.WS[ws].LN[1].reflection_limit = 0.22;
GT.WS[ws].LN[1].maxShootingSpeed = 0;
GT.WS[ws].LN[1].depends_on_unit = {{{"Hawk sr"}}, {{"Hawk cwar"}}, {{"Hawk tr", 2}}};

ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT.WS[1])

GT.Name = "Hawk pcp";
GT.DisplayName = _("SAM Hawk PCP");
GT.Rate = 20;

--GT.Sensors = { RADAR = {"Hawk sr"} };

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000046";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_NoWeapon,wsType_GenericVehicle,
				"SAM CC",
				};
GT.category = "Air Defence";