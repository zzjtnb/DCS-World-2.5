-- ***************** "USS Nimitz" ******************************

--   Runways and landing strip for Vinson(Nimitz) in LCS

GT.RunWays =
{     
-- landing strip definition (first in table)
--	VppStartPoint; 					azimuth (degree} 	Length_Vpp; 	Width_Vpp;
	{{-44.54,	19.6, -10.49}, 		350.8641, 			240.0, 			25.0, 		
-- alsArgument, lowGlidePath, slightlyLowGlidePath, onLowerGlidePath, onUpperGlidePath, slightlyHighGlidePath, highGlidePath
	0, 			2.5, 		  		2.8, 					3.0, 			  3.0, 				3.2, 				3.5},
-- runways
	{{64.35,	19.6, 16.38}, 		354.0186, 			113.0, 			25.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},
	{{59.36,	19.6, -4.31}, 		357.895, 			117.4, 			25.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},
	{{-33.61,	19.6, -20.77}, 		355.589, 			137.0, 			25.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},
	{{-51.60,	19.6, -31.31}, 		0.0, 				132.52, 		25.0, 		0, 2.5, 2.8, 3.0, 3.0, 3.2, 3.5},
};
GT.RunWays.RunwaysNumber = #GT.RunWays

GT.TaxiRoutes = 
	-- taxi routes and parking spots in LCS
	--    x				y        z			V_target
{					
	{ -- 1 parking spot
		{{23.0, 	19.6,		-20.0},		3.0},
		{{23.89,	19.6,		 25.0},		2.0}
	},
	{ -- 2 parking spot
		{{ 23.0,	19.6,		-20.0},  	3.0},
		{{ 10.0,	19.6,		 10.0},  	2.0},
		{{-60.0,	19.6,		 15.0},  	2.0},
		{{-130.0,	19.6,		 26.0}, 	2.0}
	},
	{ -- 3 parking spot
		{{ 23.0,	19.6,		-20.0},  	3.0},
		{{ 10.0,	19.6,		 10.0},  	2.0},
		{{-60.0,	19.6,		 15.0},  	2.0},
		{{-110.0,	19.6,		 25.0}, 	2.0}
	},
	{ -- 4 parking spot
		{{23.0,		19.6,		-20.0},		3.0},
		{{10.0,		19.6,		 10.0},		2.0},
		{{-60.0,	19.6,		 15.0},		2.0},
		{{-90.0,	19.6,		 20.0},		2.0}
	},
	{ -- 5 parking spot
		{{23.0,		19.6,		-20.0},  	3.0},
		{{10.0,		19.6,		 10.0},  	2.0},
		{{-70.0,	19.6,		 16.0}, 	2.0}
	},
	{ -- 6 parking spot
		{{23.0,		19.6,		-20.0},  	3.0},
		{{10.0,		19.6,		 10.0},  	2.0},
		{{-50.0,	19.6,		 14.0}, 	2.0}
	},
	{ -- 7 parking spot
		{{23.0,		19.6,		-20.0},		3.0},
		{{10.0,		19.6,		 10.0},		2.0},
		{{-25.0,	19.6,		  8.0},		2.0},
		{{-30.0,	19.6,		 25.0},		2.0}
	},
	{ -- 8 parking spot
		{{23.0,		19.6,		-20.0},		3.0},
		{{10.0,		19.6,		 10.0},		2.0},
		{{-30.0,	19.6,		  8.0},		2.0}
	},
	{ -- 9 parking spot
		{{23.0,		19.6,		-20.0},		3.0},
		{{10.0,		19.6,		 10.0},		2.0},
		{{-10.0,	19.6,		  6.0},		2.0},
		{{-10.0,	19.6,		 25.0},		2.0}
	},
	{ -- 10 parking spot
		{{23.0,		19.6,		-20.0},		3.0},
		{{10.0,		19.6,		 10.0},		2.0},
		{{-10.0,	19.6,		  6.0},		2.0}
	},
	{ -- 11 parking spot
		{{23.0,		19.6,		-20.0},		3.0},
		{{10.0,		19.6,		  8.0},		2.0},
		{{10.0,		19.6,		 25.0},		2.0}
	},
	{ -- 12 parking spot
		{{23.0,		19.6,		-20.0},		3.0},
		{{10.0,		19.6,		 10.0},		2.0}
	},
	{ -- 13 parking spot
		{{23.0,		19.6,		-20.0},		3.0},
		{{30.0,		19.6,		 10.0},		2.0}
	};
}
GT.TaxiRoutes.RoutesNumber = #GT.TaxiRoutes

GT.HelicopterSpawnTerminal = 
	-- taxi routes and parking spots in LCS
	--    x				y        z			direction
{		
	{ TerminalIdx = 1, Points =
		{ -- 1 spawn spot
			{{ 124.0,	19.6,	   1.5}, 	0.0}			
		}
	},
	{ TerminalIdx = 2, Points =
		{ -- 2 spawn spot
			{{   87.0,	19.6,	   -1.0}, 	0.0}			
		}
	},
	{ TerminalIdx = 3, Points =
		{ -- 3 spawn spot
			{{14.0,	19.6,		-27.5},  	0.0}
		}
	},	
	{ TerminalIdx = 4, Points =
		{ -- 4 spawn spot
			{{-17.0,	19.6,	 -27.0},	0.0}
		}
	},	
	{ TerminalIdx = 5, Points =
		{ -- 5 spawn spot
			{{-48.0,	19.6,	 -26.5},  	0.0}
		}
	},	
}
GT.HelicopterSpawnTerminal.TerminalNumber = #GT.HelicopterSpawnTerminal