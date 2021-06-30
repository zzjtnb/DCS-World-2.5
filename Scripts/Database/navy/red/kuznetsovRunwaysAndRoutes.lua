-- ***************** "Admiral Kuznecov" ******************************

--   Runways and landing strip for Kuznecov in LCS

GT.RunWays =
{     
-- landing strip definition (first in table)
--	VppStartPoint; 					azimuth (degree} 	Length_Vpp; 	Width_Vpp;
	{{-15.55, 16.257, -14.42},		352.27036, 			201.84, 		25.0,
-- alsArgument, lowGlidePath, slightlyLowGlidePath, onLowerGlidePath, onUpperGlidePath, slightlyHighGlidePath, highGlidePath
		0, 			0, 				0, 						0, 				0, 					0, 					0},
-- runways
	{{76.2, 16.257, 11.93},			353.0, 				102.368, 		25.0, 0, 0, 0, 0, 0, 0, 0},
	{{76.2, 16.257, -11.93},		7.0, 				102.368, 		25.0, 0, 0, 0, 0, 0, 0, 0},
	--{{32.5, 16.257, -16.78},		7.0, 				146.118, 		25.0, 0, 0, 0, 0, 0, 0, 0},
	{{-11.3, 16.257, -21.63},		7.0, 				189.868, 		25.0, 0, 0, 0, 0, 0, 0, 0},
};
GT.RunWays.RunwaysNumber = #GT.RunWays

GT.TaxiRoutes = 
	-- taxi routes and parking spots (LCS)
	--    x				y        z			V_target
{
	{ -- 1 parking spot
		{{65.0,	16.257,    	   -25.0},		3.0},
		{{70.0,	16.257,      	 0.0},		2.0},
		{{-10.0,	16.257,      7.0},		2.0},
		{{-92.0,	16.257,     21.0},		2.0}
	},
	{ -- 2 parking spot
		{{65.0,		16.257,    -25.0},		3.0},
		{{70.0,		16.257,      0.0},		2.0},
		{{-10.0,	16.257,     7.0},		2.0},
		{{-70.0,	16.257,    20.0},		2.0}
	},
	{ -- 3 parking spot
		{{65.0,   16.257,    -25.0},		3.0},
		{{70.0,   16.257,      0.0},		2.0},
		{{-10.0,   16.257,     6.0},		2.0},
		{{-48.0,   16.257,    18.0},		2.0}
	},		
	{ -- 4 parking spot		
		{{65.0,   16.257,    -25.0},		3.0},
		{{70.0,   16.257,      0.0},		2.0},
		{{-12.0,   16.257,     7.0},		2.0},
		{{-26.0,   16.257,    13.0},		2.0}
	},
	{ -- 5 parking spot
		{{65.0,   16.257,    -25.0},		3.0},
		{{70.0,   16.257,      0.0},		2.0},
		{{42.0,   16.257,      5.0},		2.0},
		{{-3.0,   16.257,      7.0},		2.0}
	},
	{ -- 6 parking spot
		{{65.0,   16.257,    -25.0},		3.0},
		{{70.0,   16.257,      0.0},		2.0},
		{{20.0,   16.257,      7.0},		2.0}
	},
	{ -- 7 parking spot
		{{65.0,	16.257,   	-25.0},			3.0},
		{{70.0,	16.257,	 	  0.0},			2.0},
		{{42.0,	16.257,	 	  5.0},			2.0}
	},
	{ -- 8 parking spot
		{{65.0,   16.257,    -25.0},		3.0},
		{{70.0,   16.257,      0.0},		2.0},
		{{55.0,   16.257,     18.0},		2.0}
	},
	{ -- 9 parking spot
		{{65.0,   16.257,    -25.0},		3.0},
		{{70.0,   16.257,      5.0},		2.0}
	}
};
GT.TaxiRoutes.RoutesNumber = #GT.TaxiRoutes

GT.HelicopterSpawnTerminal = 
	-- taxi routes and parking spots in LCS
	--    x				y        z			direction
{		
	{ TerminalIdx = 1, Points =
		{ -- 1 spawn spot
			{{ 112.65,	16.1,		-7.12}, 	0.0}			
		}
	},
	{ TerminalIdx = 2, Points =
		{ -- 2 spawn spot
			{{   88.75,	16.1,	  -10.0}, 	0.0}			
		}
	},
	{ TerminalIdx = 3, Points =
		{ -- 3 spawn spot									
			{{	72.7,	16.1,	  -29.0},  	0.0}
		}
	},	
	{ TerminalIdx = 4, Points =
		{ -- 4 spawn spot
			{{	48.8,	16.1,	  -27.5},	0.0}
		}
	},
	{ TerminalIdx = 5, Points =
		{ -- 5 spawn spot
			{{	25.7,	16.1,	  -23.0},	0.0}
		}
	},
	{ TerminalIdx = 6, Points =
		{ -- 6 spawn spot
			{{-0.65,	16.1,	  -23.0},	0.0}
		}
	},
	{ TerminalIdx = 7, Points =
		{ -- 7 spawn spot
			{{	-52.7,	16.1,	  -26.0},	0.0}
		}
	},
	{ TerminalIdx = 8, Points =
		{ -- M spawn spot
			{{	-96.45,	16.1,	  -2.26},	0.0}
		}
	},
}
GT.HelicopterSpawnTerminal.TerminalNumber = #GT.HelicopterSpawnTerminal