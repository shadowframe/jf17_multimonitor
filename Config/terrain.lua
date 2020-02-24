local visibRange = options.graphics.visibRange
local terra_file = "Config/terrain/" .. visibRange .. ".lua"

local cfg = {}
local res, err = env_dofile(cfg, terra_file)
if res then options.graphics.terrain = cfg end

-- mirror options
local cfg1 = {}
local res, err = env_dofile(cfg1, "Config/terrain/Mirrors.lua")
if res then options.graphics.terrainmirror = cfg1 end

-- Reflections options
local cfg2 = {}
local res, err = env_dofile(cfg2, "Config/terrain/Reflections.lua")
if res then options.graphics.terrainreflection = cfg2 end

-- in cockpit map rendering options
local cfg3 = {}
local res, err = env_dofile(cfg3, "Config/terrain/MapMFD.lua")
if res then options.graphics.terrainMapMFD = cfg3 end

