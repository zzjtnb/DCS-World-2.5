-- Sandbox machinegun

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);

GT.chassis.armour_thickness = 0.15;
GT.chassis.life = 40;

GT.visual.shape = "dot";
GT.visual.shape_dstr = "DOTdestr";

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.0;
GT.sensor.max_range_finding_target = 1000;

GT.CustomAimPoint = {0,1.5,0}

--Burning after hit
GT.visual.fire_size = 0.5; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200; --burning time (seconds)

local __LN_PK = {}; -- ПКC с патроном 7.62x54
set_recursive_metatable(__LN_PK, GT_t.LN_t.machinegun_7_62);
__LN_PK.distanceMax = 800;
__LN_PK.PL[1].switch_on_time = 10;
__LN_PK.PL[1].ammo_capacity = 100;
__LN_PK.PL[1].portionAmmoCapacity = 100;
for i=2,10 do -- 1000 rnds
    __LN_PK.PL[i] = {};
    set_recursive_metatable(__LN_PK.PL[i], __LN_PK.PL[1]);
end
__LN_PK.BR[1].pos = {1,0,0};

GT.WS = {};
GT.WS.maxTargetDetectionRange = 1000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER_02';
GT.WS[ws].angles = {
					{math.rad(55), math.rad(-55), math.rad(-15), math.rad(15)},
					};
GT.WS[ws].drawArgument1 = 37;
GT.WS[ws].drawArgument2 = 36;
GT.WS[ws].omegaY = math.rad(60);
GT.WS[ws].omegaZ = math.rad(60);
GT.WS[ws].pidY = {p=60, i=0.1, d=8, inn=5.5};
GT.WS[ws].pidZ = {p=60, i=0.1, d=8, inn=5.5};
__LN = add_launcher(GT.WS[ws], __LN_PK);
__LN.fireAnimationArgument = 46;

ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER_03';
GT.WS[ws].angles = {
					{math.rad(0), math.rad(-110), math.rad(-15), math.rad(15)},
					};
GT.WS[ws].reference_angle_Y = math.rad(-55);
GT.WS[ws].drawArgument1 = 38;
GT.WS[ws].drawArgument2 = 39;
GT.WS[ws].omegaY = math.rad(60);
GT.WS[ws].omegaZ = math.rad(60);
GT.WS[ws].pidY = {p=60, i=0.1, d=8, inn=5.5};
GT.WS[ws].pidZ = {p=60, i=0.1, d=8, inn=5.5};
__LN = add_launcher(GT.WS[ws], __LN_PK);
__LN.fireAnimationArgument = 47;

ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER_01';
GT.WS[ws].angles = {
					{math.rad(110), math.rad(0), math.rad(-15), math.rad(15)},
					};
GT.WS[ws].reference_angle_Y = math.rad(55);
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(60);
GT.WS[ws].omegaZ = math.rad(60);
GT.WS[ws].pidY = {p=60, i=0.1, d=8, inn=5.5};
GT.WS[ws].pidZ = {p=60, i=0.1, d=8, inn=5.5};
__LN = add_launcher(GT.WS[ws], __LN_PK);
__LN.fireAnimationArgument = 45;

GT.Name = "Sandbox";
GT.DisplayName = _("Sandbox");
GT.Rate = 5;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000075";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericFort,
				"Fortifications",
				"CustomAimPoint",
				};
GT.category = "Fortification";