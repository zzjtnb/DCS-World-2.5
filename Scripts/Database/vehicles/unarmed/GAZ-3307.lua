-- GAZ-3307

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.GAZ3307); -- was GAZ3308. why?
GT.chassis.life = 1;

GT.visual.shape = "GAZ-3307";
GT.visual.shape_dstr = "Auto-crush";


--chassis
GT.swing_on_run = false;

--Burning after hit
GT.visual.fire_size = 0.7 --relative burning size
GT.visual.fire_pos[1] = 1 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)

GT.Name = "GAZ-3307"
GT.DisplayName = _("Transport GAZ-3307")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000211";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeGAZ_3307,
				"Trucks",
				};
GT.category = "Unarmed";
GT.InternalCargo = {
			nominalCapacity = 2100,
			maximalCapacity = 2100, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}