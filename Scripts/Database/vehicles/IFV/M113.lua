-- M-113
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.M113);

GT.armour_scheme.hull_elevation = { {-90, 50, 1 }, { 50, 90, 0.6 }, }
GT.DM = {
	{ area_name = "FRONT_01", 				armour = {width=0.020}},
	{ area_name = "FRONT_02", 				armour = {width=0.020}},
	{ area_name = "BODY_LEFT", 				armour = {width=0.022}},
	{ area_name = "BOFY_RIGHT", 			armour = {width=0.022}},
	{ area_name = "BODY_BACK", 				armour = {width=0.020}},
	{ area_name = "BODY_BOTTOM", 			armour = {width=0.014}},
	{ area_name = "GUN", 					armour = {width=0.070}},
	{ area_name = "TURRET", 				armour = {width=0.008}},
	{ area_name = "HATCH", 					armour = {width=0.008}},
	{ area_name = "Tracks_LEFT",	 		armour = {width=0.070}},
	{ area_name = "Tracks_RIGHT",	 		armour = {width=0.070}},
}

GT.visual.shape = "m-113";
GT.visual.shape_dstr = "M-113_p_1";

-- Turbine
GT.turbine = false;
-- Turbine

--chassis
GT.swing_on_run = false;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.52;

--Burning after hit
GT.visual.fire_size = 0.4; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0;-- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = -0.413; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)
GT.visual.dust_pos = {2.305, 0.0, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-2.2, 0.2, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.05, 0.03, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

GT.WS = {};
GT.WS.maxTargetDetectionRange = 5000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(-5), math.rad(50)},
					};
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].pidY = {p=60, i=0.1, d=8, inn=5.5};
GT.WS[ws].pidZ = {p=60, i=0.1, d=8, inn=5.5};
GT.WS[ws].omegaY = math.rad(80);
GT.WS[ws].omegaZ = math.rad(90);
GT.WS[ws].cockpit = { "IronSight/IronSight", {-1.5, 0.14, 0 } };

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
__LN.fireAnimationArgument = 23
__LN.BR[1].connector_name = 'POINT_GUN'
__LN.sightMasterMode = 1
__LN.sightIndicationMode = 1;

GT.Name = "M-113";
GT.DisplayName = _("APC M113");
GT.Rate = 10;

GT.EPLRS = true

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000004";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericAPC,
				"APC", "Datalink",
				};
GT.category = "Armor";
GT.InternalCargo = {
			nominalCapacity = 1100,
			maximalCapacity = 1100, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}