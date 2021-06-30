-- M270 MLRS

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.M993);

GT.visual.shape = "MLRS";
GT.visual.shape_dstr = "MLRS_P_1";

GT.animation_arguments.alarm_state = 16; -- arg no.3 shuts the driver window. 16th is empty

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

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.617;

--Burning after hit
GT.visual.fire_size = 0.8; --relative burning size
GT.visual.fire_pos[1] = 1.575; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)
GT.visual.dust_pos = {3.3, 0.0, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.3, 0.6, -GT.chassis.Z_gear_2}

GT.driverViewPoint = {2.4, 2.25, -0.69};
GT.driverCockpit = "DriverCockpit/DriverCockpitWithLLTV"

-- weapon systems

GT.WS = {};
GT.WS.fire_on_march = false;
GT.WS.maxTargetDetectionRange = 5000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles_mech = {
                    {math.rad(180), math.rad(140), math.rad(0), math.rad(30)},
					{math.rad(140), math.rad(60), math.rad(0), math.rad(60)},
                    {math.rad(60), math.rad(3), math.rad(6), math.rad(60)},
                    {math.rad(3), math.rad(-3), math.rad(0), math.rad(60)},
                    {math.rad(-3), math.rad(-60), math.rad(6), math.rad(60)},
                    {math.rad(-60), math.rad(-140), math.rad(0), math.rad(60)},
					{math.rad(-140), math.rad(-180), math.rad(0), math.rad(30)},
                    };
GT.WS[ws].angles = {
                    {math.rad(115), math.rad(60), math.rad(6), math.rad(60)},
                    {math.rad(-60), math.rad(-115), math.rad(6), math.rad(60)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = 0.32;
GT.WS[ws].omegaZ = 0.22;
GT.WS[ws].pidY = {p = 30, i = 0.0, d = 9, inn = 5};
GT.WS[ws].pidZ = {p = 30, i = 0.0, d = 9, inn = 5};
GT.WS[ws].mount_before_move = true;
GT.WS[ws].isoviewOffset = {0.0, 4.2, 0.0};

GT.WS[ws].LN = {};
GT.WS[ws].LN[1] = {};
GT.WS[ws].LN[1].type = 34;
GT.WS[ws].LN[1].maxShootingSpeed = 0;
GT.WS[ws].LN[1].out_velocity = 590;
GT.WS[ws].LN[1].distanceMin = 10000;
GT.WS[ws].LN[1].distanceMax = 32000;
GT.WS[ws].LN[1].reactionTimeLOFAC = 3;
GT.WS[ws].LN[1].reactionTime = 100;
GT.WS[ws].LN[1].launch_delay = 3;
GT.WS[ws].LN[1].barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT.WS[ws].LN[1].sound = { single_shot = "Weapons/MissileShoot", };
GT.WS[ws].LN[1].sensor = {};
set_recursive_metatable(GT.WS[ws].LN[1].sensor, GT_t.WSN_t[8]);
GT.WS[ws].LN[1].depends_on_unit = {{{"MLRS FDDM", 1}}, {{"none"}}}

GT.WS[ws].LN[1].PL = {};
GT.WS[ws].LN[1].PL[1] = {};
GT.WS[ws].LN[1].PL[1].ammo_capacity = 12;
GT.WS[ws].LN[1].PL[1].reload_time = 540;
GT.WS[ws].LN[1].PL[1].shot_delay = 0.1;
GT.WS[ws].LN[1].PL[1].rocket_name = "weapons.nurs.M26";

GT.WS[ws].LN[1].BR = { };
GT.WS[ws].LN[1].BR[1] = { connector_name = "POINT_ROCKET_01", drawArgument = 4 };
GT.WS[ws].LN[1].BR[2] = { connector_name = "POINT_ROCKET_02", drawArgument = 5 };
GT.WS[ws].LN[1].BR[3] = { connector_name = "POINT_ROCKET_03", drawArgument = 6 };
GT.WS[ws].LN[1].BR[4] = { connector_name = "POINT_ROCKET_04", drawArgument = 7 };
GT.WS[ws].LN[1].BR[5] = { connector_name = "POINT_ROCKET_05", drawArgument = 18 };
GT.WS[ws].LN[1].BR[6] = { connector_name = "POINT_ROCKET_06", drawArgument = 19 };
GT.WS[ws].LN[1].BR[7] = { connector_name = "POINT_ROCKET_07", drawArgument = 27 };
GT.WS[ws].LN[1].BR[8] = { connector_name = "POINT_ROCKET_08", drawArgument = 28 };
GT.WS[ws].LN[1].BR[9] = { connector_name = "POINT_ROCKET_09", drawArgument = 29 }; 
GT.WS[ws].LN[1].BR[10] ={ connector_name = "POINT_ROCKET_10", drawArgument = 30 }; 
GT.WS[ws].LN[1].BR[11] ={ connector_name = "POINT_ROCKET_11", drawArgument = 31 };
GT.WS[ws].LN[1].BR[12] ={ connector_name = "POINT_ROCKET_12", drawArgument = 32 };

GT.WS[ws].LN[1].customViewPoint = { "genericMLRS", {-5.0, 1.2, -1.0 }, };

GT.Name = "MLRS";
GT.Aliases = {"M270 MLRS"}
GT.DisplayName = _("MLRS M270");
GT.Rate = 20;

GT.EPLRS = true

GT.DetectionRange  = 0;
GT.ThreatRangeMin = GT.WS[1].LN[1].distanceMin;
GT.ThreatRange = 32000;
GT.mapclasskey = "P0091000208";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Miss,wsType_GenericMLRS,
                "MLRS", "Datalink",
                };
GT.category = "Artillery";
