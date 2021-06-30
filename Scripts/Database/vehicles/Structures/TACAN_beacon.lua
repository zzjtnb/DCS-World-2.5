-- Mobile TACAN

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary)
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.mass = 50
GT.TACAN = true;

GT.visual.shape = "tacan_b"
GT.visual.shape_dstr = "tacan_b_crush"
GT.CustomAimPoint = {0.0,1.0,0.0};
--Burning after hit
GT.visual.fire_size = 0.3 --relative burning size
GT.visual.fire_pos = {-0.7,0.0,-2.2};
GT.visual.fire_time = 400 --burning time (seconds)
GT.visual.min_time_agony = 0;
GT.visual.max_time_agony = 0;

GT.Name = "TACAN_beacon"
GT.DisplayName = _("TACAN Beacon (Man Portable) TTS 3030")
GT.Rate = 5

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000076";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericFort,
                "Fortifications",
                "CustomAimPoint",
                };
GT.category = "Fortification";
                