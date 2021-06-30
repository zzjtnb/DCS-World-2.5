-- Submarine 877 SSK (KILO Class Submarine)

GT = {};

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "kilo"
GT.visual.shape_dstr = ""


GT.life = 300
GT.mass = 3.076e+006
GT.max_velocity = 8.74556
GT.race_velocity = 5.14444
GT.economy_velocity = 3.60111
GT.economy_distance = 1.1112e+007
GT.race_distance = 740800
GT.shipLength = 58.8 -- above the water part
GT.Width = 8.8 -- above the water part
GT.Height = 7.46 -- above the water part
GT.Length = 58.8 -- above the water part
GT.DeckLevel = 2.45
GT.X_nose = 34.4
GT.X_tail = -20.5
GT.Tail_Width = 7.3
GT.Gamma_max = 0.35
GT.Om = 0.02
GT.speedup = 0.203634
GT.R_min = 125.2
GT.distFindObstacles = 237.8

GT.minPeriscopeDepth = 8.0;
GT.maxPeriscopeDepth = 10.0;

GT.animation_arguments = {
	radar1_rotation = -1,
	radar2_rotation = -1,
	radar3_rotation = -1,
	flag_animation = -1,
	periscope = 32
}

GT.airWeaponDist = 0
GT.airFindDist = 0
-- weapon systems

GT.Name = "KILO"
GT.DisplayName = _("SSK 877")
GT.Rate = 1200

GT.Sensors = {  OPTIC = {"long-range naval optics", "long-range naval LLTV"},
            };

GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   ="no";
GT.mapclasskey = "P0091000038";
GT.attribute = {wsType_Navy,wsType_Ship,wsType_Submarine,KILO,
				"Submarines",
				"NO_SAM"
				};