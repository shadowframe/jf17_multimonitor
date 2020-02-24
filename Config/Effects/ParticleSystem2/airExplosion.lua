Effect = {
	{
		Type = "FFX",
		IsShadowCaster = false,
		IsOriented = false,
		IsLightControlledByFFX = false,
		
		FXFiles = {
			"airExplosion_01",
		},
		
		Texture = "puff01.dds",

		Technique = "techUpdateDefault",
		LODdistance1 = 1300,
		LODdistance2 = 10000,
		ZFeather = 0,
		PositionOffset = {0, 0.12, 0},
		Light =
		{
			Color = {1, 0.59, 0,1313725},
			Radius = 250.0,
			Lifetime = 0.35,
		}
	},
	{
		Type = "blastWaveRefraction",
		Target = "hotAir",
		RadiusMin = 10.0,
		RadiusMax = 140.0 * 1.5,
		Opacity = 1.0,
		WaveSpeed = 340.29,
	}
}

Presets = {}

Presets.fuelExplosion = deepcopy(Effect)
Presets.fuelExplosion[1].SmokeColor =  {12.0/255.0, 14.0/255.0, 18.0/255.0}
