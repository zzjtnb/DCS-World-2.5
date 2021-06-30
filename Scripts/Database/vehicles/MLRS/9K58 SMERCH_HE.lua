-- MLRS 9K58 'SMERCH_HE'

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MAZ543M);
GT.chassis.life = 2;

GT.visual.shape = "smerch";
GT.visual.shape_dstr = "Smerch_p_1";
GT.toggle_alarm_state_interval = 5.0;

--chassis
GT.swing_on_run = false;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 3.05;

--Burning after hit
GT.visual.fire_size = 1.0; --relative burning size
GT.visual.fire_pos[1] = 3; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200; --burning time (seconds)

GT.driverViewConnectorName = {"DRIVER_POINT"}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithLLTV"

GT.WS = {};
GT.WS.fire_on_march = false;
GT.WS.maxTargetDetectionRange = 5000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].pointer = 'POINT_SIGHT_01';
GT.WS[ws].cockpit = { "genericMLRS", {-4.0, -0.5, -2.0 }, };
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles_mech = {
                    {math.rad(60), math.rad(-60), math.rad(0), math.rad(45)},
                    };
GT.WS[ws].angles = {
                    {math.rad(60), math.rad(20), math.rad(0), math.rad(45)},
                    {math.rad(20), math.rad(-20), math.rad(15), math.rad(45)},
                    {math.rad(-20), math.rad(-60), math.rad(0), math.rad(45)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(5);
GT.WS[ws].omegaZ = math.rad(4);
GT.WS[ws].pidY = {p = 30, i = 0.0, d = 9, inn = 5};
GT.WS[ws].pidZ = {p = 30, i = 0.0, d = 9, inn = 5};
GT.WS[ws].mount_before_move = true;
GT.WS[ws].isoviewOffset = {0.0, 4.0, 0.0};

GT.WS[ws].LN = {};
GT.WS[ws].LN[1] = {};
GT.WS[ws].LN[1].type = 34;
GT.WS[ws].LN[1].maxShootingSpeed = 0;
GT.WS[ws].LN[1].out_velocity = 830;
GT.WS[ws].LN[1].distanceMin = 20000;
GT.WS[ws].LN[1].distanceMax = 70000;
GT.WS[ws].LN[1].reactionTimeLOFAC = 3;
GT.WS[ws].LN[1].reactionTime = 100;
GT.WS[ws].LN[1].launch_delay = 3;
GT.WS[ws].LN[1].show_external_missile = true
GT.WS[ws].LN[1].barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT.WS[ws].LN[1].sensor = {};
set_recursive_metatable(GT.WS[ws].LN[1].sensor, GT_t.WSN_t[8]);

GT.WS[ws].LN[1].PL = {};

GT.WS[ws].LN[1].PL[1] = {};
GT.WS[ws].LN[1].PL[1].ammo_capacity = 12;
GT.WS[ws].LN[1].PL[1].shot_delay = 0.1;
GT.WS[ws].LN[1].PL[1].reload_time = 2160; -- 36 min
GT.WS[ws].LN[1].PL[1].type_ammunition = {wsType_Weapon, wsType_NURS, wsType_Rocket, SMERCH_9M55F}
GT.WS[ws].LN[1].PL[1].rocket_name = "weapons.nurs.SMERCH_9M55F";

--[[ вид спереди на стволы
        10  12  11  9
    4   8           7   3
    2   6           5   1
]]
GT.WS[ws].LN[1].BR = {
	{ connector_name = "POINT_ROCKET_01" },
	{ connector_name = "POINT_ROCKET_02" },
	{ connector_name = "POINT_ROCKET_03" },
	{ connector_name = "POINT_ROCKET_04" },
	{ connector_name = "POINT_ROCKET_05" },
	{ connector_name = "POINT_ROCKET_06" },
	{ connector_name = "POINT_ROCKET_07" },
	{ connector_name = "POINT_ROCKET_08" },
	{ connector_name = "POINT_ROCKET_09" },
	{ connector_name = "POINT_ROCKET_10" },
	{ connector_name = "POINT_ROCKET_11" },
	{ connector_name = "POINT_ROCKET_12" }
};

GT.WS[ws].LN[1].sightMasterMode = 1
GT.WS[ws].LN[1].sightIndicationMode = 1;

GT.Name = "Smerch_HE";
GT.DisplayName = _("MLRS 9A52 Smerch HE");
GT.Rate = 20;

GT.DetectionRange  = 0;
GT.ThreatRangeMin = GT.WS[1].LN[1].distanceMin;
GT.ThreatRange = 70000;
GT.mapclasskey = "P0091000209";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Miss,wsType_GenericMLRS,
                "MLRS",
                };
GT.category = "Artillery";