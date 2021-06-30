-- M-2 Bradley
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.M2);

GT.visual.shape = "m-2";
GT.visual.shape_dstr = "M-2_P1";

GT.armour_scheme = {
						hull_elevation = { {-90, 45, 1 }, { 45, 90, 0.6 }, },
						hull_azimuth = { {0, 30, 1.1 }, { 30, 150, 1.0 }, { 150,180, 1.0 }, },
						turret_elevation = { {-90,18, 1 }, { 18,90, 0.5 }, },
						turret_azimuth = { {0,180, 1 }, }
					};

-- Turbine
GT.turbine = false;
-- Turbine

--chassis
GT.swing_on_run = false;
GT.toggle_alarm_state_interval = 4.0;


GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.58;

--Burning after hit
GT.visual.fire_size = 0.9; --relative burning size
GT.visual.fire_pos[1] = 1.0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0.762; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1100; --burning time (seconds)
GT.visual.dust_pos = {3.0, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-2.8, 0.5, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.04, 0.02, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 5000;
GT.WS.smoke = {"SMOKE_02", "SMOKE_05", "SMOKE_04", "SMOKE_07", "SMOKE_01", "SMOKE_06", "SMOKE_03", "SMOKE_08",};

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-5), math.rad(59)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(60);
GT.WS[ws].omegaZ = math.rad(30);
GT.WS[ws].reloadAngleY = math.rad(30);
GT.WS[ws].reloadAngleZ = math.rad(30);
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].pointer = 'POINT_SIGHT_01';
GT.WS[ws].cockpit = {"Bradley_ODS/Bradley_ODS", {0.0, 0.0, 0.0} }

--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.automatic_gun_25mm);
__LN.beamWidth = math.rad(1);
__LN.PL[1].feedSlot = 1;
__LN.PL[1].ammo_capacity = 150;
__LN.PL[1].portionAmmoCapacity = 150;
__LN.PL[1].reload_time = 40;
for i = 2, 3 do
    __LN.PL[i] = {};
    set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end;
__LN.PL[4] = {};
set_recursive_metatable(__LN.PL[4], __LN.PL[1]);
__LN.PL[4].feedSlot = 2;
__LN.PL[4].shell_name = {"M242_25_AP_M791"};
for i = 5, 6 do
    __LN.PL[i] = {};
    set_recursive_metatable(__LN.PL[i], __LN.PL[4]);
end;
__LN.BR[1] = {connector_name = 'POINT_GUN',
			recoilArgument = 23,
			recoilTime = 0.2};
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

-- GT.WS[1].LN[2]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_M240C);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[11]);
__LN.beamWidth = math.rad(1);
__LN.BR[1].connector_name = 'POINT_GUN_01';
__LN.fireAnimationArgument = 45;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 3;
__LN = nil;

--GT.WS[1].LN[3]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.TOW);
__LN.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
__LN.PL[1].ammo_capacity = 7;
__LN.PL[1].reload_time = 7*20;
__LN.BR = { {connector_name = 'POINT_ROCKET_01'},
            {connector_name = 'POINT_ROCKET_02'}
        };
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 4;

GT.Sensors = { OPTIC = {"M2 sight day", "M2 sight night",
                        },
            };

GT.Name = "M-2 Bradley";
GT.Aliases  = {"M2A2 Bradley"}
GT.DisplayName = _("IFV M2A2 Bradley");
GT.Rate = 15;

GT.EPLRS = true;

GT.DetectionRange  = 0;
GT.airWeaponDist = GT.WS[1].LN[1].distanceMax;
GT.ThreatRange = GT.WS[1].LN[3].distanceMax;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_MissGun,wsType_GenericIFV,
                "IFV",
                "ATGM",
                "Datalink"
                };
GT.category = "Armor";

GT.InternalCargo = {
			nominalCapacity = 600,
			maximalCapacity = 600, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}