-- igla rus 2

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_human);
set_recursive_metatable(GT.chassis, GT_t.CH_t.HUMAN);

GT.visual.shape = "SA18_com1";
GT.visual.shape_dstr = "SA18_com1_d";
GT.CustomAimPoint = {0,1.0,0};

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);

GT.WS = {};
GT.WS.maxTargetDetectionRange = 7500;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.igla_comm_manpad);

GT.Name = "SA-18 Igla-S comm";
GT.DisplayName = _("SAM SA-18 Igla-S comm");
GT.Rate = 5;

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000201";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Miss,IglaRUS_2,
				"MANPADS AUX",
				"CustomAimPoint",
				};
GT.category = "Air Defence";