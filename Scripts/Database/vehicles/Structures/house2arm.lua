-- Watch Tower Armed

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 10

GT.visual.shape = "ohr-vyshka"
GT.visual.shape_dstr = "Auto-crush"
GT.CustomAimPoint = {0,6,0}
--Burning after hit
GT.visual.fire_size = 1.3 --relative burning size
GT.visual.fire_pos = {0,6,0};
GT.visual.fire_time = 600; --burning time (seconds)
GT.visual.min_time_agony = 20;
GT.visual.max_time_agony = 100;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.0;
GT.sensor.max_range_finding_target = 1000;

local __LN_PK = {};
set_recursive_metatable(__LN_PK, GT_t.LN_t.machinegun_7_62);
__LN_PK.connectorFire = false;
__LN_PK.distanceMax = 800;
for i=2,10 do -- 1000 rnds
    __LN_PK.PL[i] = {};
    set_recursive_metatable(__LN_PK.PL[i], __LN_PK.PL[1]);
end
__LN_PK.BR[1].pos = {1,0,0};

GT.WS = {};
GT.WS.maxTargetDetectionRange = 2000;

local ws = 0;
for i=1,3 do
  ws = GT_t.inc_ws();
  GT.WS[ws] = {};
  GT.WS[ws].pos = {1,1,0};
  GT.WS[ws].maxBottom = math.rad(-35);
  GT.WS[ws].maxTop = math.rad(45);
  GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-35), math.rad(45)},
                    };
  GT.WS[ws].omegaY = math.rad(120);
  GT.WS[ws].omegaZ = math.rad(120);
  GT.WS[ws].pidY = {p=10,i=0.05,d=2,inn=3,};
  GT.WS[ws].pidZ = {p=10,i=0.05,d=2,inn=3,};

  __LN = add_launcher(GT.WS[ws], __LN_PK);

end 
GT.WS[1].pos = {1.3,6.7,0};
GT.WS[1].maxLeft = math.rad(80);
GT.WS[1].maxRight = math.rad(-80);
GT.WS[1].angles[1][1] = math.rad(80);
GT.WS[1].angles[1][2] = math.rad(-80);
GT.WS[2].pos = {0,6.7,-1.3};
GT.WS[2].maxLeft = math.rad(170);
GT.WS[2].maxRight = math.rad(10);
GT.WS[2].angles[1][1] = math.rad(170);
GT.WS[2].angles[1][2] = math.rad(10);
GT.WS[2].reference_angle_Y = math.rad(90);
GT.WS[3].pos = {0,6.7,1.3};
GT.WS[3].maxLeft = math.rad(-10);
GT.WS[3].maxRight = math.rad(-170);
GT.WS[3].angles[1][1] = math.rad(-10);
GT.WS[3].angles[1][2] = math.rad(-170);
GT.WS[3].reference_angle_Y = math.rad(-90);

GT.Name = "house2arm"
GT.DisplayName = _("Watch tower armed")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericFort,
                "Fortifications",
                "CustomAimPoint",
                };
GT.category = "Fortification";
                