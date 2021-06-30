-- AK man

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_human);
set_recursive_metatable(GT.chassis, GT_t.CH_t.HUMAN);

GT.visual.shape = "Soldier_AK";
GT.visual.shape_dstr = "Soldier_AK_D";
GT.CustomAimPoint = {0,1.0,0};

GT.mobile = true;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 1.8;
GT.sensor.max_range_finding_target = 500;

GT.WS = {};
GT.WS.maxTargetDetectionRange = 2000;
GT.WS.fire_on_march = false;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'POINT_TOWER';
GT.WS[ws].angles = {
					{math.rad(45), math.rad(-45), math.rad(-30), math.rad(60)},
					};
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(100);
GT.WS[ws].omegaZ = math.rad(100);
GT.WS[ws].pidY = {p=100,i=1.5,d=9,inn=10};
GT.WS[ws].pidZ = {p=100,i=1.5,d=9,inn=10,};

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.AK74);
__LN.maxShootingSpeed = 0;
for i=2,8 do -- 8 clips, 240 rounds
	__LN.PL[i] = {};
	set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end
__LN.fireAnimationArgument = 23;
--__LN.BR[1].connector_name = 'POINT_GUN';
__LN.BR[1].pos = {0.9, 0.4, 0.2}
__LN.connectorFire = false;

GT.Name = "Soldier AK";
GT.DisplayName = _("Infantry Soldier AK");
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