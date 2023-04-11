--[[
    Nord Lua Console Wrapper
    ************************
    KNOWN:
    Slow Performance.
]] --

local ScriptWare = identifyexecutor() == "ScriptWare"
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

local UserInfo = {}

Nord = {}

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

function Nord:RCC()
    if ScriptWare then
        rconsolecreate()
    end
end

function Nord:RCP(text, color)
    if syn then
        rconsoleprint(text)
    elseif ScriptWare then
        rconsoleprint(text, color)
    end
end

function Nord:RCW(text)
    if syn then
        rconsolewarn(text)
    elseif ScriptWare then
        rconsoleprint("[*] " .. text)
    end
end

function Nord:RCE(text)
    if syn then
        rconsoleerror(text)
    elseif ScriptWare then
        rconsoleprint("[*]", "red" .. text)
    end
end

function Nord:RCN(text)
    if syn then
        rconsolename(text)
    elseif ScriptWare then
        rconsolesettitle(text)
    end
end

function Nord:RCCLR()
    rconsoleclear()
end

function Nord:Input()
    rconsoleinput()
end
