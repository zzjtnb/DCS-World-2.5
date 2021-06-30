Effect = {
	{
		Type = "speedFire",
		Texture = "firePuff_03_low2.dds",
		ParticlesLimit = 300,
		
		Radius = 1, -- meters
		ScaleBase = 2.5, --  meters
		Power = 8,
		ConvectionSpeed = { -- speed value by emitter scale
			{1, 3},  
			{5, 12}
		},	
		
		DistMax = {
			{5, 0.06},
			{20, 0.1*0.3},
			{1000, 0.65*0.3},
			{2000, 0.8*0.3}
		},
		
		TrailLength = {
			{5, 4},
			{20, 2},
			{500, 1.5},
			{2000, 1.2}
		},
	}
}






