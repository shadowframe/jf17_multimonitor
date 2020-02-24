package.path = "./LuaSocket/?.lua;"..package.path

local log = _G.log
local base = _G
local string = string
local socket = require('socket')

module ('netview')

PORT = 10309
msg = ""


function start()
    log("netview started")
    net = socket.udp()
    net:setsockname("*", 0)
    net:setoption('broadcast', true)
end

function stop()
    log("netview stopped")
    if net then
        net:close()
        net = nil
    end
end

curCamera = 0

function msgSend()
	--msg = "-------------------------------------------------------------" ; net:sendto(msg, '127.0.0.1', PORT)
	--i = 0
	--while(i<500) do
	--msg = string.format("%i==11111111111111111111111111111111111111111111111111111", i)
	--net:sendto(msg, '127.0.0.1', PORT)
	--i = i+1
	--end
	--msg = "-------------------------------------------------------------" ; net:sendto(msg, '127.0.0.1', PORT)
	

	net:sendto(msg, '172.16.1.13', PORT)
--	net:sendto(msg, '127.0.0.1', PORT)
end

-- msgType =  0='create'  1='updateDParam'  2='updatePos'   3='destroy' 4='camera'
function msgCreate(idKey, id, mname)
	msg = ""
	msg = string.format("msgType = 0; idKey = %i; id =%f; mname = '%s';", idKey, id, mname)
	msgSend()
end

function msgStartUpdateDParam(idKey, id)
	msg = ""
	msg = msg .. string.format("msgType = 1; idKey = %i; id=%f; dparam = {", idKey, id)
end

function msgUpdateDParam(num, param)
	msg = msg .. string.format("{num=%i, param=%f,},", num, param)
end

function msgEndUpdateDParam()
	msg = msg .. "};"
	--log(msg)
	--log("\n")
	msgSend()
end

function msgUpdatePosition(idKey, id, mname, x, y, z, qx, qy, qz, qp, human)
	msg = ""
	msg = msg .. string.format("msgType = 2; idKey = %i; id=%f; mname='%s'; x=%f; y=%f; z=%f;", idKey, id, mname, x, y, z)
    msg = msg .. string.format("qx=%f; qy=%f; qz=%f; qp=%f; human=%i;", qx, qy, qz, qp, human)
	msgSend()
end

function msgDestroy(id)
	msg = ""
	msg = msg .. string.format("msgType = 3; id=%f;", id)
	msgSend()
end

function msgCamera(idKey, px, py, pz, rx, ry, rz, rw, c, t)
    local jump
    if c ~= curCamera then
        log("netview: camera switched")
        curCamera = c
        jump = true
    else
        jump = false
    end
    msg = ""
    msg = msg .. string.format("msgType = 4; idKey = %i; px=%f; py=%f; pz=%f;", idKey, px, py, pz)
    msg = msg .. string.format("rx=%f; ry=%f; rz=%f; rw=%f;", rx, ry, rz, rw)
    msg = msg .. "jump = " ..base.tostring(jump)..";"
    msg = msg .. string.format("t=%f;", t)
	msgSend()
end

