-- M163 Vulcan

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.M113);

GT.visual.shape = "VULCAN";
GT.visual.shape_dstr = "VULCAN_P_1";

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
GT.sensor.height = 3.872;

--Burning after hit
GT.visual.fire_size = 0.6; --relative burning size
GT.visual.fire_pos[1] = 0.982; -- center of burn at long axis shift(meters) 
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0.315; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)
GT.visual.dust_pos = {2.35, -0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-2.2, 0.2, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.05, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {};
GT.WS.radar_type = 104;
GT.WS.maxTargetDetectionRange = 7500;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};

GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-5), math.rad(70)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].pidY = {p=100,i=2.0,d=10.0, inn = 8};
GT.WS[ws].pidZ = {p=100,i=2.0,d=10.0, inn = 8};
GT.WS[ws].omegaY = math.rad(60); -- jane's
GT.WS[ws].omegaZ = math.rad(60); -- jane's
GT.WS[ws].reference_angle_Z = math.rad(2);
GT.WS[ws].cockpit = {"M61/M61", {-1.5, 0.2, 0.0 }}

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.automatic_gun_M168);
__LN.beamWidth = math.rad(90);
__LN.fireAnimationArgument = 23;
__LN.BR[1].connector_name = 'POINT_GUN';
__LN.sightMasterMode = 1
__LN.sightIndicationMode = 1;
--__LN.customViewPoint = { "genericAAA", {-1.5, 0.2, 0.0 }, };
__LN = nil;

GT.Name = "Vulcan";
GT.Aliases = {"M163 Vulcan"}
GT.DisplayName = _("AAA Vulcan M163");
GT.Rate = 10;

GT.EPLRS = true

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000217";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar_Gun,wsTypeVulkan,
                "AA_flak",
				"SAM TR", -- range-only radar
                "Mobile AAA",
                "Datalink",
                };
GT.category = "Air Defence";
