-- M1043+TOW
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV)
set_recursive_metatable(GT.chassis, GT_t.CH_t.HMMWV);

GT.visual.shape = "HMMWV_M1045"
GT.visual.shape_dstr = "HMMWV_M1045_P_1"


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
                    {math.rad(180), math.rad(-180), math.rad(-5), math.rad(20)},
                    };
GT.WS[ws].drawArgument1 = 0
GT.WS[ws].drawArgument2 = 1
GT.WS[ws].pidY = {p=100,i=0.5,d=10, inn = 7};
GT.WS[ws].pidZ = {p=100,i=0.5,d=10, inn = 7};
GT.WS[ws].omegaY = math.rad(50);
GT.WS[ws].omegaZ = math.rad(30);

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.TOW);
__LN.BR = { {connector_name = 'POINT_GUN',drawArgument = 4 } };
__LN.PL[1].ammo_capacity = 6;
__LN.PL[1].shot_delay = 30;
__LN.PL[1].reload_time = 6*30;
__LN.customViewPoint = { "genericMissileAT", {-0.9, 0.15, -0.275 }, };
__LN = nil;

GT.Name = "M1045 HMMWV TOW"
GT.DisplayName = _("ATGM M1045 HMMWV TOW")
GT.Rate = 5

GT.Sensors = { OPTIC = {"TAS4 TOW day" , "TAS4 TOW night"
                        },
            };
            
GT.EPLRS = true

GT.DetectionRange = 0;
GT.airWeaponDist = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000204";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_MissGun,wsType_Hummer,
                "APC",
                "ATGM",
                "Datalink",
                };
GT.category = "Armor";
