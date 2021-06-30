--------------------------------------------------------------------------------------------------------
-- load a user-provided script
local userCallbackList = {
    'onMissionLoadBegin',
    'onMissionLoadProgress',
    'onMissionLoadEnd',
    'onSimulationStart',
    'onSimulationStop',
    'onSimulationFrame',
    'onSimulationPause',
    'onSimulationResume',
    'onGameEvent',
    'onNetConnect',
    'onNetMissionChanged',
    'onNetMissionEnd',
    'onNetDisconnect',
    'onPlayerConnect',
    'onPlayerDisconnect',
    'onPlayerStart',
    'onPlayerStop',
    'onPlayerChangeSlot',
    'onPlayerTryConnect',
    'onPlayerTrySendChat',
    'onPlayerTryChangeSlot',
    'onChatMessage',
    'onShowRadioMenu',
    'onShowPool',
    'onShowGameMenu',
    'onShowBriefing',
    'onShowChatAll',
    'onShowChatTeam',
    'onShowChatRead',
    'onShowMessage',
    'onTriggerMessage',
    'onRadioMessage',
    'onRadioCommand',
    'onWebServerRequest',
    'onGameBdaEvent',
    'onDynGroupCreated',
	'onReloadEvent',
}

local function list2map(cbList)
    local map = {}
	for i,v in ipairs(cbList) do
	    map[v] = true
	end
	return map
end

local userCallbackMap = list2map(userCallbackList)
local userCallbacks = {} -- array of cb_tables
local numSystemCallbacks = 0

local function isValidCallback(name, cb)
    return userCallbackMap[name]==true and type(cb) == 'function'
end

local function filterUserCallbacks(cb_table)
    local filtered = {}
    local ok = false
    for name,func in pairs(cb_table) do
        if isValidCallback(name, func) then
            print('    Hooked ' .. name)
            filtered[name] = func
            ok = true
        else
            print('    Rejected ' .. name)
        end
    end
    return ok, filtered
end

function DCS.setUserCallbacks(cb_table)
    local ok, cb = filterUserCallbacks(cb_table)
    -- in theory we could just do 'if #cb > 0' but it does not work this way in 5.1
    if ok then
        table.insert(userCallbacks, cb)
    end
end

local function doLoadHookScripts(scriptType, baseDir, pattern)
    print('Loading '..scriptType..' hook scripts...')
    local scriptDir = baseDir .. 'Scripts/Hooks/'
    local userScripts = {}
    for fn in lfs.dir(scriptDir) do
        if string.find(fn, '.*%.lua') then
            table.insert(userScripts, fn)
        end
    end
    table.sort(userScripts)

    -- actually load the stuff
    for i,fn in ipairs(userScripts) do
        local env = {}
        setmetatable(env, { __index = _G })
        local u, err = loadfile(scriptDir .. '/' .. fn)
        if u then
            setfenv(u, env)
            local ok, err = pcall(u)
            if ok then
                print('Loaded '..scriptType..' script '..fn)
            else
                print('Failed to exec '..scriptType..' hook script '..fn..': '..err)
            end
        else
            print('Failed to load '..scriptType..' hook script '..fn..': '..err)
        end
    end
end

function DCS.reloadUserScripts()
    --userCallbacks = {}
    --doLoadHookScripts('system', lfs.currentdir())

    -- remove user callbacks
    --print('table.getn(userCallbacks) = '..tostring(table.getn(userCallbacks)))
    while table.getn(userCallbacks) > numSystemCallbacks do
        table.remove(userCallbacks)
    end
    --print('table.getn(userCallbacks) = '..tostring(table.getn(userCallbacks)))
    -- and load again
    doLoadHookScripts('user', lfs.writedir())
end

local function callbackHook(name, dcsHandler, ...)
    for i = #userCallbacks, 1, -1 do -- call last-to-first
        local cb = userCallbacks[i]
        local h = cb[name]
        if h then
            local res = { pcall(h, ...) }
            local ok = res[1]
            if not ok then
                print(name, res[2]) -- error
            elseif res[2] ~= nil then
                return unpack(res, 2) -- callback returned a result
            end -- if not ok
        end -- if h
    end -- for i, cb
    if dcsHandler then return dcsHandler(...) end
end


-- call only ONCE
local function hookTheCallbacks()
    for name, t in pairs(userCallbackMap) do
        local dcsHandler = _G[name]
        local hook = function(...) return callbackHook(name, dcsHandler, ...) end
        _G[name] = hook
    end
end

--- END of user callback stuff
---------------------------------------------------------------------------------------

hookTheCallbacks()
doLoadHookScripts('system', lfs.currentdir())
numSystemCallbacks = table.getn(userCallbacks)
--print('numSystemCallbacks = '..tostring(numSystemCallbacks))

DCS.reloadUserScripts()
