-- KAMAZ-43101 truck

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.KAMAZ43101);
GT.chassis.life = 1;

GT.visual.shape = "KAMAZ-TENT"
GT.visual.shape_dstr = "KAMAZ-TENT-P_1"


--chassis
GT.swing_on_run = false

--Burning after hit
GT.visual.fire_size = 0.7 --relative burning size
GT.visual.fire_pos[1] = 1 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)

GT.Name = "KAMAZ Truck"
GT.Aliases = {"KAMAZ-43101"}
GT.DisplayName = _("Transport KAMAZ-43101")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000005";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeKAMAZ_Tent,
				"Trucks",
				};
GT.category = "Unarmed";
GT.warehouse = true
GT.InternalCargo = {
			nominalCapacity = 3000,
			maximalCapacity = 3000, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}