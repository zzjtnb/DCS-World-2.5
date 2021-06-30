-- Hummer M1025

GT = {};
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle)
set_recursive_metatable(GT.chassis, GT_t.CH_t.HMMWV);

GT.visual.shape = "HMMWV_M1025"
GT.visual.shape_dstr = "HMMWV_M1025_P_1"

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

GT.Name = "Hummer"
GT.Aliases = {"M1025 HMMWV"}
GT.DisplayName = _("APC M1025 HMMWV")
GT.Rate = 3

GT.EPLRS = true
--GT.driverViewPoint = {0.2, 1.5, -0.7};
GT.driverViewConnectorName = " DRIVER_POINT"

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000005";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_Hummer,
                "APC", "Datalink",
                "human_vehicle",
                };
GT.category = "Unarmed";
GT.InternalCargo = {
			nominalCapacity = 400,
			maximalCapacity = 400, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}