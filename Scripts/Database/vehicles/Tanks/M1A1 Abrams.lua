-- M1A1 Abrams

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_tank);

GT.armour_scheme = {
					hull_azimuth = { {0,35,5.2}, {35,80,1.3}, {80,120,1.0}, {120,180,0.7}},
					hull_elevation = { {-90,-45, 0.005}, {-45,14,1.3}, {14,25,1.0}, {25,90,0.5}, },

					turret_azimuth = { {0,56,5.2}, {56,150,3.6}, {150,180,0.8}, },
					turret_elevation = { {-90,45,1}, {45,90,0.2}, }
					};
set_recursive_metatable(GT.chassis, GT_t.CH_t.M1); -- armour_thickness = 0.1

GT.DM = {
	{ area_name = "GUN_MASK", 			armour = {width=0.400}},
	{ area_name = "TURRET_FRONT", 		armour = {width=0.750}},
	{ area_name = "TURRET_LEFT", 		armour = {width=0.220}},
	{ area_name = "TURRET_RIGHT", 		armour = {width=0.220}},
	{ area_name = "TURRET_TOP", 		armour = {width=0.020}},
	{ area_name = "TURRET_BOTTOM", 		armour = {width=0.020}},
	{ area_name = "TURRET_BACK", 		armour = {width=0.040}},
	{ area_name = "BODY_FRONT", 		armour = {width=0.800}},
	{ area_name = "BODY", 				armour = {width=0.060}},
	{ area_name = "HATCH", 				armour = {width=0.060}},
	{ area_name = "BODY_LEFT_FRONT", 	armour = {width=0.260}},
	{ area_name = "BODY_LEFT_CENTER",	armour = {width=0.150}},
	{ area_name = "BODY_LEFT_BACK",		armour = {width=0.055}},
	{ area_name = "BODY_RIGHT_FRONT", 	armour = {width=0.260}},
	{ area_name = "BODY_RIGHT_CENTER",	armour = {width=0.150}},
	{ area_name = "BODY_RIGHT_BACK",	armour = {width=0.055}},
	{ area_name = "BODY_BACK", 			armour = {width=0.040}},
	{ area_name = "ENGINE", 			armour = {width=0.020}},
	{ area_name = "UNDERTURRET_RING", 	armour = {width=0.200}},
	{ area_name = "MUDGUARD_L", 		armour = {width=1000.0}},
	{ area_name = "MUDGUARD_R", 		armour = {width=1000.0}},
	{ area_name = "WHEEL_L_1",	 		armour = {width=1000.0}},
	{ area_name = "WHEEL_L_2",	 		armour = {width=1000.0}},
	{ area_name = "WHEEL_L_3",	 		armour = {width=1000.0}},
	{ area_name = "WHEEL_L_4",	 		armour = {width=1000.0}},
	{ area_name = "WHEEL_L_5",	 		armour = {width=1000.0}},
	{ area_name = "WHEEL_L_6",	 		armour = {width=1000.0}},
	{ area_name = "WHEEL_L_7",	 		armour = {width=1000.0}},
	{ area_name = "WHEEL_L_8",	 		armour = {width=1000.0}},
	{ area_name = "WHEEL_L_9",	 		armour = {width=1000.0}},
	{ area_name = "WHEEL_R_1",	 		armour = {width=1000.0}},
	{ area_name = "WHEEL_R_2",	 		armour = {width=1000.0}},
	{ area_name = "WHEEL_R_3",	 		armour = {width=1000.0}},
	{ area_name = "WHEEL_R_4",	 		armour = {width=1000.0}},
	{ area_name = "WHEEL_R_5",	 		armour = {width=1000.0}},
	{ area_name = "WHEEL_R_6",	 		armour = {width=1000.0}},
	{ area_name = "WHEEL_R_7",	 		armour = {width=1000.0}},
	{ area_name = "WHEEL_R_8",	 		armour = {width=1000.0}},
	{ area_name = "WHEEL_R_9",	 		armour = {width=1000.0}},
}

GT.visual.shape = "m-1";
GT.visual.shape_dstr = "M-1_p_1";

--chassis
GT.swing_on_run = false;

-- Turbine
GT.turbine = true;
-- Turbine

-- Crew

GT.crew_locale = "ENG";
GT.crew_members = {"commander", "gunner"};

-- Crew

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.713;

--Burning after hit
GT.visual.fire_size = 1.0; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200; --burning time (seconds)
GT.visual.dust_pos = {3.9, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.8, 0.7, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.05, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems
GT.WS = {};
GT.WS.maxTargetDetectionRange = 6000;
GT.WS.smoke = {"SMOKE_01", "SMOKE_02", "SMOKE_03", "SMOKE_04", "SMOKE_01", "SMOKE_02", "SMOKE_03", "SMOKE_04", "SMOKE_01", "SMOKE_02", "SMOKE_03", "SMOKE_04", };

--GT.WS[1]
local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(133), math.rad(-133), math.rad(-10), math.rad(20)},
                    {math.rad(-133), math.rad(133), math.rad(1), math.rad(20)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(42);
GT.WS[ws].omegaZ = math.rad(42);

GT.WS[ws].pidY = {p=100, i=0.0, d=14.0, inn = 10};
GT.WS[ws].pidZ = {p=100, i=0.0, d=14.0, inn = 10};
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].pointer = "POINT_SIGHT";
GT.WS[ws].cockpit = { "GPS/GPS", {0.1, 0.0, 0.0 }, };

--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.tank_gun_120mm);
__LN.distanceMaxForFCS = 5000;
__LN.beamWidth = math.rad(1);
__LN.BR[1]= {connector_name = 'POINT_GUN',
			recoilArgument = 23,
			recoilTime = 0.5};
__LN.PL[1].ammo_capacity = 11
__LN.PL[1].reload_time = 15 * 11;
__LN.PL[1].shot_delay = 6
__LN.PL[2].ammo_capacity = 14
__LN.PL[2].reload_time = 15 * 14;
__LN.PL[2].shot_delay = 18
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;
--GT.WS[1].LN[2]
__LN = add_launcher(GT.WS[ws], __LN); -- HE rounds launcher
__LN.type = 6;
__LN.distanceMin = 20;
__LN.distanceMax = 8000;
__LN.distanceMaxForFCS = 5000;
__LN.PL[1].ammo_capacity = 7;
__LN.PL[1].reload_time = 15 * 6;
__LN.PL[1].shot_delay = 6;
__LN.PL[1].shell_name = {"M256_120_HE"};
__LN.PL[2].ammo_capacity = 10
__LN.PL[2].reload_time = 15 * 10;
__LN.PL[2].shot_delay = 18;
__LN.PL[2].shell_name = {"M256_120_HE"};
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 2;
--GT.WS[1].LN[3]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_M240C); -- coaxial
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[7]);
__LN.beamWidth = math.rad(1);
__LN.PL[1].ammo_capacity = 2800; --http://btvt.narod.ru/4/M1.htm
__LN.PL[1].portionAmmoCapacity = 2800;
__LN.PL[1].reload_time = 600;
__LN.BR[1].connector_name = 'POINT_MGUN_01';
__LN.fireAnimationArgument = 45;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 3;

--GT.WS[2]
ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].base = 1;
GT.WS[ws].center = 'CENTER_MGUN';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(65), math.rad(-8), math.rad(30)},
                    {math.rad(65), math.rad(45), math.rad(22), math.rad(30)},
                    {math.rad(45), math.rad(-3.5), math.rad(-8), math.rad(30)},
                    {math.rad(-3.5), math.rad(-45), math.rad(0), math.rad(30)},
                    {math.rad(-45), math.rad(-180), math.rad(-8), math.rad(30)},
                    };
GT.WS[ws].drawArgument1 = 25;
GT.WS[ws].drawArgument2 = 26;
GT.WS[ws].omegaY = math.rad(50);
GT.WS[ws].omegaZ = math.rad(50);
GT.WS[ws].pidY = {p=100,i=0.1,d=12,inn=50,};
GT.WS[ws].pidZ = {p=100,i=0.1,d=12,inn=50,};
GT.WS[ws].pointer = 'POINT_SIGHT_CWS'
GT.WS[ws].cockpit = {'CWS/CWS', {0.1, 0.0, 0.0 },}

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
__LN.type = 10; -- AA Machinegun
__LN.fireAnimationArgument = 44;
__LN.BR[1].connector_name = 'POINT_MGUN';
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;
__LN = nil;

GT.Name = "M-1 Abrams";
GT.DisplayName = _("MBT M1A2 Abrams");
GT.Rate = 20;

GT.Sensors = { OPTIC = {"CITV day", "CITV night"} };
            
GT.EPLRS = true

GT.DetectionRange  = 0;
GT.airWeaponDist = GT.WS[2].LN[1].distanceMax
GT.ThreatRange =  GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000001";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericTank,
                "Tanks",
                "Modern Tanks",
                "Datalink",
                };
GT.category = "Armor";
