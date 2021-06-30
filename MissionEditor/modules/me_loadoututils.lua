local base = _G

module('me_loadoututils')

local require = base.require
local pairs = base.pairs
local ipairs = base.ipairs
local tonumber = base.tonumber
local table = base.table
local tostring = base.tostring
local string = base.string
local assert = base.assert
local print = base.print
local loadfile = base.loadfile

local SkinUtils = require('SkinUtils')
local Panel = require('Panel')
local DB = require('me_db_api')
local Static = require('Static')
local Menu = require('Menu')
local MenuItem = require('MenuItem')
local MenuSeparatorItem = require('MenuSeparatorItem')
local MenuSubItem = require('MenuSubItem')
local Serializer = require('Serializer')
local ConfigHelper = require('ConfigHelper')
local UpdateManager = require('UpdateManager')
local lfs = require('lfs')
local TableUtils	= require('TableUtils')
local U 						= require('me_utilities')
local log      			= require('log')
local textutil          = require('textutil')

require('i18n').setup(_M)

local gettext = require("i_18n")

-- ширина первого столбца
nameColumnWidth = 200

-- ширина столбцов в таблице
columnWidth = 40

-- высота строк в таблице
rowHeight = 40

local cdata = 
{
	remove = _('REMOVE PAYLOAD')
}

local colorBlack = '0x000000ff'
local modifiedUnitType_
local translatedStrings_ = {}

local function translate_(str)
	local result = translatedStrings_[str]
	
	if not result then
		result = gettext.dtranslate("payloads", str)
		translatedStrings_[str] = result
	end

	return result
end

-- для быстрого поиска по оружию создадим вспомогательные таблицы
local launcherCategories__ = {}
local launcherNames__ = {}
local launcherPictures__ = {}
local launcherColors__ = {}
local launcherCounts__ = {}
local launcherWeights__ = {}
local launcherAttribute__ = {}
local launcherNetto__ = {}
	
local function initializeDB_()
	DB.unit_by_type = {}
	DB.db = base.db
	
	-- что-то подобное делается внутри me_db_api
	function hackNames(units)
		for i, unit in pairs(units) do
			unit.type = unit.Name
			unit.Name = unit.DisplayName
			unit.swapped_names = true
			DB.unit_by_type[unit.type] = unit
		end
	end

	hackNames(DB.db.Units.Planes.Plane)
	hackNames(DB.db.Units.Helicopters.Helicopter)
end

local function fillLauncherInfo_()
	for i, category in pairs(DB.db.Weapons.Categories) do
		for j, launcher in pairs(category.Launchers) do
			local launcherWeight = tonumber(launcher.Weight)
			local CLSID = launcher.CLSID
			
			launcherNames__[CLSID] 		= category.Name
			launcherCategories__[CLSID] = category.DisplayName or _(category.Name)
			launcherPictures__[CLSID]   = launcher.Picture
			launcherCounts__[CLSID]     = launcher.Count 
			launcherWeights__[CLSID]    = launcherWeight
			launcherAttribute__[CLSID]	= launcher.attribute
			
			if launcher.PictureBlendColor then
			   launcherColors__[CLSID] = launcher.PictureBlendColor
			end
			
			if launcher.Weight_Empty then
				launcherNetto__[CLSID] = launcherWeight - tonumber(launcher.Weight_Empty)
			else
				launcherNetto__[CLSID] = launcherWeight
			end
		end
	end
end

local defaultUnitsPayload
local unitPayloadsFilename

local function loadPayloads_()
	-- загрузка базы данных	
	local unitPayloadsFolder = ConfigHelper.getUnitPayloadsSysPath()
	local filenames = getUnitPayloadFileNames()
	
	defaultUnitsPayload = {}
    unitsPayload = {}
	unitPayloadsFilename = {}
    
	for i, filename in pairs(filenames) do
		local path = getUnitPayloadsReadPath(filename)
		local f, err = loadfile(path)
		
		if f then
			local ok, res = base.pcall(f)
			if ok then
				local unitPayloads = res
				local unitType = unitPayloads.unitType or unitPayloads.name
				defaultUnitsPayload[unitType] = unitPayloads
				unitPayloadsFilename[unitType] = filename
			else
				log.error('ERROR: loadPayloads_() failed to pcall "'..filename..'": '..res)
			end				              
		else
			print('Cannot load payloads!',filename,path, err)
		end
	end
    
	for kk,vv in base.pairs(defaultUnitsPayload) do
		for k,v in base.pairs(vv.payloads) do
			if v.displayName == nil then
				v.displayName = translate_(v.name)
			else
				v.displayName = translate_(v.displayName)
			end
		end
	end
	
    TableUtils.recursiveCopyTable(unitsPayload, defaultUnitsPayload)

    -- мержим в загруженные дефолтные юзерские
    mergeUserPayloads()
end

function mergeUserPayloads()
    local filenames = {}
    local usersUnitsPayload ={}
    local dir = ConfigHelper.getWriteDirUnitPayloads()

    if lfs.attributes(dir) then
        for filename in lfs.dir(dir) do
            if filename ~= '.' and filename ~= '..' then
                local path = dir..'/'..filename
                local f, err = loadfile(path)
                
                if f then
					local ok, res = base.pcall(f)
					if ok then
						local unitPayloads = res
						local unitType = unitPayloads.unitType or unitPayloads.name
						usersUnitsPayload[unitType] = unitPayloads  
						
						-- fixPayloads
						local unitDef = DB.unit_by_type[unitType]
						if unitDef then
							for k, payload in base.pairs(unitPayloads.payloads) do
								for i = #payload.pylons, 1, -1 do
									local pylon = payload.pylons[i]
									if pylon then										
										if unitDef.Pylons[pylon.num] == nil then 
											table.remove(payload.pylons, i)
										end
									end	
								end	
							end
						end
					else
						log.error('ERROR: mergeUserPayloads() failed to pcall "'..filename..'": '..res)
					end	                               
                else
                    print('Cannot load user payload!',path, err)
                end                
            end
        end
    end
    
    for unitType,userPayload in base.pairs(usersUnitsPayload) do
        local unitPayload = unitsPayload[unitType]     
        local enableInDB = (DB.unit_by_type[unitType] ~= nil)  
        if unitPayload == nil then
            if enableInDB == true then
                unitPayload = {}
                unitPayload.unitType = unitType
                unitPayload.name = unitType
                unitPayload.tasks = {}
                unitPayload.payloads = {}
                unitsPayload[unitType] = unitPayload
                local copyPayload = {}
                TableUtils.recursiveCopyTable(copyPayload, unitsPayload[unitType])
                defaultUnitsPayload[unitType] = copyPayload
            end
        end
        if enableInDB == true then
            for kk,payloadU in base.pairs(userPayload.payloads) do
                local enable = false
                for k,payloadD in base.pairs(unitPayload.payloads) do
                    if payloadD.name == payloadU.name then
                        unitPayload.payloads[k] = {}
                        TableUtils.recursiveCopyTable(unitPayload.payloads[k], userPayload.payloads[kk])
                        enable = true
                    end
                end
                if enable == false then 
                    local copyPayload ={}
                    TableUtils.recursiveCopyTable(copyPayload, userPayload.payloads[kk])
                    base.table.insert(unitPayload.payloads, copyPayload)
                end
            end 
        end    
    end
end

local function loadUnitPayloads(a_filenames,a_dir)
    if lfs.attributes(a_dir) then
        for filename in lfs.dir(a_dir) do
            if filename ~= '.' and filename ~= '..' then
                a_filenames[filename] = filename
                unitPayloadsPaths[filename] = a_dir..'/'..filename
                --base.print("----unitPayloadsPaths]",filename,unitPayloadsPaths[filename] )  
            end
        end
    end
end

function getUnitPayloadFileNames()
	local filenames = {}
	local unitPayloadsSysFolder = ConfigHelper.getUnitPayloadsSysPath()
    unitPayloadsPaths= {}
      
--print("----unitPayloadsSysFolder=",unitPayloadsSysFolder,	writeDirUnitPayloads)
    loadUnitPayloads(filenames, unitPayloadsSysFolder) 
    
    for i,plugin in ipairs(base.plugins) do
		if plugin.applied then
            local dir = plugin.dirName.."/UnitPayloads"
            --print("---dir----",dir)
            loadUnitPayloads(filenames,dir) 
        end
    end    
   
	return filenames
end



function getUnitPayloadsReadPath(filename)
	return unitPayloadsPaths[filename]
end

function getUnitsPayload()
    return unitsPayload
end

function saveUnitPayloads(unitType)
	local filename = unitPayloadsFilename[unitType] or unitType..".lua"
    local savedPayload = {}
    TableUtils.recursiveCopyTable(savedPayload, unitsPayload[unitType])
    
    local defaultUnitPayload = defaultUnitsPayload[unitType]  
    
    local removePay ={}
    --base.U.traverseTable(savedPayload.payloads)
    --base.U.traverseTable(defaultUnitPayload.payloads)
    local removeTab ={}
    for k,payload in base.pairs(savedPayload.payloads) do  
        if defaultUnitPayload ~= nil then
            for kk, defPayload in base.pairs(defaultUnitPayload.payloads) do            
                if payload.name == defPayload.name then                    
                    if TableUtils.compareTables(payload,defPayload) == true then
                        base.table.insert(removeTab,k)
                    end
                end
            end
        end
    end
    
    for i = #removeTab, 1, -1 do
        base.table.remove(savedPayload.payloads, removeTab[i]) 
    end
    
    if #savedPayload.payloads == 0 then
        local path = ConfigHelper.getUnitPayloadsWritePath(filename)   
        base.os.remove(path) 
        return    
    end
	
	if filename then		
		local path = ConfigHelper.getUnitPayloadsWritePath(filename)
		local file, err = base.io.open(path, 'w')
		
		if file then
			file:write('local ')
			local s = Serializer.new(file)
			s:serialize_sorted('unitPayloads', savedPayload)
			file:write('return unitPayloads\n')
			file:close()
		else
			print('Cannot save payload!', err)
		end
	end
end

function init(payloadCellSkin, pylonCaptionSkin, pylonCellSkin)
	payloadCellSkin_ = payloadCellSkin
	pylonCaptionSkin_ = pylonCaptionSkin
	pylonCellSkin_ = pylonCellSkin

	if not DB.isInitialized() then -- me_db_api initialized
		initializeDB_()
	end
	
	fillLauncherInfo_()
	loadPayloads_()
end

-- возвращает категорию оружия по CLSID оружия
function getLauncherCategory(launcherCLSID)
	return launcherCategories__[launcherCLSID]
end

function getLauncherNames(launcherCLSID)
	return launcherNames__[launcherCLSID]
end

-- возвращает имя файла (без расширения) картинки оружия по CLSID оружия
function getLauncherPicture(launcherCLSID)
	return launcherPictures__[launcherCLSID],launcherColors__[launcherCLSID]
end

function getLauncherCount(launcherCLSID)
	return launcherCounts__[launcherCLSID] or 0
end

function getLauncherWeight(launcherCLSID)
	return launcherWeights__[launcherCLSID] or 0
end

function getLauncherWeightNetto(launcherCLSID)
	return launcherNetto__[launcherCLSID] or 0
end

function getLauncherAttribute(launcherCLSID)
	return launcherAttribute__[launcherCLSID]
end

local tasks_
-- возвращает таблицу tasks = {[WorldID] = taskName, [WorldID] = taskName}
function getTasks()
	if not tasks_ then
		tasks_ = {}

		for i, task in pairs(DB.db.Units.Planes.Tasks) do
			tasks_[task.WorldID] = task.Name
		end
	end	

	return tasks_
end

-- возвращает количество пилонов у юнита 
function getPylonsCount(unitType)
	local unit = DB.unit_by_type[unitType]
	
	if unit then
		return #unit.Pylons
	end
	
	return 0
end

function compareByOrder(a_tab1, a_tab2)
	return a_tab1.Order < a_tab2.Order
end

function getPylonsNames(unitType)
	local unit = DB.unit_by_type[unitType]
	local res = {}
	
	if unit then
		for i,o in ipairs(unit.Pylons) do
			local tmp = {}
			tmp.DisplayName  = o.DisplayName
			tmp.Number		= o.Number
			tmp.Order		= o.Order or o.Number
			table.insert(res, tmp)
		end
	end
	table.sort(res, compareByOrder) 
	
	for k,v in ipairs(res) do
		res[k].DisplayName = v.DisplayName or tostring(k)
	end
	
	return res
end

-- возвращает таблицу launchers = {[launcherCategory] = {launcherCLSID, launcherCLSID, ...}, ...}
function getPylonLaunchers(unitType, pylonNumber)
	local launchers = {}
	local clean = {}
	local unit = DB.unit_by_type[unitType]
	
	if unit then
		for i, pylon in pairs(unit.Pylons) do
			if pylonNumber == pylon.Number then
				for j, launcher in pairs(pylon.Launchers) do
					local categoryName = getLauncherNames(launcher.CLSID)
					local categoryDispName = getLauncherCategory(launcher.CLSID)
					if categoryDispName and not launcher.obsolete then
						if categoryName == "CLEAN" then
							clean[categoryDispName] = launcher.CLSID
						else						
							launchers[categoryDispName] = launchers[categoryDispName] or {}
							table.insert(launchers[categoryDispName], launcher.CLSID)
						end
					end
				end
			end
		end
	end

	return launchers, clean
end

local function compareFunction(tbl1, tbl2)
	return textutil.Utf8Compare(tbl1.displayName, tbl2.displayName)	
end


-- возвращает таблицу payloads = {name, name, ...}
function getUnitPayloadNames(unitType, taskWorldID)
	local payloadNames
	local payloads = getUnitPayloads(unitType)
	
	if payloads then
		payloadNames = {}

		if taskWorldID == getDefaultTaskWorldID() then
			-- для дефолтной задачи возвращаем все подвески юнита
			for i, payload in pairs(payloads) do
				table.insert(payloadNames, {name = payload.name, displayName = payload.displayName or payload.name})
			end
		else
			for i, payload in pairs(payloads) do
				local taskIds = payload.tasks
			
				for j, tasksId in pairs(taskIds) do
					if taskWorldID == tasksId then
						table.insert(payloadNames, {name = payload.name, displayName = payload.displayName or payload.name})
						break
					end
				end
			end
		end

		table.sort(payloadNames,compareFunction)
	end
 
	return payloadNames
end

-- возвращает таблицу pylons = {[pylonNumber] = launcherCLSID, [pylonNumber] = launcherCLSID, ...}
function getUnitPylons(unitType, payloadName)
	local pylons
	local payloads = getUnitPayloads(unitType)

	if payloads then
		for i, payload in pairs(payloads) do
			if payloadName == payload.name then
				pylons = {}								
				for j, pylon in pairs(payload.pylons) do
					if pylon.num then
						pylons[pylon.num] = pylon.CLSID
					end
				end
			end
		end
	end

	return pylons
end

function getDefaultTaskWorldID()
	return DB.db.Units.Planes.DefaultTask.WorldID
end

function getLauncherName(launcherCLSID)
	return base.get_weapon_display_name_by_clsid(launcherCLSID)
end

function isUnitHelicopter(unitType)
    if unitType == nil then
        if base.panel_route.vdata.group then
            unitType = base.panel_route.vdata.group.units[1].type
        end
    end
	if unitType then
		for i, unit in pairs(DB.db.Units.Helicopters.Helicopter) do
			if unit.type == unitType then
				return true
			end
		end
		return false
	else
		return false
	end
end

function isUnitPlane(unitType)
    if unitType == nil then
        if base.panel_route.vdata.group then
            unitType = base.panel_route.vdata.group.units[1].type
        end
    end
	if unitType then
		for i, unit in pairs(DB.db.Units.Planes.Plane) do
			if unit.type == unitType then
			
				return true
			end
		end
		
		return false
	else
		return false
	end
end

function arePylonsEqual(pylons1, pylons2)
	for k, v in pairs(pylons1) do
		if pylons2[k] ~= v then
			return false
		end
	end

	for k, v in pairs(pylons2) do
		if pylons1[k] ~= v then
			return false
		end
	end
	
	return true
end

-- получить имя текущего юнита
function getCurrentUnitType()
	if isUnitHelicopter() or isUnitPlane() then
		return base.panel_aircraft.getUnitType()
	end
end

-- возвращает taskWorldID задачи по ее имени
function getTaskWorldID(taskName)
	local result
	local tasks = getTasks()
	
	for taskWorldID, name in pairs(tasks) do
		if taskName == name then
			result = taskWorldID
			break
		end
	end

	return result
end

-- возвращает имя задачи по ее WorldID
function getTaskName(taskWorldID)
	local tasks = getTasks()

	return tasks[taskWorldID]
end

-- получить задачу текущего юнита
function getCurrentTaskName()
	return base.panel_aircraft.getUnitTaskName()
end

function isPayloadNameValid(name)
 -- имя не должно быть пустой строкой и содержать кавычки
	return ('' ~= name) and (nil == string.match(name, '[\'"]'))
end

function getUnitPayloads(unitType)
	local unit = unitsPayload[unitType]
	
	if not unit then 
		unit = 	{ 
			tasks 	 = {},
			name  	 = unitType,
			unitType = unitType,
			payloads = {}
		}
		unitsPayload[unitType] = unit
	end
	
	return unit.payloads
end

-- возвращает таблицу [номер пилона] = launcherCLSID
function getMissionPayload()
	local pylons = {}

	-- pylons таблица [номер пилона] = {CLSID = launcherCLSID}
	if isUnitHelicopter() or isUnitPlane() then
		pylons = base.panel_aircraft.getUnitPylons()
	end 

	local result = {}

	for pylonNumber, launcher in pairs(pylons) do
		result[pylonNumber] = launcher.CLSID
	end

	return result
end

local unitTasks_ = {}

function getDBUnits(unitType)
	if isUnitPlane(unitType) then
		return DB.db.Units.Planes.Plane
	elseif isUnitHelicopter(unitType) then
		return DB.db.Units.Helicopters.Helicopter
	end	
end

-- возвращает все задачи для данного типа юнита(из БД по юнитам)
function getUnitTasks(unitType)
	local tasks = unitTasks_[unitType]
	
	if not tasks then
		tasks = {}
		unitTasks_[unitType] = tasks
		
		local units = getDBUnits(unitType)
		
		if units then
			for i, unit in pairs(units) do
				if unit.type == unitType then
					local unitTasks = unit.Tasks
					
					for i, task in ipairs(unitTasks) do
						table.insert(tasks, task.WorldID)
					end
				end
			end
		end
	end

	return tasks
end

-- возвращает все задачи, которые встречаются в подвесках для данного типа юнита
function getUnitPayloadTasks(unitType)
	local payloads = getUnitPayloads(unitType)
	local tasks = {}
	local foundTasks = {}
	
	for i, payload in ipairs(payloads) do		
		for j, taskId in ipairs(payload.tasks) do
			if not foundTasks[taskId] then
				table.insert(tasks, taskId)
				foundTasks[taskId] = true
			end
		end
	end
	
	return tasks
end

function getPayloadNamePresented(unitType, payloadName)
	local payloads = getUnitPayloads(unitType)

	for i, payload in ipairs(payloads) do
		local currPayloadName = payload.name
		
		if payloadName == currPayloadName then
			return true
		end
	end

	return false
end

-- создает ячейку с именем подвески
function createPayloadCell(payloadName, displayName)
	local widget = Static.new()

	widget:setSkin(payloadCellSkin_)
	setPayloadCell(payloadName, widget, displayName)

	return widget
end

function setPayloadCell(payloadName, widget, displayName)
	local text = displayName or payloadName
	
	widget:setText(text)
	widget.payloadName = payloadName	
	widget:setTooltipText(text)
end

local function createPylonCellCaption_(text, column, row, grid)
	local caption = Static.new(text)
	local width = 20
	local height = 16 
	local cellWidth = grid:getColumnWidth(column)
	local cellHeight = grid:getRowHeight(row)

	caption:setSkin(pylonCaptionSkin_)
	caption:setBounds(cellWidth - width, cellHeight - height, width, height)

	return caption
end

function createPylonCell(launcherCLSID, column, row, grid, numItems)
	local container = Panel.new()
	
	setPylonCell(container, launcherCLSID, column, row, grid, numItems)

	return container
end

local function setPylonCellCaption_(container, text, column, row, grid)
	local caption = container:getWidget(0)
	
	if caption then
		caption:setText(text)
	else
		caption = createPylonCellCaption_(text, column, row, grid) 
		container:insertWidget(caption)
	end	
end

function setPylonCell(container, launcherCLSID, column, row, grid, numItems)
	local filename,blend_color = getLauncherImage(launcherCLSID)
	
	local skin = SkinUtils.setStaticPicture(filename, pylonCellSkin_,blend_color or colorBlack)
	
	container:setSkin(skin)
	
	local tooltipText = getLauncherName(launcherCLSID)

	if numItems and numItems > 1 then
		local numItemsText = tostring(numItems)
		
		setPylonCellCaption_(container, numItemsText, column, row, grid)		
		tooltipText = tooltipText .. '<' .. numItemsText .. '>'
	else
		local launcherCount = getLauncherCount(launcherCLSID)
		
		if launcherCount and launcherCount > 1 then
			local launcherCountText = tostring(launcherCount)
			setPylonCellCaption_(container, launcherCountText, column, row, grid)			
		else	
            local caption = container:getWidget(0)
			if caption then
				caption:setText()
			end
		end
	end
	
	container:setTooltipText(tooltipText)
end

function getLauncherImage(launcherCLSID)
	local filename,blend_color = getLauncherPicture(launcherCLSID)

	if not filename or '' == filename then
		filename = 'NOIMAGE.png'
	end

	return filename,blend_color
end

-- возвращает меню для пилона
function getMenu(menuOnChange)
	-- если вызов первый, то создаем меню
	if not menu__ then
		menu__ = Menu.new()
		-- обработчик нажатий меню
		-- нажатия на элементы, содержащие подменю не обрабатываются
		-- вообще, сейчас есть только один элемент Remove, 
		-- нажатие на который должно обрабатываться
		if menuOnChange then
			menu__.onChange = menuOnChange
		end
	end

	return menu__
end

-- возвращает подменю для категории оружия
-- index - целое число от 1
function getSubmenu(index, submenuOnChange)
	submenues__ = submenues__ or {}
	local submenu = submenues__[index]
	
	if not submenu then
		submenu = Menu.new()
		submenues__[index] = submenu
		if submenuOnChange then
			function submenu:onChange(item)
				submenuOnChange(item)
			end
		end
	end

	return submenu
end

function fillSubmenu(submenu, pylonNumber, launchers, isCivil, Year, bShowEras)
	-- сортируем оружие по имени
	local launcherNames = {}
	-- временная таблица для быстрого поиска CLSID оружия по его имени
	local launcherCLSIDByName = {}
	
	for _tmp, launcherCLSID in pairs(launchers) do
		local launcherName = getLauncherName(launcherCLSID)
		local tmpAttribute = getLauncherAttribute(launcherCLSID)
		local tmp_in, tmp_out = DB.db.getYearsLauncher(launcherCLSID)
		if (bShowEras ~= true or
			(bShowEras == true and tmp_in <= Year and Year <= tmp_out)) then
			if (isCivil ~= true) or (base.wsType_Smoke_Cont == tmpAttribute[3] or base.wsType_FuelTank == tmpAttribute[3]) then
				table.insert(launcherNames, launcherName)
				launcherCLSIDByName[launcherName] = launcherCLSID
			end
		end
	end

	table.sort(launcherNames)

	for _tmp, launcherName in ipairs(launcherNames) do
		local launcherCLSID = launcherCLSIDByName[launcherName]
		local submenuItem = MenuItem.new(launcherName)
		-- сохраняем в элементе меню номер пилона и CLSID оружия 
		submenuItem.launcherCLSID = launcherCLSID
		submenuItem.pylonNumber = pylonNumber
		-- устанавливаем картинку для элемента меню 
		local filename,blend_color = getLauncherImage(launcherCLSID)

		submenuItem:setSkin(SkinUtils.setMenuItemPicture(filename,blend_color or colorBlack))
		submenuItem:setTooltipText(launcherName)
		submenu:insertItem(submenuItem)
	end
end

function createPylonMenu(unitType, pylonNumber, menuOnChange, submenuOnChange, payloadName, isCivil, Year, bShowEras)
	-- launchers = {[launcherCategory] = {launcherCLSID, launcherCLSID, ...}, ...}
	local launchers, clean = getPylonLaunchers(unitType, pylonNumber)
	-- сортируем категории по именам
	local categoryNames = {}
	for categoryName, _tmp in pairs(launchers) do
		table.insert(categoryNames, categoryName)
	end
	table.sort(categoryNames)

	local menu = getMenu(menuOnChange)
	menu:clear()

	-- для каждой категории создаем подменю
	for i, categoryName in ipairs(categoryNames) do
		local submenu = getSubmenu(i, submenuOnChange)
		submenu:clear()

		-- заполняем подменю 
		local categoryLaunchers = launchers[categoryName]
		fillSubmenu(submenu, pylonNumber, categoryLaunchers, isCivil, Year, bShowEras)

		if submenu:getItemCount() > 0 then
			local menuItem = MenuSubItem.new(categoryName, submenu)
			menu:insertItem(menuItem)
		end
	end

	menu:insertItem(MenuSeparatorItem.new())
	-- добавляем в меню элемент для удаления оружия с пилона
	menuItem = MenuItem.new(cdata.remove)
	menuItem.removeLauncher = true -- устанавливаем специальный флаг, чтобы не завязываться на текст элемента
	menuItem.pylonNumber = pylonNumber
	menuItem.payloadName = payloadName
	menu:insertItem(menuItem) 
	
	if clean then		
		-- добавляем в меню элемент для удаления пилона
		for categoryName, launcherCLSID in pairs(clean) do
			menuItem = MenuItem.new(categoryName)
			menuItem.pylonNumber = pylonNumber
			menuItem.launcherCLSID = launcherCLSID
			menuItem.clean = true			
			
			menu:insertItem(menuItem) 
		end
	end

	return menu
end

function createPayloadTable(payloadName)
	return {
		name = payloadName,
		pylons = {},
		tasks = {},
	}
end

function createPylonTable(launcherCLSID, pylonNumber)
	return {
		CLSID = launcherCLSID,
		num = pylonNumber,
	}
end

function findTaskInTasks(taskIds, taskWorldID)
	for i, taskId in ipairs(taskIds) do
		if taskId == taskWorldID then
			return i
		end
	end
end

function setModified(unitType)
	modifiedUnitType_ = unitType
	UpdateManager.add(update)
end

function addTaskToPayload(unitType, payloadName, taskWorldID)
	local payloads = getUnitPayloads(unitType)
	local payload = findPayloadByName(payloads, payloadName)
	
	if payload then
		if taskWorldID ~= getDefaultTaskWorldID() then
			local taskIds = payload.tasks
			
			if not findTaskInTasks(taskIds, taskWorldID) then
				table.insert(taskIds, taskWorldID)
				setModified(unitType)
			end
		end
	end
end

function removeTaskFromPayload(unitType, payloadName, taskWorldID)
	local payloads = getUnitPayloads(unitType)
	local payload = findPayloadByName(payloads, payloadName)
	
	if payload then
		local taskIds = payload.tasks
		local index = findTaskInTasks(taskIds, taskWorldID)
		
		if index then
			table.remove(taskIds, i)
			setModified(unitType)
		end
	end
end

function findPayloadByName(payloads, payloadName)	
	if payloads then
		for i, payload in ipairs(payloads) do
			if payloadName == payload.name then
				return payload, i
			end
		end	
	end
end

function getPayloadTasks(unitType, payloadName)
	local payloads = getUnitPayloads(unitType)
	local payload = findPayloadByName(payloads, payloadName)
	
	if payload then
		return payload.tasks
	end
end

function addPayload(unitType, payloadName)
	local payload
	local payloads = getUnitPayloads(unitType)
	
	if payloads then
		payload = createPayloadTable(payloadName)
		table.insert(payloads, payload)
		setModified(unitType)
	end

	return payload
end

function copyPayload(unitType, payloadName, newPayloadName)
	local payload
	local payloads = getUnitPayloads(unitType)
	
	if payloads then
		local sourcePayload = findPayloadByName(payloads, payloadName)
		
		if sourcePayload then
			payload = createPayloadTable(newPayloadName)
			payload.displayName = newPayloadName
			
			local destinationPylons = payload.pylons
			
			for i, pylon in pairs(sourcePayload.pylons) do
				table.insert(destinationPylons, createPylonTable(pylon.CLSID, pylon.num))
			end
			
			local destinationTasks = payload.tasks
			
			for i, taskId in ipairs(sourcePayload.tasks) do
				table.insert(destinationTasks, taskId)
			end
			
			table.insert(payloads, payload)
			setModified(unitType)
		end	
	end

	return payload
end

function copyMissionPayload(unitType, sourcePylons, sourceTaskId, newPayloadName)
	local payload
	local payloads = getUnitPayloads(unitType)
	
	if payloads then
		payload = createPayloadTable(newPayloadName)		
		
		local destinationPylons = payload.pylons
		
		for num, CLSID in pairs(sourcePylons) do
			table.insert(destinationPylons, createPylonTable(CLSID, num))
		end
		
		local destinationTasks = payload.tasks
		table.insert(destinationTasks, sourceTaskId)
		
		table.insert(payloads, payload)
		setModified(unitType)
	end

	return payload
end

function deletePayload(unitType, payloadName)
	local payloads = getUnitPayloads(unitType)
	
	if payloads then
		local payload, payloadIndex = findPayloadByName(payloads, payloadName)
		
		if payload then
			table.remove(payloads, payloadIndex)
			setModified(unitType)
		end
	end
end

function renamePayload(unitType, payloadName, newPayloadName)
	local payloads = getUnitPayloads(unitType)
	local payload = findPayloadByName(payloads, payloadName)
	
	if payload then
		payload.name = newPayloadName
		payload.displayName = newPayloadName
		setModified(unitType)
	end
end

function setPylonLauncher(unitType, payloadName, pylonNumber, launcherCLSID)
	local payloads = getUnitPayloads(unitType)
	local payload = findPayloadByName(payloads, payloadName)
	
	if payload then
		local found
		local pylons = payload.pylons
		
		for i, pylon in pairs(pylons) do
			if pylon.num == pylonNumber then
				pylon.CLSID = launcherCLSID
				found = true
				break
			end
		end
		
		if not found then
			local pylon = createPylonTable(launcherCLSID, pylonNumber)
			
			table.insert(pylons, pylon)
		end
		
		setModified(unitType)
	end
end

function removePylonLauncher(unitType, payloadName, pylonNumber)
	local payloads = getUnitPayloads(unitType)
	local payload = findPayloadByName(payloads, payloadName)
	
	if payload then
		local pylons = payload.pylons
		
		for i, pylon in pairs(pylons) do
			if pylon.num == pylonNumber then
				table.remove(pylons, i)
				setModified(unitType)
				break
			end
		end
	end
end

local function getAddMass(a_unitType, a_pylonNumber, a_launcherCLSID)
	local unitDef = DB.unit_by_type[a_unitType]

	for i, pylon in pairs(unitDef.Pylons) do
		if a_pylonNumber == pylon.Number then
			for j, launcher in pairs(pylon.Launchers) do
				if launcher.CLSID == a_launcherCLSID then
					return launcher.add_mass or 0
				end
			end
		end	
	end	
	return 0
end

function calcPayloadWeight(a_pylons, a_unitType)
	local weight = 0
	local fuel = 0
	
	local unitDef = DB.unit_by_type[a_unitType]
	
	if unitDef.Pylons then
		for k,v in base.pairs(unitDef.Pylons) do
			weight = weight + (v.mass or 0)
		end
	end
	
	if a_pylons then
		local FUEL_TANK_WORLD_ID = 7
		
		for pylonNumber, launcherCLSID in pairs(a_pylons) do
			local launcherAttribute = getLauncherAttribute(launcherCLSID)
			local launcherWeight = getLauncherWeight(launcherCLSID)

			--добавляем массу пустого бака к весу, а топливо к топливу
			if U.isFuel_Tank(launcherAttribute) then
				local fuelInsideTank = getLauncherWeightNetto(launcherCLSID)
				
				fuel = fuel + fuelInsideTank
				launcherWeight = launcherWeight - fuelInsideTank
			end
			
			weight = weight + launcherWeight
			
			-- масса зависимая от отличия пилона от дефолтного
			local add_mass = getAddMass(a_unitType, pylonNumber, launcherCLSID)
			weight = weight + add_mass
		end
	end
	
	return weight, fuel
end

function update()
	if modifiedUnitType_ then
		saveUnitPayloads(modifiedUnitType_)
		modifiedUnitType_ = nil
		
		-- удаляем себя из UpdateManager
		return true
	end
end