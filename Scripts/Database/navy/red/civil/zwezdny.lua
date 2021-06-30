-- Zwezdny

GT = {};

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "zwezdny"
GT.visual.shape_dstr = ""


GT.life = 20
GT.mass = 85000
GT.max_velocity = 7.30511
GT.race_velocity = 7.30511
GT.economy_velocity = 7.30511
GT.economy_distance = 4.63e+006
GT.race_distance = 4.63e+006
GT.shipLength = 36.2
GT.Width = 6.5
GT.Height = 12.9
GT.Length = 40
GT.DeckLevel = 2.3
GT.X_nose = 20.3
GT.X_tail = -19
GT.Tail_Width = 3.9
GT.Gamma_max = 0.35
GT.Om = 0.02
GT.speedup = 0.523183
GT.R_min = 34
GT.distFindObstacles = 101

GT.riverCraft = true

GT.animation_arguments.water_propeller = -1;

GT.airWeaponDist = 0
GT.airFindDist = 0
-- weapon systems

GT.Name = "ZWEZDNY"
GT.DisplayName = _("Civil boat Zvezdny")
GT.Rate = 50

GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   ="no";
GT.mapclasskey = "P0000000634";
GT.attribute = {wsType_Navy,wsType_Ship,wsType_CivilShip,wsType_GenericCivShip,
				"low_reflection_vessel",
				"Unarmed ships",
				};