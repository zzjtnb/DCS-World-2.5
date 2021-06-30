-- Stinger Manpad (Multiple skins and heads)

GT = {};
GT.animation = {};

GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_human);
set_recursive_metatable(GT.chassis, GT_t.CH_t.HUMAN);
set_recursive_metatable(GT.animation, GT_t.CH_t.HUMAN_ANIMATION);

GT.visual.shape = "soldier_stinger";
GT.visual.shape_dstr = "soldier_stinger_d";

GT.mobile = true;
				
GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 7500;
GT.WS.fire_on_march = false;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.stinger_manpad);
GT.WS[ws].pointer = "camera";
GT.WS[ws].cockpit = {"StingerSight/StingerSight", {0.1, 0.0, -0.23}}

GT.WS[ws].LN[1].min_launch_angle = math.rad(5);
GT.WS[ws].LN[1].reactionTime = 2;
GT.WS[ws].LN[1].BR[1].connector_name = "POINT_LAUNCHER";
GT.WS[ws].LN[1].sightMasterMode = 1;
GT.WS[ws].LN[1].sightIndicationMode = 1;

GT.Name = "Soldier stinger";
GT.DisplayName = _("Stinger MANPADS"); -- Man-Portable-Air-Defence System
GT.Rate = 5;

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000216";

GT.attribute = {wsType_Ground,wsType_SAM,wsType_Miss,Stinger_manpad,
				"MANPADS",
				"IR Guided SAM",
				"New infantry",
				};
				
GT.category = "Air Defence";

GT.Transportable = {
	size = 100
}