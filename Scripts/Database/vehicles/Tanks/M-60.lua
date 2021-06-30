-- MBT M-60

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_tank);
set_recursive_metatable(GT.chassis, GT_t.CH_t.M60);
GT.armour_scheme = T55_armour_scheme;

GT.visual.shape = "m-60";
GT.visual.shape_dstr = "Mt-lb_p_1";

-- Crew

GT.crew_locale = "ENG";
GT.crew_members = {"commander", "gunner"};

-- Crew

--chassis
GT.swing_on_run = false;


GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 3.27;

--Burning after hit
GT.visual.fire_size = 1.0; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200; --burning time (seconds)
GT.visual.dust_pos = {3.0, 0.3, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.3, 0.7, -GT.chassis.Z_gear_2}


-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 5000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].newZ = GT_t.ANGLE_Z_TRANSLATION_OPTIONS.TRANSLATE_MAX_ANGLE_TO_ONE;
GT.WS[ws].new_rotation = false;
GT.WS[ws].pos = {0.7, 2.1,0};
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-9), math.rad(19)}, -- склонение 0 - ограничение модели, должно быть -9
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(24);
GT.WS[ws].omegaZ = math.rad(4);
GT.WS[ws].reference_angle_Z = math.rad(10);
GT.WS[ws].laser = true;

-- GT.WS[ws].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[6]);
__LN.beamWidth = math.rad(1);
__LN.connectorFire = false;

--GT.WS[1].LN[2]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.tank_gun_105mm);
__LN.beamWidth = math.rad(1);
__LN.connectorFire = false;
__LN.PL[1].ammo_capacity = 33;
__LN.PL[1].reload_time = 15 * 33
__LN.PL[1].virtualStwID = 1;

--GT.WS[1].LN[3]
__LN = add_launcher(GT.WS[ws], __LN); -- HE rounds
__LN.type = 6;
__LN.distanceMin = 20;
__LN.distanceMax = 8000;
__LN.PL[1].ammo_capacity = 24;
__LN.PL[1].reload_time = 15 * 24
__LN.PL[1].shell_name = {"M68_105_HE"};
__LN.PL[1].virtualStwID = 1;
__LN = nil;

GT.Name = "M-60";
GT.DisplayName = _("MBT M60A3");
GT.Rate = 15;

GT.Sensors = { OPTIC = {"AN/VSG-2 day","AN/VSG-2 night"}, };

GT.DetectionRange  = 0;
GT.airWeaponDist = 1500
GT.ThreatRange =  GT.WS[1].LN[2].distanceMax;
GT.mapclasskey = "P0091000001";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericTank,
                "Tanks",
                "Old Tanks",
                };
GT.category = "Armor";
