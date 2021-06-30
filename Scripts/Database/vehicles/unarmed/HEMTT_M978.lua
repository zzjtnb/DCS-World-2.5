-- HEMTT M978

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.HEMTT);
GT.chassis.life = 1;

GT.visual.shape = "HEMTT"
GT.visual.shape_dstr = "HEMTT_P1"


--chassis
GT.swing_on_run = false


--Burning after hit
GT.visual.fire_size = 1.8 --relative burning size
GT.visual.fire_pos[1] = -3 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1500 --burning time (seconds)

GT.Name = "M978 HEMTT Tanker"
GT.DisplayName = _("Tanker M978 HEMTT")
GT.Rate = 15

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000212";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericVehicle,
				"Trucks",
				};
GT.category = "Unarmed";