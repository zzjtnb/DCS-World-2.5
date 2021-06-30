-- MBT T-72B

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_tank);
set_recursive_metatable(GT.chassis, GT_t.CH_t.T72);

GT.visual.shape = "t-72";
GT.visual.shape_dstr = "T-72_p_1";

GT.CustomAimPoint = {0,1.3,0}

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
GT.visual.fire_size = 1.0; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200; --burning time (seconds)
GT.visual.dust_pos = {2.85, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.1, 0.55, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT"}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 6000;
GT.WS.smoke = {"SMOKE_02", "SMOKE_05", "SMOKE_04", "SMOKE_07", "SMOKE_01", "SMOKE_06", "SMOKE_03", "SMOKE_08",};

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(145), math.rad(-145), math.rad(-4), math.rad(14)},
                    {math.rad(-145), math.rad(145), math.rad(3.5), math.rad(14)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(20);
GT.WS[ws].omegaZ = math.rad(12);
GT.WS[ws].pointer = 'POINT_SIGHT_01';
GT.WS[ws].cockpit = {'_1G40/_1G40', {0.0, 0.0, 0.0 }}
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].pointer = "POINT_SIGHT_01";

--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.tank_gun_2A46);
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.beamWidth = math.rad(1);
__LN.BR[1] = {connector_name = 'POINT_GUN',
			recoilArgument = 23,
			recoilTime = 0.5};
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

--GT.WS[1].LN[2] - 125mm D-81 gun
__LN = add_launcher(GT.WS[ws], __LN);
__LN.type = 6; -- howitzer type
__LN.distanceMin = 20;
__LN.distanceMax = 8000;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 2;
__LN.PL[1].ammo_capacity = 7;
__LN.PL[1].reload_time = 20 * 7
__LN.PL[1].shell_name = {"2A46M_125_HE"};
__LN.PL[2].ammo_capacity = 10;
__LN.PL[2].reload_time = 15 * 10
__LN.PL[2].shot_delay = 30;
__LN.PL[2].shell_name = {"2A46M_125_HE"};
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;

--GT.WS[1].LN[3]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Svir);
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 4;
__LN.BR = {
			{connector_name = 'POINT_GUN',
			recoilArgument = 23,
			recoilTime = 0.5}
		  }
		  
--GT.WS[1].LN[4]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.PKT);-- coaxial
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[7]);
__LN.secondary = true;
__LN.beamWidth = math.rad(1);
for i=2,8 do
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
                    {math.rad(180), math.rad(-180), math.rad(-8), math.rad(63)},
                    };
GT.WS[ws].drawArgument1 = 25;
GT.WS[ws].drawArgument2 = 26;
GT.WS[ws].omegaY = math.rad(80);
GT.WS[ws].omegaZ = math.rad(60);
GT.WS[ws].pidY = {p=100,i=0.1,d=12,inn=50,};
GT.WS[ws].pidZ = {p=100,i=0.1,d=12,inn=50,};
GT.WS[ws].reference_angle_Y = math.pi;

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_utes);
__LN.type = 10; -- AA machinegun
__LN.BR[1].connector_name = 'POINT_MGUN';
__LN.fireAnimationArgument = 44;
__LN.customViewPoint = { "K10-T/K10-T_Sight", {-1.6, 0.19, 0.06} };
__LN = nil;

GT.Name = "T-72B";
GT.DisplayName = _("MBT T-72B");
GT.Rate = 17;

GT.Sensors = { OPTIC = {"TKN-3B day", "TKN-3B night",
                        --"TSH-2-22 day","BPK-2-42 night", -- T-72 TPN3-49 = BPK-2-42 night
                        },
            };

GT.DetectionRange  = 0;
GT.airWeaponDist = 3500
GT.ThreatRange = GT.WS[1].LN[3].distanceMax;
GT.mapclasskey = "P0091000001";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericTank,
                "Tanks",
                "Modern Tanks",
                "CustomAimPoint",
                };
GT.category = "Armor";
