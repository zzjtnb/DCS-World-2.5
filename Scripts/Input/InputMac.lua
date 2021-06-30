local Input				= require('Input')
local InputData			= require('Input.Data')
local ProfileDatabase	= require('Input.ProfileDatabase')
local InputUtils		= require('Input.Utils')
local lfs				= require('lfs')  -- Lua File System
local UpdateManager		= require('UpdateManager')

local profileName_
local inputLayerName_				= 'InputOptionsViewMAC'
local inputLayerName2_				= 'InputOptionsViewMAC2'
local inputLayerAddComboName_		= 'InputOptionsAddComboMAC'
local inputLayerAddModifierName_	= 'InputOptionsAddModifierMAC'
local inputLayerAxesTuneName_ 		= 'InputOptionsAxesTuneMAC'
local inputInfos_
local inputInfos2_
local inputLayerStack_
local callbackKeys_
local callbackAxes_
local deviceChangeCallback_
local keyUpValueOffset_ = 10000
local maxAddComboCommandValue_	= 10000 -- команды слоя инпута не должны пересекаться с командами симулятора
local axisRangeValue_			= 100
local addComboCallback_
local addComboDeviceName_
local addComboDeviceId_
local addComboAxesData_
local addModifierCallback_
local axesTuneCallback_
local axesTuneDeviceName_
local axesTuneDeviceId_
local filter_

local function setInputModifiers(modifiers)
	Input.clearReformers(inputLayerName_)
	
	for name, modifier in pairs(modifiers) do
		local event = modifier.event

		if event then
			Input.addReformer(inputLayerName_, modifier.event, modifier.deviceId, modifier.switch)
		end
	end
end

local function getCombosAreValid(combos)
	local result = true

	if combos then
		for i, combo in ipairs(combos) do
			result = result and combo.valid
		end
	end

	return result
end

local function getComboReformers(comboReformerNames, modifiers)
	local reformers
	
	if comboReformerNames then
		reformers = {}
		
		for i, comboReformerName in ipairs(comboReformerNames) do
			local modifier = modifiers[comboReformerName]
			
			if modifier then
				table.insert(reformers, {key = modifier.event, deviceId = modifier.deviceId})
			end	
		end
	end
	
	return reformers
end

local function createKeyInputInfos(modifiers)
	local keyCommands = InputData.getProfileKeyCommands(profileName_)
	
	for i, keyCommand in ipairs(keyCommands) do
		if keyCommand.combos then
			for deviceName, combos in pairs(keyCommand.combos) do
				if getCombosAreValid(combos) then
					local deviceId	= Input.getDeviceId(deviceName)
					
					for j, combo in ipairs(combos) do
						local key = combo.key
						
						if not InputUtils.getSkipDeviceEvent(key, deviceName) then
							local keyEvent = InputUtils.getInputEvent(key)
							local reformers = getComboReformers(combo.reformers, modifiers)
							
							print(keyCommand.hash, keyCommand.name, deviceName)
							
							table.insert(inputInfos_, { hash		= keyCommand.hash, 
														commandName	= keyCommand.name,
														deviceName 	= deviceName,})
							
							local inputInfoIndex	= #inputInfos_
							
							-- для того, чтобы индексы не смешивались с командами симулятора 
							-- и с командами слоя для устройств VR сделаем их отрицательными
							local down				= -inputInfoIndex
							local pressed			= nil
							local up				= nil
							
							Input.addKeyCombo(inputLayerName_, keyEvent, deviceId, reformers, down, pressed, up)
						end
					end -- for j, combo in ipairs(combos) do
				end
			end -- for deviceName, combos in pairs(keyCommand.combos) do
		end
	end -- for i, keyCommand in ipairs(keyCommands) do
end

local function createAxisInputInfos(modifiers)
	local axisCommands = InputData.getProfileAxisCommands(profileName_)	
	local joystickDeviceTypeName = Input.getJoystickDeviceTypeName()
	
	for i, axisCommand in ipairs(axisCommands) do
		if axisCommand.combos then
			for deviceName, combos in pairs(axisCommand.combos) do
				if joystickDeviceTypeName == InputUtils.getDeviceTypeName(deviceName) and  getCombosAreValid(combos) then 
					local deviceId	= Input.getDeviceId(deviceName)
					for j, combo in ipairs(combos) do
						local axis = combo.key
						
						if not InputUtils.getSkipDeviceEvent(axis, deviceName) then
							local axisEvent = InputUtils.getInputEvent(axis)
							local reformers = getComboReformers(combo.reformers, modifiers)
							local filter	= combo.filter
							
							table.insert(inputInfos_, { hash		= axisCommand.hash, 
														deviceName 	= deviceName,
														commandName	= axisCommand.name,
														filter		= filter,})
							
							local inputInfoIndex	= #inputInfos_

							-- для того, чтобы индексы не смешивались с командами симулятора 
							-- и с командами слоя для устройств VR сделаем их отрицательными
							local action			= -inputInfoIndex
							
							Input.addAxisCombo(inputLayerName_, axisEvent, deviceId, reformers, action, filter)
						end
					end -- for j, combo in ipairs(combos) do
				end
			end -- for deviceName, combos in pairs(axisCommand.combos) do
		end
	end -- for i, axisCommand in ipairs(axisCommands) do
end

local function createInputLayer()
	Input.deleteLayer(inputLayerName_)
	Input.createLayer(inputLayerName_)
	
	local modifiers = InputData.getProfileModifiers(profileName_)
	
	setInputModifiers(modifiers)
	
	inputInfos_ = {}
	
	createKeyInputInfos(modifiers)
	createAxisInputInfos(modifiers)
end

-- возвращает массив строк с именами устройств
local function getDeviceNames()
	return InputUtils.getDevices()
end

-- возвращает строку с типом устройства
-- "keyboard"
-- "mouse"
-- "joystick"
-- "trackir"
-- "headtracker"
-- "custom"
-- "unknown"
local function getDeviceTypeName(deviceName)
	return InputUtils.getDeviceTypeName(deviceName)
end

local function getDeviceId(deviceName)
	return Input.getDeviceId(deviceName)
end

local function createInputLayer2()
	Input.deleteLayer(inputLayerName2_)
	Input.createLayer(inputLayerName2_)
	
	-- local modifiers = InputData.getProfileModifiers(profileName_)
	
	Input.clearReformers(inputLayerName2_)
	
	inputInfos2_ = {}
	
	for i, deviceName in ipairs(InputUtils.getDevices()) do
		local deviceId	= Input.getDeviceId(deviceName)
		
		for j, keyInfo in ipairs(InputUtils.getDeviceKeys(deviceName)) do
			table.insert(inputInfos2_, {name			= keyInfo.name, 
										localizedName	= keyInfo.localizedName,
										deviceName		= deviceName,})
										
			-- для того, чтобы индексы не смешивались с командами симулятора 
			-- и с командами слоя для устройств VR сделаем их отрицательными
			local inputInfoIndex2	= #inputInfos2_	
			local down				= -inputInfoIndex2
			local pressed			= nil
			local up				= -inputInfoIndex2 - keyUpValueOffset_
			
			Input.addKeyCombo(inputLayerName2_, keyInfo.event, deviceId, nil, down, pressed, up)
		end
		
		-- оси мыши передавать не нужно
		if Input.getMouseDeviceTypeName() ~= getDeviceTypeName(deviceName) then
			for j, axisInfo in ipairs(InputUtils.getDeviceAxes(deviceName)) do
				table.insert(inputInfos2_, {name			= axisInfo.name, 
											localizedName	= axisInfo.localizedName,
											deviceName		= deviceName,})

				-- для того, чтобы индексы не смешивались с командами симулятора 
				-- и с командами слоя для устройств VR сделаем их отрицательными
				local inputInfoIndex2	= #inputInfos2_	
				local action			= -inputInfoIndex2
				
				Input.addAxisCombo(inputLayerName2_, axisInfo.event, deviceId, nil, action, nil)					
			end
		end
	end
end


local function init()
	if not profileName_ then
		local userConfigPath 	= lfs.writedir() .. 'Config/Input/'
		local sysConfigPath 	= './Config/Input/'

		InputData.initialize(userConfigPath, sysConfigPath)
		
		local profileInfo = ProfileDatabase.createMacAircraftProfileInfo(sysConfigPath)
		
		InputData.createProfile(profileInfo)
		
		profileName_ = profileInfo.name
		
		-- createInputLayer()
		createInputLayer2()
	end
end

local function saveChanges()
	InputData.saveChanges()
end

local function getKeyCommands()
	-- возвращает массив команд для кнопок
	-- формат команды
	-- command.name					= имя
	-- command.hash					= уникальный строковый идентификатор команды
	-- command.valid				= false если команда конфликтует с другими командами
	-- одна команда может содержать несколько комбинаций
	-- command.combos[deviceName] = {
		-- {key = 'L', reformers = {'LCtrl'}},
		-- {key = 'M', reformers = {'LCtrl', 'LAlt'},
		-- {key = 'Z'},
	-- }
	return InputData.getProfileKeyCommands(profileName_)
end

local function getAxisCommands()
	-- возвращает массив команд для осей
	-- формат команды
	-- command.name					= имя
	-- command.hash					= уникальный строковый идентификатор команды
	-- command.valid				= false если команда конфликтует с другими командами
	-- одна команда может содержать несколько комбинаций
	-- command.combos[deviceName] = {
		-- {key = 'JOY_X', reformers = {'LCtrl'}},
		-- {key = 'MOUSE_X', reformers = {'LCtrl', 'LAlt'},
		-- {key = 'JOY_LEFT_TRIGGER'},
	-- }
	-- настройки кривых для осей 
	-- command.filters[deviceName] = {
		-- deadzone
		-- saturationX
		-- saturationY
		-- singleCurvature
		-- slider
		-- invert
		-- userCurve
		-- userCurvature
	-- }
	return InputData.getProfileAxisCommands(profileName_)
end

local function getDeviceKeys(deviceName)
	-- возвращает массив кнопок устройства
	-- {
		-- event - то, что записано в combos команды
		-- name
		-- localizedName - переведенное имя кнопки для отображения в интерфейсе
	-- }
	return InputUtils.getDeviceKeys(deviceName)
end

local function getDeviceAxes(deviceName)
	-- возвращает массив осей устройства
	-- {
		-- event - то, что записано в combos команды
		-- name
		-- localizedName - переведенное имя оси для отображения в интерфейсе
	-- }
	return InputUtils.getDeviceAxes(deviceName)
end

local function getModifiers()
	-- возвращает список модификаторов (кнопки типа Alt, Shift, Ctrl)
	-- modifiers[modifierName] = 
	-- {
	-- key - то, что записано в combos команды
	-- event - число
	-- deviceName - имя устройства
	-- deviceId - id устройства
	-- }	
	return InputData.getProfileModifiers(profileName_)
end

-- после вызова этой функции часть команд может стать невалидной.
-- поэтому нужно заново получить список команд и пометить невалидные
local function setModifiers(modifiers)
	-- modifiers - список модификаторов (кнопки типа Alt, Shift, Ctrl)
	-- modifiers[modifierName] = 
	-- {
	-- key - то, что записано в combos команды
	-- deviceName - имя устройства
	-- }
	for name, modifier in pairs(modifiers) do
		modifier.deviceId = Input.getDeviceId(modifier.deviceName)
		modifier.event = InputUtils.getInputEvent(modifier.key)
	end
	
	InputData.setProfileModifiers(profileName_, modifiers)
end

-- local function onProcessInput()
	-- -- у нас есть еще все время включенный слой инпута для VR устройств
	-- -- сюда могут попадать команды от него
	-- local inputActions = Input.getInputActions()
	
	-- for i, inputAction in ipairs(inputActions) do
		-- local inputInfoIndex	= inputAction.action
		
		-- if inputInfoIndex < 0 then
			-- local inputInfo				= inputInfos_[-inputInfoIndex]
			
			-- -- эта проверка нужна поскольку при переключении самолета 
			-- -- сюда могут попадать команды джойстика от предыдущего самолета
			-- if inputInfo then 
				-- if inputAction.hasValue then
					 -- local minValue			
					 -- local maxValue
					
					-- if inputInfo.filter and inputInfo.filter.slider then
						-- if inputInfo.filter.invert then
							-- minValue = inputAction.value * axisRangeValue_
							-- maxValue = axisRangeValue_
						-- else
							-- minValue = -axisRangeValue_
							-- maxValue = inputAction.value * axisRangeValue_
						-- end
					-- else
						-- minValue = math.min(0, inputAction.value) * axisRangeValue_
						-- maxValue = math.max(0, inputAction.value) * axisRangeValue_
					-- end
					
					-- callback_(inputInfo.hash, inputInfo.deviceName, minValue, maxValue)
				-- else
					-- callback_(inputInfo.hash, inputInfo.deviceName)
					
					-- break
				-- end
			-- end
		-- end
	-- end
-- end

local function onProcessInput2()
	-- у нас есть еще все время включенный слой инпута для VR устройств
	-- сюда могут попадать команды от него
	local inputActions = Input.getInputActions()
	
	for i, inputAction in ipairs(inputActions) do
		local inputInfoIndex2	= inputAction.action

		if inputInfoIndex2 < 0 then
			local keyDown = true
			
			if inputInfoIndex2 < -keyUpValueOffset_ then
				keyDown = false
				inputInfoIndex2 = inputInfoIndex2 + keyUpValueOffset_
			end
			
			local inputInfo2 = inputInfos2_[-inputInfoIndex2]
			
			-- эта проверка нужна поскольку при переключении самолета 
			-- сюда могут попадать команды джойстика от предыдущего самолета
			if inputInfo2 then
				if inputAction.hasValue then
					if callbackAxes_ then
						callbackAxes_(inputInfo2.name, inputInfo2.deviceName, inputAction.value)
					end
				else
					if callbackKeys_ then
						callbackKeys_(inputInfo2.name, inputInfo2.deviceName, keyDown)
					end
				end
			end
		end
	end
	
	Input.clearInputActions()
end

local function onDeviceChangeCallback(deviceName, plugged)
	deviceChangeCallback_(deviceName, plugged)
end

-- начать получать события инпута
-- callback функция в которую передается 2 или 4 параметра
-- для кнопок 
--	   key - имя кнопки
--	   deviceName - имя устройства
-- для осей 
--	   hash - хеш команды
--	   deviceName - имя устройства
--	   minValue - минимальное значение оси - в диапазоне от -100 до +100
--	   maxValue - максимальное значение оси - в диапазоне от -100 до +100
-- как это работает для осей  можно посмотреть в настройках инпута (нужно пошевелить ручку джойстика)
-- deviceChangeCallback - функция, которая будет вызываться при подключении и отключении устройства
--	   deviceName - имя устройства
--	   plugged - true если подкючено

-- local function startListening(callbackKeys, callbackAxes, deviceChangeCallback)
	-- callbackKeys_ = callbackKeys
	-- callbackAxes_ = callbackAxes
	-- deviceChangeCallback_ = deviceChangeCallback

	-- Gui.EnableHighSpeedUpdate(true)
	
	-- Input.addDeviceChangeCallback(onDeviceChangeCallback)
	
	-- Input.ignoreUiLayer(true)
	-- Input.process()
	-- inputLayerStack_ = Input.getLayerStack()
	-- Input.clearLayerStack()
	
	-- Input.setTopLayer(inputLayerName2_)
	-- UpdateManager.add(onProcessInput2)
-- end

local function finishListening()
	if not callbackKeys_ and not callbackAxes_ then
		Gui.EnableHighSpeedUpdate(false)
	
		Input.ignoreUiLayer(false)
		
		if inputLayerStack_ then
			Input.setLayerStack(inputLayerStack_)
			inputLayerStack_ = nil
		end	
		
		Input.removeLayerFromStack(inputLayerName2_)
		UpdateManager.delete(onProcessInput2)
	end
end

local function startListeningKeys(callback)
	callbackKeys_ = callback
	Gui.EnableHighSpeedUpdate(true)
	
	Input.ignoreUiLayer(true)
	Input.process()
	
	if not inputLayerStack_ then
		inputLayerStack_ = Input.getLayerStack()
		Input.clearLayerStack()
		
		Input.setTopLayer(inputLayerName2_)
		UpdateManager.add(onProcessInput2)	
	end
end

local function finishListeningKeys()
	callbackKeys_ = nil
	finishListening()
end

local function startListeningAxes(callback)
	callbackAxes_ = callback
	Gui.EnableHighSpeedUpdate(true)
	
	Input.ignoreUiLayer(true)
	Input.process()
	
	if not inputLayerStack_ then
		inputLayerStack_ = Input.getLayerStack()
		Input.clearLayerStack()
		
		Input.setTopLayer(inputLayerName2_)
		UpdateManager.add(onProcessInput2)	
	end
end

local function finishListeningAxes()
	callbackAxes_ = nil
	finishListening()
end

-- -- завершить получать события инпута
-- local function finishListening()	
	-- Gui.EnableHighSpeedUpdate(false)
	
	-- Input.ignoreUiLayer(false)
	-- Input.removeDeviceChangeCallback(onDeviceChangeCallback)
	
	-- if inputLayerStack_ then
		-- Input.setLayerStack(inputLayerStack_)
		-- inputLayerStack_ = nil
	-- end	
	
	-- Input.removeLayerFromStack(inputLayerName_)
	-- UpdateManager.delete(onProcessInput2)

	-- callbackKeys_			= nil
	-- callbackAxes_			= nil
	-- deviceChangeCallback_	= nil
-- end

-- удалить все кнопочные комбинации команды для устройства deviceName
local function clearKeyCombos(hash, deviceName)
	InputData.removeKeyCommandCombos(profileName_, hash, deviceName)
	
	createInputLayer()
end

-- удалить все осевые комбинации команды для устройства deviceName
local function clearAxisCombos(hash, deviceName)
	InputData.removeAxisCommandCombos(profileName_, hash, deviceName)
	
	createInputLayer()
end

-- удалить все кнопочные комбинации команд hashes для устройства deviceName
local function clearKeyCategory(hashes, deviceName)
	for i, hash in ipairs(hashes) do
		InputData.removeKeyCommandCombos(profileName_, hash, deviceName)
	end
	
	createInputLayer()	
end

-- удалить все осевые комбинации команд hashes для устройства deviceName
local function clearAxisCategory(hashes, deviceName)
	for i, hash in ipairs(hashes) do
		InputData.removeAxisCommandCombos(profileName_, hash, deviceName)
	end
	
	createInputLayer()	
end

-- восстановить все кнопочные комбинации команды для устройства deviceName
-- в result посылаются дефолтные комбинации команды hash для устройства deviceName
-- дефолтные комбинации нужно удалить из других команд!!! 
local function restoreDefaultKeyCombos(hash, deviceName)
	InputData.setDefaultKeyCommandCombos(profileName_, hash, deviceName)
	
	local result
	local defaultCommand = InputData.getDefaultKeyCommand(profileName_, hash)
	
	if defaultCommand.combos then
		result = {hash, deviceName, defaultCommand.combos[deviceName]}
	end
	
	createInputLayer()
	return result
end

-- восстановить все осевые  комбинации команды для устройства deviceName
-- в result посылаются дефолтные комбинации команды hash для устройства deviceName 
-- дефолтные комбинации нужно удалить из других команд!!! 
local function restoreDefaultAxisCombos(hash, deviceName, callback)
	InputData.setDefaultAxisCommandCombos(profileName_, hash, deviceName)
	
	local defaultCommand = InputData.getDefaultAxisCommand(profileName_, hash)
	local result
	
	if defaultCommand.combos then
		result = {hash, deviceName, defaultCommand.combos[deviceName]}
	end
	
	createInputLayer()
	return result
end

-- восстановить все кнопочные комбинации команд hashes для устройства deviceName
-- в callback посылаются дефолтные комбинации команды hash для устройства deviceName 
-- дефолтные комбинации нужно удалить из других команд!!! 
local function restoreKeyCategoryToDefault(hashes, deviceName, callback)
	for i, hash in ipairs(hashes) do
		InputData.setDefaultKeyCommandCombos(profileName_, hash, deviceName)
	
		local defaultCommand = InputData.getDefaultKeyCommand(profileName_, hash)
		
		if defaultCommand.combos then
			callback(hash, deviceName, defaultCommand.combos[deviceName])
		end
	end
	
	createInputLayer()
end

-- восстановить все осевые комбинации команд hashes для устройства deviceName
-- в callback посылаются дефолтные комбинации команды hash для устройства deviceName 
-- если осевые команды сами по себе категория, 
-- то дефолтные комбинации удалять из других команд НЕ НУЖНО!!!  
local function restoreAxisCategoryToDefault(hashes, deviceName, callback)
	for i, hash in ipairs(hashes) do
		InputData.setDefaultAxisCommandCombos(profileName_, hash, deviceName)
		
		local defaultCommand = InputData.getDefaultAxisCommand(profileName_, hash)
		
		if defaultCommand.combos then
			callback(hash, deviceName, defaultCommand.combos[deviceName])
		end
	end
	
	createInputLayer()	
end


-- получить настройки ForceFeedback для джойстика deviceName
-- возвращает таблицу
-- {
	-- trimmer	[0; 1]
	-- shake	[0; 1]
	-- swapAxes	bool
	-- invertX	bool
	-- invertY	bool
-- }
local function getForceFeedbackSettings(deviceName)
	local settings = InputData.getProfileForceFeedbackSettings(profileName_, deviceName)
	
	return settings
end

-- установить настройки ForceFeedback для джойстика deviceName
local function setForceFeedbackSettings(deviceName, settings)
	InputData.setProfileForceFeedbackSettings(profileName_, deviceName, settings)
end

local function addModifiersKeysToAddComboLayer(modifiers)
	for modifierName, modifier in pairs(modifiers) do
		local event = modifier.event

		if event then
			local deviceId			= modifier.deviceId
			local reformers			= nil
			local down				= event + maxAddComboCommandValue_
			local pressed			= nil
			local up				= nil

			Input.addKeyCombo(inputLayerAddComboName_, event, deviceId, reformers, down, pressed, up)
		end
	end
end

local function addDeviceKeysToAddComboLayer(modifiers)
	local deviceKeys	= InputUtils.getDeviceKeysNoModifiers(addComboDeviceName_, modifiers)
	local eventsToSkip	= InputUtils.getDeviceEventsToSkip(addComboDeviceName_)

	for i, deviceKey in ipairs(deviceKeys) do
		local event = deviceKey.event

		if not eventsToSkip[event] then
			local reformers			= nil
			local down				= event + maxAddComboCommandValue_
			local pressed			= nil
			local up				= nil
			
			Input.addKeyCombo(inputLayerAddComboName_, event, addComboDeviceId_, reformers, down, pressed, up)
		end
	end
end

local function addDeviceAxesToAddComboLayer()
	local deviceAxes	= InputUtils.getDeviceAxes(addComboDeviceName_)
	local eventsToSkip	= InputUtils.getDeviceEventsToSkip(addComboDeviceName_)

	for i, deviceAxis in ipairs(deviceAxes) do
		local event = deviceAxis.event

		if not eventsToSkip[event] then
			local reformers			= nil
			local action			= event + maxAddComboCommandValue_
			local filter			= nil
			
			Input.addAxisCombo(inputLayerAddComboName_, event, addComboDeviceId_, reformers, action, filter)
		end
	end
end

local function getAxisSelected(event, value)
	local result = false
	-- чтобы была выбрана ось, 
	-- пользователь должен перевести ее от минимального положения к максимальному
	local minValue = -0.8
	local maxValue = 0.8

	addComboAxesData_[event] = addComboAxesData_[event] or {minValue = false, maxValue = false}

	local eventData = addComboAxesData_[event]

	if value < minValue then
		eventData.minValue = true
	elseif value > maxValue then
		eventData.maxValue = true
	end

	if eventData.minValue and eventData.maxValue then
		eventData.minValue = false
		eventData.maxValue = false
		
		result = true
	end

	return result
end

local function onProcessAddComboInput()
	local inputActions	= Input.getInputActions()

	for i, inputAction in ipairs(inputActions) do
		local event		= inputAction.action - maxAddComboCommandValue_
		
		if inputAction.hasValue then
			local value = inputAction.value
			
			if inputAction.deviceId == addComboDeviceId_ and getAxisSelected(event, value) then
				addComboCallback_(event, inputAction.deviceId)
			end
		else
			addComboCallback_(event, inputAction.deviceId)
		end
	end
end

-- показать модальный диалог добавления комбинации в команду
-- для окна потребуются следующие данные
-- список модификаторов - получить функцией getProfileModifiers()
-- список кнопок/осей устройства getDeviceKeys()/ getDeviceAxes()
-- из списка кнопок нужно удалить модификаторы
-- если пользователь ввел комбинацию из существующей команды,
-- то нужно это отметить в интефейсе
-- callback - функция, принимает два параметра 
-- event - событие от кнопки/оси
-- deviceId - id устройства пославшего event
-- вызывается каждый раз, когда пользователь нажал кнопку 
-- или передвинул джойстик из одного крайнего положения в другое
local function startAddComboDialog(callback, deviceName)
	finishListening()

	addComboCallback_	= callback
	addComboDeviceName_	= deviceName
	addComboDeviceId_	= Input.getDeviceId(deviceName)
	addComboAxesData_	= {}
	Input.createLayer(inputLayerAddComboName_)
	
	local modifiers	= InputData.getProfileModifiers(profileName_)
	
	addModifiersKeysToAddComboLayer(modifiers)
	addDeviceKeysToAddComboLayer(modifiers)
	addDeviceAxesToAddComboLayer()
	
	Input.setTopLayer(inputLayerAddComboName_)
	UpdateManager.add(onProcessAddComboInput)
end

-- закончили показывать модальный диалог добавления комбинации в команду
-- hash - хеш команды - nil если пользователь нажал Отмена
-- isAxisCommand true если это ось
-- keyName - имя кнопки/оси
-- modifierNames - список модификаторов
local function finishAddComboDialog(hash, isAxisCommand, keyName, modifierNames)
	if hash then
		local combo = {key = keyName, reformers = modifierNames}
		
		if isAxisCommands then
			InputData.addComboToAxisCommand(profileName_, hash, addComboDeviceName_, combo)
		else
			InputData.addComboToKeyCommand(profileName, hash, addComboDeviceName_, combo)
		end		
		
		createInputLayer()
	end

	Input.deleteLayer(inputLayerAddComboName_)	
	UpdateManager.delete(onProcessAddComboInput)
	
	addComboCallback_	= nil
	addComboDeviceName_	= nil
	addComboDeviceId_	= nil
	addComboAxesData_	= nil
	
	startListening()
end

local function onProcessAddModifierInput()
	local inputActions = Input.getInputActions()
		
	for i, inputAction in ipairs(inputActions) do 
		local event = inputAction.action - maxAddComboCommandValue_

		addModifierCallback_(event, inputAction.deviceId)
	end
end

-- показать модальный диалог добавления модификатора
-- callback - функция, принимает два параметра 
-- event - событие от кнопки
-- deviceId - id устройства пославшего event
local function startAddModifierDialog(callback)
	finishListening()
	
	addModifierCallback_ = callback
	
	Input.createLayer(inputLayerAddModifierName_)
	
	local modifiers		= InputData.getProfileModifiers(profileName_)
	local deviceNames	= InputUtils.getDevices()
	
	for i, deviceName in ipairs(deviceNames) do
		local deviceId		= Input.getDeviceId(deviceName)
		local eventsToSkip	= InputUtils.getDeviceEventsToSkip(deviceName)
		local deviceKeys	= InputUtils.getDeviceKeysNoModifiers(deviceName, modifiers)	
		
		for j, deviceKey in ipairs(deviceKeys) do
			local event = deviceKey.event

			if not eventsToSkip[event] then
				local reformerEvents	= nil
				local down				= event + maxAddComboCommandValue_
				local pressed			= nil
				local up				= nil
			
				Input.addKeyCombo(inputLayerAddModifierName_, event, deviceId, reformerEvents, down, pressed, up)
			end
		end
	end
	
	Input.setTopLayer(inputLayerAddModifierName_)
	UpdateManager.add(onProcessAddModifierInput)
end
	
-- закончили показывать модальный диалог добавления модификатора
local function finishAddModifierDialog()
	Input.deleteLayer(inputLayerAddModifierName_)	
	UpdateManager.delete(onProcessAddModifierInput)

	addModifierCallback_ = nil

	startListening()
end

local function onProcessAxesTuneInput()
	local inputActions = Input.getInputActions()

	for i, inputAction in ipairs(inputActions) do
		axesTuneCallback_(inputAction.value)
	end
end

-- показать модальный диалог настройки кривых для оси
-- callback - функция, принимает один параметр
-- event - событие от оси устройства deviceName
-- axisName - имя оси - поле key в таблице combos[deviceName] для команды
-- deviceName - имя устройства для оси axisName
local function startAxesTuneDialog(callback, axisName, deviceName)
	finishListening()
	
	axesTuneCallback_	= callback
	axesTuneDeviceName_	= deviceName
	axesTuneDeviceId_	= Input.getDeviceId(deviceName)	
	
	Input.createLayer(inputLayerAxesTuneName_)
	
	local event 	= InputUtils.getInputEvent(axisName)
	local reformers	= nil

	Input.addAxisCombo(inputLayerAxesTuneName_, event, axesTuneDeviceId_, reformers, event)

	Input.setTopLayer(inputLayerAxesTuneName_)
	UpdateManager.add(onProcessAxesTuneInput)
end

-- закончили показывать модальный диалог настройки кривых для оси
-- hash - хеш команды - nil если пользователь нажал Отмена
-- axisName - имя оси устройства
-- filter таблица вида
-- {
-- deadzone = [0 .. 1]
-- saturationX = [0 .. 1]
-- saturationY = [0 .. 1]
-- curvature = {одно оли 11 значений [0 .. 1]}
-- slider = bool
-- invert = bool
-- }
local function finishAxesTuneDialog(hash, axisName, filter)
	if hash then
		InputData.setAxisCommandComboFilter(profileName_, hash, axesTuneDeviceName_, {[axisName] = filter})
		
		createInputLayer()
	end
	
	Input.deleteLayer(inputLayerAxesTuneName_)	
	UpdateManager.delete(onProcessAxesTuneInput)
	
	axesTuneCallback_	= nil
	axesTuneDeviceName_	= nil
	axesTuneDeviceId_	= nil
	
	startListening()
end

-- filter - таблица вида
-- {
-- deadzone = [0; 1]
-- saturationX = [0; 1]
-- saturationY = [0; 1]
-- curvature = {одно или 11 значений [0; 1]}
-- slider = bool
-- invert = bool
-- }
local function setFilter(filter)
	local inRange = axisRangeValue_ 	-- входное значение в фильтр лежит в диапазоне [-axisRangeValue_; +axisRangeValue_]
	local outRange = axisRangeValue_	-- вЫходное значение фильтра лежит в диапазоне [-axisRangeValue_; +axisRangeValue_]
	
	Input.setFilter(filter, inRange, outRange)
end

-- value полученное от оси
local function getFilterValue(value)
	return Input.getFilterValue(value)
end

return {
	init							= init,
	saveChanges						= saveChanges,
	getDeviceNames					= getDeviceNames,
	getDeviceTypeName				= getDeviceTypeName,
	getDeviceId						= getDeviceId,
	getKeyCommands					= getKeyCommands,
	getAxisCommands					= getAxisCommands,
	getDeviceKeys					= getDeviceKeys,
	getDeviceAxes					= getDeviceAxes,
	getModifiers					= getModifiers,
	setModifiers					= setModifiers,
	startListening					= startListening,
	startListeningKeys				= startListeningKeys,
	finishListeningKeys				= finishListeningKeys,
	startListeningAxes				= startListeningAxes,
	finishListeningAxes				= finishListeningAxes,	
	clearKeyCombos					= clearKeyCombos,
	clearAxisCombos					= clearAxisCombos,
	clearKeyCategory				= clearKeyCategory,
	clearAxisCategory				= clearAxisCategory,
	restoreDefaultKeyCombos			= restoreDefaultKeyCombos,
	restoreDefaultAxisCombos		= restoreDefaultAxisCombos,
	restoreKeyCategoryToDefault		= restoreKeyCategoryToDefault,
	restoreAxisCategoryToDefault	= restoreAxisCategoryToDefault,
	getForceFeedbackSettings		= getForceFeedbackSettings,
	setForceFeedbackSettings		= setForceFeedbackSettings,
	startAddComboDialog				= startAddComboDialog,
	finishAddComboDialog			= finishAddComboDialog,
	startAddModifierDialog			= startAddModifierDialog,
	finishAddModifierDialog			= finishAddModifierDialog,
	startAxesTuneDialog				= startAxesTuneDialog,
	finishAxesTuneDialog			= finishAxesTuneDialog,
	setFilter						= setFilter,
	getFilterValue					= getFilterValue,
}