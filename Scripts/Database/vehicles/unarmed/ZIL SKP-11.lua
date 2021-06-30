-- ZIL SKP-11

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.ZIL131);
GT.chassis.life = 1;

GT.visual.shape = "ZIL_SKP-11"
GT.visual.shape_dstr = "ZIL_SKP-11_P1"


--chassis
GT.swing_on_run = false


--Burning after hit
GT.visual.fire_size = 0.6 --relative burning size
GT.visual.fire_pos[1] = -1 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 600 --burning time (seconds)

GT.Name = "SKP-11"
GT.Aliases = {"SKP-11 Mobile Command Post"}
GT.DisplayName = _("CP SKP-11 Mobile Command Post")
GT.Rate = 20

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000045";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericVehicle,
				"Trucks",
				};
GT.category = "Unarmed";