-- ZIL-131 KUNG

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.ZIL131);
GT.chassis.life = 1;

GT.visual.shape = "zil_p19_kung"
GT.visual.shape_dstr = "zil_kung_P1"


--chassis
GT.swing_on_run = false


--Burning after hit
GT.visual.fire_size = 0.6 --relative burning size
GT.visual.fire_pos[1] = 1 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 600 --burning time (seconds)

GT.Name = "ZIL-131 KUNG"
GT.DisplayName = _("Transport ZIL-131 KUNG")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000005";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeZIL_131_KUNG,
				"Trucks"
				};
GT.category = "Unarmed";
GT.InternalCargo = {
			nominalCapacity = 2100,
			maximalCapacity = 2100, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}