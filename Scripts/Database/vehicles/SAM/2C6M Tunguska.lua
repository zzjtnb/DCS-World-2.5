-- SAM 'Tunguska' 2C6M

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MTT);

GT.visual.shape = "2c6m";
GT.visual.shape_dstr = "2c6m_p_1";

--chassis
GT.swing_on_run = false;
GT.animation_arguments.locator_rotation = 11;
GT.radar_rotation_period = 1;
GT.snd.radarRotation = "RadarRotation";


GT.sensor = {};
GT.sensor.max_range_finding_target = 18000;
GT.sensor.min_range_finding_target = 200;
GT.sensor.max_alt_finding_target = 3500;
GT.sensor.min_alt_finding_target = 0;
GT.sensor.height = 3.675;

--Burning after hit
GT.visual.fire_size = 0.8; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)
GT.visual.dust_pos = {3.6, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.3, 0.5, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = "DRIVER_POINT"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 18000;
GT.WS.radar_type = 104;
GT.WS.radar_rotation_type = 1;
GT.WS.searchRadarMaxElevation = math.rad(45);

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].type = 5;
GT.WS[ws].center = "CENTER_TOWER";
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-10), math.rad(87)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(80);
GT.WS[ws].omegaZ = math.rad(80);
GT.WS[ws].pidY = {p=100,i=2.0,d=10, inn = 10};
GT.WS[ws].pidZ = {p=100,i=2.0,d=10, inn = 10};
GT.WS[ws].stabilizer = true;
GT.WS[ws].isoviewOffset = {0.0, 3.5, 0.0};
GT.WS[ws].pointer = "POINT_SIGHT_01"
GT.WS[ws].cockpit = {'_1A29/_1A29', {0.1, 0.0, 0.0} }
GT.WS[ws].PPI_view = "GenericPPI/GenericPPI"

local __LN = add_launcher(GT.WS[ws], GT_t.LN_t.automatic_gun_2A38);
__LN.beamWidth = math.rad(90);
__LN.ECM_K = 0.9;
__LN.BR = {{connector_name = 'POINT_GUN_01'},{connector_name = 'POINT_GUN_02'}};
__LN.fireAnimationArgument = 23;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;


__LN = add_launcher(GT.WS[ws], GT_t.LN_t._9M311);
__LN.inclination_correction_upper_limit = math.rad(20);
__LN.inclination_correction_bias = math.rad(3);
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 4;

--[[
        расположение ТПК при взгляде спереди
            18 19       29 30
            27 28       31 32

]]

__LN.BR = { 
            {connector_name = 'POINT_ROCKET_01',drawArgument = 18},
            {connector_name = 'POINT_ROCKET_06',drawArgument = 30},
            {connector_name = 'POINT_ROCKET_03',drawArgument = 27},
            {connector_name = 'POINT_ROCKET_08',drawArgument = 32},
            {connector_name = 'POINT_ROCKET_02',drawArgument = 19},
            {connector_name = 'POINT_ROCKET_05',drawArgument = 29},
            {connector_name = 'POINT_ROCKET_04',drawArgument = 28},
            {connector_name = 'POINT_ROCKET_07',drawArgument = 31},
        };
__LN = nil;

GT.Name = "2S6 Tunguska";
GT.Aliases = {"SA-19 Tunguska 2S6"}
GT.DisplayName = _("SAM SA-19 Tunguska 2S6");
GT.Rate = 20;

GT.Sensors = { OPTIC = {"TKN-3B day", "TKN-3B night", -- командирский
                        "Tunguska optic sight"
                        },
			   RADAR = GT.Name
             };

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = GT.WS[1].LN[2].distanceMax;
GT.mapclasskey = "P0091000014";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar_MissGun,Tunguska_,
                "AA_missile",
                "AA_flak", "Mobile AAA",
                "SR SAM",
                "SAM SR",
                "SAM TR",
                "RADAR_BAND1_FOR_ARM",
                };
GT.category = "Air Defence";
