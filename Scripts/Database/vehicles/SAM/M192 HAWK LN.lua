-- hawk ln

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);

GT.visual.shape = "hawk-pu";
GT.visual.shape_dstr = "hawk-pu_p_1";

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.707;

--Burning after hit
GT.visual.fire_size = 0.3; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 500; --burning time (seconds)

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 50000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].pos = {0, 1.857,0};
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), 0.0, math.rad(30)},
					};
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = 0.523599;
GT.WS[ws].omegaZ = 0.174533;
GT.WS[ws].pidY = {p=10,i=0.2,d=4};
GT.WS[ws].pidZ = {p=10,i=0.2,d=4};

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.M192);
__LN.depends_on_unit = {{{"Hawk tr", 1},},};
__LN.min_launch_angle = math.rad(20);
__LN = nil;

GT.Name = "Hawk ln";
GT.Aliases = {"Hawk M192 LN"}
GT.DisplayName = _("SAM Hawk LN M192");
GT.Rate = 5;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000082";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Miss,Hawk_,
				"AA_missile",
				"SAM LL",
				"Datalink"
				};
                GT.category = "Air Defence";