--autoexecute sample for model viewer
--mount_vfs_liveries_path("Mods/aircrafts/Wunderluft/Liveries")
--mount_vfs_texture_path("Mods/aircrafts/Wunderluft/Textures/base_zip_package")

--LoadModel("Bazar/World/Shapes/A-10.edm")
--LoadLivery("A-10C","184th FS Arkansas ANG, Fort Smith (FS)")
--SetArgument(0,1)
--SetArgument(3,1)
--SetArgument(5,0.75)

local lfs = require("lfs")
local function service_file(file)
	return file == "." or
		   file == ".." or 
		   file == ".svn" or 
		   file == "_svn" 
end

function scan_for_textures(path)
	local lower_case      = path:lower()
	if lower_case:find("liveries") then
	   mount_vfs_liveries_path(path)
	   return
	end
	local is_texture_path  = lower_case:find("texture") ~= nil
	local mounted_already  = false 
	for file in lfs.dir(path) do
		if not service_file(file) then
		   local fn 	  = path.."/"..file
		   local attr 	  = lfs.attributes (fn)     
		   if attr.mode	 == "directory" then
			  scan_for_textures(fn)
		   elseif is_texture_path then
			  local ext = string.sub(file,-4)
			  if '.zip' == ext then
					mount_vfs_texture_path(fn)
			  elseif not mounted_already and (
				 '.dds' == ext or
			     '.bmp' == ext or
				 '.jpg' == ext or
				 '.png' == ext or
				 '.tga' == ext) then
					mount_vfs_texture_path(path)
					mounted_already = true
			  end
		   end
		end
	end
end

function scan_for_environment_cubes(path)
	local lower_case = path:lower()	
	for file in lfs.dir(path) do
		if not service_file(file) then
			local fn = path.."/"..file
			local attr = lfs.attributes(fn)
			if attr.mode == "file" then
				local ext = string.sub(file,-4) 
				if '.dds' == ext then
					AddEnvironmentMap(file)
				end
			end
		end
	end
end

print("----------------------------------------------------------------")
print("scan for textures and liveries")
scan_for_textures("CoreMods")
print("----------------------------------------------------------------")
scan_for_textures("Mods")
scan_for_environment_cubes("Bazar/EffectViewer/envcubes")
print("scan done")
print("----------------------------------------------------------------")

--LoadLodModel("tech.lds");

--[[
LoadModel("d:\\Projects\\trunk\\LockOnExe\\Bazar\\World\\Shapes\\farp.edm");
Move(0, -1.22, 0);
local d = 10;
local f = LoadLodModel; local file_name = "tech.lds";
--local f = LoadStaticCharacterModel; local file_name = "tech_animation.chanimgpu";
--local f = LoadCharacterModel;
if f ~= nil then
    for i = -d,d do
        for j = -d,d do
            --f("d:\\Projects\\trunk\\LockOnExe\\Data\\tech_animation.lua")
            --f("d:\\Projects\\trunk\\LockOnExe\\Data\\tech_animation.chanimgpu")
            --f("tech_animation.chanimgpu")
            f(file_name);
            Move(i, 0, j);
        end;
    end;
end;
--]]
    
