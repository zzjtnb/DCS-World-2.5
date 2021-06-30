-- MBT T-90

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_tank);
set_recursive_metatable(GT.chassis, GT_t.CH_t.T72);
GT.chassis.life = 30;

GT.visual.shape = "T-90";
GT.visual.shape_dstr = "T-90_p_1";

GT.CustomAimPoint = {0,1.3,0}

-- Turbine
GT.turbine = true;
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
GT.visual.dust_pos = {3.35, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.0, 0.5, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.0, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"


-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 6000;
GT.WS.smoke = {"SMOKE_02", "SMOKE_05", "SMOKE_04", "SMOKE_07", "SMOKE_01", "SMOKE_06", "SMOKE_03", "SMOKE_08","SMOKE_09","SMOKE_10","SMOKE_11","SMOKE_12"};

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(126), math.rad(-135), math.rad(-6), math.rad(13.5)},
                    {math.rad(-135), math.rad(126), math.rad(0), math.rad(13.5)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(20);
GT.WS[ws].omegaZ = math.rad(12);
GT.WS[ws].pointer = "POINT_SIGHT_01"
GT.WS[ws].cockpit = {'_1G46/_1G46', {0.0, 0.0, 0.0 }}
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;

-- Ammunition: 22 armor piercing, 6 missiles, 14 HE rounds - 42 rounds total

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
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Reflex); -- ATGM
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
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_7_62);-- coaxial
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[7]);
__LN.secondary = true;
__LN.beamWidth = math.rad(1);
__LN.PL[1].ammo_capacity = 250;
__LN.PL[1].portionAmmoCapacity = 250;
__LN.PL[1].switch_on_delay = 12;
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
                    {math.rad(90), math.rad(-90), math.rad(-8), math.rad(63)},
                    };
GT.WS[ws].drawArgument1 = 25;
GT.WS[ws].drawArgument2 = 26;
GT.WS[ws].omegaY = math.rad(80);
GT.WS[ws].omegaZ = math.rad(60);
GT.WS[ws].pidY = {p=100,i=0.1,d=12,inn=50,};
GT.WS[ws].pidZ = {p=100,i=0.1,d=12,inn=50,};
GT.WS[ws].pointer = "POINT_SIGHT_02";
GT.WS[ws].cockpit = {"PZU-7/PZU-7", {0.0, 0.0, 0 }}

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_utes);
__LN.type = 10; -- AA machinegun
__LN.PL = {{}, {}};
set_recursive_metatable(__LN.PL[1], GT_t.LN_t.machinegun_12_7_utes.PL[1]);
__LN.PL[1].ammo_capacity = 150;
__LN.PL[1].portionAmmoCapacity = 150;
__LN.PL[1].switch_delay = 15; -- Commander has to open the hatch, remove the empty box, take the new one, put it on the place (mass 25 kg) and shut the hatch
set_recursive_metatable(__LN.PL[2], __LN.PL[1]);
__LN.BR[1].connector_name = 'POINT_MGUN';
__LN.fireAnimationArgument = 44;
__LN.sightMasterMode = 1;
__LN = nil;

GT.Name = "T-90";
GT.DisplayName = _("MBT T-90");
GT.Rate = 17;

GT.Sensors = { OPTIC = {"TKN-4S day", "TKN-4S night",
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
