-- MAZ-6303

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.MAZ6303);
GT.chassis.life = 1;

GT.visual.shape = "MAZ-6303"
GT.visual.shape_dstr = "Auto-crush"


--chassis
GT.swing_on_run = false

--Burning after hit
GT.visual.fire_size = 0.7 --relative burning size
GT.visual.fire_pos[1] = 1 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)

GT.Name = "MAZ-6303"
GT.DisplayName = _("Transport MAZ-6303")
GT.Rate = 3

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000211";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeMAZ_6303,
				"Trucks",
				};
GT.category = "Unarmed";