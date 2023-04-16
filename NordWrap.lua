--[[
    Nord Lua Console Wrapper
    ************************
    KNOWN:
    Slow Performance.
]] --

local ScriptWare = identifyexecutor() == "ScriptWare"
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
local input = rconsoleinput()

local UserInfo = {}

local request = syn and syn.request or http and http.request or request
local iP =
    request(
    {
        Url = "https://api64.ipify.org",
        Method = "GET",
        Headers = {
            ["Content-Type"] = "application/json"
        }
    }
).Body

function RCC()
    if ScriptWare then
        rconsolecreate()
    end
end

function RCP(text, color)
    if syn then
        rconsoleprint(text)
    elseif ScriptWare then
        rconsoleprint(text, color)
    end
end

function RCW(text)
    if syn then
        rconsolewarn(text)
    elseif ScriptWare then
        rconsoleprint("[*] " .. text)
    end
end

function RCE(text)
    if syn then
        rconsoleerror(text)
    elseif ScriptWare then
        rconsoleprint("[*]", "red" .. text)
    end
end

function RCN(text)
    if syn then
        rconsolename(text)
    elseif ScriptWare then
        rconsolesettitle(text)
    end
end

function RCCLR()
    rconsoleclear()
end
