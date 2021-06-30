-- 'IKARUS' bus

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.IKARUS);
GT.chassis.life = 1;

GT.visual.shape = "ikarus"
GT.visual.shape_dstr = "Auto-crush"


--chassis
GT.swing_on_run = false

--Burning after hit
GT.visual.fire_size = 0.7 --relative burning size
GT.visual.fire_pos[1] = 1 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)

GT.Name = "IKARUS Bus"
GT.DisplayName = _("Transport IKARUS-280")
GT.Rate = 3

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000211";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeBus,
				"Trucks",
				};
GT.category = "Unarmed";
GT.InternalCargo = {
			nominalCapacity = 3500,
			maximalCapacity = 3500, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}