-- MBT T-55A

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_tank);
set_recursive_metatable(GT.chassis, GT_t.CH_t.T55);

GT.armour_scheme = GT_t.T55_armour_scheme;

GT.visual.shape = "T-55";
GT.visual.shape_dstr = "T-55_p_1";

-- Turbine
GT.turbine = false;
-- Turbine

-- Crew

GT.crew_locale = "RUS";
GT.crew_members = {"gunner"};

-- Crew

--chassis
GT.swing_on_run = false;


GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.723;

--Burning after hit
GT.visual.fire_size = 0.9; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)
GT.visual.dust_pos = {2.9, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-2.8, 0.5, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.05, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 6000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-4), math.rad(17)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(17);
GT.WS[ws].omegaZ = math.rad(10);
GT.WS[ws].stabilizer = true;
GT.WS[ws].pointer = "POINT_SIGHT_01";
GT.WS[ws].cockpit = {'TSh2B-32P/TSh2B-32P', {0.1, 0.0, 0.0}}

--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.tank_gun_105mm); -- temporary, to fix, must be 100mm D-10T2C cannon
__LN.PL[1].ammo_capacity = 6;
__LN.PL[1].reload_time = 15 * 6
__LN.PL[1].shot_delay = 8.5;
__LN.BR[1] = {connector_name = 'POINT_GUN',
			recoilArgument = 23,
			recoilTime = 0.5};
__LN.PL[2] = {};
__LN.PL[2].ammo_capacity = 26;
__LN.PL[2].reload_time = 15 * 26
__LN.PL[2].automaticLoader = false;
__LN.PL[2].shot_delay = 13.5;
__LN.PL[2].shell_name = {"M68_105_AP"};
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

--GT.WS[1].LN[2]
__LN = add_launcher(GT.WS[ws], __LN); -- HE rounds
__LN.type = 6;
__LN.distanceMin = 20;
__LN.distanceMax = 8000;
__LN.PL[1].ammo_capacity = 2;
__LN.PL[1].reload_time = 15 * 2
__LN.PL[1].shot_delay = 8.5;
__LN.PL[1].shell_name = {"UOF_412_100HE"};
__LN.PL[2].ammo_capacity = 9;
__LN.PL[2].reload_time = 15 * 9
__LN.PL[2].shot_delay = 13.5;
__LN.PL[2].shell_name = {"UOF_412_100HE"};
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

--GT.WS[1].LN[3]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.PKT);-- coaxial
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[6]);
__LN.secondary = true;
for i=2,11 do
    __LN.PL[i] = {};
    set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end;
__LN.BR[1].connector_name = 'POINT_MGUN_01';
__LN.fireAnimationArgument = 45;

ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].base = 1;
GT.WS[ws].center = 'CENTER_MGUN';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(86), math.rad(-8), math.rad(40)},
                    {math.rad(86), math.rad(59), math.rad(20), math.rad(40)},
                    {math.rad(59), math.rad(-180), math.rad(-8), math.rad(40)},
                    };
GT.WS[ws].drawArgument1 = 25;
GT.WS[ws].drawArgument2 = 26;
GT.WS[ws].omegaY = math.rad(40);
GT.WS[ws].omegaZ = math.rad(30);
GT.WS[ws].pidY = {p=60,i=0.1,d=8,inn=5.5,};
GT.WS[ws].pidZ = {p=60,i=0.1,d=8,inn=5.5,};
GT.WS[ws].reference_angle_Y = math.pi;

-- ƒЎ ћ 12,7мм по 50 патронов в ленте
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_utes);
__LN.type = 10; -- AA Machinegun
__LN.BR[1].connector_name = 'POINT_MGUN';
__LN.fireAnimationArgument = 44;
__LN.customViewPoint = { "genericAAA", {-2.0, 0.2, 0 }, };
__LN = nil;

GT.Name = "T-55";
GT.DisplayName = _("MBT T-55");
GT.Rate = 10;

GT.Sensors = { OPTIC = {"TPKU-2B", "TPN1",
                        --"TSH-2-22 day",,
                        },
            };

GT.DetectionRange  = 0;
GT.airWeaponDist = GT.WS[2].LN[1].distanceMax;
GT.ThreatRange =  GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000001";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericTank,
                "Tanks",
                "Old Tanks",
                };
GT.category = "Armor";
