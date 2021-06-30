-- SPG M109 
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.M109);
GT.chassis.life = 3;

set_recursive_metatable(GT.armour_scheme, GT_t.IFV_armour_scheme);
GT.armour_scheme.turret_elevation = { {-90,30, 1 }, { 30,90, 0.5 }, }

GT.visual.shape = "m-109"
GT.visual.shape_dstr = "M-109_p_1"


--chassis
GT.swing_on_run = false
GT.toggle_alarm_state_interval = 4;


GT.sensor = {}
set_recursive_metatable(GT.sensor, GT_t.SN_visual)
GT.sensor.height = 2.8

GT.visual.fire_pos[1] = 1.863

--Burning after hit
GT.visual.fire_size = 1.0 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200 --burning time (seconds)
GT.visual.dust_pos = {3.177, 0.0, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-2.8, 0.6, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT"}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {}
GT.WS.maxTargetDetectionRange = 5000;
GT.WS.fire_on_march = false;

local ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'CENTER_TOWER'
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-3), math.rad(75)},
                    };
GT.WS[ws].drawArgument1 = 0
GT.WS[ws].drawArgument2 = 1
GT.WS[ws].mount_before_move = true;
GT.WS[ws].omegaY = math.rad(20);
GT.WS[ws].omegaZ = math.rad(25);
GT.WS[ws].pidY = {p=30, i=0.0, d=8, inn=2};
GT.WS[ws].pidZ = {p=30, i=0.0, d=8, inn=2};
GT.WS[ws].reference_angle_Y = 0;
GT.WS[ws].reference_angle_Z = 0;


--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.howitzer_M185);
__LN.reactionTimeLOFAC = 3;
__LN.reactionTime = 100;
__LN.connectorFire = false;
__LN.BR[1] = {connector_name = 'POINT_GUN',
			  recoilArgument = 23,
			  recoilTime = 0.7}
__LN.customViewPoint = { "genericHowitzer", {-3.5, 0.3, 0 }, };
__LN = nil;

GT.Name = "M-109"
GT.Aliases = {"M109"}
GT.DisplayName = _("SPH M109 Paladin")
GT.Rate = 15

GT.Sensors = { OPTIC = {"MP7"}};

GT.EPLRS = true

GT.DetectionRange  = 0;
GT.ThreatRangeMin = GT.WS[1].LN[1].distanceMin;
GT.ThreatRange = 22000;
GT.mapclasskey = "P0091000006";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericSAU,
                "Artillery", "Datalink",
                };
GT.category = "Artillery";
