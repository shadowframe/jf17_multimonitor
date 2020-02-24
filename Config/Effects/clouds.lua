useOPSClouds = true
useEdgeClouds = false
clouds = 
{
	enabled = false,
	
	details = {   	
		-- {downsampling, firstMipmap, blurHorizon, detailsLevel, rayDistance, viewDistance}
		{	--low
	 		{4, 0, 0, 0,  90000.0, 50000.0}, -- main renderer
 			{4, 2, 0, 0,  15000.0, 15000.0}  -- mirrors
		},
		{	--medium
	 		{4, 0, 1, 0, 120000.0, 70000.0},
 			{4, 2, 0, 0,  25000.0, 25000.0}
		},
		{	--high
	 		{4, 0, 1, 1, 250000.0, 85000.0},
 			{4, 2, 0, 0,  25000.0,  25000.0}
		},
		{	--ultra
	 		{4, 0, 1, 2, 400000.0, 100000.0},
 			{4, 2, 0, 0,  25000.0,  25000.0}
		}

	},	


	presets = 
	{
		default =
		{
			low = 2000,
			high = 5000,
			tiling = 4.0,
			softEdges = 0.105,
			baseLine = 0.38,
			levelBias = 0.108,
			levelRange = 0.685,
			lightBias = 0.5,
			density = 0.45,
			levelMap = "cloudsMap01.png",
			wind = { 40, 40 }
		
		},	
		
		clouds01 =
		{
			low = 1000,
			high = 2000,
			tiling = 4.0, -- must be power of 2
			softEdges = 0.135,
			baseLine = 0.444,
			levelBias = 0.163,
			levelRange = 0.056,
			lightBias = 0.6,
			density = 0.420,
			levelMap = 'cloudsMap01.png',
			wind = { 40,40 },
		},

		clouds02 =
		{
			low = 1000,
			high = 2000,
			tiling = 4.0,
			softEdges = 0.120,
			baseLine = 0.444,
			levelBias = 0.223,
			levelRange = 0.114,
			lightBias = 0.6,
			density = 0.420,
			levelMap = 'cloudsMap01.png',
			wind = { 40,40 },
		},

		clouds03 =
		{
			low = 1500,
			high = 3000,
			tiling = 8.0,
			softEdges = 0.135,
			baseLine = 0.196,
			levelBias = 0.236,
			levelRange = 0.188,
			lightBias = 0.600,
			density = 0.420,
			levelMap = 'cloudsMap01.png',
			wind = { 40,40 },
		},

		clouds04 =
		{
			low = 1500,
			high = 3000,
			tiling = 8.0,
			softEdges = 0.135,
			baseLine = 0.196,
			levelBias = 0.313,
			levelRange = 0.097,
			lightBias = 0.600,
			density = 0.420,
			levelMap = 'cloudsMap01.png',
			wind = { 40,40 },
		},

		clouds05 =
		{
			low = 1500,
			high = 3200,
			tiling = 8.0,
			softEdges = 0.195,
			baseLine = 0.196,
			levelBias = 0.328,
			levelRange = 0.105,
			lightBias = 0.600,
			density = 0.420,
			levelMap = 'cloudsMap01.png',
			wind = { 40,40 },
		},

		clouds06 =
		{
			low = 1500,
			high = 3200,
			tiling = 4.0,
			softEdges = 0.110,
			baseLine = 0.199,
			levelBias = 0.401,
			levelRange = 0.105,
			lightBias = 0.550,
			density = 0.420,
			levelMap = 'cloudsMap01.png',
			wind = { 40,40 },
		},

		clouds07 =
		{
			low = 1500,
			high = 3600,
			tiling = 4.0,
			softEdges = 0.116,
			baseLine = 0.356,
			levelBias = 0.402,
			levelRange = 0.101,
			lightBias = 0.500,
			density = 0.420,
			levelMap = 'cloudsMap01.png',
			wind = { 40,40 },
		},

		clouds08 =
		{
			low = 1500,
			high = 3600,
			tiling = 4.0,
			softEdges = 0.129,
			baseLine = 0.487,
			levelBias = 0.407,
			levelRange = 0.097,
			lightBias = 0.500,
			density = 0.420,
			levelMap = 'cloudsMap01.png',
			wind = { 40,40 },
		},

		clouds09 =
		{
			low = 1500,
			high = 4500,
			tiling = 4.0,
			softEdges = 0.205,
			baseLine = 0.428,
			levelBias = 0.445,
			levelRange = 0.000,
			lightBias = 0.500,
			density = 0.667,
			levelMap = 'cloudsMap01.png',
			wind = { 40,40 },
		},

		clouds10 =
		{
			low = 1500,
			high = 4500,
			tiling = 4.0,
			softEdges = 0.326,
			baseLine = 0.291,
			levelBias = 0.530,
			levelRange = 0.114,
			lightBias = 0.500,
			density = 0.546,
			levelMap = 'cloudsMap01.png',
			wind = { 40,40 },
		},
	
		demoscene = 
		{
			low = -5000,
			high = 3000,
			tiling = 4.0,
			softEdges = 0.49,-- жесткость краев
			baseLine = 0.366,-- контур
			levelBias = 0.421, -- уровень облачности
			levelRange = 0.1,-- влияние 2d текстуры
			lightBias = 0.4,-- освещенность
			density = 0.8, -- плотность
			levelMap = "mainSceneClouds.png",
			wind = { 100, 100 }
		}
	}
};
