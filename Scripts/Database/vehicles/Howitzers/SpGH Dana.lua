-- SpGH 'Dana'
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.TATRA_815);
set_recursive_metatable(GT.armour_scheme, GT_t.IFV_armour_scheme);

GT.visual.shape = "SpGH_Dana"
GT.visual.shape_dstr = "SpGH_Dana_p_1"
--GT.animation_arguments.alarm_state = -1;

--chassis
GT.swing_on_run = false


-- visual
GT.sensor = {}
set_recursive_metatable(GT.sensor, GT_t.SN_visual)
GT.sensor.height = 3.5


--Burning after hit
GT.visual.fire_size = 0.9 --relative burning size
GT.visual.fire_pos[1] = 1.4 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = -0.461 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000 --burning time (seconds)
GT.visual.dust_pos = {3.6, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.6, 0.7, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.05, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpit"

-- weapon systems
--GT.WS[1]
GT.WS = {};
GT.WS.maxTargetDetectionRange = 5000;
GT.WS.fire_on_march = false;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(179.9), math.rad(-179.9), math.rad(-4), math.rad(70)}, -- no traverse through 360 is possible due to cables
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].mount_before_move = true;
GT.WS[ws].omegaY = math.rad(18);
GT.WS[ws].omegaZ = math.rad(13);
GT.WS[ws].pidY = {p=30, i=0.0, d=8, inn=2};
GT.WS[ws].pidZ = {p=30, i=0.0, d=8, inn=2};
GT.WS[ws].isoviewOffset = {0.0, 3.5, 0.0};
GT.WS[ws].pointer = 'POINT_SIGHT_01'
GT.WS[ws].cockpit = {"genericHowitzer", {0.3, 0.0, 0.0}}

--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.DANA_howitzer);
__LN.BR[1] = {connector_name = 'POINT_GUN',
			  recoilArgument = 23,
			  recoilTime = 0.3}
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

__LN = nil;

GT.Name = "SpGH_Dana"
GT.DisplayName = _("SpGH Dana")
GT.Rate = 15

GT.Sensors = {OPTIC = {"TKN-3B day", "TKN-3B night", -- командирский
						-- "PG2", "PG2_direct", 
					  }}

GT.DetectionRange  = 0;
GT.ThreatRangeMin = GT.WS[1].LN[1].distanceMin;
GT.ThreatRange = 18700;
GT.mapclasskey = "P0091000006";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericSAU,
                "Artillery",
                };
GT.category = "Artillery";
