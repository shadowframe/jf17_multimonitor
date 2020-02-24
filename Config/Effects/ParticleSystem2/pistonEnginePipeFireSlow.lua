Effect = {
	{
		Type = "pistonEnginePipeFireSlow",
		Texture = "firePuff_03_low2.dds",
		ParticlesLimit = 500,
		
		Radius = 1, -- meters
		ScaleBase = 0.5, --  meters
		
		ConvectionSpeed = { -- speed value by emitter scale
			{1, 3},  
			{5, 12}
		},	
		
		DistMax = {
			{0, 0.05},
			{1, 0.04},
			{10, 0.03}
		},
		
		TrailLength = {
			{0, 2},
			{2, 2},
			{10, 1}
		}
	}
}
