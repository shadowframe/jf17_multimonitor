Effect = {
	{
		Type = "smoke",
		LODdistance = 50000.0,
		Texture = "puff01.dds",
		-- Texture = "puff02.dds",
		
		ColorGradientTexture = "fireGradient01.dds",
		AlphaGradientTexture = "fireGradient01.dds",
		
		Points = 7, -- 2 minimum
		Density = 0.2,
		Radius = {150, 750},-- start, finish
		RadiusFactor = 1.0,
		Length = 1500,
		TrailSpeedMin = 15,
		HeightFactor = 0.15,
		
		AnimSpeed = 30, -- FPS

		Color = {61/255.0, 70/255.0, 73/255.0},
		Opacity = 0.5,
		Lighting = 0.6,
		
		FlameAttenuation = {-92, 280}, -- meters from smoke start
		FlamePower = 5.0,
		FlameFactor = 1.5,
	},
}

staticEffect = true

Presets =
{
	hugeSmokeWithFire =
	{
		{
			Type = "smoke",
		}
	},
	
	largeSmokeWithFire =
	{
		{
			Type = "smoke",
			
			Density = 0.2,
			Radius = {80, 370},-- start, finish
			RadiusFactor = 1.0,
			Length = 800,
			TrailSpeedMin = 10,
			HeightFactor = 0.15,
			
			AnimSpeed = 60, -- FPS

			Color = {61/255.0, 70/255.0, 73/255.0},
			Opacity = 1.0,
			Lighting = 0.6,
			
			FlameAttenuation = {-50, 150}, -- meters from smoke start
			FlamePower = 5.0,
			FlameFactor = 1.5,
		}
	},
	
	mediumSmokeWithFire =
	{
		{
			Type = "smoke",
			
			Density = 0.2,
			Radius = {35, 170},-- start, finish
			RadiusFactor = 1.0,
			Length = 350,
			TrailSpeedMin = 10,
			HeightFactor = 0.15,
			
			AnimSpeed = 65, -- FPS

			Color = {61/255.0, 70/255.0, 73/255.0},
			Opacity = 1.0,
			Lighting = 0.6,
			
			FlameAttenuation = {-20, 60}, -- meters from smoke start
			FlamePower = 5.0,
			FlameFactor = 1.5,
		}
	},
	
	smallSmokeWithFire =
	{
		{
			Type = "smoke",
			
			Density = 0.2,
			Radius = {15, 80},-- start, finish
			RadiusFactor = 1.0,
			Length = 150,
			TrailSpeedMin = 5,
			HeightFactor = 0.25,
			
			AnimSpeed = 70, -- FPS

			Color = {61/255.0, 70/255.0, 73/255.0},
			Opacity = 1.0,
			Lighting = 0.6,
			
			FlameAttenuation = {-10, 30}, -- meters from smoke start
			FlamePower = 5.0,
			FlameFactor = 1.5,
		}
	},
}

Presets.hugeSmoke = deepcopy(Presets.hugeSmokeWithFire)
Presets.hugeSmoke[1].FlameAttenuation = {-100, -1.0}

Presets.largeSmoke = deepcopy(Presets.largeSmokeWithFire)
Presets.largeSmoke[1].FlameAttenuation = {-100, -1.0}

Presets.mediumSmoke = deepcopy(Presets.mediumSmokeWithFire)
Presets.mediumSmoke[1].FlameAttenuation = {-100, -1.0}

Presets.smallSmoke = deepcopy(Presets.smallSmokeWithFire)
Presets.smallSmoke[1].FlameAttenuation = {-100, -1.0}
