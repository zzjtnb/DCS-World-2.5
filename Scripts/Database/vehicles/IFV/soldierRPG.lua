-- RPG man
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_human);
set_recursive_metatable(GT.chassis, GT_t.CH_t.HUMAN);

GT.visual.shape = "Soldier_RPG";
GT.visual.shape_dstr = "Soldier_RPG_D";
GT.CustomAimPoint = {0,1.0,0};

GT.mobile = true;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 1.8;
GT.weight = 120;
GT.sensor.max_range_finding_target = 500;

GT.WS = {};
GT.WS.maxTargetDetectionRange = 2000;
GT.WS.fire_on_march = false;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.RPG);
GT.WS[ws].LN[1].maxShootingSpeed = 0;
GT.WS[ws].omegaY = math.rad(80);
GT.WS[ws].omegaZ = math.rad(80);
GT.WS[ws].pidY = {p=100,i=1.5,d=9,inn=10};
GT.WS[ws].pidZ = {p=100,i=1.5,d=9,inn=10,};

GT.Name = "Soldier RPG";
GT.DisplayName = _("Infantry Soldier RPG");
GT.Rate = 1;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000201";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericInfantry,
				"Infantry",
				"CustomAimPoint",
				};
GT.category = "Infantry";
GT.Transportable = {
	size = 100
}