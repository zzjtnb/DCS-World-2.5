-- M1134 Stryker ATGM
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STRYKER);

GT.visual.shape = "M1134";
GT.visual.shape_dstr = "M1134_P1";

-- Turbine
GT.turbine = false;
-- Turbine

--chassis
GT.swing_on_run = false;
GT.toggle_alarm_state_interval = 4.0;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.6;

--Burning after hit
GT.visual.fire_size = 0.9; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.05, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 5000;
GT.WS.smoke = {"SMOKE_02", "SMOKE_05", "SMOKE_04", "SMOKE_07", "SMOKE_01", "SMOKE_06", "SMOKE_03", "SMOKE_08",};

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].pointer = 'POINT_SIGHT_01'
GT.WS[ws].angles_mech = {
                    {math.rad(180), math.rad(-180), math.rad(-7), math.rad(30)},
                    };
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-15), math.rad(-7), math.rad(30)},
                    {math.rad(-15), math.rad(-70), math.rad(-2), math.rad(30)},
                    {math.rad(-70), math.rad(-180), math.rad(-7), math.rad(30)},
                    };
GT.WS[ws].reloadAngleY = math.rad(35);
GT.WS[ws].reloadAngleZ = math.rad(30);
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].pidY = {p=100, i=0.1, d=10, inn=10};
GT.WS[ws].pidZ = {p=100, i=0.1, d=10, inn=10};
GT.WS[ws].omegaY = math.rad(70);
GT.WS[ws].omegaZ = math.rad(50);
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.TOW);
__LN.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
__LN.PL[1].ammo_capacity = 14;
__LN.PL[1].reload_time = 20*14;
__LN.PL[1].shot_delay = 10;

__LN.BR = { {connector_name = 'POINT_ROCKET_01', drawArgument = 4},
            {connector_name = 'POINT_ROCKET_02', drawArgument = 5}
        };
__LN.customViewPoint = { "genericMissileAT", {0.0, 0.0, 0.0}, };
__LN = nil;

ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_MGUN';
GT.WS[ws].angles = {
                    {math.rad(110), math.rad(-150), math.rad(-5), math.rad(40)},
                    };
GT.WS[ws].drawArgument1 = 25;
GT.WS[ws].drawArgument2 = 26;
GT.WS[ws].pidY = {p=100, i=0.1, d=10, inn=10};
GT.WS[ws].pidZ = {p=100, i=0.1, d=10, inn=10};
GT.WS[ws].omegaY = math.rad(120);
GT.WS[ws].omegaZ = math.rad(120);
GT.WS[ws].reference_angle_Y = 0;
GT.WS[ws].reference_angle_Z = 0;
GT.WS[ws].cockpit = { "IronSight/IronSight", {-1.1, 0.18, 0 }, };

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_M240C);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[2]);
__LN.PL[1].switch_on_delay = 6;
__LN.PL[1].ammo_capacity = 220;
__LN.PL[1].portionAmmoCapacity = 220;
__LN.PL[1].reload_time = 10
for i=2,5 do
    __LN.PL[i] = {};
    set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end;
__LN.BR[1].connector_name = 'POINT_MGUN';
__LN.fireAnimationArgument = 44;
__LN.sightMasterMode = 1
__LN = nil;

GT.Name = "M1134 Stryker ATGM";
GT.DisplayName = _("ATGM M1134 Stryker");
GT.Rate = 15;

GT.Sensors = { OPTIC = {"TAS4 TOW day", "TAS4 TOW night",
                        },
            };

GT.EPLRS = true

GT.DetectionRange  = 0;
GT.airWeaponDist = GT.WS[2].LN[1].distanceMax;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000204";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_MissGun,wsType_Stryker,
                "IFV",
                "ATGM",
                "Datalink"
                };
GT.category = "Armor";