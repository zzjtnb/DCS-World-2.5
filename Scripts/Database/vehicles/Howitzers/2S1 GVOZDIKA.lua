-- SPG 2S1 'GVOZDIKA'
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MTLB);
GT.chassis.X_gear_1 = 2.1;
GT.chassis.X_gear_2 = -2.6;
set_recursive_metatable(GT.armour_scheme, GT_t.IFV_armour_scheme);
GT.armour_scheme.turret_elevation = { {-90,23, 1 }, { 23,90, 0.5 }, }
GT.chassis.life = 3;
GT.chassis.armour_thickness = 0.022;

GT.visual.shape = "2c1"
GT.visual.shape_dstr = "2c1-d"

GT.snd.move = "GndTech/TankMoveLight";
GT.snd.move_pitch = {{0.0, 0.6}, {10.0, 1.0}};
GT.snd.move_gain = {{0.0, 0.01}, {0.5, 0.5}, {12.0, 1.0}};

--chassis
GT.swing_on_run = false


GT.sensor = {}
set_recursive_metatable(GT.sensor, GT_t.SN_visual)
GT.sensor.height = 2.373

--Burning after hit
GT.visual.fire_size = 0.8 --relative burning size
GT.visual.fire_pos[1] = 1.696 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000 --burning time (seconds)
GT.visual.dust_pos = {3.0, 0.0, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.4, 0.45, -GT.chassis.Z_gear_2}

--GT.visual.dust_pos = {-2, 0, 0}
-- weapon systems
GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.05, 0.03, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

GT.WS = {};
GT.WS.maxTargetDetectionRange = 5000;
GT.WS.fire_on_march = false;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-3), math.rad(70),},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].mount_before_move = true;
GT.WS[ws].omegaY = math.rad(18);
GT.WS[ws].omegaZ = math.rad(14);
GT.WS[ws].pidY = {p=30, i=0.0, d=8, inn=2};
GT.WS[ws].pidZ = {p=30, i=0.0, d=8, inn=2};
GT.WS[ws].isoviewOffset = {0.0, 3.0, 0.0};
GT.WS[ws].pointer = 'POINT_SIGHT_01'
GT.WS[ws].cockpit = {"genericHowitzer", {0.1, 0.0, 0.0}}

--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.howitzer_2A18);
__LN.BR[1] = {connector_name = 'POINT_GUN',
			recoilArgument = 23,
			recoilTime = 0.3}
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

__LN = nil;

GT.Name = "SAU Gvozdika"
GT.DisplayName = _("SPH 2S1 Gvozdika")
GT.Rate = 15

GT.Sensors = {OPTIC = {"TKN-3B day", "TKN-3B night", -- командирский
						-- "PG2", "PG2_direct", 
					  }}

GT.DetectionRange  = 0;
GT.ThreatRangeMin = GT.WS[1].LN[1].distanceMin;
GT.ThreatRange = 15000;
GT.mapclasskey = "P0091000006";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericSAU,
                "Artillery",
                };
GT.category = "Artillery";
