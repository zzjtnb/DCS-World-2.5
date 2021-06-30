-- LAZ-695 bus

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.LAZ695);
GT.chassis.life = 1;

GT.visual.shape = "laz-695";
GT.visual.shape_dstr = "Laz-695-p";


--chassis
GT.swing_on_run = false


--Burning after hit
GT.visual.fire_size = 0.5 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)

GT.Name = "LAZ Bus"
GT.DisplayName = _("Transport LAZ-695")
GT.Rate = 3

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000211";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeLAZ_695,
				"Trucks",
				};
GT.category = "Unarmed";
GT.InternalCargo = {
			nominalCapacity = 3300,
			maximalCapacity = 3300, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}