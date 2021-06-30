-- BMP-2
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV)
set_recursive_metatable(GT.chassis, GT_t.CH_t.BMP2);

GT.visual.shape = "bmp-2"
GT.visual.shape_dstr = "Bmp-2_p_1"

-- Turbine
GT.turbine = false;
-- Turbine

--chassis
GT.swing_on_run = false

GT.sensor = {}
set_recursive_metatable(GT.sensor, GT_t.SN_visual)
GT.sensor.height = 2.45

--Burning after hit
GT.visual.fire_size = 0.8 --relative burning size
GT.visual.fire_pos[1] = 1.0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1100 --burning time (seconds)
GT.visual.dust_pos = {2.6, 0.0, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-2.9, 0.5, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = "DRIVER_POINT"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {}
GT.WS.maxTargetDetectionRange = 6000;
GT.WS.smoke = {"SMOKE_03", "SMOKE_04", "SMOKE_02", "SMOKE_05", "SMOKE_01", "SMOKE_06"};

-- GT.WS[1]
local ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'CENTER_TOWER'
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-5), math.rad(75)},
                    };
GT.WS[ws].drawArgument1 = 0
GT.WS[ws].drawArgument2 = 1
GT.WS[ws].omegaY = math.rad(30)
GT.WS[ws].omegaZ = math.rad(40)
GT.WS[ws].reference_angle_Y = 0
GT.WS[ws].reference_angle_Z = math.rad(10)
GT.WS[ws].stabilizer = true;
GT.WS[ws].pointer = 'POINT_SIGHT_1';
GT.WS[ws].cockpit = {"BPK-2-42/BPK-2-42", 	{0.0, 0.0, 0.0}}

-- GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.automatic_gun_2A42);
__LN.sound = { cycle_shot = "Weapons/Automatic/2A42", end_burst = "Weapons/Automatic/2A42_End" };
__LN.fireAnimationArgument = 23;
__LN.PL[1].feedSlot = 1;
__LN.PL[2].feedSlot = 2;
__LN.BR = {{connector_name = 'POINT_GUN'}};
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

-- GT.WS[1].LN[2]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.PKT);
__LN.PL[1].ammo_capacity = 2000;
__LN.PL[1].portionAmmoCapacity = 2000;
__LN.PL[1].reload_time = 600;
__LN.PL[1].switch_on_delay = 0.1;
__LN.BR[1].connector_name = 'POINT_MGUN';
__LN.fireAnimationArgument = 45;
__LN.secondary = true;

-- GT.WS[2]
ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'CENTER_TOWER'
GT.WS[ws].base = 1
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-5), math.rad(20)},
                    };
GT.WS[ws].drawArgument1 = 25
GT.WS[ws].drawArgument2 = 26
GT.WS[ws].omegaY = math.rad(60)
GT.WS[ws].omegaZ = math.rad(30)
GT.WS[ws].pidY = {p=100, i=0.5, d=8, inn = 5};
GT.WS[ws].pidZ = {p=100, i=0.5, d=8, inn = 5};
GT.WS[ws].reference_angle_Y = 0
GT.WS[ws].reference_angle_Z = 0
GT.WS[ws].pointer = 'POINT_SIGHT_2';
GT.WS[ws].cockpit = { "9SH119M1/9SH119M1", {0.0, 0.0, 0.0 }, };

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Fagot)
__LN.BR = { {connector_name = 'POINT_ROCKET', drawArgument = 4}, }
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;


GT.Name = "BMP-2"
GT.DisplayName = _("IFV BMP-2")
GT.Rate = 10

GT.Sensors = { OPTIC = {"TKN-3B day", "TKN-3B night", -- командирский наблюдения
                        --"1PZ-3", -- командирский прицел
                        --"BPK-2-42 day", "BPK-2-42 night" -- наводчика
                        },
            };

GT.DetectionRange  = 0;
GT.airWeaponDist = GT.WS[1].LN[1].distanceMax;
GT.ThreatRange = GT.WS[2].LN[1].distanceMax;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_MissGun,wsType_GenericIFV,
                "IFV",
                "ATGM",
                };
GT.category = "Armor";
GT.InternalCargo = {
			nominalCapacity = 700,
			maximalCapacity = 700, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}