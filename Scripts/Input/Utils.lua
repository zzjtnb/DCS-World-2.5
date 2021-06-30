local Input			= require('Input')
local textutil		= require('textutil')
local gettext		= require('i_18n')
local i18n 			= require('i18n')

local deviceTypeOrder_ = {
	[Input.getKeyboardDeviceTypeName()]			= 1,
	[Input.getJoystickDeviceTypeName()]			= 2,
	[Input.getTrackirDeviceTypeName()]			= 3,
	[Input.getHeadtrackerDeviceTypeName()]		= 4,
	[Input.getCustomDeviceTypeName()]			= 5,
	[Input.getMouseDeviceTypeName()]			= 6,
}

local deviceActions_ = {}
local deviceTypeNames_ = {}
local inputEvents_
local deviceSpecificInputEvents_
local backInputEvents_

local function getDeviceTypeName(deviceName)
	local result = deviceTypeNames_[deviceName]

	if not result then
		result = Input.getDeviceTypeName(deviceName)
		deviceTypeNames_[deviceName] = result
	end

	return result
end

local function compareDeviceType(deviceName1, deviceName2)
	local deviceTypeName1 = getDeviceTypeName(deviceName1)
	local deviceTypeName2 = getDeviceTypeName(deviceName2)
	
	if deviceTypeName1 == deviceTypeName2 then
		if string.find(deviceName1, 'Throttle') or string.find(deviceName1, 'throttle') then
			return true
		end
		
		if string.find(deviceName2, 'Throttle') or string.find(deviceName2, 'throttle') then
			return false
		end		
	end

	return deviceTypeOrder_[deviceTypeName1] < deviceTypeOrder_[deviceTypeName2]
end

local function getDevices()
	local devices = Input.getDevices()

	table.sort(devices, compareDeviceType)

	return devices
end

local function getInputEnvTable()
	if not envTable_ then
		envTable_ = Input.getEnvTable()
	end

	return envTable_
end

local function getInputEvents()
	if not inputEvents_ then
		local f, err = loadfile('./Scripts/Input/InputEvents.lua') 

		if f then
			-- константы инпута зарегистрированы в таблице, 
			-- которую возвращает функция Input.getEnvTable()
			local env = getInputEnvTable().Events

			env.print = print
			setfenv(f, env)

			inputEvents_ = f()
		else
			print('Cannot load input events!', err)
		end
	end

	return inputEvents_
end

local function getDeviceSpecificInputEvents()
	if not deviceSpecificInputEvents_ then
		local f, err = loadfile('./Scripts/Input/DeviceSpecificInputEvents.lua') 

		if f then
			deviceSpecificInputEvents_ = f()
		else
			print('Cannot load device specific input events!', err)
		end
	end

	return deviceSpecificInputEvents_
end

local function getBackInputEvents()
	if not backInputEvents_ then
		backInputEvents_ = {}
		
		for name, event in pairs(getInputEvents()) do
			if backInputEvents_[event] then
				print('Input event[' .. name .. '] already registered with name [' .. backInputEvents_[event] .. ']')
			else
				backInputEvents_[event] = name
			end
		end
	end
	
	return backInputEvents_
end

local function getKeyNameValid(keyName)
	return nil ~= getInputEvents()[keyName]
end

local function getInputEvent(keyName)
	return getInputEvents()[keyName]
end

local function getDeviceEventName(event)
	local result = getBackInputEvents()[event]
	
	if not result then
		result = 'Unknown:' .. event
	end

	return result
end

local function getKeyBelongToDevice(keyName, deviceName)
	local event = getInputEvent(keyName)
	
	if event then
		return Input.getEventDeviceTypeName(event) == getDeviceTypeName(deviceName)
	end
	
	return false
end

local function getDeviceTemplateName(deviceName)
	-- убираем из имени джойстика CLSID
	return string.gsub(deviceName, '(.*)(%s{.*})', '%1')
end

local function getLocalizedInputEventName(key, deviceName)
	local deviceTemplateName	= getDeviceTemplateName(deviceName)
	local deviceSpecificEvents	= getDeviceSpecificInputEvents()[deviceTemplateName]
	
	if deviceSpecificEvents then
		local deviceSpecificKeyName = deviceSpecificEvents[key]
		
		if deviceSpecificKeyName then
			key = deviceSpecificKeyName
		end
	end
	
	return i18n.ptranslate('key-' .. key, key)
end

local function createComboString(combo, deviceName)
	local result 

	if combo.reformers then
		for i, reformer in ipairs(combo.reformers) do
			if result then
				result = string.format('%s + %s', result, reformer)
			else
				result = reformer
			end
		end
	end

	local localizedKeyName = getLocalizedInputEventName(combo.key, deviceName)

	if result then
		result = string.format('%s + %s', result, localizedKeyName)
	else
		result = localizedKeyName
	end

	return result
end

local function makeDeviceActions(events, deviceName)
	local result = {}

	for i, event in pairs(events) do 
		local name = getDeviceEventName(event, deviceName)
		localizedName = getLocalizedInputEventName(name, deviceName)

		table.insert(result, {event = event, name = name, localizedName = localizedName})
	end

	local compareLocalizedKeyNames = function(key1, key2)
		return textutil.Utf8Compare(key1.localizedName, key2.localizedName)
	end

	table.sort(result, compareLocalizedKeyNames)

	return result
end

local function getDeviceActions(deviceName)
	local result = deviceActions_[deviceName]

	if not result then
		local keys	= Input.getDeviceKeys(deviceName) -- кнопки устройства
		local axes	= Input.getDeviceAxes(deviceName) -- оси устройства

		result = {	keys = makeDeviceActions(keys, deviceName), 
					axes = makeDeviceActions(axes, deviceName)}

		deviceActions_[deviceName] = result
	end

	return result
end

local function getDeviceKeys(deviceName)
	return getDeviceActions(deviceName).keys
end

local function getDeviceAxes(deviceName)
	return getDeviceActions(deviceName).axes
end

local function getModifiersKeyTable(deviceName, profileModifiers)
	local result = {}

	for modifierName, modifier in pairs(profileModifiers) do
		if modifier.deviceName == deviceName then
			result[modifier.key] = true
		end
	end

	return result
end

local function getDeviceKeysNoModifiers(deviceName, profileModifiers)
	local result = {}
	local deviceKeys = getDeviceKeys(deviceName)
	local modifiersToSkip = getModifiersKeyTable(deviceName, profileModifiers)

	for i, deviceKey in ipairs(deviceKeys) do 
		if not modifiersToSkip[deviceKey.name] then
			table.insert(result, deviceKey)
		end
	end

	return result
end

local deviceEventsToSkip_ = {
	[Input.getMouseDeviceTypeName()] = {
		[getInputEvent('MOUSE_BTN1')]	= true,
		[getInputEvent('MOUSE_BTN2')]	= true,
		[getInputEvent('MOUSE_X')]		= true,
		[getInputEvent('MOUSE_Y')]		= true,
	},
	
	[Input.getKeyboardDeviceTypeName()] = {
		[getInputEvent('SysRQ')] = true,
	},
}

local function getDeviceEventsToSkip(deviceName)
	local deviceTypeName = getDeviceTypeName(deviceName)
	local result = deviceEventsToSkip_[deviceTypeName]
	
	if not result then
		result = {}
		deviceEventsToSkip_[deviceTypeName] = result
	end

	return result
end

local function getSkipDeviceEvent(keyName, deviceName)
	if 'mouse' == getDeviceTypeName(deviceName) then
		return 	'MOUSE_BTN1'	== keyName or
				'MOUSE_BTN2'	== keyName or
				'MOUSE_X'		== keyName or
				'MOUSE_Y'		== keyName
	end
end

local function getInputAction(actionName)
	return getInputEnvTable().Actions[actionName]
end

local function getInputActionName(action)
	local actions = getInputEnvTable().Actions

	if not backActions_ then
		backActions_ = {}

		for actionName, actionValue in pairs(actions) do
			if backActions_[actionValue] then
				print('Warning: input action[' .. actionName .. ']=[' .. actionValue .. '] already has name[' .. backActions_[actionValue] .. ']')
			else
				backActions_[actionValue] = actionName
			end
		end
	end

	return backActions_[action]
end

local function localizeInputString(s)
	if s and s ~= '' then 		
		return gettext.dtranslate('input', s) 
	end
	
	return ''
end

local function initializeInput(hwnd)
	Input.initialize(hwnd)
end

local function getCommandHash(command, commandActionHashInfos)
	local result = ''
	
	for i, commandActionHashInfo in ipairs(commandActionHashInfos) do
		result = result .. commandActionHashInfo.prefix .. tostring(command[commandActionHashInfo.name])
	end
	
	return	result
end

local keyCommandActionHashInfos_

local function getKeyCommandActionHashInfos()
	if not keyCommandActionHashInfos_ then
		keyCommandActionHashInfos_ = {
			{name = 'down',					prefix = 'd', 	namedAction = true},
			{name = 'pressed',				prefix = 'p', 	namedAction = true},
			{name = 'up',					prefix = 'u', 	namedAction = true},
			{name = 'cockpit_device_id',	prefix = 'cd', 	namedAction = false},
			{name = 'value_down',			prefix = 'vd', 	namedAction = false},
			{name = 'value_pressed',		prefix = 'vp', 	namedAction = false},
			{name = 'value_up',				prefix = 'vu', 	namedAction = false},
		}
	end
	
	return keyCommandActionHashInfos_
end

local function getKeyCommandHash(keyCommand)
	return getCommandHash(keyCommand, getKeyCommandActionHashInfos())
end

local axisCommandActionHashInfos_

local function getAxisCommandActionHashInfos()
	if not axisCommandActionHashInfos_ then
		axisCommandActionHashInfos_ = {
			{name = 'action',				prefix = 'a', 	namedAction = true},
			{name = 'cockpit_device_id',	prefix = 'cd', 	namedAction = false},
		}
	end
	
	return axisCommandActionHashInfos_
end

local function getAxisCommandHash(axisCommand)
	return getCommandHash(axisCommand, getAxisCommandActionHashInfos())
end

local function getComboHash(key, reformers)
	local comboHash
	
	if key then
		comboHash = key
		
		if reformers then
			table.sort(reformers, textutil.Utf8Compare)
			
			for i, reformer in ipairs(reformers) do
				comboHash = string.format('%s%s', comboHash, reformer)
			end
		end
	end
	
	return comboHash
end

return {
	getDeviceTypeName				= getDeviceTypeName,
	getDevices						= getDevices,
	getKeyNameValid					= getKeyNameValid,
	getInputEvent					= getInputEvent,
	getDeviceEventName				= getDeviceEventName,
	getKeyBelongToDevice			= getKeyBelongToDevice,
	getDeviceKeys					= getDeviceKeys,
	getDeviceAxes					= getDeviceAxes,
	getDeviceKeysNoModifiers		= getDeviceKeysNoModifiers,
	getDeviceEventsToSkip			= getDeviceEventsToSkip,
	getSkipDeviceEvent				= getSkipDeviceEvent,
	getInputAction					= getInputAction,
	getInputActionName				= getInputActionName,
	getLocalizedInputEventName		= getLocalizedInputEventName,
	getDeviceTemplateName			= getDeviceTemplateName,
	localizeInputString				= localizeInputString,
	initializeInput					= initializeInput,
	getKeyCommandActionHashInfos	= getKeyCommandActionHashInfos,
	getKeyCommandHash				= getKeyCommandHash,
	getAxisCommandActionHashInfos	= getAxisCommandActionHashInfos,
	getAxisCommandHash				= getAxisCommandHash,
	getComboHash					= getComboHash,
	createComboString				= createComboString, -- used in \Utils\Input\validate_input.lua
}