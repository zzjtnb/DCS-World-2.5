-- M1128 Stryker MGS

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STRYKER);
GT.chassis.life = 3;
GT.gear_type = 1;

GT.visual.shape = "M1128";
GT.visual.shape_dstr = "M1128_P1";

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
GT.sensor.height = 2.6;
GT.airWeaponDist = 2500

--Burning after hit
GT.visual.fire_size = 0.8; --relative burning size
GT.visual.fire_pos[1] = -2.0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.05, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 6000;
GT.WS.smoke = {"SMOKE_02", "SMOKE_05", "SMOKE_04", "SMOKE_07", "SMOKE_01", "SMOKE_06", "SMOKE_03", "SMOKE_08",};

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(133), math.rad(-6), math.rad(15)},
                    {math.rad(133), math.rad(27), math.rad(-6), math.rad(18)},
                    {math.rad(27), math.rad(18), math.rad(-4), math.rad(18)},
                    {math.rad(18), math.rad(10), math.rad(0), math.rad(18)},
                    {math.rad(10), math.rad(-36), math.rad(-3.6), math.rad(18)},
                    {math.rad(-36), math.rad(-180), math.rad(-6), math.rad(18)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].pointer = 'POINT_SIGHT_01';
GT.WS[ws].omegaY = math.rad(40);
GT.WS[ws].omegaZ = math.rad(25);
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;

--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_M240C);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[7]);
__LN.beamWidth = math.rad(1);
__LN.BR[1].connector_name = 'POINT_MGUN_02';
__LN.customViewPoint = { "genericAAA", {0.0, 0.0, 0.0} };

--GT.WS[1].LN[2]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.tank_gun_105mm);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[7]);
__LN.beamWidth = math.rad(1);
__LN.PL[1].ammo_capacity = 12;
__LN.PL[1].reload_time = 20 * 12
__LN.PL[1].automaticLoader = true;
__LN.PL[1].virtualStwID = 1;
__LN.BR[1] = {connector_name = 'POINT_GUN',
			recoilArgument = 23,
			recoilTime = 0.5};
__LN.customViewPoint = { "genericTankblue", {0.0, 0.0, 0.0}};

--GT.WS[1].LN[3]
__LN = add_launcher(GT.WS[ws], __LN); -- HE rounds
__LN.type = 6;
__LN.distanceMin = 20;
__LN.distanceMax = 5000;
__LN.PL[1].ammo_capacity = 6;
__LN.PL[1].reload_time = 20 * 6
__LN.PL[1].shell_name = {"HESH_105"};
__LN.PL[1].virtualStwID = 1;
__LN.customViewPoint = { "genericTankblueHE", {0.0, 0.0, 0.0}};

ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].base = 1;
GT.WS[ws].center = 'CENTER_MGUN_RIGTH_ROTATION';
GT.WS[ws].angles = {
                    {math.rad(20), -math.pi, math.rad(-10), math.rad(35)},
                    };
GT.WS[ws].drawArgument1 = 25;
GT.WS[ws].drawArgument2 = 26;
GT.WS[ws].pidY = {p=60, i=0.1, d=8.0, inn = 5.5};
GT.WS[ws].pidZ = {p=60, i=0.1, d=8.0, inn = 5.5};
GT.WS[ws].omegaY = math.rad(60);
GT.WS[ws].omegaZ = math.rad(60);

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[1]);
__LN.fireAnimationArgument = 44
__LN.BR[1].connector_name = 'POINT_MGUN'
__LN.customViewPoint = { "genericAAA", {-1.7, 0.1, 0 }, };

GT.Name = "M1128 Stryker MGS";
GT.DisplayName = _("SPG M1128 Stryker MGS");
GT.Rate = 15;

GT.Sensors = { OPTIC = {"MGS sight day", "MGS sight night"}, } -- temporary

GT.EPLRS = true

GT.DetectionRange  = 0;
GT.airWeaponDist = GT.WS[2].LN[1].distanceMax
GT.ThreatRange =  4000; -- HE rounds (bot)
GT.mapclasskey = "P0091000001";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_Stryker,
				"IFV",
                "Tanks",
                "Modern Tanks",
                "Datalink"
                };
GT.category = "Armor";
