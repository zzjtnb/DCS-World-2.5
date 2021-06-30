local base = _G

module('MissionResourcesDialog')

local require				= base.require
local math					= base.math
local pairs					= base.pairs
local ipairs				= base.ipairs
local table					= base.table
local tonumber				= base.tonumber
local tostring				= base.tostring
local print					= base.print
local string				= base.string

local DialogLoader			= require("DialogLoader")
local ListBoxItem			= require('ListBoxItem')
local Menu					= require('Menu')
local MenuItem				= require('MenuItem')
local MenuSeparatorItem		= require('MenuSeparatorItem')
local MenuSubItem			= require('MenuSubItem')
local loadoutUtils 			= require('me_loadoututils')
local loadLiveries 			= require('loadLiveries')
local DB					= require('me_db_api')
local OptionsData			= require('Options.Data')
local gettext				= require('i_18n')
local SkinUtils				= require('SkinUtils')
local U    					= require('me_utilities')

_ = function(p)
	return gettext.translate(p)
end

local columnIndexByNumbers = {}
local numbersByColumnIndex = {}

local blank_run = base.blank_run

if blank_run then
	requestWeaponCount 	= function (v) return 10 end
	setLivery 			= function (v) end
	setBoardNumber 		= function (v) end
	on_cancel			= function (v) end
	on_ok				= function (v) end
	showWindow			= function (v) end
end

local cdata = 
{
	aircraftName 		= _('A-10C'),
	chaff 				= _('CHAFF'),
	flare 				= _('FLARE'),
	fuel 				= _('FUEL'),
	toWeight 			= _('TO weight, %'),
	toWeightMax 		= _('TO weight max'),
	gunAmmoType 		= _('AMMO_TYPE'),
	gunAmmo 			= _('GUN AMMO'),
	toWeightCurrent 	= _('TO weight current'),
	payload 			= _('Payload'),
	
	empty 				= _('Empty'),
	cancel 				= _("CANCEL"),
	ok	 				= _("OK"),
	totalWeight 		= _("TOTAL WEIGHT"),
	maximumWeight 		= _("MAXIMUM WEIGHT"),
	selectLoadout		= _("SELECT LOADOUT:"),
	kg					= _("KG"),
	clear				= _('REMOVE PAYLOAD'),
	available			= _('(avail: %5d) : %s'),
	selectLivery		= _('SELECT LIVERY'),
	selectBoardNumber	= _('BOARD NUMBER'),
	missionResources	= _('MISSION RESOURCES'),
}

local function check_pylon_not_empty(clsid)
	return clsid ~= nil and 
		   clsid ~= ""
end

function updateUnitSystem()
	local unitSystem 
	
	if not blank_run then
		unitSystem = OptionsData.getUnits()	
	else
		unitSystem = "metric"
	end	

	stcToWeightCurrentValueUnit:setUnitSystem(unitSystem)
	stcToWeightMaxValueUnit:setUnitSystem(unitSystem)
end

function updateGrid(unitType)
	currentUnitType = unitType
	grdPayloads:clear()
	columnIndexByNumbers = {}
	numbersByColumnIndex = {}
	
	local pylonsCount		= loadoutUtils.getPylonsCount(currentUnitType)
	
	if pylonsCount < 1 then 
		grdPayloads:setVisible(false)
		updateWeight()
		
		return
	else
		grdPayloads:setVisible(true)
	end
	
	local gridSkin				= grdPayloads:getSkin()
	local columnWidth			= loadoutUtils.columnWidth
	local x, y, w, h			= grdPayloads:getBounds()
	local x_p, y_p, w_p, h_p	= stcImage:getBounds()
	local horzLineHeight		= gridSkin.skinData.params.horzLineHeight
	local vertLineWidth			= gridSkin.skinData.params.vertLineWidth
	local headerHeight			= gridSkin.skinData.params.headerHeight

	grdPayloads:insertColumn(0) -- чтобы индексы пилонов сооответствовали индексам колонок
	
	-- добавляем толщину вертикальной линии для первого столбца с шириной 0
	w = vertLineWidth + pylonsCount * (vertLineWidth + columnWidth)
	x = x_p 
	
	if  w < w_p then 
		x = x + 0.5 * w_p - 0.5 * w
	end
	
	grdPayloads:setBounds(x, y, w, gridSkin.skinData.params.headerHeight + horzLineHeight + loadoutUtils.rowHeight)
	
	local names	= loadoutUtils.getPylonsNames(currentUnitType)
	local index = 0
	
	for i = #names, 1, -1 do
		local pylon			= names[i]	
		local columnHeader	= gridHeaderCell:clone()
		
		columnHeader:setText(pylon.DisplayName)
		columnHeader:setVisible(true)

		index = index + 1		
		
		columnIndexByNumbers[pylon.Number]	= index
		numbersByColumnIndex[index]			= pylon.Number
		
		grdPayloads:insertColumn(columnWidth, columnHeader, index)
	end
	
	local row = 0

	grdPayloads:insertRow(loadoutUtils.rowHeight, row)
	grdPayloads:setCell(0, row, nil)

	local columnCount = grdPayloads:getColumnCount()
	for pylonNumber, pylon in pairs(currentPayload.pylons) do
		local column = columnIndexByNumbers[pylonNumber]
		local container = nil
		if check_pylon_not_empty(pylon.clsid) then
			container = loadoutUtils.createPylonCell(pylon.clsid, column, row, grdPayloads, pylon.count)
		end
		grdPayloads:setCell(column, row, container)
	end

	updateWeight()
end

local function init(wnd)
	window 		  = wnd
	window:centerWindow()

	containerMain	= window.containerMain
	
	local findWidgetByName = DialogLoader.findWidgetByName
	
	gridHeaderCell	= findWidgetByName(containerMain, 'gridHeaderCell')
	
	stcImage		= findWidgetByName(containerMain, 'stcImage')
	stcImageSkin	= stcImage:getSkin()
	stcImageSkinPicture = stcImageSkin.skinData.states.released[1].picture

	txtFlare		= findWidgetByName(containerMain, 'txtFlare'		)
	txtChaff		= findWidgetByName(containerMain, 'txtChaff'		)
	txtGunAmmo		= findWidgetByName(containerMain, 'txtGunAmmo'		)
	stcGunAmmoType	= findWidgetByName(containerMain, 'stcGunAmmoType'	)
	txtFuel			= findWidgetByName(containerMain, 'txtFuel'			)

	sldrFlare		= findWidgetByName(containerMain, 'sldrFlare'       )
	sldrChaff		= findWidgetByName(containerMain, 'sldrChaff'       )

	check_chaff_flare_slots = function (user_enter_flare)
		if currentUnit.passivCounterm ~= nil then
			local chaffSlots = sldrChaff:getValue() * currentUnit.passivCounterm.chaff.chargeSz
			local flareSlots = sldrFlare:getValue() * currentUnit.passivCounterm.flare.chargeSz
			if currentUnit.passivCounterm.SingleChargeTotal < chaffSlots + flareSlots then
				function limitOther(slotsCount, chargeSz, step)
					local newCount = math.floor((currentUnit.passivCounterm.SingleChargeTotal - slotsCount) / chargeSz)
					return step * math.floor(newCount / step)
				end
				
				if user_enter_flare then
					sldrChaff:setValue(limitOther(flareSlots, currentUnit.passivCounterm.chaff.chargeSz, sldrChaff:getStep()))
				else
					sldrFlare:setValue(limitOther(chaffSlots, currentUnit.passivCounterm.flare.chargeSz, sldrFlare:getStep()))
				end
			end
		end
		
		onUpdateWeight()
		return
	end

	sldrFlare.onChange = function () check_chaff_flare_slots(true)	 end
	sldrChaff.onChange = function () check_chaff_flare_slots(false) end

	sldrGunAmmo			= findWidgetByName(containerMain, 'sldrGunAmmo'			)
	sldrGunAmmo.onChange = onUpdateWeight

	cmbGunAmmoType		= findWidgetByName(containerMain, 'cmbGunAmmoType'		)

	sldrFuel			= findWidgetByName(containerMain, 'sldrFuel'			)
	sldrFuel.onChange = onUpdateWeight

	txtFlareCurrent		= findWidgetByName(containerMain, 'txtFlareCurrent'		)
	txtChaffCurrent		= findWidgetByName(containerMain, 'txtChaffCurrent'	    )
	txtGunAmmoCurrent	= findWidgetByName(containerMain, 'txtGunAmmoCurrent'	)
	txtFuelCurrent		= findWidgetByName(containerMain, 'txtFuelCurrent'	    )
	
	selectLivery		= findWidgetByName(containerMain, 'listBoxLivery'		)
	txtLivery			= findWidgetByName(containerMain, 'txtLivery'			)
	selectBoardNumber	= findWidgetByName(containerMain, 'editBoxBoardNumber'	)
	txtBoardNumber		= findWidgetByName(containerMain, 'txtBoardNumber'		)
	
	selectLivery.onChange 		= function(self,item)		if item and item.itemId then	setLivery(item.itemId)	end	end
	selectBoardNumber.onChange 	= function (self) 	setBoardNumber(self:getText()) end

	labelWeightCurrent	= findWidgetByName(containerMain, 'labelWeightCurrent'	)
	labelWeightMax		= findWidgetByName(containerMain, 'labelWeightMax'		)
	stcToWeightCurrentValue = findWidgetByName(containerMain, 'stcToWeightCurrentValue')
	stcToWeightMaxValue	= findWidgetByName(containerMain, 'stcToWeightMaxValue'	)
	txtUnitsCur			= findWidgetByName(containerMain, 'txtUnitsCur'			)
	
	stcToWeightCurrentValueUnit 	= U.createUnitWidget(txtUnitsCur, stcToWeightCurrentValue, U.weightUnits)
	stcToWeightMaxValueUnit 		= U.createUnitWidget(nil		, stcToWeightMaxValue, U.weightUnits)

	txtPreset			= findWidgetByName(containerMain, 'txtPreset'			)
	listBoxPreset		= findWidgetByName(containerMain, 'listBoxPreset'		)

	btnOk				= findWidgetByName(containerMain, 'btnOk'				)
	btnOk.onChange = onButtonOk

	btnCancel			= findWidgetByName(containerMain, 'btnCancel'			)
	btnCancel.onChange = onButtonCancel

	function window:onClose()
		btnCancel:onChange() 
	end	

	grdPayloads			= findWidgetByName(containerMain, 'grdPayloads'			)
	
	function grdPayloads:onMouseDown(x, y, button)
		onPylonMouseDown(x, y, button)
	end

	loadoutUtils.init(	findWidgetByName(containerMain, 'staticPayloadCell'	):getSkin(), 
						findWidgetByName(containerMain, 'staticPylonCaption'):getSkin(), 
						findWidgetByName(containerMain, 'panelPylonCell'	):getSkin())

	gridMenu = Menu.new()
	gridMenu.onChange = menuOnChange
	submenus = {}
end

function create()
	init(DialogLoader.spawnDialogFromFile('./Scripts/UI/MissionResourcesDialog.dlg', cdata))
end

function onUpdateWeight(self, value)
	updateWeight()
end


function loadout_is_authorized_for_station(station,clsid)
	local pylon = currentUnit.Pylons[station]
	for k,launcher in pairs(pylon.Launchers) do
		if launcher.CLSID == clsid then 
			return true
		end
	end
	return false
end

function onButtonOk(self)
	if currentUnit then
		local ammo_type = 0 
		if currentUnit.ammo_type then
			local res = cmbGunAmmoType:getSelectedItem()
			if res then
				ammo_type = res.index
			end
		end

		local outData = 
		{
			numChaff 	= tonumber(sldrChaff:getValue()),
			numFlare 	= tonumber(sldrFlare:getValue()),
			currentAmmo = tonumber(sldrGunAmmo:getValue()),
			ammoType 	= ammo_type,
			fuel 		= sldrFuel:getValue() / 100 * currentUnit.MaxFuelWeight,
			pylons = {},
		}
	
		for i, pylon in pairs(currentPayload.pylons) do
			outData.pylons[i] = pylon.clsid
		end	
		on_ok(outData)-- C ++ call
	end
	show(false)
end

function onButtonCancel(self)
	on_cancel()-- C ++ call
	show(false)
end

function show(state)
	window:setVisible(state)
	if state == false then
		showWindow(false) -- C call
	end
end

function isVisible()
	return window:isVisible()
end

function get_max_chaff()
	if currentUnit.passivCounterm ~= nil then
		if currentUnit.passivCounterm.chaff.chargeSz ~= nil and 
		   currentUnit.passivCounterm.chaff.chargeSz > 0 then
		   return currentUnit.passivCounterm.SingleChargeTotal / currentUnit.passivCounterm.chaff.chargeSz
		end
	end
	
	return 0
end

function get_max_flare()
	if currentUnit.passivCounterm ~= nil then
		if currentUnit.passivCounterm.flare.chargeSz ~= nil and 
		   currentUnit.passivCounterm.flare.chargeSz > 0 then
		   return currentUnit.passivCounterm.SingleChargeTotal / currentUnit.passivCounterm.flare.chargeSz
		end
	end
	
	return 0
end

function updatePayloadPresets(currentUnitType)
	listBoxPreset:clear()
	listBoxPreset:setVisible(true)
	listBoxPreset.onChange = function(self,item)
		--clear all pylons
		for i,o in pairs(currentPayload.pylons) do
			o.clsid = "" 
			o.count = 0
		end
		if item and item.preset_link then
			for i,o in pairs(item.preset_link.pylons) do
				local pylon 	= currentPayload.pylons[o.num]
				if pylon then
					if loadout_is_authorized_for_station(o.num,o.CLSID) then
						pylon.clsid	 = o.CLSID
						pylon.count	 = 1
					else
						local disp_name = base.get_weapon_display_name_by_clsid(o.CLSID) or ""
						print(currentUnitType .. " preset " .. item.preset_link.name .. 
							  ":unauthorized "..  disp_name .. " ("..o.CLSID..") "   ..
							  " for station " ..  tostring(o.num))
					end
				end
			end
		end
		updateGrid(currentUnitType)
	end

	local payloads = loadoutUtils.getUnitPayloads(currentUnitType)
	local empty	= ListBoxItem.new(cdata.empty)
	listBoxPreset:insertItem(empty)
	--sort alpabetically	
	local tbl_ = {}
	for i,o in pairs(payloads) do
		tbl_[#tbl_ + 1] = o
	end
	table.sort(tbl_,function(o1,o2)
		return o1.name < o2.name
	end)
	------------------------------------
	for i,o in ipairs(tbl_) do
		if o.pylons and #o.pylons > 0 then
			local comboItem 		= ListBoxItem.new(_(o.name))
			comboItem.preset_link = o
			listBoxPreset:insertItem(comboItem)
		end
	end
end

function update(params)
	updateUnitSystem()
	currentPayload = params
	currentUnit = DB.unit_by_type[params.unitType]
	
	if not currentPayload.emptyWeight and  currentUnit then 
		   currentPayload.emptyWeight = currentUnit.EmptyWeight
	end

	stcImageSkinPicture.file = currentUnit.Picture
	stcImage:setSkin(stcImageSkin)
	
	local allow_boardnumber = true
	local allow_livery      = true
	
	
	if not blank_run then
		if not  net then 
			net	= require('net')
		end
		if net then
			local server_settings = net.get_server_settings()
			if  server_settings  then
				allow_boardnumber	= server_settings.advanced.allow_change_tailno
				allow_livery		= server_settings.advanced.allow_change_skin
			end
		end	
	end
	
	--------------------------------------------------------
	selectBoardNumber	:setVisible(allow_boardnumber)
	txtBoardNumber		:setVisible(allow_boardnumber)
	--------------------------------------------------------
	selectLivery		:setVisible(allow_livery)
	txtLivery			:setVisible(allow_livery)
	--------------------------------------------------------

	m_chaff = get_max_chaff()
	m_flare = get_max_flare()

	local ChaffNoEdit = false
	if currentUnit.passivCounterm ~= nil and
		currentUnit.passivCounterm.ChaffNoEdit ~= nil then
		ChaffNoEdit = currentUnit.passivCounterm.ChaffNoEdit
	end
			
	if  m_chaff > 0 and not ChaffNoEdit then
		txtChaff:setVisible(true)
		txtChaffCurrent:setVisible(true)
		sldrChaff:setVisible(true)
		sldrChaff:setRange(0, m_chaff)
	else
		txtChaff:setVisible(false)
		txtChaffCurrent:setVisible(false)
		sldrChaff:setVisible(false)
		sldrChaff:setRange(0,100)
	end

	if  m_flare > 0 then
		txtFlare:setVisible(true)
		txtFlareCurrent:setVisible(true)
		sldrFlare:setVisible(true)
		sldrFlare:setRange(0, m_flare)
	else
		txtFlare:setVisible(false)
		txtFlareCurrent:setVisible(false)
		sldrFlare:setVisible(false)
		sldrFlare:setRange(0,100)
	end

	sldrChaff:setValue(params.numChaff)
	sldrFlare:setValue(params.numFlare)

	local chaffStep = 1
	local flareStep = 1
	if currentUnit.passivCounterm ~= nil then
		chaffStep = currentUnit.passivCounterm.chaff.increment or 1
		flareStep = currentUnit.passivCounterm.flare.increment or 1
		if flareStep < 1 then
		   flareStep = 1
		end
		if chaffStep < 1 then
		   chaffStep = 1
		end
	end
	
	sldrChaff:setStep(chaffStep)
	sldrFlare:setStep(flareStep)
	
	if chaffStep > 1 then
		sldrChaff:setPageStep(chaffStep)
	end
	if flareStep > 1 then
		sldrFlare:setPageStep(flareStep)
	end

	sldrGunAmmo:setRange(0, 100)
	if params.maximumAmmo > 0 then
		sldrGunAmmo:setValue(math.ceil(params.currentAmmo/params.maximumAmmo*100))
		sldrGunAmmo:setVisible(true)
		txtGunAmmo:setVisible(true)
		txtGunAmmoCurrent:setVisible(true)

		if currentUnit and currentUnit.ammo_type then
			cmbGunAmmoType:setVisible(true)
			stcGunAmmoType:setVisible(true)
			cmbGunAmmoType:clear()
			local selectedItem

			local ammoType = params.ammoType or 0
			for i = 1, #currentUnit.ammo_type do
				local comboItem = ListBoxItem.new(currentUnit.ammo_type[i])
				comboItem.index = i - 1
				cmbGunAmmoType:insertItem(comboItem)
				if comboItem.index == ammoType then
					selectedItem = comboItem
				end
			end
			cmbGunAmmoType:selectItem(selectedItem)
		else
			cmbGunAmmoType:setVisible(false)
			stcGunAmmoType:setVisible(false)
		end
	else
		sldrGunAmmo:setValue(0)
		sldrGunAmmo:setVisible(false)
		txtGunAmmo:setVisible(false)
		txtGunAmmoCurrent:setVisible(false)

		cmbGunAmmoType:setVisible(false)
		stcGunAmmoType:setVisible(false)
	end

	local v = math.floor(0.5 + params.numFuel/currentUnit.MaxFuelWeight*100)
	sldrFuel:setValue(v)
 
	updateGrid(params.unitType)
	updatePayloadPresets(params.unitType)
	
	
	if  selectBoardNumber and params.boardNumber  then
		selectBoardNumber:setText(params.boardNumber)
	end
	
	if  selectLivery then
	    selectLivery:clear()	
		local selected
		local schemes = loadLiveries.loadSchemes(params.liveryEntry or params.unitType,params.countryCode)
		for k, scheme in pairs(schemes) do
			local item = ListBoxItem.new(scheme.name)
			item.itemId = string.lower(scheme.itemId)
			selectLivery:insertItem(item) 
			if item.itemId == params.livery then 
			   selected = item
			end
		end	
		if selected then
		   selectLivery:selectItem(selected)
		   selected = nil
		end
	end
end

function getSubmenu(i, submenuOnChange)
	submenus[i] = submenus[i] or Menu.new()
	if submenuOnChange then
		submenus[i].onChange = function(self, item)
			submenuOnChange(item)
		end
	end

	return submenus[i] 
end

function menuOnChange( self, item)
	local pylon = currentPayload.pylons[item.pylonNumber] or {}
	local OldlauncherCLSID = pylon.clsid
	if item.is_remove then
		pylon.clsid = ""
		pylon.count = 0
		currentPayload.pylons[item.pylonNumber] = pylon
		removeRequired(OldlauncherCLSID, item.pylonNumber)
	end
	if item.clean then
		pylon.clsid = item.launcherCLSID
		currentPayload.pylons[item.pylonNumber] = pylon
	end
	
	applyRulesToPylons(item.launcherCLSID, item.pylonNumber)
	
	for pylonNumber,v in base.pairs(currentPayload.pylons) do
		if pylonNumber ~= item.pylonNumber then
			applyRulesToPylons(v.clsid, pylonNumber)
		end
	end
		
	updateGrid(currentUnitType)
end

function submenuOnChange(item)
	if (currentPayload ~= nil) and (currentPayload.pylons ~= nil) then
		local pylon = currentPayload.pylons[item.pylonNumber] or {}
		if item.launcher then
			pylon.clsid = item.launcher.clsid
			pylon.count = 1
		else
			pylon.clsid = ""
			pylon.count = 0
		end
		currentPayload.pylons[item.pylonNumber] = pylon
				
		applyRulesToPylons(item.launcher.clsid, item.pylonNumber)
		
		for pylonNumber,v in base.pairs(currentPayload.pylons) do
			if pylonNumber ~= item.pylonNumber then
				applyRulesToPylons(v.clsid, pylonNumber)
			end
		end
		updateGrid(currentUnitType)
	end
end

function applyRulesToPylons(a_launcherCLSID, a_pylonNumber)
	local unitDef = DB.unit_by_type[currentUnitType]
	local proto	= unitDef.Pylons[a_pylonNumber] 
	local launchers = proto.Launchers

	for j, load in pairs(launchers) do
		if load.required and load.CLSID == a_launcherCLSID then
			for k, rule in ipairs(load.required) do				
				if rule.loadout then					
					if isNotNeedChange(rule.station, rule.loadout) == false then
						local pylon = currentPayload.pylons[rule.station]
						if rule.loadout[1] then
							pylon.clsid = rule.loadout[1]
							pylon.count = 1
						end
					end
				end
			end
		end
		
		if load.forbidden and load.CLSID == a_launcherCLSID then
			for k, rule in ipairs(load.forbidden) do
				local pylon = currentPayload.pylons[rule.station]
				if rule.loadout then
					for i, forbiddenLauncherCLSID in ipairs(rule.loadout) do
						if pylon.clsid == forbiddenLauncherCLSID then
							pylon.clsid = ""
							pylon.count = 0
						end
					end	
				else	
					pylon.clsid = ""
					pylon.count = 0
				end
			end
		end
	end
end

function removeRequired(a_launcherCLSID, a_pylonNumber)
	local unitDef = DB.unit_by_type[currentUnitType]
	local proto	= unitDef.Pylons[a_pylonNumber] 
	local launchers = proto.Launchers

	for j, load in pairs(launchers) do
		if load.required and load.CLSID == a_launcherCLSID then
			for k, rule in ipairs(load.required) do				
				if rule.loadout then					
					local pylon = currentPayload.pylons[rule.station]
					if rule.loadout[1] then
						pylon.clsid = ""
						pylon.count = 0
					end
				end
			end
		end
	end
end

function isNotNeedChange(a_station, a_ruleLoadout)
	local pylon = currentPayload.pylons[a_station]
	for i, o in ipairs(a_ruleLoadout) do
		if pylon.clsid == o then
			return true
		end
	end
	return false
end

function updatePylonMenu(currentUnitType, pylonNumber, menuOnChange, submenuOnChange)
	local pylon = currentUnit.Pylons[pylonNumber]
	local launchersByCLSID = {}
	local launcherCategories = {}
	local clean = {}
	local categoryNames = {}
	for k,launcher in pairs(pylon.Launchers) do
		local numWeapons = requestWeaponCount(launcher.CLSID)
		local category = loadoutUtils.getLauncherCategory(launcher.CLSID)
		local categoryName = loadoutUtils.getLauncherNames(launcher.CLSID)
		if category ~= nil then
			launchersByCLSID[launcher.CLSID] = numWeapons
			
			if categoryName == "CLEAN" then
				clean[category] = launcher.CLSID
			else
				if launcherCategories[category] == nil then
					launcherCategories[category] = {}
					table.insert(categoryNames, category)
				end
				table.insert(launcherCategories[category], 
					{clsid = launcher.CLSID, count = numWeapons, name = base.get_weapon_display_name_by_clsid(launcher.CLSID)})
			end
		end
	end

	table.sort(categoryNames)

	gridMenu:clear()
	-- для каждой категории создаем подменю
	local counter = 1
	for i, categoryName in pairs(categoryNames) do
		local launchers = launcherCategories[categoryName]
		table.sort(launchers, function(op1, op2) return op1.name < op2.name end)
		local submenu = getSubmenu(counter, submenuOnChange)
		counter = counter + 1
		submenu:clear()
		for i, launcher in ipairs(launchers) do
			local submenuItem = nil
			if launcher.count > 1e5 then --infinite
				submenuItem = MenuItem.new(launcher.name)
			elseif  launcher.count > 0 then
				submenuItem = MenuItem.new(base.string.format(cdata.available, launcher.count, launcher.name))
			end
			if  submenuItem then
				submenuItem.pylonNumber = pylonNumber
				submenuItem.launcher = launcher
				
				local filename, blendColor = loadoutUtils.getLauncherImage(launcher.clsid)
				
				submenuItem:setSkin(SkinUtils.setMenuItemPicture(filename, blendColor or '0x000000ff'))
				
				submenu:insertItem(submenuItem)
			end
		end
		
		local menuItem = MenuSubItem.new(categoryName, submenu)
		
		gridMenu:insertItem(menuItem)
	end
	
	local separator = MenuSeparatorItem.new()
	
	gridMenu:insertItem(separator)
	
	local menuItem = MenuItem.new(cdata.clear)
	
	menuItem.pylonNumber = pylonNumber
	menuItem.is_remove = true
	gridMenu:insertItem(menuItem)
	
	if clean then		
		-- добавляем в меню элемент для удаления пилона
		for categoryName, launcherCLSID in pairs(clean) do
			menuItem = MenuItem.new(categoryName)
			menuItem.pylonNumber = pylonNumber
			menuItem.launcherCLSID = launcherCLSID
			menuItem.clean = true			
			
			gridMenu:insertItem(menuItem) 
		end
	end
	
	return gridMenu
end

function onPylonMouseDown(x, y, button)
	if 3 == button then
		local col, row = grdPayloads:getMouseCursorColumnRow(x, y) 
		if 0 < col and -1 < row then
			local columns = grdPayloads:getColumnCount()
			local pylonNumber = numbersByColumnIndex[col]
			-- формируем меню
			updatePylonMenu(currentUnitType, pylonNumber, menuOnChange, submenuOnChange)-- позиционируем меню
				local _tmp, _tmp1, w, h = gridMenu:getBounds()
				gridMenu:setBounds(x, y, w, h)
				gridMenu:setVisible(true)
		end
	end
end


function updateWeight()
	local ammo_weight_max	= 900
	local max_to_weight		= 18000
	local max_fuel_weight	= 6000
	local empty_weight		= 6000
	
	if currentUnit then
		ammo_weight_max 	= currentUnit.AmmoWeight
		max_to_weight   	= currentUnit.MaxTakeOffWeight
		max_fuel_weight 	= currentUnit.MaxFuelWeight
		empty_weight		= currentUnit.EmptyWeight
	end
	
	local payloadsWeight = 0
	
	if  currentPayload and currentPayload.pylons ~= nil then
		for i, pylon in pairs(currentPayload.pylons) do
			local launcher = DB.db.Weapons.ByCLSID[pylon.clsid]
			if launcher then
				payloadsWeight = payloadsWeight + launcher.Weight
			end
		end
	end
	local ammoWeight = ammo_weight_max*sldrGunAmmo:getValue()/100
	local fuel 		 = sldrFuel:getValue()*max_fuel_weight/100
 
	txtFlareCurrent:setText(sldrFlare:getValue())
	txtChaffCurrent:setText(sldrChaff:getValue())
	txtGunAmmoCurrent:setText(sldrGunAmmo:getValue() .. '%')
	txtFuelCurrent:setText(sldrFuel:getValue() .. '%')
 
  
	local total		= empty_weight + payloadsWeight + ammoWeight + fuel - (currentUnit.EmptyWeight - currentPayload.emptyWeight)
	max_to_weight 	= tonumber(max_to_weight)

	stcToWeightCurrentValueUnit.widget:setEnabled(total < max_to_weight)
	
	stcToWeightCurrentValueUnit:setValue(math.ceil(total))
	stcToWeightMaxValueUnit:setValue(math.ceil(max_to_weight))
end

function unit_test(wnd)
	init(wnd)
	update({
		unitType 	= "A-10C",
		livery   	= "",
		boardNumber = "XYZMH123",
		countryCode = "RUS",
		numChaff	= 0,
		numFlare	= 0,
		numFuel     = 1000,
		currentAmmo = 0,
		maximumAmmo = 1000,
		ammoType    = 0,
		ammoSupplyMass = 100,
		pylons = 
		{
			[1] = {clsid = "",count = 0},
			[2] = {clsid = "",count = 0},
			[3] = {clsid = "",count = 0},
			[4] = {clsid = "",count = 0},
			[5] = {clsid = "",count = 0},
			[6] = {clsid = "",count = 0},
			[7] = {clsid = "",count = 0},
			[8] = {clsid = "",count = 0},
			[9] = {clsid = "",count = 0},
			[10] = {clsid = "",count = 0},
			[11] = {clsid = "",count = 0},
		}
	})
end
