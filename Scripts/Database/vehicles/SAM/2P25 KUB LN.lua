-- SAM 2P25 'KUB' ln

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.GM578);

GT.visual.shape = "2p25";
GT.visual.shape_dstr = "2p25_p_1";

--chassis
GT.swing_on_run = true;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 3.18;

--Burning after hit
GT.visual.fire_size = 0.8; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 50000;
GT.WS.fire_on_march = false;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].new_rotation = false;
GT.WS[ws].pos = {0.292, 2.459,0};
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), 0, 1.223},
					};
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].mount_before_move = true;
GT.WS[ws].omegaY = 0.2618;
GT.WS[ws].omegaZ = 0.174533;
GT.WS[ws].pidY = {p=5,i=0.1, d=2, inn = 2};
GT.WS[ws].pidZ = {p=5,i=0.1, d=2, inn = 2};
GT.WS[ws].reference_angle_Y = math.pi;

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._2P25);
__LN.min_launch_angle = math.rad(20);
__LN.depends_on_unit = {{{"Kub 1S91 str"},},};
__LN = nil;

GT.Name = "Kub 2P25 ln";

GT.Aliases = {"SA-6 Kub LN 2P25"}
GT.DisplayName = _("SAM SA-6 Kub LN 2P25");
GT.Rate = 10;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000080";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Miss,KUB_2P25,
				"AA_missile",
				"SAM LL",
				};
GT.category = "Air Defence";
