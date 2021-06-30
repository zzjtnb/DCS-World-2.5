-- URAL ATsP-6

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.URAL375);

GT.visual.shape = "Ural_ACP6"
GT.visual.shape_dstr = "Ural_ACP6_P1"


--chassis
GT.swing_on_run = false


--Burning after hit
GT.visual.fire_size = 0.5 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 300 --burning time (seconds)

GT.Name = "Ural ATsP-6"
GT.DisplayName = _("Transport fire-Engine Ural ATsP-6")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000212";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericVehicle,
				"Trucks",
				};
GT.category = "Unarmed";