-- SAM Gepard

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV)
set_recursive_metatable(GT.chassis, GT_t.CH_t.LEOPARD1);
GT.chassis.armour_thickness = 0.04;

GT.visual.shape = "gepard";
GT.visual.shape_dstr = "Gepard_p_1";


--chassis
GT.swing_on_run = false;
GT.animation_arguments.locator_rotation = 11;
GT.snd.radarRotation = "RadarRotation";
GT.radar_rotation_period = 1.0;
GT.toggle_alarm_state_interval = 5.0;


GT.sensor = {};
GT.sensor.max_range_finding_target = 15000;
GT.sensor.min_range_finding_target = 0;
GT.sensor.max_alt_finding_target = 3000;
GT.sensor.min_alt_finding_target = 0;
GT.sensor.height = 3.854;

--Burning after hit
GT.visual.fire_size = 1.0; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1100; --burning time (seconds)
GT.visual.dust_pos = {3.05, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.1, 0.6, -GT.chassis.Z_gear_2}

GT.driverViewPoint = {2.3, 1.5, 0.62};

-- weapon systems

GT.WS = {};
GT.WS.radar_type = 104;
GT.WS.radar_rotation_type = 1;
GT.WS.searchRadarMaxElevation = math.rad(45);
GT.WS.maxTargetDetectionRange = 10000;
GT.WS.smoke = {"SMOKE_04", "SMOKE_05", "SMOKE_03", "SMOKE_06", "SMOKE_02", "SMOKE_07", "SMOKE_01", "SMOKE_08",};

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = "CENTER_TOWER";
GT.WS[ws].angles = {
                    {math.rad(135), math.rad(-135), math.rad(-8), 1.4835},
					{math.rad(-135), math.rad(135), math.rad(-4.5), 1.4835},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(110);
GT.WS[ws].omegaZ = math.rad(120);
GT.WS[ws].pidY = {p=100,i=0.5,d=8, inn = 10};
GT.WS[ws].pidZ = {p=100,i=0.5,d=8, inn = 10};
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].cockpit = {'Gepard/Gepard', {-1.6,0.1,-0.88}}
GT.WS[ws].isoviewOffset = {0.0, 4.5, 0.0};
GT.WS[ws].PPI_view = "GenericPPI/GenericPPI"

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.automatic_gun_KDA);
__LN.BR = {{connector_name = 'POINT_GUN_01'},{connector_name = 'POINT_GUN_02'}};
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;
__LN.beamWidth = math.rad(90);
__LN.fireAnimationArgument = 23;
__LN = nil;

GT.Name = "Gepard";
GT.DisplayName = _("AAA Gepard");
GT.Rate = 10;

GT.Sensors = { OPTIC = {"Karat visir"} --[[temporary]], RADAR = GT.Name, };

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000017";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar_Gun,Gepard_,
                "AA_flak",
                "Mobile AAA",
                "SAM SR",
                "SAM TR",
                "RADAR_BAND1_FOR_ARM",
                };
GT.category = "Air Defence";
