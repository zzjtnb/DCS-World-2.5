-- BMP-3
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV)
set_recursive_metatable(GT.chassis, GT_t.CH_t.BMP3);

GT.visual.shape = "BMP-3"
GT.visual.shape_dstr = "BMP-3_P_1"

-- Turbine
GT.turbine = false;
-- Turbine

--chassis
GT.swing_on_run = false

GT.sensor = {}
set_recursive_metatable(GT.sensor, GT_t.SN_visual)
GT.sensor.height = 2.45

--Burning after hit
GT.visual.fire_size = 1.0 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1100 --burning time (seconds)
GT.visual.dust_pos = {3.0, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.5, 0.8, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.05, -0.04, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {}
GT.WS.maxTargetDetectionRange = 10000;
GT.WS.smoke = {"SMOKE_03", "SMOKE_04", "SMOKE_02", "SMOKE_05", "SMOKE_01", "SMOKE_06"};

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-2), math.rad(60)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(40);
GT.WS[ws].omegaZ = math.rad(50);
GT.WS[ws].reference_angle_Z = math.rad(3);
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].pointer = 'POINT_SIGHT_01';
GT.WS[ws].cockpit = { "BMP-3/BMP-3_gunner", {0.0, 0.0, 0.0 } };

--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.PKT); --coaxial machinegun
__LN.distanceMaxForFCS = 2000;
__LN.PL[1].ammo_capacity = 2000;
__LN.PL[1].portionAmmoCapacity = 2000;
__LN.PL[1].reload_time = 600;
__LN.PL[1].switch_on_delay = 0.1;
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[11]);
__LN.beamWidth = math.rad(1);
__LN.BR[1].connector_name = 'POINT_MGUN_01';
__LN.fireAnimationArgument = 45;
__LN.secondary = true;

--GT.WS[1].LN[2]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.automatic_gun_2A72); --30mm autocannon
__LN.distanceMaxForFCS = 4000;
__LN.PL[1].feedSlot = 1;
__LN.PL[2].feedSlot = 2;
__LN.beamWidth = math.rad(1);
__LN.BR = {{connector_name = 'POINT_GUN_01',
			recoilArgument = 26,
			recoilTime = 0.1}
		  };
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

--GT.WS[1].LN[3]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.gun_2A70); -- 100mm gun
__LN.distanceMaxForFCS = 4800;
__LN.beamWidth = math.rad(1);
__LN.BR = {{connector_name = 'POINT_GUN',
			recoilArgument = 23,
			recoilTime = 0.3}
		  };
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 3;

--GT.WS[1].LN[4]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t._9M117); -- ATGM
__LN.BR = {{connector_name = 'POINT_GUN',
			recoilArgument = 23,
			recoilTime = 0.3}
		  };
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 4;

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'CENTER_MGUN_R'
GT.WS[ws].angles = {
                    {math.rad(5), math.rad(-30), math.rad(-5), math.rad(15)},
                    };
GT.WS[ws].drawArgument1 = 37
GT.WS[ws].drawArgument2 = 36
GT.WS[ws].omegaY = math.rad(20)
GT.WS[ws].omegaZ = math.rad(10)

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_7_62);
__LN.PL[1].switch_on_delay = 15;
__LN.PL[1].ammo_capacity = 250;
__LN.PL[1].portionAmmoCapacity = 250;
__LN.PL[1].reload_time = 15;
for i = 2,4 do
	__LN.PL[i] = {};
	set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end
__LN.BR[1].connector_name = 'POINT_MGUN_R';
__LN.fireAnimationArgument = 46;

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT.WS[ws-1]);
GT.WS[ws].center = 'CENTER_MGUN_L'
GT.WS[ws].angles = {
                    {math.rad(30), math.rad(-5), math.rad(-5), math.rad(15)},
                    };
GT.WS[ws].drawArgument1 = 39
GT.WS[ws].drawArgument2 = 38
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_MGUN_L';
GT.WS[ws].LN[1].fireAnimationArgument = 47;

GT.Name = "BMP-3"
GT.DisplayName = _("IFV BMP-3")
GT.Rate = 15;

GT.Sensors = { OPTIC = {"TKN-3B day", "TKN-3B night", -- командира
                        --"1PZ-3", -- командира дополнительный
                        --"1K13-2 day", "1K13-2 night", -- наводчика
                        --"PPB-2", -- наводчика дополнительный
                        },
            };

GT.DetectionRange  = 0;
GT.airWeaponDist = GT.WS[1].LN[2].distanceMax;
GT.ThreatRange = GT.WS[1].LN[4].distanceMax;
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