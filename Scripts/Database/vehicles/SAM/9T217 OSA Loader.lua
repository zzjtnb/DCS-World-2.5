-- 'OSA' 9T217 Loader

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.BAZ5937);

GT.visual.shape = "9t217"
GT.visual.shape_dstr = "9t217_p_1"


--chassis
GT.swing_on_run = false

GT.sensor = {}
set_recursive_metatable(GT.sensor, GT_t.SN_visual)
GT.sensor.height = 2.2

--Burning after hit
GT.visual.fire_size = 1.0 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200 --burning time (seconds)

GT.Name = "SA-8 Osa LD 9T217"
GT.DisplayName = _("SAM SA-8 Osa LD 9T217")
GT.Rate = 10

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000212";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,OSA_9T217,
				"Trucks",
				"SAM AUX",
				};
GT.category = "Air Defence";