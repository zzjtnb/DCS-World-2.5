-- ZIL APA-80

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.ZIL131);
GT.chassis.life = 1;

GT.visual.shape = "Zil_APA-80"
GT.visual.shape_dstr = "Zil_APA-80_P1"


--chassis
GT.swing_on_run = false


--Burning after hit
GT.visual.fire_size = 0.7 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 600 --burning time (seconds)

GT.Name = "ZiL-131 APA-80"
GT.Aliases = {"ZiL-131 APA-80 Ground Power Unit"}
GT.DisplayName = _("GPU APA-80 on ZiL-131")
GT.Rate = 6

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000212";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericVehicle,
				"Trucks",
				};
GT.category = "Unarmed";