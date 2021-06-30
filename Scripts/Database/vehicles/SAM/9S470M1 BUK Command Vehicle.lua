-- SAM 9S18M1 'BUK' sr

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MTT);

GT.visual.shape = "9S470M1";
GT.visual.shape_dstr = "9S470M1_P_1";
GT.toggle_alarm_state_interval = 20.0;


--chassis
GT.swing_on_run = false;

--Burning after hit
GT.visual.fire_size = 0.8; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)

GT.sensor = {};
GT.sensor.max_range_finding_target = 100000;
GT.sensor.min_range_finding_target = 2000;
GT.sensor.max_alt_finding_target = 25000;
GT.sensor.height = 7.534;

GT.WS = {};
GT.WS.maxTargetDetectionRange = 100000;
GT.WS.fire_on_march = false;

local ws = 0;
for i = 1,10 do
    ws = GT_t.inc_ws();
	GT.WS[ws] = {};
    GT.WS[ws].pos = {0,3,0};
	GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(-90), math.rad(90)},
					};
    GT.WS[ws].omegaY = 3;
    GT.WS[ws].omegaZ = 3;
	GT.WS[ws].mount_before_move = true;

    GT.WS[ws].LN = {};
    GT.WS[ws].LN[1] = {};
    GT.WS[ws].LN[1].type = 100;
    GT.WS[ws].LN[1].reactionTime = 0.1;
    GT.WS[ws].LN[1].distanceMin = GT.sensor.min_range_finding_target;
    GT.WS[ws].LN[1].distanceMax = GT.sensor.max_range_finding_target;
    GT.WS[ws].LN[1].min_trg_alt = 15
    GT.WS[ws].LN[1].max_trg_alt = GT.sensor.max_alt_finding_target;
	GT.WS[ws].LN[1].reflection_limit = 0.18;
	GT.WS[ws].LN[1].maxShootingSpeed = 0;
    GT.WS[ws].LN[1].depends_on_unit = {{{"SA-11 Buk SR 9S18M1"}}};
end

GT.Name = "SA-11 Buk CC 9S470M1";
GT.DisplayName = _("SAM SA-11 Buk CC 9S470M1");
GT.Rate = 20;

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000046";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_NoWeapon,BUK_9C470M1,
				"SAM CC",
				};
GT.category = "Air Defence";