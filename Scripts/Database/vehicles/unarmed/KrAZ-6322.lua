-- KrAZ-6322 truck

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.KRAZ6322);
GT.chassis.life = 1;

GT.visual.shape = "Kraz-6322"
GT.visual.shape_dstr = "Kraz-6322_p1"


--chassis
GT.swing_on_run = false

--Burning after hit
GT.visual.fire_size = 0.7 --relative burning size
GT.visual.fire_pos[1] = 1 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)

GT.driverViewConnectorName = "DRIVER_POINT"

GT.Name = "KrAZ6322"
GT.DisplayName = _("Transport KrAZ-6322")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000005";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericVehicle,
				"Trucks",
				"human_vehicle"
				};
GT.category = "Unarmed";
GT.warehouse = true
GT.InternalCargo = {
			nominalCapacity = 3600,
			maximalCapacity = 3600, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}