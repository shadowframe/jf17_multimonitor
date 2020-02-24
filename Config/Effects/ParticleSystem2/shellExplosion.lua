Effect = {
	{
		Type = "billboard",
		ColorGradientTexture = "fireGradient01.dds",
		Texture = "flak01.dds",
		AthlasSize = {16, 8},

		Visibility = 15000,
		Size = {7.0, 9.5}, -- min|max

		Scale = { -- scale over normalized time
			{0, 0.5},
			{0.35, 0.7},
			{1.0, 1.0},
		},
		Angle = {0.0, 360.0}, -- min|max
		Opacity = {0.9, 1.0}, -- min|max
		OpacityFading = {0, 0.40}, -- {fadeIn stop, fadeOut start} in percents of lifetime
		Lifetime = {3.0, 6.0}, -- min|max, seconds
		FlamePower = 1.7, -- power
		Flame = { -- flame visibility over time
			{0, 0.5},
			{0.2, 0.9},
			{0.4, 0.0},
		},

		IsSoftParticle = true,
		AnimationLoop = 0,
		AnimationFPSFactor = 0.4,-- if animation is not looped: frame = framesCount*pow(nnormalizedAge, AnimationFPSFactor); if it's looped: frame = animFPSFactor*emitterTime

		Color = {85/255.0, 90/255.0, 90/255.0, 1.0}
	},
	{
		Type = "sparks",
		ParticlesLimit = 80,
		Lifetime = 1.3,
		Texture = "spark.png",
		Speed = 30.0,
		SpreadFactor = 0.3;
		Scale = 0.05,
		LODdistance = 30*1.3+1000,
		Color = {240/255.0, 230/255.0, 0.0}
	}
}

Presets = {}
Presets.flak0Grey02 = deepcopy(Effect)
Presets.flak0Grey02[1].Color = {85/255.0, 90/255.0, 90/255.0, 1.0}
Presets.flak0Grey02[1].Texture = "flak02.dds"

Presets.flak0Grey03 = deepcopy(Effect)
Presets.flak0Grey03[1].Color = {85/255.0, 90/255.0, 90/255.0, 1.0}
Presets.flak0Grey03[1].Texture = "flak03.dds"

Presets.flak1Dust01 = deepcopy(Effect)
Presets.flak1Dust01[1].Color = {95/255.0, 95/255.0, 90/255.0, 1.0}
Presets.flak1Dust01[1].Texture = "flak01.dds"

Presets.flak1Dust02 = deepcopy(Effect)
Presets.flak1Dust02[1].Color = {95/255.0, 95/255.0, 90/255.0, 1.0}
Presets.flak1Dust02[1].Texture = "flak02.dds"

Presets.flak1Dust03 = deepcopy(Effect)
Presets.flak1Dust03[1].Color = {95/255.0, 95/255.0, 90/255.0, 1.0}
Presets.flak1Dust03[1].Texture = "flak03.dds"

Presets.flak2Black1 = deepcopy(Effect)
Presets.flak2Black1[1].Color = {18/255.0, 25/255.0, 35/255.0, 1.0}
Presets.flak2Black1[1].Texture = "flak01.dds"

Presets.flak2Black2 = deepcopy(Effect)
Presets.flak2Black2[1].Color = {18/255.0, 25/255.0, 35/255.0, 1.0}
Presets.flak2Black2[1].Texture = "flak02.dds"

Presets.flak2Black3 = deepcopy(Effect)
Presets.flak2Black3[1].Color = {18/255.0, 25/255.0, 35/255.0, 1.0}
Presets.flak2Black3[1].Texture = "flak03.dds"
