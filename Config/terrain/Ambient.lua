distance =
{
	distance10x10 = 40000.0; 
	distanceLevel0 = 38000.0; 
--	uniqueSceneFarDistance = 0;
--	uniqueSceneFarDistance = 50000;
	uniqueSceneFarDistance = 10000.0;
	smokesSceneFarDistance = 10000.0;
	minimalSquareOnScreen = 50;
	minimalSquareOnScreenFull = 100;
	
	mapLodDistance0 = 0;
	mapLodDistance1 = 0;
	mapLodDistance2 = 1000;
	mapLodDistance3 = 8000;
	smallShitDimention = 4000;
}
distanceBlend = 
{
	townNearDistance  = 30000.0; 
	townFarDistance   = 40000.0; 
	fieldNearDistance = 30000.0;
	fieldFarDistance  = 40000.0; 
	waterNearDistance = 15000.0; 
	waterFarDistance  = 40000.0; 
	townLightNearDistance  = 9000.0;
	townLightFarDistance  = 40000.0;
	subforest = {8000, 30000}; 
	beach = {8000, 13000};
	road = {15000, 40000}; 
}

--Old Noise 
land_noise =
{
	noisemin = 0.0; --0.1 -- the weight of a noise texture in a distance shot (вес текстуры шума на дальнем плане)
	noisemax = 0.4; --0.5 -- the weight of a noise texture in a close shot (вес текстуры шума на ближнем плане)
	noise1front = 1000.0; --1000 -- the range of close shot for noise (дальность ближнего плана для шума)
	noise1back = 30000.0; --18000 -- the range of distance shot for noise (дальность дальнего плана для шума)
	noise1top = 2500.0;
	noise1bottom = 2000.0;
	noise1PerSquare = 2.0;
	noise2PerSquare = 150.0;
}

land_detailNoise=
{
	Height = 300.0;
	Slope = 0.0;	
}

district =
{
	maxDistrictsAround = 100000;

	farDistance = 10000.0; 
	farFullRenderDistance = 6000.0; 
	nearFullRenderDistance = 800.0;  
	nearDistance = 560.0;  
	
	treesFarDistance = 1500.0;  
	treesFarFullBlendRenderDistance = 1200.0; 
	treesFarFullRenderDistance = 1000.0;  
	treeslodDistance = 600.0; 
	heightFactor = 0;
	heightRandomFactor = 0;
	ajastfactor = 1;
	
	
	lampFarDistance = 10000.0;
	splineBlockFarDistance = 500.0;

--	renderType = "texture"; -- simple, texture, instance
	renderType = "texture"; -- simple, texture, instance
	
	lamp =
	{
		lampOn = 1;	
		maxSize = 8.4;
		staticSize = 4.0;
		spriteScale = 0.001;
		minDistance = 150.0;
		maxDistance = 10000.0;
		maxAlphaDistance = 400.0;
		minAlphaDistance = 0.0;
		minAlpha = 0.0;
		maxAlpha = 1.0;
		minBrightnessDistance = 0.0;
		maxBrightnessDistance = 8000.0;		-- must be <= lampFarDistance
		dsLightRadius = 60;
		dsLightBrightness = 4;
	};
}

flat_shadow =
{
	enabled = 0;
	farDistance = 1500.0; 
	fullFarDistance = 0.0; 
}

fog =
{
	front = 1000.0;
	back  = 70000.0;
}

layerfog =
{
	fog_begin = 0.0;
	fog_end = 1000.0;
	fog_strength = 10000.0;
	fog_color = {1.0, 1.0, 1.0};
}

infrared =
{
	landDetail = 0.8;
	landDarkness = 1.0;
	riverDarkness = 0.7;
	roadDarkness = 1.5;
	runwayDarkness = 1.7;
}

noise =
{
	noiseStartDistance = 3000.0;
	noiseEndDistance = 200.0;
	noiseMaxBlend = 0.7;
	noiseScale = 15.0;
	rampNoisePower = 0.8;
	rampNoiseScale = 17.0;
	smallNoiseStartDistance = 80.0;
	smallNoiseEndDistance = 1.0;
	smallNoiseMaxBlend = 0.6;
	smallNoiseScale = 450.0;		
}

lamp31 =
{
	lampOn = 1;	
	maxSize = 8.4;
	staticSize = 4.0;
	spriteScale = 0.001;
	minDistance = 150.0;
	maxDistance = 10000.0;
	maxAlphaDistance = 400.0;
	minAlphaDistance = 0.0;
	minAlpha = 0.0;
	maxAlpha = 1.0;
	minBrightnessDistance = 0.0;
	maxBrightnessDistance = 10000.0;
	dsLightRadius = 60;
	dsLightBrightness = 4;
}

lamp =
{
	lampOn = 1;	
	maxSize = 5.4;
	staticSize = 2.9;
	spriteScale = 0.0012; --0.0025
	minDistance = 100.0;
	maxDistance = 3385.0;
	maxAlphaDistance = 1300.0;
	minAlphaDistance = 250.0;
	minAlpha = 0.0; --0.36
	maxAlpha = 1.0; --0.26
	minBrightnessDistance = 0.0;
	maxBrightnessDistance =24000.0; --15000
}

fan = 
{
	read = 0; -- читать настройки из этого конфига (для отладки)
	
	pos = {-117, 0.3, 120};
	dir = {0, -1, 0};
	power = 8000;
	radius = 30;
	
	oscillator = 0.2;
	frequency = 15;
};

--hiddensemantics={0, 2, 5, 7, 9, 23, 26};
hiddensemantics={
	"Sea",
	"Lake", 
--	"Island",
--	"Land",
--	"Field",
--	"Beach",
--	"Town",
	"River",
	"Channel",
--	"Road",
	"Rail",
--	"Runway",
	"Building",
	"ELT",
	"Trees",
	"Forest",
	"Lamp",
	"Plant",
	"Line",
	"MGRS",
	"Isoline",
	"SmallShit",
	"SurfaceDetails",
	"Shelf"	
	};
hiddenlayer={
--	0,
--	1,
--	2, 
--	3, 
--	4, 
--	5, 
--	6, 
--	17,		-- lightmap
--	18,
--	19,		-- flat_shadows		
--	20,		-- houses
--	21,		-- trees
--	22,		-- pole
--	23,		-- lights
--	24
};
hiddenlevels={
--	0, 
--	1, 
--	2
	};
hiddencameras={
--	0, --near, 
--	1, --far
	};
debug = 
{
	switchoffDrawRoutine = 0;
	switchoffEdm = 0;
	switchoffFetchSurface = 0;
	switchoffFetchUniqueScenes = 0;
	switchoffFetchDistricts = 0;
	switchoffFetchSmokes = 0;
	switchoffFetchLights = 0;
	switchoffRenderLights = 0;
}

	

function UpdateCamera( height, civillights)
	if civillights>0 then
--		district.treesFarDistance = 900;
--		district.treesFarFullBlendRenderDistance = 850.0;
--		district.treesFarFullRenderDistance = 800.0;
--		district.treeslodDistance = 0.0;
		else
--		district.treesFarDistance = 1500;
--		district.treesFarFullBlendRenderDistance = 1200.0;
--		district.treesFarFullRenderDistance = 1000.0;
--		district.treeslodDistance = 600.0;
		end
--	distance.uniqueSceneFarDistance = distance.uniqueSceneFarDistance - 1
end
