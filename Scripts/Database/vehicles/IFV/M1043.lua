-- M1043+M2
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.HMMWV);

GT.visual.shape = "HMMWV_M1043"
GT.visual.shape_dstr = "HMMWV_M1043_P_1"


--chassis
GT.swing_on_run = false


GT.sensor = {}
set_recursive_metatable(GT.sensor, GT_t.SN_visual)
GT.sensor.height = 2.0

--Burning after hit
GT.visual.fire_size = 0.6 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)
GT.animation_arguments.crew_presence = 50;

--GT.driverViewPoint = {0.12, 1.5, -0.7};
GT.driverViewConnectorName = "DRIVER_POINT"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithLLTV"

-- weapon systems

GT.WS = {}
GT.WS.maxTargetDetectionRange = 6000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'CENTER_TOWER'
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-5), math.rad(50)},
                    };
GT.WS[ws].drawArgument1 = 0
GT.WS[ws].drawArgument2 = 1
GT.WS[ws].pidY = {p=60, i=0.1, d=8, inn=5.5};
GT.WS[ws].pidZ = {p=60, i=0.1, d=8, inn=5.5};GT.WS[ws].omegaY = math.rad(60);
GT.WS[ws].omegaZ = math.rad(60);
GT.WS[ws].cockpit = { "IronSight/IronSight", {-1.9, 0.18, 0 }};

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[1]);
__LN.fireAnimationArgument = 23
__LN.BR[1].connector_name = 'POINT_GUN'
__LN.sightMasterMode = 1
__LN.sightIndicationMode = 1;

GT.Name = "M1043 HMMWV Armament"
GT.DisplayName = _("APC M1043 HMMWV Armament")
GT.Rate = 5

GT.EPLRS = true;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_Hummer,
                "APC",
                "Datalink",
        };
GT.category = "Armor";
GT.InternalCargo = {
			nominalCapacity = 400,
			maximalCapacity = 400, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}