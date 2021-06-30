-- Suidae

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.Suidae_base);
GT.chassis.life = 1;

GT.visual.shape = "Suidae"
GT.visual.shape_dstr = "Suidae_P"


--chassis
GT.swing_on_run = false


--Burning after hit
GT.visual.fire_size = 0.1 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1 --burning time (seconds)

GT.Name = "Suidae"
GT.DisplayName = _("Suidae")
GT.Rate = 3

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000211";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeVAZ,
				"Cars",
				};
GT.snd.engine = ""; -- engine sound off
GT.category = "Unarmed";