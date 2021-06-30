-- M249 man
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_human);
set_recursive_metatable(GT.chassis, GT_t.CH_t.HUMAN);

GT.visual.shape = "Soldier_M249";
GT.visual.shape_dstr = "Soldier_M249_P_1";
GT.CustomAimPoint = {0,0.2,0};

GT.mobile = true;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 1.8;
GT.sensor.max_range_finding_target = 400;

GT.WS = {};
GT.WS.maxTargetDetectionRange = 2000;
GT.WS.fire_on_march = false;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
					{math.rad(45), math.rad(-45), math.rad(-40), math.rad(40)},
					};
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(70);
GT.WS[ws].omegaZ = math.rad(70);
GT.WS[ws].pidY = {p=100,i=1.5,d=9,inn=10};
GT.WS[ws].pidZ = {p=100,i=1.5,d=9,inn=10,};

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_M249);
__LN.maxShootingSpeed = 0;
__LN.PL[2] = {};
set_recursive_metatable(__LN.PL[2], __LN.PL[1]);
__LN.BR[1].connector_name = 'POINT_GUN';
__LN.fireAnimationArgument = 23;
__LN.connectorFire = false;

GT.Name = "Soldier M249";
GT.DisplayName = _("Infantry Soldier M249");
GT.Rate = 1;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000201";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericInfantry,
				"Infantry",
				"Prone",
				"CustomAimPoint",
				};
GT.category = "Infantry";
GT.Transportable = {
	size = 100
}