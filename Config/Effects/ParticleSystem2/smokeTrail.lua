Effect = {
	{--дымогенератор
		Type = "smokeTrail",
		Texture = "smoke6_nm.dds",
		Tech = "Main",
		LODdistance = 10000, -- m
		
		ScaleBase = 2, -- meters
		
		Lighting = 1,
		
		DetailFactorMax = 5.0, -- max particles in segment = 2^(1+detailFactor). 5 - maximum
		
		Flame = false,
		Nozzle	= false,
		NozzleDir = -1,
		NozzleSpeedMin = 0,
		NozzleSpeedMax = 0,
		
		FadeInRange = 0, -- 0 - not used, or fadeInOpacity = saturate( (curHeight - startHeight) / FadeInRange )
		FadeOutHeight = 99999, --  0 - not used
		
		DissipationFactor = 20.0,
		
		Length = 7000, -- m
		SegmentLength = 60,	-- m
		FadeIn = 0,	-- m
	},
}

Presets =
{
	contrail =
	{	--инверсионный след
		{
			Type = "smokeTrail",
			LODdistance = 20000, -- m
			ScaleBase = 3,
			
			Lighting = 0.5,
			
			DetailFactorMax = 4.0,
			
			Nozzle	= true,
			NozzleSpeedMin = 200,
			NozzleSpeedMax = 400,
			
			FadeInRange = 350,
			FadeOutHeight = 12000,
			
			Length = 12000,	-- m
			SegmentLength = 100, -- m
			FadeIn = 30, -- m
		}
	},
	
	blacktail =
	{	--дымный след
		{
			Type = "smokeTrail",
			LODdistance = 5000,	-- m
			ScaleBase = 2.4,
			Length = 1000,	-- m
		}
	},
	
	chair = 
	{	--дым от катапультного стульчика
		{
			Type = "smokeTrail",
			Tech = "Main",
			Nozzle	= true,
			NozzleSpeedMin = 300,
			NozzleSpeedMax = 300,
			
			Lighting = 0.5,
			
			Flame = true,
			
			ScaleBase = 3,
			
			DissipationFactor = 7.0,
			
			LODdistance = 5000,	-- m
			Length = 100, -- m
			SegmentLength = 10,	-- m
			FadeIn = 1.0, -- m
		}
	},
	
	A2Amissile10000 =
	{	--ракетный дым
		{
			Type = "smokeTrail",
			Tech = "Missile",
			Nozzle = true,
			Flame = true,
			NozzleSpeedMin = 300,
			NozzleSpeedMax = 300,
			Lighting = 0.5,
			ScaleBase = 3.0,
			DissipationFactor = 15.0,
			LODdistance = 15000, -- m
			Length = 10000,	-- m
			SegmentLength = 60,	-- m
			FadeIn = 1.5, -- m
		}
	},
	
	A2Amissile5000 =
	{	--ракетный дым
		{
			Type = "smokeTrail",
			Tech = "Missile",
			Nozzle = true,
			Flame = true,
			NozzleSpeedMin = 300,
			NozzleSpeedMax = 300,
			Lighting = 0.5,
			ScaleBase = 3.0,
			DissipationFactor = 10.0,
			LODdistance = 15000, -- m
			Length = 5000,	-- m
			SegmentLength = 60,	-- m
			FadeIn = 1.5, -- m
		}
	},
	
	A2Amissile2500 =
	{	--ракетный дым
		{
			Type = "smokeTrail",
			Tech = "Missile",
			Nozzle = true,
			Flame = true,
			NozzleSpeedMin = 300,
			NozzleSpeedMax = 300,
			Lighting = 0.5,
			ScaleBase = 3.0,
			DissipationFactor = 6.0,
			LODdistance = 10000, -- m
			Length = 2500,	-- m
			SegmentLength = 60,	-- m
			FadeIn = 1.5, -- m
		}
	},
	
	A2Amissile1000 =
	{	--ракетный дым
		{
			Type = "smokeTrail",
			Tech = "Missile",
			Nozzle = true,
			Flame = true,
			NozzleSpeedMin = 300,
			NozzleSpeedMax = 300,
			Lighting = 0.5,	
			ScaleBase = 3.0,
			DissipationFactor = 2.0,
			LODdistance = 10000, -- m
			Length = 1000,	-- m
			SegmentLength = 60,	-- m
			FadeIn = 1.5, -- m
		}
	},
}
