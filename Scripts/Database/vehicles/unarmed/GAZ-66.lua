-- GAZ-66

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.GAZ66);
GT.chassis.life = 1;

GT.visual.shape = "Gaz-66";
GT.visual.shape_dstr = "GAZ-66_p_1";


--chassis
GT.swing_on_run = false

--Burning after hit
GT.visual.fire_size = 0.6 --relative burning size
GT.visual.fire_pos[1] = 1 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 500 --burning time (seconds)

GT.Name = "GAZ-66";
GT.DisplayName = _("Transport GAZ-66");
GT.Rate = 3;

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000005";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeGAZ_66,
				"Trucks",
				};
GT.category = "Unarmed";
GT.warehouse = true