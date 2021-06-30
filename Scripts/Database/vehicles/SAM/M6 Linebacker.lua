-- M6 Linebacker

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.M2);
GT.chassis.X_gear_2 = -1.95
GT.chassis.life = 5;

GT.visual.shape = "M6";
GT.visual.shape_dstr = "M6_P1";

GT.armour_scheme = {
						hull_elevation = { {-90, 45, 1 }, { 45, 90, 0.6 }, },
						hull_azimuth = { {0, 30, 1.2 }, { 30, 150, 0.8 }, { 150,180, 0.5 }, },
						turret_elevation = { {-90,18, 1 }, { 18,90, 0.5 }, },
						turret_azimuth = { {0,180, 1 }, }
					};

-- Turbine
GT.turbine = false;
-- Turbine

-- Sound
GT.sound = {};

-- Engine params
GT.sound.engine = {};
GT.sound.engine.idle = "GndTech/BradleyEngineIdle";
GT.sound.engine.max = "GndTech/BradleyEngineMax";

GT.sound.engine.acc_start = "GndTech/BradleyEngineAccStart";
GT.sound.engine.acc_end = "GndTech/BradleyEngineAccEnd";

GT.sound.engine.idle_formula_gain = "0.625 x * 0.875 +";
GT.sound.engine.idle_formula_pitch = "0.55 x * 0.89 +";

GT.sound.engine.max_formula_gain = "0.75 x * 0.25 +";
GT.sound.engine.max_formula_pitch = "0.7025 x * 0.4195 +";
-- Engine params

-- Move params
GT.sound.move = {};
GT.sound.move.sound = "GndTech/TankMove";
GT.sound.move.pitch = {{0.0, 0.6}, {10.0, 1.2}};
GT.sound.move.gain = {{0.0, 0.01}, {0.5, 0.5}, {12.0, 1.0}};
GT.sound.move.start_move = "GndTech/TStartMove";
GT.sound.move.end_move = "GndTech/TEndMove";
-- Move params

GT.sound.noise = {};
GT.sound.noise.sound = "Damage/VehHit";

-- Sound

--chassis
GT.swing_on_run = false;
GT.toggle_alarm_state_interval = 5.0;


GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.max_range_finding_target = 8000;
GT.sensor.height = 2.58;

--Burning after hit
GT.visual.fire_size = 0.9; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0.762; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)
GT.visual.dust_pos = {2.8, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-2.7, 0.5, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.05, 0.0, 0.0}}

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 10000;
GT.WS.smoke = {"SMOKE_02", "SMOKE_05", "SMOKE_01", "SMOKE_06", "SMOKE_04", "SMOKE_07", "SMOKE_03", "SMOKE_08",};
ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].type = 5;
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(-5), math.rad(59)},
					};
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].pointer = "POINT_View";
GT.WS[ws].cockpit = {"Linebacker/Linebacker_ODS", {0.0, 0.0, 0.0} }
GT.WS[ws].omegaY = math.rad(40);
GT.WS[ws].omegaZ = math.rad(50);
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].reloadAngleY = math.rad(30);
GT.WS[ws].reloadAngleZ = math.rad(30);

--GT.WS[ws].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.stinger);
__LN.min_launch_angle = math.rad(5);
__LN.max_number_of_missiles_channels = 2;
__LN.sound_lock_target = "Aircrafts/Whistle";
__LN.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
__LN.PL[1].ammo_capacity = 12;
__LN.PL[1].reload_time = 12*20;
__LN.PL[1].shot_delay = 20
__LN.BR = {
			{connector_name = 'ROCKET_POINT_01', drawArgument = 4},
			{connector_name = 'ROCKET_POINT_02', drawArgument = 5},
			{connector_name = 'ROCKET_POINT_03', drawArgument = 6},
			{connector_name = 'ROCKET_POINT_04', drawArgument = 7},
		}
__LN.sightMasterMode = 2;
__LN.sightIndicationMode = 1;
--__LN.customViewPoint = { "genericIR", { 0.2, 0.0, 0.0 }, };

--GT.WS[1].LN[2]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.automatic_gun_25mm);
__LN.beamWidth = math.rad(1);
__LN.PL[1].feedSlot = 1;
__LN.PL[2].feedSlot = 2;
__LN.BR[1] = {connector_name = 'POINT_GUN',
			recoilArgument = 23,
			recoilTime = 0.2};
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

--GT.WS[1].LN[3]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_M240C);
__LN.beamWidth = math.rad(1);
__LN.BR[1].connector_name = 'POINT_GUN_01';
__LN.fireAnimationArgument = 45;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 3;
__LN = nil;

GT.Name = "M6 Linebacker";
GT.DisplayName = _("SAM Linebacker M6");
GT.Rate = 15;

GT.Sensors = { OPTIC = {"Linebacker day", "Linebacker IR"}, };

GT.EPLRS = true

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = GT.WS[ws].LN[1].distanceMax;
GT.mapclasskey = "P0091000214";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_MissGun,M6Linebacker,
				"AA_missile",
				"AA_flak",
				"SR SAM",
				"IR Guided SAM",
				"Datalink"
				};
GT.category = "Air Defence";
GT.InternalCargo = {
			nominalCapacity = 600,
			maximalCapacity = 600, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}