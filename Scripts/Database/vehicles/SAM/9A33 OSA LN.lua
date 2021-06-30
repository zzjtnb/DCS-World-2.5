-- SAM OSA '9A33' ln

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.BAZ5937);

GT.visual.shape = "9A33";
GT.visual.shape_dstr = "9A33_P_1";


--chassis
GT.swing_on_run = false;
GT.animation_arguments.locator_rotation = 11;
GT.snd.radarRotation = "RadarRotation";
GT.radar_rotation_period = 60/33; --33+-2 об/мин
GT.toggle_alarm_state_interval = 5.0;

GT.sensor = {};
GT.sensor.beamWidth = math.rad(90);
GT.sensor.max_range_finding_target = 30000;
GT.sensor.min_range_finding_target = 1500;
GT.sensor.max_alt_finding_target = 5000;
GT.sensor.min_alt_finding_target = 10;
GT.sensor.height = 5.438;

--Burning after hit
GT.visual.fire_size = 1.1; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1100; --burning time (seconds)

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {-0.1, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems
GT.WS = {};
GT.WS.maxTargetDetectionRange = 30000;
GT.WS.radar_type = 104; -- short range
GT.WS.radar_rotation_type = 1;
GT.WS.searchRadarMaxElevation = math.rad(45);
--[[
local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].pos = {0, 3.5,0};
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(-12), math.rad(78)},
					};
GT.WS[ws].omegaY = 2;
GT.WS[ws].omegaZ = 2;
GT.WS[ws].pidY = {p=100,i=0.1,d=10, inn=10};
GT.WS[ws].pidZ = {p=100,i=0.1,d=10, inn=10};
GT.WS[ws].LN = {};
GT.WS[ws].LN[1] = {};
GT.WS[ws].LN[1].type = 101;
GT.WS[ws].LN[1].max_number_of_missiles_channels = 2;
GT.WS[ws].LN[1].distanceMax = GT.sensor.max_range_finding_target;
GT.WS[ws].LN[1].ECM_K = 0.65;
GT.WS[ws].LN[1].distanceMin = GT.sensor.min_range_finding_target;
GT.WS[ws].LN[1].max_trg_alt = GT.sensor.max_alt_finding_target;
GT.WS[ws].LN[1].min_trg_alt = GT.sensor.min_alt_finding_target;
GT.WS[ws].LN[1].reflection_limit = 0.22;
GT.WS[ws].LN[1].reactionTime = 20;
--GT.WS[ws].LN[1].beamWidth = math.rad(90);
]]
local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].pointer = "POINT_View";
GT.WS[ws].center = "CENTER_TOWER";
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-12), math.rad(78)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(15);
GT.WS[ws].pidY = {p=40,i=0.1, d=7, inn = 4};
GT.WS[ws].pidZ = {p=40,i=0.1, d=7, inn = 4};
GT.WS[ws].reference_angle_Y = math.pi;
GT.WS[ws].mount_before_move = true;
GT.WS[ws].isoviewOffset = {0.0, 6.0, 0.0};
GT.WS[ws].PPI_view = "GenericPPI/GenericPPI"

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._9A33);
__LN.max_number_of_missiles_channels = 2; -- trick for manned vehicle
__LN.distanceMax = 18000;
__LN.reactionTime = 18;
__LN.launch_delay = 4;
--__LN.depends_on_unit = {{{"self", 1}}};
__LN.min_launch_angle = math.rad(-90)
__LN.inclination_correction_upper_limit = math.rad(-90)
__LN.inclination_correction_bias = 0
__LN.customViewPoint = { "genericMissile", {0.01, 0.0, 0.0} };
__LN = nil;

GT.Name = "Osa 9A33 ln";
GT.DisplayName = _("SAM SA-8 Osa 9A33");
GT.Rate = 15;

GT.Sensors = { OPTIC = {"TKN-3B day", "TKN-3B night", -- командирский
                        "Karat visir"
                        },
			   RADAR = GT.Name
             }

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = 10300;
GT.mapclasskey = "P0091000084";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar_Miss,OSA_9A33BM3,
                "AA_missile",
                "SR SAM",
                "SAM SR",
                "SAM TR",
                "RADAR_BAND2_FOR_ARM",
                };
GT.category = "Air Defence";
