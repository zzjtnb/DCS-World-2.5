-- MLRS 9K57 'URAGAN'

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.ZIL135);

GT.visual.shape = "Uragan_9k57";
GT.visual.shape_dstr = "Uragan_9k57_p_1";
GT.toggle_alarm_state_interval = 20.0;

--chassis
GT.swing_on_run = false;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 3.05;

--Burning after hit
GT.visual.fire_size = 1.0; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200; --burning time (seconds)

GT.driverViewPoint = {3.33, 2.3, -0.74};

GT.WS = {};
GT.WS.fire_on_march = false;
GT.WS.maxTargetDetectionRange = 5000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = "CENTER_TOWER"
GT.WS[ws].angles_mech = {
                    {math.rad(20), math.rad(-20), math.rad(-5), math.rad(55)},
                    };
GT.WS[ws].angles = {
                    {math.rad(20), math.rad(-20), math.rad(6), math.rad(55)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(3);
GT.WS[ws].omegaZ = math.rad(3);
GT.WS[ws].pidY = {p = 6, i = 0.0, d = 3, inn = 5};
GT.WS[ws].pidZ = {p = 6, i = 0.0, d = 6, inn = 5};
GT.WS[ws].mount_before_move = true;
GT.WS[ws].pointer = "POINT_SIGHT"
GT.WS[ws].isoviewOffset = {0.0, 4.0, 0.0};

GT.WS[ws].LN = {};
GT.WS[ws].LN[1] = {};
GT.WS[ws].LN[1].type = 34;
GT.WS[ws].LN[1].maxShootingSpeed = 0;
GT.WS[ws].LN[1].distanceMin = 11500;
GT.WS[ws].LN[1].distanceMax = 35800;
GT.WS[ws].LN[1].reactionTimeLOFAC = 3;
GT.WS[ws].LN[1].reactionTime = 80;
GT.WS[ws].LN[1].launch_delay = 0.587;  -- 8.8 seconds for whole salvo
GT.WS[ws].LN[1].barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT.WS[ws].LN[1].show_external_missile = true
GT.WS[ws].LN[1].sensor = {};
set_recursive_metatable(GT.WS[ws].LN[1].sensor, GT_t.WSN_t[8]);

GT.WS[ws].LN[1].PL = {};

GT.WS[ws].LN[1].PL[1] = {};
GT.WS[ws].LN[1].PL[1].ammo_capacity = 16;
GT.WS[ws].LN[1].PL[1].shot_delay = 0.1;
GT.WS[ws].LN[1].PL[1].reload_time = 14*60;
GT.WS[ws].LN[1].PL[1].type_ammunition = {wsType_Weapon, wsType_NURS, wsType_Rocket, URAGAN_9M27F}
GT.WS[ws].LN[1].PL[1].name_ammunition = "9M27F"
GT.WS[ws].LN[1].PL[1].rocket_name = "weapons.nurs.URAGAN_9M27F";

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
	{ connector_name = "POINT_ROCKET_12" },
	{ connector_name = "POINT_ROCKET_13" },
	{ connector_name = "POINT_ROCKET_14" },
	{ connector_name = "POINT_ROCKET_15" },
	{ connector_name = "POINT_ROCKET_16" },
 };
GT.WS[ws].LN[1].customViewPoint = { "genericMLRS", {-3.0, 0.3, -2.0 }, };

GT.Name = "Uragan_BM-27";
GT.DisplayName = _("MLRS 9K57 Uragan BM-27");
GT.Rate = 20;

GT.DetectionRange  = 0;
GT.ThreatRangeMin = GT.WS[1].LN[1].distanceMin;
GT.ThreatRange = 35800;
GT.mapclasskey = "P0091000209";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Miss,wsType_GenericMLRS,
                "MLRS",
                };
GT.category = "Artillery";