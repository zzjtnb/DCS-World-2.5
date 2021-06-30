-- MBT Leopard1A3

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_tank);
set_recursive_metatable(GT.chassis, GT_t.CH_t.LEOPARD1);
GT.chassis.canCrossRiver = true;
GT.armour_scheme = T55_armour_scheme;

GT.visual.shape = "LEOPARD-1A3";
GT.visual.shape_dstr = "LEOPARD-1A3_P_1";

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
GT.sensor.height = 3.27;

--Burning after hit
GT.visual.fire_size = 0.9; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)
GT.visual.dust_pos = {3.05, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.2, 0.6, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT"}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 6000;
GT.WS.smoke = {"SMOKE_04", "SMOKE_05", "SMOKE_03", "SMOKE_06", "SMOKE_02", "SMOKE_07", "SMOKE_01", "SMOKE_08",};

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(140), math.rad(-140), math.rad(-9), math.rad(19)},
                    {math.rad(-140), math.rad(140), math.rad(0), math.rad(19)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].pidY = {p=100, i=0.0, d=14.0, inn = 10};
GT.WS[ws].pidZ = {p=100, i=0.0, d=14.0, inn = 10};
GT.WS[ws].omegaY = math.rad(24);
GT.WS[ws].omegaZ = math.rad(4);
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].pointer = "POINT_SIGHT_01";

--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.tank_gun_105mm);
__LN.beamWidth = math.rad(1);
__LN.reactionTime = 2;
__LN.PL[1].ammo_capacity = 8;
__LN.PL[1].reload_time = 15 * 8
__LN.PL[1].shot_delay = 8.5;
__LN.PL[2] = {};
__LN.PL[2].ammo_capacity = 24;
__LN.PL[2].reload_time = 15 * 24
__LN.PL[2].automaticLoader = false;
__LN.PL[2].shot_delay = 13.5;
__LN.PL[2].shell_name = {"M68_105_AP"};
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.BR[1] = {connector_name = 'POINT_GUN',
			recoilArgument = 23,
			recoilTime = 0.4};
__LN.customViewPoint = { "genericTankblue", {0.03, 0.0, 0.0} };

--GT.WS[1].LN[3]
__LN = add_launcher(GT.WS[ws], __LN); -- HE rounds
__LN.type = 6;
__LN.distanceMin = 20;
__LN.distanceMax = 8000;
__LN.PL[1].ammo_capacity = 4;
__LN.PL[1].reload_time = 15 * 4
__LN.PL[1].shell_name = {"HESH_105"};
__LN.PL[2] = {};
__LN.PL[2].ammo_capacity = 14;
__LN.PL[2].reload_time = 15 * 14
__LN.PL[2].shell_name = {"HESH_105"};
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.customViewPoint = { "genericTankblueHE", {0.03, 0.0, 0.0} };

--GT.WS[1].LN[2]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_MG3);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[6]);
__LN.beamWidth = math.rad(1);
--__LN.ammunition_reserve = 5300; -- 5500 total
__LN.BR[1].connector_name = 'POINT_MGUN_01';
__LN.fireAnimationArgument = 45;
__LN.customViewPoint = { "genericAAA", {0.03, 0.0, 0.0} };
__LN = nil;

GT.Name = "Leopard1A3";
GT.Aliases = {"LEO1A3"}
GT.DisplayName = _("MBT Leopard1A3");
GT.Rate = 10;

GT.Sensors = { OPTIC = {"TRP-2A day", "TRP-2A night"}, };

GT.DetectionRange  = 0;
GT.airWeaponDist = 1500
GT.ThreatRange =  GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000001";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericTank,
                "Tanks",
                "Old Tanks",
                };
GT.category = "Armor";
