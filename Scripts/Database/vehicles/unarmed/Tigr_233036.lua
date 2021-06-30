-- Tigr 233036 Unarmed

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.TIGR);

GT.visual.shape = "Tigr_233036"
GT.visual.shape_dstr = "Tigr_233036_p1"

GT.turbine = true;

--chassis
GT.swing_on_run = false

--Burning after hit
GT.visual.fire_size = 0.6 --relative burning size
GT.visual.fire_pos[1] = 1 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)
GT.animation_arguments.crew_presence = 50;
GT.animation_arguments.stoplights = 30;
GT.animation_arguments.headlights = 31;
GT.animation_arguments.markerlights = 32;

GT.Name = "Tigr_233036"
GT.DisplayName = _("APC Tigr 233036")
GT.Rate = 3

GT.driverViewConnectorName = "DRIVER_POINT"

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000005";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon, wsType_GenericAPC,
                "APC",
				"human_vehicle"
                };
GT.category = "Unarmed";
GT.InternalCargo = {
			nominalCapacity = 800,
			maximalCapacity = 800, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}