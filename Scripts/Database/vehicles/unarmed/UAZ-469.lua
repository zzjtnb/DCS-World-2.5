-- UAZ-469

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.UAZ469);
GT.chassis.life = 1;

GT.visual.shape = "uaz-469"
GT.visual.shape_dstr = "Uaz-469_p_1"


--chassis
GT.swing_on_run = false


--Burning after hit
GT.visual.fire_size = 0.4 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 500 --burning time (seconds)

GT.driverViewPoint = {0.0, 1.55, -0.4};

GT.Name = "UAZ-469"
GT.DisplayName = _("Transport UAZ-469")
GT.Rate = 3

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000005";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeUAZ469,
				"Cars",
				"human_vehicle",
				};
GT.category = "Unarmed";
GT.InternalCargo = {
			nominalCapacity = 400,
			maximalCapacity = 400, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}