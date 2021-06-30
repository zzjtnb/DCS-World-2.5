-- ATMZ-5 URAL-375

GT = {};

set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.URAL375);

GT.visual.shape = "Ural_ATMZ-5"
GT.visual.shape_dstr = "Ural_ATZ_P1"

--chassis

GT.swing_on_run = false

--Burning after hit
GT.visual.fire_size = 1.5 --relative burning size
GT.visual.fire_pos[1] = -2 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1500 --burning time (seconds)

GT.Name = "ATMZ-5"
GT.DisplayName = _("Fuel Truck ATMZ-5")
GT.Rate = 3

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000212";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeTMZ5,
				"Trucks",
				};
GT.category = "Unarmed";