-- strela-1 9p31

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.BRDM2);
GT.chassis.armour_thickness = 0.005;

GT.visual.shape = "9p31";
GT.visual.shape_dstr = "9P31_P_1";

--chassis
GT.swing_on_run = false;
GT.toggle_alarm_state_interval = 5.0;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 3.277;

--Burning after hit
GT.visual.fire_size = 0.6; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.1, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 10000;

ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].pointer = "POINT_SIGHT_01";

GT.WS[ws].angles_mech = {
                    {math.rad(180), math.rad(-180), math.rad(-10), math.rad(70)},
                    };
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), 0, math.rad(70)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(40);
GT.WS[ws].omegaZ = math.rad(40);
GT.WS[ws].pidY = {p=10,i=0.1,d=4, inn=1.5};
GT.WS[ws].pidZ = {p=10,i=0.1,d=4, inn=1.5};

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._9P31);
__LN.min_launch_angle = math.rad(5);
__LN.max_number_of_missiles_channels = 2;
__LN.customViewPoint = { "genericIR", { 0, 0, 0 }, };
__LN = nil;

GT.Name = "Strela-1 9P31";
GT.Aliases = {"SA-9 Strela-1 9P31"}
GT.DisplayName = _("SAM SA-9 Strela-1 9P31");
GT.Rate = 8;

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = GT.WS[ws].LN[1].distanceMax;
GT.mapclasskey = "P0091000085";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Miss,Strela_9K31,
                "AA_missile",
                "SR SAM",
                "IR Guided SAM",
                };
GT.category = "Air Defence";
