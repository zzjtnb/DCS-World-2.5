-- MLRS 9K51 "GRAD"

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.URAL375);

GT.visual.shape = "bm-21-40";
GT.visual.shape_dstr = "BM-21-40_P_1";

--chassis
GT.swing_on_run = false;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.85;

--Burning after hit
GT.visual.fire_size = 0.7; --relative burning size
GT.visual.fire_pos[1] = 1; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0;-- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)
GT.animation_arguments.crew_presence = 50;

--GT.driverViewPoint = {2.1, 2.25, -0.53};
GT.driverViewConnectorName = "DRIVER_POINT"

GT.WS = {};
GT.WS.fire_on_march = false;
GT.WS.maxTargetDetectionRange = 5000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles_mech = {
                    {math.rad(102), math.rad(-70), math.rad(0), math.rad(55)},
                    };
GT.WS[ws].angles = {
                    {math.rad(102), math.rad(45), math.rad(0), math.rad(55)},
                    {math.rad(45), math.rad(-45), math.rad(15), math.rad(55)},
                    {math.rad(-45), math.rad(-70), math.rad(0), math.rad(55)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(7);
GT.WS[ws].omegaZ = math.rad(5);
GT.WS[ws].pidY = {p = 10, i = 0.0, d = 7, inn = 1};
GT.WS[ws].pidZ = {p = 10, i = 0.0, d = 7, inn = 1};
GT.WS[ws].mount_before_move = true;

GT.WS[ws].LN = {};
GT.WS[ws].LN[1] = {};
GT.WS[ws].LN[1].type = 34;
GT.WS[ws].LN[1].maxShootingSpeed = 0;
GT.WS[ws].LN[1].out_velocity = 450;
GT.WS[ws].LN[1].distanceMin = 5000;
GT.WS[ws].LN[1].distanceMax = 19000;
GT.WS[ws].LN[1].reactionTimeLOFAC = 3;
GT.WS[ws].LN[1].reactionTime = 100;
GT.WS[ws].LN[1].launch_delay = 0.5;
GT.WS[ws].LN[1].barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT.WS[ws].LN[1].sensor = {};
set_recursive_metatable(GT.WS[ws].LN[1].sensor, GT_t.WSN_t[8]);
GT.WS[ws].LN[1].depends_on_unit = {{{"Grad_FDDM", 1}}, {{"none"}}}

GT.WS[ws].LN[1].PL = {};
GT.WS[ws].LN[1].PL[1] = {};
GT.WS[ws].LN[1].PL[1].rocket_name = "weapons.nurs.GRAD_9M22U";
GT.WS[ws].LN[1].PL[1].ammo_capacity = 40;
GT.WS[ws].LN[1].PL[1].reload_time = 420;
GT.WS[ws].LN[1].PL[1].shot_delay = 0.01;

GT.WS[ws].LN[1].BR = { };
GT.WS[ws].LN[1].BR[1] = { connector_name = "POINT_ROCKET_01"};
GT.WS[ws].LN[1].BR[2] = { connector_name = "POINT_ROCKET_06"};
GT.WS[ws].LN[1].BR[3] = { connector_name = "POINT_ROCKET_10"};
GT.WS[ws].LN[1].BR[4] = { connector_name = "POINT_ROCKET_05"};
GT.WS[ws].LN[1].BR[5] = { connector_name = "POINT_ROCKET_11"};
GT.WS[ws].LN[1].BR[6] = { connector_name = "POINT_ROCKET_16"};
GT.WS[ws].LN[1].BR[7] = { connector_name = "POINT_ROCKET_20"};
GT.WS[ws].LN[1].BR[8] = { connector_name = "POINT_ROCKET_15"};
GT.WS[ws].LN[1].BR[9] = { connector_name = "POINT_ROCKET_02"}; 
GT.WS[ws].LN[1].BR[10] ={ connector_name = "POINT_ROCKET_07"};
GT.WS[ws].LN[1].BR[11] ={ connector_name = "POINT_ROCKET_09"};
GT.WS[ws].LN[1].BR[12] ={ connector_name = "POINT_ROCKET_04"};
GT.WS[ws].LN[1].BR[13] ={ connector_name = "POINT_ROCKET_12"};
GT.WS[ws].LN[1].BR[14] ={ connector_name = "POINT_ROCKET_17"};
GT.WS[ws].LN[1].BR[15] ={ connector_name = "POINT_ROCKET_19"};
GT.WS[ws].LN[1].BR[16] ={ connector_name = "POINT_ROCKET_14"};
GT.WS[ws].LN[1].BR[17] ={ connector_name = "POINT_ROCKET_03"};
GT.WS[ws].LN[1].BR[18] ={ connector_name = "POINT_ROCKET_08"};
GT.WS[ws].LN[1].BR[19] ={ connector_name = "POINT_ROCKET_13"};
GT.WS[ws].LN[1].BR[20] ={ connector_name = "POINT_ROCKET_18"};

GT.WS[ws].LN[1].BR[21] ={ connector_name = "POINT_ROCKET_21"};
GT.WS[ws].LN[1].BR[22] ={ connector_name = "POINT_ROCKET_26"};
GT.WS[ws].LN[1].BR[23] ={ connector_name = "POINT_ROCKET_30"};
GT.WS[ws].LN[1].BR[24] ={ connector_name = "POINT_ROCKET_25"};
GT.WS[ws].LN[1].BR[25] ={ connector_name = "POINT_ROCKET_31"};
GT.WS[ws].LN[1].BR[26] ={ connector_name = "POINT_ROCKET_36"};
GT.WS[ws].LN[1].BR[27] ={ connector_name = "POINT_ROCKET_40"};
GT.WS[ws].LN[1].BR[28] ={ connector_name = "POINT_ROCKET_35"};
GT.WS[ws].LN[1].BR[29] ={ connector_name = "POINT_ROCKET_22"};
GT.WS[ws].LN[1].BR[30] ={ connector_name = "POINT_ROCKET_27"};
GT.WS[ws].LN[1].BR[31] ={ connector_name = "POINT_ROCKET_29"};
GT.WS[ws].LN[1].BR[32] ={ connector_name = "POINT_ROCKET_24"};
GT.WS[ws].LN[1].BR[33] ={ connector_name = "POINT_ROCKET_32"};
GT.WS[ws].LN[1].BR[34] ={ connector_name = "POINT_ROCKET_37"};
GT.WS[ws].LN[1].BR[35] ={ connector_name = "POINT_ROCKET_39"};
GT.WS[ws].LN[1].BR[36] ={ connector_name = "POINT_ROCKET_34"};
GT.WS[ws].LN[1].BR[37] ={ connector_name = "POINT_ROCKET_23"};
GT.WS[ws].LN[1].BR[38] ={ connector_name = "POINT_ROCKET_28"};
GT.WS[ws].LN[1].BR[39] ={ connector_name = "POINT_ROCKET_33"};
GT.WS[ws].LN[1].BR[40] ={ connector_name = "POINT_ROCKET_38"};

GT.WS[ws].LN[1].customViewPoint = { "genericMLRS", {-3.0, 0.3, -0.8 }, };

GT.Name = "Grad-URAL";
GT.Aliases = {"MLRS BM-21 Grad"}
GT.DisplayName = _("MLRS BM-21 Grad");
GT.Rate = 10;

GT.DetectionRange  = 0;
GT.ThreatRangeMin = GT.WS[1].LN[1].distanceMin;
GT.ThreatRange = 19000;
GT.mapclasskey = "P0091000208";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Miss,wsType_GenericMLRS,
                "MLRS",
                };
GT.category = "Artillery";
