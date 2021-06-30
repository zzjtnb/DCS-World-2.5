-- Ural-375 ZU-23

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.URAL375);

GT.visual.shape = "Ural_ZU-23";
GT.visual.shape_dstr = "Ural_ZU-23_P1";

GT.swing_on_run = false;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.826;

--destruction  
GT.agony_fire_pos_y = 0.982;
GT.agony_fire_pos_y = 1.725;
GT.agony_fire_pos_z = 0.315;

--Burning after hit
GT.visual.fire_size = 0.6; --relative burning size
GT.visual.fire_pos[1] = 2; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)

GT.driverViewConnectorName = "DRIVER_POINT"

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 7500;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ZU_23);
GT.WS[ws].board = 2
GT.WS[ws].angles = {
					{math.rad(135), math.rad(-135), -0.1, 1.48173}, -- main sector
					{math.rad(-135), math.rad(135), math.rad(12), 1.48173}, -- over hood
					};
GT.WS[ws].reference_angle_Z = math.rad(30);
GT.WS[ws].pointer = 'POINT_SIGHT_01'

GT.Name = "Ural-375 ZU-23";
GT.DisplayName = _("AAA ZU-23 on Ural-375");
GT.Rate = 6;

GT.Crew = 2;

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000205";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Gun,ZU_23_URAL,
                "AA_flak",
                "Mobile AAA",
                };
GT.category = "Air Defence";