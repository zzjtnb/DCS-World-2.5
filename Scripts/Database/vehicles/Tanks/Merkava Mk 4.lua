-- MBT Merkava Mk.4

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_tank);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MERKAVA_MK_4);
GT.chassis.canCrossRiver = true;
GT.armour_scheme = T55_armour_scheme;

GT.visual.shape = "Merkava_Mk_IV";
GT.visual.shape_dstr = "Merkava_Mk_IV_p_1";

-- Turbine
GT.turbine = false;
-- Turbine

-- Crew

GT.crew_locale = "IZR";
--GT.crew_members = {"commander", "gunner"};

-- Crew

--chassis
GT.swing_on_run = false;


GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.660;

--Burning after hit
GT.visual.fire_size = 0.9; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)
GT.visual.dust_pos = {3.8, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.1, 0.4, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT"}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 6000;
GT.WS.smoke = {"SMOKE_001", "SMOKE_008", "SMOKE_002", "SMOKE_011", "SMOKE_003", "SMOKE_012", "SMOKE_004", "SMOKE_007", "SMOKE_005", "SMOKE_010", "SMOKE_006", "SMOKE_009"};

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(120), math.rad(-120), math.rad(-9), math.rad(24.3)},
                    {math.rad(-120), math.rad(120), math.rad(0), math.rad(24.3)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].pidY = {p=100, i=0.0, d=14.0, inn = 10};
GT.WS[ws].pidZ = {p=100, i=0.0, d=14.0, inn = 10};
GT.WS[ws].omegaY = math.rad(24);
GT.WS[ws].omegaZ = math.rad(8);
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].pointer = "POINT_SIGHT_02";
GT.WS[ws].cockpit = {'Merkava_mk_4/Merkava_mk_4', {0.0, 0.0, 0.0 }}

--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.tank_gun_120mm);
__LN.beamWidth = math.rad(1);
__LN.reactionTime = 2;
__LN.PL[1].ammo_capacity = 7;
__LN.PL[1].reload_time = 15 * 7
__LN.PL[1].shot_delay = 6.5;
__LN.PL[2] = {};
__LN.PL[2].ammo_capacity = 22;
__LN.PL[2].reload_time = 15 * 22
__LN.PL[2].automaticLoader = false;
__LN.PL[2].shot_delay = 13.5;
__LN.PL[2].shell_name = {"M256_120_AP"};
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.BR[1] = {connector_name = 'POINT_GUN_01',
			recoilArgument = 23,
			recoilTime = 0.4};
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

--GT.WS[1].LN[3]
__LN = add_launcher(GT.WS[ws], __LN); -- HE rounds
__LN.beamWidth = math.rad(1);
__LN.type = 6;
__LN.distanceMin = 20;
__LN.distanceMax = 8000;
__LN.PL[1].ammo_capacity = 3;
__LN.PL[1].reload_time = 15 * 3
__LN.PL[1].shell_name = {"M256_120_HE"};
__LN.PL[2] = {};
__LN.PL[2].ammo_capacity = 16;
__LN.PL[2].reload_time = 15 * 16
__LN.PL[2].shell_name = {"M256_120_HE"};
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

--GT.WS[1].LN[2]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_MG3);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[6]);
__LN.beamWidth = math.rad(1);
--__LN.ammunition_reserve = 5300; -- 5500 total
__LN.BR[1].connector_name = 'POINT_MG_01';
__LN.PL[1].ammo_capacity = 200
for i = 2,25 do
	__LN.PL[i] = {}
	set_recursive_metatable(__LN.PL[i], __LN.PL[1])
end
__LN.fireAnimationArgument = 45;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

--GT.WS[2]
ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].base = 1;
--GT.WS[ws].center = 'CENTER_MGUN';
GT.WS[ws].pos = {0.0, 1.0, 0.5}
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-9), math.rad(45)},
                    };
GT.WS[ws].drawArgument1 = 25;
GT.WS[ws].drawArgument2 = 26;
GT.WS[ws].omegaY = math.rad(50);
GT.WS[ws].omegaZ = math.rad(50);
GT.WS[ws].pidY = {p=100,i=0.1,d=12,inn=50,};
GT.WS[ws].pidZ = {p=100,i=0.1,d=12,inn=50,};
GT.WS[ws].cockpit = {'IronSight/IronSight', {-1.2, 0.1, 0 }}

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_7_62);
__LN.type = 10; -- AA Machinegun
__LN.PL[1].ammo_capacity = 200
__LN.PL[1].portionAmmoCapacity = 200;
for i = 2,25 do
	__LN.PL[i] = {}
	set_recursive_metatable(__LN.PL[i], __LN.PL[1])
end
__LN.fireAnimationArgument = 44;
__LN.BR[1].connector_name = 'POINT_MG_02';
__LN.sightMasterMode = 1;
__LN = nil;

GT.Name = "Merkava_Mk4";
GT.DisplayName = _("MBT Merkava Mk. 4");
GT.Rate = 10;

GT.Sensors = { OPTIC = {"TRP-2A day", "TRP-2A night"}, };

GT.DetectionRange  = 0;
GT.airWeaponDist = 1200
GT.ThreatRange =  GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000001";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericTank,
                "Tanks",
                "Modern Tanks",
				"Datalink"
                };
GT.category = "Armor";
