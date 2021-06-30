-- Elnya 160 (ALTAY Class Tanker)

GT = {};

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "elnya"
GT.visual.shape_dstr = ""


GT.life = 400
GT.mass = 7.25e+006
GT.max_velocity = 7.20222
GT.race_velocity = 6.17333
GT.economy_velocity = 6.17333
GT.economy_distance = 1.59272e+007
GT.race_distance = 1.59272e+007
GT.shipLength = 101.8
GT.Width = 15.9
GT.Height = 25.6
GT.Length = 110.8
GT.DeckLevel = 7.2
GT.X_nose = 57.7158
GT.X_tail = -40.001
GT.Tail_Width = 11
GT.Gamma_max = 0.35
GT.Om = 0.02
GT.speedup = 0.0814062
GT.R_min = 212.4
GT.distFindObstacles = 368.6

GT.riverCraft = true

GT.animation_arguments.water_propeller = -1;

GT.airWeaponDist = 0
GT.airFindDist = 0
-- weapon systems

GT.Name = "ELNYA"
GT.DisplayName = _("Tanker Elnya 160")
GT.Rate = 700

GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   ="no";
GT.mapclasskey = "P0000000634";
GT.attribute = {wsType_Navy,wsType_Ship,wsType_CivilShip,wsType_GenericCivShip,
				"Unarmed ships",
				};