-- 2B11 120mm
GT = {};
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_stationary);
GT.armour_scheme = unarmed_armour_scheme;

set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 0.1;

GT.visual.shape = "2B11"
GT.visual.shape_dstr = "2B11_P_1"

--chassis

GT.sensor = {}
set_recursive_metatable(GT.sensor, GT_t.SN_visual)
GT.sensor.height = 2.3

--Burning after hit
GT.visual.fire_time = 3 --burning time (seconds)

-- weapon systems

--GT.WS[1]
GT.WS = {};
GT.WS.maxTargetDetectionRange = 5000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].newZ = GT_t.ANGLE_Z_TRANSLATION_OPTIONS.TRANSLATE_MIN_ANGLE_TO_MINUS_ONE;
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180),math.rad(45), math.rad(80),},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(30);
GT.WS[ws].pidY = {p=5, i=0.0, d=2};
GT.WS[ws].pidZ = {p=5, i=0.0, d=2};
GT.WS[ws].reference_angle_Z = math.rad(60);

--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.howitzer_2A60);
__LN.connectorFire = false;
__LN.PL[1].ammo_capacity= 20;
__LN.PL[1].portionAmmoCapacity= 20;
__LN.PL[1].reload_time = 30;
__LN.BR[1].connector_name = 'POINT_GUN';
__LN = nil;

GT.Name = "2B11 mortar";
GT.DisplayName = _("2B11 mortar");
GT.Rate = 5;

GT.DetectionRange  = 0;
GT.ThreatRangeMin = GT.WS[1].LN[1].distanceMin;
GT.ThreatRange = 7000;
GT.mapclasskey = "P0091000006";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericSAU,
                "Artillery",
                };
GT.category = "Artillery";
