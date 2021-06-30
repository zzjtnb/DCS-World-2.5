-- Ivanov

GT = {};

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "barge-1"
GT.visual.shape_dstr = ""


GT.life = 200
GT.mass = 7.25e+006
GT.max_velocity = 7.20222
GT.race_velocity = 6.17333
GT.economy_velocity = 6.17333
GT.economy_distance = 1.59272e+007
GT.race_distance = 1.59272e+007
GT.shipLength = 83.5
GT.Width = 14.6
GT.Height = 13.4
GT.Length = 85.2
GT.DeckLevel = 1.8
GT.X_nose = 42.8
GT.X_tail = -42
GT.Tail_Width = 11
GT.Gamma_max = 0.35
GT.Om = 0.02
GT.speedup = 0.101986
GT.R_min = 169.54
GT.distFindObstacles = 304.31

GT.riverCraft = true

GT.animation_arguments.water_propeller = -1;

GT.airWeaponDist = 0
GT.airFindDist = 0
-- weapon systems

GT.Name = "Dry-cargo ship-2"
GT.DisplayName = _("Dry cargo ship Ivanov")
GT.Rate = 50

GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   ="no";
GT.mapclasskey = "P0000000634";
GT.attribute = {wsType_Navy,wsType_Ship,wsType_CivilShip,wsType_GenericCivShip,
				"Unarmed ships",
				};