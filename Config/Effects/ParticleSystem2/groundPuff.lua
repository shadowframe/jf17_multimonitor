Effect = {
	{
		Type = "groundPuff",
		ShadingFX = "ParticleSystem2/groundPuff.fx",
		UpdateFX = "ParticleSystem2/groundPuffComp.fx",
		Technique = "techUpdateDefault",
		-- TechniqueLighting = "techLightingForFFX",
		-- TechniqueLighting = "techLighting",

		Texture = "puff01.dds",

		LODdistance = 10000,

		Lifetime = 20.0,

		Color = {69/255, 67/255, 56/255, 0.8},-- земляной
		-- Color = {38/255, 43/255, 43/255, 0.8},--темно серый
		-- Color = {74/255, 75/255, 69/255, 0.8},
		-- Color = {255/255, 75/255, 69/255, 0.8},
		
		EffectRadius = 10,
		EffectOpacity = 1.0,
		ZFeather = 0.0,

		ClustersCount = 40,
		ClusterRadius = 2, --размер кластера

		ParticlesCount = 3,
		ParticleSize = 15,-- размер частицы
		
		FixedUpdateDelta = 20, --миллисекунды

		ParticlesCount = 3,
		ParticleSize = 15,-- размер частицы

		ClustersCount = 250,
		ParticlesPerCluster = 3,
		ClusterRadius = 1.600000,
		ParticleSize = 5.000000,
		EffectRadius = 40.000000,
		-- Color = {0.400000,0.357000,0.302000},
		Color = {0.600000,0.557000,0.502000},
	},
}

tankShotYOffset = 0 --учитывается в коде, для корректной сортировки пуфика с эффектом вспышки

Presets =
{
	TankShotMedium =
	{
		{
			Type = "groundPuff",
			Technique = "techUpdateReal",

			Texture = "puff01.dds",
			LODdistance = 3000,
			EffectOpacity = 1.0,
			EffectRadius = 10.000000,
			ClustersCount = 192,
			ParticlesCount = 1,
			ClusterRadius = 0.100000,
			ParticleSize = 1.500000,
			Lifetime = 8.0,
			ZFeather = 0.35,

			Color = {0.600000,0.557000,0.502000},
			
			FixedUpdateDelta = 20, --миллисекунды
			
			PositionOffset = {2.0, -2.0, 0},
		},
		{
			Type = "blastWave",
			Texture = "blastWave2.dds",
			RadiusMin = 0.3,
			RadiusMax = 10.0,
			WaveSpeed = 340.29 * 0.25,
			Opacity = 0.07,
			PositionOffsetLocal = {0, tankShotYOffset+0.35, 0},
		},
	},
	
	GroundPuffReal =
	{
		{
			Type = "groundPuff",
			Technique = "techUpdateReal",

			Texture = "puff01.dds",

			LODdistance = 10000,

			Color = {0.4, 0.357, 0.302, 0.8}, -- пыль на земле
			
			EffectOpacity = 1.0,
			EffectRadius = 40,
			
			ClustersCount = 250,
			ClusterRadius = 1, --размер кластера

			ParticlesCount = 3,
			ParticleSize = 2,-- размер частицы
			
			FixedUpdateDelta = 20, --миллисекунды
			
			PositionOffset = {0, -0.1, 0}
		},
	},

	CBU87_103 =
	{
		{
			Type = "groundPuff",
		},
	},

	CBU97_105 =
	{
		{
			Type = "groundPuff",
			Technique = "techUpdateCBU97",

			Texture = "puff01.dds",

			EffectOpacity = 1.0,
			EffectRadius = 15,

			ClustersCount = 70,
			ClusterRadius = 2,

			ParticlesCount = 3,
			ParticleSize = 15,
		},
	},	
}