Effect = {
	{--дымогенератор
		Type = "smokeTrail",
		Texture = "puff02.dds",
		Tech = "Main",
		LODdistance = 10000, -- m
		
		ScaleBase = 2, -- meters
		
		Lighting = 0.7,
		
		bIsLeakage = true,

		DetailFactorMax = 5.0, -- max particles in segment = 2^(1+detailFactor). 5 - maximum
		
		Flame = false,
		Nozzle	= false,
		NozzleDir = -1,
		NozzleSpeedMin = 200,
		NozzleSpeedMax = 400,
			
		FadeInRange = 0.0,
		FadeOutHeight = 20000,
		
		DissipationFactor = 12.0,
		Length = 3400, -- m
		SegmentLength = 35,	-- m
		FadeIn = 0,	-- m
	}
}

Presets = {}
	
	
Presets.fuel = deepcopy(Effect)
Presets.fuel[1].Color = {1.0*1.2*1.2, 1.0, 1.0}
Presets.fuel[1].Opacity = 0.1

Presets.water = deepcopy(Effect)
Presets.water[1].Color = {1.0, 1.0, 1.05*1.05}
Presets.water[1].Opacity = 0.05

Presets.steam = deepcopy(Effect)
Presets.steam[1].Color = {1.0, 1.0, 1.0}
Presets.steam[1].Opacity = 0.45

Presets.oil = deepcopy(Effect)
Presets.oil[1].Color = {0.165*0.165, 0.15*0.15, 0.15*0.15}
Presets.oil[1].Opacity = 0.5
