-- VAZ-2109

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.VAZ2109);
GT.chassis.life = 1;

GT.visual.shape = "vaz"
GT.visual.shape_dstr = "Auto-crush"


--chassis
GT.swing_on_run = false


--Burning after hit
GT.visual.fire_size = 0.3 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 600 --burning time (seconds)

GT.Name = "VAZ Car"
GT.DisplayName = _("Transport VAZ-2109")
GT.Rate = 3

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000211";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeVAZ,
				"Cars",
				};
GT.category = "Unarmed";
GT.InternalCargo = {
			nominalCapacity = 300,
			maximalCapacity = 300, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}