-- Ural-4320-31 armored variant

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.URAL375);
GT.chassis.armour_thickness = 0.012
GT.chassis.life = 2

-- armour scheme
GT.armour_scheme = {
						hull_elevation = { {-90, 60, 1 }, {60, 90, 0}},
						hull_azimuth = { {0, 45, 1 }, {45, 180, 0 },},
						turret_elevation = { {-90, 90, 0 }, },
						turret_azimuth = { {0, 180, 0 }, }
					};

GT.visual.shape = "Ural_4320-31"
GT.visual.shape_dstr = "Ural_4320_T_P1"


--chassis
GT.swing_on_run = false


--Burning after hit
GT.visual.fire_size = 0.7 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)

GT.Name = "Ural-4320-31"
GT.DisplayName = _("Transport Ural-4320-31 Armored")
GT.Rate = 7

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000005";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericVehicle,
				"Trucks",
				};
GT.category = "Unarmed";
GT.warehouse = true
GT.InternalCargo = {
			nominalCapacity = 2700,
			maximalCapacity = 2700, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}