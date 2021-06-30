-- Submarine 641B SSK (TANGO Class Submarine)

GT = {};

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "som"
GT.visual.shape_dstr = ""


GT.life = 300
GT.mass = 3.8e+006
GT.max_velocity = 8.23111
GT.race_velocity = 5.14444
GT.economy_velocity = 1.54333
GT.economy_distance = 926000
GT.race_distance = 926000
GT.shipLength = 91
GT.Width = 8.8 -- above the water part
GT.Height = 17.2
GT.Length = 91
GT.DeckLevel = 3
GT.X_nose = 33.2
GT.X_tail = -45.3
GT.Tail_Width = 5.2
GT.Gamma_max = 0.35
GT.Om = 0.02
GT.speedup = 0.124086
GT.R_min = 182
GT.distFindObstacles = 323

GT.animation_arguments.water_propeller = -1;

GT.airWeaponDist = 0
GT.airFindDist = 0
-- weapon systems

GT.Name = "SOM"
GT.DisplayName = _("SSK 641B")
GT.Rate = 1500

GT.Sensors = {  OPTIC = {"long-range naval optics", "long-range naval LLTV"},
            };

GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   ="no";
GT.mapclasskey = "P0091000038";
GT.attribute = {wsType_Navy,wsType_Ship,wsType_Submarine,TANGO,
				"Submarines",
				"NO_SAM"
				};