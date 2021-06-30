-- M901 Patriot ln

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);

GT.visual.shape = "patriot-pu";
GT.visual.shape_dstr = "Patriot-pu_p_1";


--chassis

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 6.249;

--Burning after hit
GT.visual.fire_size = 0.8; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 200000;
local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].pos = {-2, 2.109,0};
GT.WS[ws].angles = {
					{math.rad(110), math.rad(-110), math.rad(0), math.rad(80)}, -- FM 3-01.11 Air Defence Artillery Refrence Book
					};
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = -1;
GT.WS[ws].omegaY = 0.523599;
GT.WS[ws].omegaZ = 0.0;
GT.WS[ws].reference_angle_Z = 0.533495;
GT.WS[ws].pidY = {p=10,i=0.02,d=6};
GT.WS[ws].pidZ = {p=10,i=0.02,d=6};

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.M901);
__LN.depends_on_unit = {{{"Patriot str",},},};
__LN.BR = {
            {connector_name = 'POINT_PATRIOT_1_1', drawArgument = 4},
            {connector_name = 'POINT_PATRIOT_1_2', drawArgument = 5},
            {connector_name = 'POINT_PATRIOT_1_3', drawArgument = 6},
            {connector_name = 'POINT_PATRIOT_1_4', drawArgument = 7},
        };
__LN = nil;

GT.Name = "Patriot ln";
GT.DisplayName = _("SAM Patriot LN M901");
GT.Rate = 10;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000079";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Miss,Patriot_,
				"AA_missile",
				"SAM LL",
				"Datalink"
				};
GT.category = "Air Defence";