-- SPG 2S19 'MSTA' 152mm
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.T72);
GT.chassis.life = 3;
GT.chassis.r_max = 0.44; 
GT.chassis.canCrossRiver = false
GT.chassis.X_gear_1 = 2.46
GT.chassis.X_gear_2 = -2.35
GT.chassis.armour_thickness = 0.012
GT.armour_scheme = {
						hull_elevation = { {-90,11,0.8}, {11,40,1}, {40,90,0.9}, },
						hull_azimuth = { {0,15,1.5}, {15,160,1.0}, {160,180,0.7}},
						turret_elevation = { {-90,40,1}, {40,90,0.7}}, 
						turret_azimuth = { {0,180,1.0}}
					};

GT.visual.shape = "2-c19"
GT.visual.shape_dstr = "2-c19_p_1"


--chassis
GT.swing_on_run = false
GT.toggle_alarm_state_interval = 4;


-- visual
GT.sensor = {}
set_recursive_metatable(GT.sensor, GT_t.SN_visual)
GT.sensor.height = 2.985

--Burning after hit
GT.visual.fire_size = 1.1 --relative burning size
GT.visual.fire_pos[1] = 1.0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200 --burning time (seconds)
GT.visual.dust_pos = {3.57, 0.03, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-2.9, 0.5, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.05, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems
--GT.WS[1]
GT.WS = {}
GT.WS.maxTargetDetectionRange = 5000;
GT.WS.smoke = {"SMOKE_03", "SMOKE_04", "SMOKE_02", "SMOKE_05", "SMOKE_01", "SMOKE_06"};
GT.WS.fire_on_march = false;

local ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'CENTER_TOWER'
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-4), math.rad(68)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].mount_before_move = true;
GT.WS[ws].omegaY = math.rad(22);
GT.WS[ws].omegaZ = math.rad(14);
GT.WS[ws].pidY = {p=30, i=0.0, d=9, inn=2};
GT.WS[ws].pidZ = {p=30, i=0.0, d=9, inn=2};
GT.WS[ws].isoviewOffset = {0.0, 3.8, 0.0};
GT.WS[ws].pointer = 'POINT_SIGHT_02'
GT.WS[ws].cockpit = {"genericHowitzer", {0.1, 0.0, 0.0}}

--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.howitzer_2A64);
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

__LN.BR[1] = {connector_name = 'POINT_GUN',
			  recoilArgument = 23,
			  recoilTime = 0.5}

--GT.WS[2]
ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].base = 1
GT.WS[ws].center = 'CENTER_MGUN'
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-3), math.rad(70)},
                    };
GT.WS[ws].drawArgument1 = 25
GT.WS[ws].drawArgument2 = 26
GT.WS[ws].omegaY = math.rad(50);
GT.WS[ws].omegaZ = math.rad(50);
GT.WS[ws].pidY = {p=10, i=0.1, d=4, inn=3};
GT.WS[ws].pidZ = {p=10, i=0.1, d=4, inn=3};
GT.WS[ws].reference_angle_Y = 0
GT.WS[ws].reference_angle_Z = 0

--GT.WS[2].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_utes);
__LN.type = 10; -- AA Machinegun
__LN.reactionTime = 0.5 -- задержка на прицеливание
__LN.BR[1].connector_name = 'POINT_MGUN';
__LN.fireAnimationArgument = 44;
__LN.customViewPoint = { "PZU-7/PZU-7", {-1.9, 0.1, 0 }, };
__LN = nil;


GT.Name = "SAU Msta"
GT.Aliases = {"2S19 Msta"}
GT.DisplayName = _("SPH 2S19 Msta")
GT.Rate = 15

GT.Sensors = {OPTIC = {"TKN-3B day", "TKN-3B night", -- командирский
						-- "1P22", "1P23", 
					  }}

GT.DetectionRange  = 0;
GT.ThreatRangeMin = GT.WS[1].LN[1].distanceMin;
GT.ThreatRange = 23500;
GT.mapclasskey = "P0091000006";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericSAU,
                "Artillery",
                };
GT.category = "Artillery";
