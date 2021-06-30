-- Leopard-2A5

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_tank);
set_recursive_metatable(GT.chassis, GT_t.CH_t.LEOPARD2);

GT.visual.shape = "leopard-2";
GT.visual.shape_dstr = "Leopard-2_p_1";


-- Turbine
GT.turbine = false;
-- Turbine

-- Crew

GT.crew_locale = "ENG";
GT.crew_members = {"commander", "gunner"};

-- Crew

--chassis
GT.swing_on_run = false;


GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.738;

--Burning after hit
GT.visual.fire_size = 1.0; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200; --burning time (seconds)
GT.visual.dust_pos = {3.95, 0.2, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-4.0, 0.8, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.05, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 6000;
GT.WS.smoke = {"SMOKE_01", "SMOKE_02", "SMOKE_03", "SMOKE_04", "SMOKE_05", "SMOKE_06", "SMOKE_07", "SMOKE_08",
                "SMOKE_09", "SMOKE_10", "SMOKE_11", "SMOKE_12", "SMOKE_13", "SMOKE_14", "SMOKE_15", "SMOKE_16"};

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].pointer = "POINT_SIGHT";
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(140), math.rad(-140), math.rad(-9), math.rad(19)},
                    {math.rad(-140), math.rad(140), math.rad(0), math.rad(19)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(48);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].pidY = {p=100, i=0.0, d=14.0, inn = 10};
GT.WS[ws].pidZ = {p=100, i=0.0, d=14.0, inn = 10};
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].pointer = "POINT_SIGHT_01"; -- connector name
GT.WS[ws].cockpit = { "EMES-15/EMES-15", {0.1, 0.0, 0.0 }, };

--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.tank_gun_120mm);
__LN.beamWidth = math.rad(1);
__LN.BR[1] = {connector_name = 'POINT_GUN',
			recoilArgument = 23,
			recoilTime = 0.5};
__LN.PL[1].ammo_capacity = 9
__LN.PL[1].reload_time = 15 * 9
__LN.PL[1].shot_delay = 6
__LN.PL[2].ammo_capacity = 16
__LN.PL[2].reload_time = 15 * 16
__LN.PL[2].shot_delay = 10
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;
--GT.WS[1].LN[2]
__LN = add_launcher(GT.WS[ws], __LN); -- HE gun
__LN.type = 6;
__LN.distanceMin = 20;
__LN.distanceMax = 8000;
__LN.PL[1].shell_name = {"M256_120_HE"};
__LN.PL[1].ammo_capacity = 6;
__LN.PL[1].reload_time = 15 * 6
__LN.PL[1].shot_delay = 6
__LN.PL[2].shell_name = {"M256_120_HE"};
__LN.PL[2].ammo_capacity = 11;
__LN.PL[2].reload_time = 15 * 11
__LN.PL[2].shot_delay = 10
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 2;

--GT.WS[1].LN[3]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_MG3);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[7]);
__LN.beamWidth = math.rad(1);
__LN.BR[1].connector_name = 'POINT_MGUN_01';
__LN.fireAnimationArgument = 45;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 3;
for i=2,5 do
    __LN.PL[i] = {};
    set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end;
__LN = nil;

GT.Name = "Leopard-2";
GT.DisplayName = _("MBT Leopard-2");
GT.Rate = 20;

GT.Sensors = { OPTIC = {"EMES 15 day", "EMES 15 night",
                        --"PERI-R17A2 day", "PERI-R17A2 night",
                        },
            };

GT.DetectionRange  = 0;
GT.airWeaponDist = 1500
GT.ThreatRange =  GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000001";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericTank,
                "Tanks",
                "Modern Tanks",
                };
GT.category = "Armor";
