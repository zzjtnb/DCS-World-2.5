-- strela-10 9a35

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MTLB);
GT.chassis.armour_thickness = 0.005;

GT.visual.shape = "9a35";
GT.visual.shape_dstr = "9a35_p_1";

--chassis
GT.swing_on_run = false;
GT.toggle_alarm_state_interval = 5.0;

GT.sensor = {};
GT.sensor.max_range_finding_target = 8000;
GT.sensor.min_range_finding_target = 0;
GT.sensor.max_alt_finding_target = 3500;
GT.sensor.min_alt_finding_target = 10;
GT.sensor.height = 3.548;

GT.visual.fire_pos[1] = 1.44;

--Burning after hit
GT.visual.fire_size = 0.6; --relative burning size
GT.visual.fire_pos[1] = 1.44; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)
GT.visual.dust_pos = {2.8, 0.0, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-2.5, 0.4, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.05, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {};
GT.WS.radar_type = 104;
GT.WS.maxTargetDetectionRange = 10000;

ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].pointer = "POINT_View";
GT.WS[ws].angles_mech = {
                    {math.rad(180), math.rad(-180), math.rad(-10), math.rad(70)},
                    };
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), 0, math.rad(70)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].pidY = {p=40, i=0.1, d=5, inn=60};
GT.WS[ws].pidZ = {p=80, i=0.1, d=8, inn=100};
GT.WS[ws].omegaY = math.rad(60);
GT.WS[ws].omegaZ = math.rad(60);
GT.WS[ws].cockpit = {'9SH127/9SH127', {0.0, 0.0, 0.0}}

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._9A35);
__LN.beamWidth = math.rad(90);
__LN.min_launch_angle = math.rad(5);
__LN.max_number_of_missiles_channels = 2;
__LN.BR = {
            {connector_name = "POINT_ROCKET_01",drawArgument = 4},
			{connector_name = "POINT_ROCKET_04",drawArgument = 7},
            {connector_name = "POINT_ROCKET_02",drawArgument = 5},
            {connector_name = "POINT_ROCKET_03",drawArgument = 6},
        };
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_MGUN';
GT.WS[ws].angles = {
                    {math.rad(50), math.rad(-50), math.rad(-5), math.rad(15)},
                    };
GT.WS[ws].drawArgument1 = 25;
GT.WS[ws].drawArgument2 = 26;
GT.WS[ws].omegaY = math.rad(270);
GT.WS[ws].omegaZ = math.rad(270);
GT.WS[ws].pidY = {p=100, i=0.1, d=10, inn=100};
GT.WS[ws].pidZ = {p=100, i=0.1, d=10, inn=100};
GT.WS[ws].cockpit = { "IronSight/IronSight", {-1.1, 0.1, 0 } };

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_7_62);
for i=2,10 do
    __LN.PL[i] = {};
    set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end;
__LN.BR[1].connector_name = 'POINT_MGUN';
__LN.fireAnimationArgument = 44;
__LN.sightMasterMode = 1
__LN.sightIndicationMode = 1;

__LN = nil;

GT.Name = "Strela-10M3";
GT.Aliases = {"SA-13 Strela-10M3 9A35M3"}
GT.DisplayName = _("SAM SA-13 Strela-10M3 9A35M3");
GT.Rate = 10;

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = GT.WS[ws-1].LN[1].distanceMax; -- предпоследняя WS - ракетная ПУ, ориентируемся на ее дальность
GT.mapclasskey = "P0091000086";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_MissGun,Strela_9K35,
                "AA_missile",
                "SR SAM",
                "IR Guided SAM",
				"SAM TR" -- track radar (engagement zone determination)
                };
GT.category = "Air Defence";
