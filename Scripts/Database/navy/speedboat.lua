-- speedboat with machinegun

GT = {};
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship)
GT.chassis.armour_thickness = 0.0005;

GT.visual = {}
GT.visual.shape = "Patrol_Boat"
GT.visual.shape_dstr = ""

GT.animation_arguments.crew_presence = 50;

GT.snd.engine = "Ships/speedboat";
GT.snd.move = "Ships/speedboatMove";


GT.life = 0.6
GT.mass = 5000
GT.max_velocity = 30
GT.race_velocity = 24
GT.economy_velocity = 15
GT.economy_distance = 300000
GT.race_distance = 200000
GT.shipLength = 8.26
GT.Width = 2.8
GT.Height = 3
GT.Length = 9.7
GT.DeckLevel = 0.5
GT.X_nose = 3.5
GT.X_tail = -3.5
GT.Tail_Width = 2
GT.Gamma_max = 0.35
GT.Om = 5.0
GT.speedup = 8.0
GT.R_min = 20
GT.distFindObstacles = 50

GT.riverCraft = true

GT.airWeaponDist = 1000
GT.airFindDist = 3000
-- weapon systems

GT.WS = {}
GT.WS.maxTargetDetectionRange = 10000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'CENTER_MGUN'
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(-5), math.rad(70)},
					};
GT.WS[ws].drawArgument1 = 25
GT.WS[ws].drawArgument2 = 26
GT.WS[ws].omegaY = math.rad(60)
GT.WS[ws].omegaZ = math.rad(30)

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_utes);
__LN.BR[1].connector_name = 'POINT_MGUN';
for i=7,10 do
	__LN.PL[i] = {}
	set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end
__LN.fireAnimationArgument = 44;

GT.Name = "speedboat"
GT.DisplayName = _("Armed speedboat")
GT.Rate = 20

GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   ="no";
GT.mapclasskey = "P0091000039";
GT.attribute = {wsType_Navy,wsType_Ship,wsType_ArmedShip,wsType_GenericLightArmoredShip,
					"low_reflection_vessel",
                    "Light armed ships",
					"NO_SAM"
				};
GT.Categories = {
					{name = "Armed Ship"},
				};