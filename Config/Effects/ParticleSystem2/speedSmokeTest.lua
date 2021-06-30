Effect = {
	{
		Type = "speedSmokeTest",		
		Texture = "fire.png",
		TextureSmoke = "puff01.dds",
		TextureSmokeGradient = "fireGradient02.dds",
		BaseColor = {85/255.0*1.8, 90/255.0*1.8, 90/255.0*1.8},
		MaxParticlesFire =1000,
		MaxParticlesSmoke = 1200,
		ParticlesLimit = 2200,
		LODdistance = 500*500,
		Opacity = 1.0,
		NormalImportance = 0.65, 
		SpawnRadius = 0.001,
		Radius = 0.3, -- meters
		RadiusMax = 0.1, -- max rotation radius of each particle, m
		SmokeScaleBase = 2.8, --  meters
		FireScaleBase = 3.5,
		LightScattering = 0.4,
		ConvectionSpeed = {
			{1, 3},  
			{5, 4}
		},			
		OffsetMax = {
			{20, 0.1},
			{1000, 0.29}
		},			
		FrequencyMin = {
			{20, 0.25},
			{1000, 0.7}
		},			
		FrequencyJitter = {
			{20, 0.25},
			{1000, 0.2}
		},		
		AngleJitter = {
			{20, 0.45},
			{1000, 0.2}
		},	
		
		SmokeScaleJitter = {
			{20, 2.0*0.7*1.75},
			{100, 4.5*0.7*1.75},
			{500, 5*0.7*1.75*1.25},
			{1000,7*0.7*1.75*1.4}
		},

		SmokeDistMax = {			
			{3, 0.75*0.25*0.25},
			{20, 0.75*0.25*0.25},
			{100, 0.75*0.25*0.75},
			{300, 0.75*0.75*0.75},
			{1000, 0.75*0.75},
			{2000, 0.75}
		},
		SmokeTrailLength = {
			{6, 25*3.8},
			{20, 75*3.6},
			{300, 400*2*3.5},
			{1000, 700*2*3.2},
			{2000, 10*2*3}
		},
		
		FireScaleJitter = {
			{20, 1.0*0.6},
			{100,3.5*0.7*0.6},
			{1000,4.75*0.7}
		},
		FireDistMax = {			
			{20, 0.95*0.28*0.2},
			{1000, 3.0*0.4*0.3},
			{2000, 1.0*0.4*0.3}
		},
		FireTrailLength = {
			{6, 20*5*0.3},
			{20, 70*2.5*0.3*0.5*0.3},
			{300, 350*1.5*0.65},
			{1000, 480*1.5*0.65},
			{2000, 600*1.5*0.65}
		},
		Light =
		{
			Color = {255.0/255.0, 251.0/255.0, 198.0/255.0},
			Radius = 150.0,
			Lifetime = 50.0,
			Offset = {0, 0.0, 0}
		}		
	}
}
 
Presets = {}

Presets.big = deepcopy(Effect)
Presets.big[1].SmokeScaleBase = 4.0
Presets.big[1].FireScaleBase = 3.2
Presets.big[1].MaxParticlesFire = 200
Presets.big[1].LightScattering = 0.75


Presets.small = deepcopy(Effect)
Presets.small[1].SmokeScaleBase = 1.0
Presets.small[1].FireScaleBase = 0.7

Presets.fire = deepcopy(Effect)
Presets.fire[1].MaxParticlesSmoke = 0
Presets.fire[1].MaxParticlesFire = 300
Presets.smoke = deepcopy(Effect)
Presets.smoke[1].MaxParticlesFire = 0
Presets.smoke[1].LightScattering = 0

Presets.smokeZone = deepcopy(Presets.smoke)
Presets.smokeZone[1].SpawnRadius = 1.5
Presets.smokeZone[1].Opacity = 0.45 
Presets.smokeZone[1].NormalImportance = 0.4
Presets.smokeZone[1].SmokeScaleBase = 2.8*1.35
Presets.smokeZone[1].FireScaleBase = 3.5*1.35

Presets.smokeZoneSmall = deepcopy(Presets.smokeZone)
Presets.smokeZoneSmall[1].SmokeScaleBase = 1.0
Presets.smokeZoneSmall[1].FireScaleBase = 0.7

Presets.grey = deepcopy(Effect)
Presets.grey[1].Opacity = 0.05

Presets.greyBig = deepcopy(Presets.big)
Presets.greyBig[1].Opacity = 0.05

Presets.greySmall = deepcopy(Presets.small)
Presets.greySmall[1].Opacity = 0.05

Presets.greySmoke = deepcopy(Presets.smoke)
Presets.greySmoke[1].Opacity = 0.05

Presets.benzin = deepcopy(Effect)
Presets.benzin[1].FireTrailLength = {
	{6, 20*5*0.5},
	{20, 70*2.5*0.3*0.5},
	{300, 350*1.5*0.5},
	{1000, 480*1.5*0.5},
	{2000, 600*1.5*0.5}
}
Presets.benzin[1].SmokeDistMax = {			
	{3, 0.75*0.25*0.1*1.5},
	{20, 0.75*0.25*0.1*1.5},
	{1000, 0.75*0.25*1.5},
	{2000, 0.75*0.25*1.5}
}
Presets.benzin[1].SmokeTrailLength = {
	{6, 25*0.6},
	{20, 75*0.6},
	{300, 400*2*0.6},
	{1000, 700*2*0.6},
	{2000, 10*2*0.6}
}

Presets.benzin[1].SmokeScaleBase = 1.0
Presets.benzin[1].FireScaleBase = 3.25
Presets.benzin[1].Opacity = 0.25

Presets.carbon = deepcopy(Effect)
Presets.carbon[1].BaseColor = {30/255, 30/255, 35/255}
