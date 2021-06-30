-- BMP-1
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV)
set_recursive_metatable(GT.chassis, GT_t.CH_t.BMP1);

GT.visual.shape = "bmp-1"
GT.visual.shape_dstr = "Bmp-1_p_1"

-- Turbine
GT.turbine = false;
-- Turbine

--chassis
GT.swing_on_run = false

GT.sensor = {}
set_recursive_metatable(GT.sensor, GT_t.SN_visual)
GT.sensor.height = 2.15

--Burning after hit
GT.visual.fire_size = 0.8 --relative burning size
GT.visual.fire_pos[1] = 1.0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1100 --burning time (seconds)
GT.visual.dust_pos = {2.2, 0.0, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.22, 0.5, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.02, -0.05, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {}
GT.WS.maxTargetDetectionRange = 5000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t._2A28_GROM)
GT.WS[ws].center = 'CENTER_TOWER'
GT.WS[ws].pointer = 'POINT_SIGHT_01'
GT.WS[ws].LN[1].BR[1] = { connector_name = 'POINT_GUN',
						  recoilArgument = 23,
						  recoilTime = 0.3 }
GT.WS[ws].LN[3].BR[1].connector_name = 'POINT_MGUN'

GT.Name = "BMP-1"
GT.DisplayName = _("IFV BMP-1")
GT.Rate = 10

GT.Sensors = { OPTIC = {"TKN-3B day", "TKN-3B night", -- командирский
                        --"1PN22M1 day", "1PN22M1 night", -- наводчика
                        },
            };

GT.DetectionRange  = 0;
GT.airWeaponDist = GT.WS[1].LN[3].distanceMax;
GT.ThreatRange = GT.WS[1].LN[2].distanceMax;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_MissGun,wsType_GenericIFV,
                "IFV",
                "ATGM",
                };
GT.category = "Armor";
GT.InternalCargo = {
			nominalCapacity = 800,
			maximalCapacity = 800, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}