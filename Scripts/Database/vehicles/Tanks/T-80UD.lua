-- MBT T-80UD

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_tank);
set_recursive_metatable(GT.chassis, GT_t.CH_t.T80);

GT.visual.shape = "t-80ud";
GT.visual.shape_dstr = "T-80ud_p_1";

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
GT.visual.dust_pos = {3.0, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-2.9, 0.5, -GT.chassis.Z_gear_2}

GT.driverViewPoint = {1.885, 1.36, 0.0};
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems
GT.WS = {};
GT.WS.maxTargetDetectionRange = 6000;
GT.WS.smoke = {"SMOKE_01", "SMOKE_02", "SMOKE_03", "SMOKE_04", "SMOKE_01", "SMOKE_02", "SMOKE_03", "SMOKE_04", };

local ws = 0;
--GT.WS[1]-----------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-4), math.rad(18)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(24);
GT.WS[ws].omegaZ = math.rad(15);
GT.WS[ws].pointer = 'POINT_SIGHT_01'
GT.WS[ws].cockpit = {'_1G46/_1G46', {0.1, 0.0, 0.0}}
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;


--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.tank_gun_2A46); -- gun
__LN.beamWidth = math.rad(1);
__LN.BR[1] = {connector_name = 'POINT_GUN',
			recoilArgument = 23,
			recoilTime = 0.5};
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;

--GT.WS[1].LN[2]
__LN = add_launcher(GT.WS[ws], __LN);
__LN.type = 6; -- howitzer type
__LN.distanceMin = 20;
__LN.distanceMax = 8000;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 2;
__LN.PL[1].ammo_capacity = 7;
__LN.PL[1].reload_time = 20 * 7
__LN.PL[1].shell_name = {"2A46M_125_HE"};
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].ammo_capacity = 10;
__LN.PL[2].reload_time = 15 * 10;
__LN.PL[2].shot_delay = 30;
__LN.PL[2].shell_name = {"2A46M_125_HE"};
__LN.PL[2].virtualStwID = 2;

--GT.WS[1].LN[3]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Reflex); -- ATGM
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 4;
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.BR = {
			{connector_name = 'POINT_GUN',
			recoilArgument = 23,
			recoilTime = 0.5}
		  }

--GT.WS[1].LN[4]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.PKT); -- coaxial
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[7]);
__LN.secondary = true;
__LN.beamWidth = math.rad(1);
for i=2,5 do
    __LN.PL[i] = {};
    set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end;
__LN.BR[1].connector_name = 'POINT_MGUN_01';
__LN.fireAnimationArgument = 45;

-- GT.WS[2]--------------------
ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].base = 1;
GT.WS[ws].center = 'CENTER_MGUN';
GT.WS[ws].angles = {
                    {math.rad(80), math.rad(-80), math.rad(-15), math.rad(63)},
                    };
GT.WS[ws].drawArgument1 = 25;
GT.WS[ws].drawArgument2 = 26;
GT.WS[ws].omegaY = math.rad(120);
GT.WS[ws].omegaZ = math.rad(120);
GT.WS[ws].pidY = {p=100,i=0.1,d=12,inn=50,};
GT.WS[ws].pidZ = {p=100,i=0.1,d=12,inn=50,};
GT.WS[ws].reference_angle_Z = math.rad(10);

local __LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_utes);
__LN.type = 10; -- AA Machinegun
for i=7,9 do
    __LN.PL[i] = {};
    set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end;
__LN.BR[1].connector_name = 'POINT_MGUN';
__LN.fireAnimationArgument = 44;
__LN.customViewPoint = { "PZU-7/PZU-7", {-1.85, 0.1, 0 }, };
__LN = nil;

GT.Name = "T-80UD";
GT.DisplayName = _("MBT T-80U");
GT.Rate = 20;

GT.Sensors = { OPTIC = {"TKN-3B day", "TKN-3B night",
                        --"1G42", "BPK-2-42 night", -- T-80Á TPN3-49 = BPK-2-42 night
                        },
            };

GT.DetectionRange  = 0;
GT.airWeaponDist = 3500
GT.ThreatRange = GT.WS[1].LN[3].distanceMax;
GT.mapclasskey = "P0091000001";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericTank,
                "Tanks",
                "Modern Tanks",
                };
GT.category = "Armor";
