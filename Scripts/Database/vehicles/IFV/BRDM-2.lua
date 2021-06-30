-- BRDM-2
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV)
set_recursive_metatable(GT.chassis, GT_t.CH_t.BRDM2);

GT.visual.shape = "brdm-2";
GT.visual.shape_dstr = "Brdm-2_p_1";

--chassis
GT.swing_on_run = false;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.31;

--Burning after hit
GT.visual.fire_size = 0.5; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)

GT.driverViewConnectorName = "DRIVER_POINT"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems
GT.WS = {};
GT.WS.maxTargetDetectionRange = 5000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.KPVT_BTR);
GT.WS[ws].pointer = 'POINT_SIGHT_01'
GT.WS[ws].angles_mech = {
					{math.rad(180), math.rad(-180), math.rad(-6), math.rad(30)},
}
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-6), math.rad(-6), math.rad(30)},
					{math.rad(-6), math.rad(-16), math.rad(9), math.rad(30)},
					{math.rad(-16), math.rad(-180), math.rad(-6), math.rad(30)},
}
GT.WS[ws].center = 'CENTER_TOWER';

GT.WS[ws].LN[1].fireAnimationArgument = 23;
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_GUN';
GT.WS[ws].LN[2].BR[1].connector_name = 'POINT_MGUN';

GT.Name = "BRDM-2";
GT.DisplayName = _("ARV BRDM-2");
GT.Rate = 8;

GT.Sensors = { OPTIC = {"TPKU-2B", "TKN-1S"} }

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000003";
GT.attribute = {wsType_Ground, wsType_Tank, wsType_Gun, wsType_GenericAPC,
                "APC",
                };
GT.category = "Armor";
