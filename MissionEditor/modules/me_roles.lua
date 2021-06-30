local base = _G

module('me_roles')

local DialogLoader 	= base.require('DialogLoader')
local U 			= base.require('me_utilities')
local ProductType 	= base.require('me_ProductType') 

--FIXME поле name используется в диалоге симулятора и не должна зависеть от локали, в которой была создана миссия
local groundControlData 
base.require('i18n').setup(_M)

cdata = {
groundControl = _("GROUND CONTROL"),
multiplayerRoles = _("MISSION/MULTIPLAYER ROLES"),
red = _("Red_edtr", "Red"),
blue = _("Blue_edtr", "Blue"),
neutrals = _("Neutrals_edtr", "Neutrals"),
pilotCanControlVehicles = _("PILOT CAN CONTROL VEHICLES"),
}


if ProductType.getType() == "LOFAC" then
    cdata.groundControl = _("GROUND CONTROL-LOFAC")
    cdata.pilotCanControlVehicles = _("PILOT CAN CONTROL VEHICLES-LOFAC")
end

--FIXME не писать локализованное имя в миссию
--сделать отдельную конфигурационную таблицу для локализаци ролей, в миссии использовать только id
function initData()
    groundControlData = 
    {
        isPilotControlVehicles = false,
		roles = {}
	}
	for id, value in base.pairs(base.db.roles) do
		groundControlData.roles[id] = {red = 0, blue = 0, neutrals = 0}
	end
end

function create(x, y, w, h)
	--TODO создавать виджеты из базы данных, а не ресурса диалога
	for id, value in base.pairs(base.db.roles) do
		cdata[id] = value
	end
	
    rolesWindow = DialogLoader.spawnDialogFromFile("MissionEditor/modules/dialogs/me_roles.dlg", cdata)
    
    rolesWindow:setBounds(x, y, w, h)

	for name, value in base.pairs(groundControlData.roles) do
		bindSpinBox(rolesWindow[name.."RedSB"], name, "red")
		bindSpinBox(rolesWindow[name.."BlueSB"], name, "blue")
		bindSpinBox(rolesWindow.pNeutrals[name.."NeutralsSB"], name, "neutrals")
	end

    function rolesWindow.pilotControlCheck:onChange()
        groundControlData.isPilotControlVehicles = self:getState()
    end
	
	if base.test_addNeutralCoalition == true then  
		rolesWindow.pNeutrals:setVisible(true)
	else
		rolesWindow.pNeutrals:setVisible(false)
	end	
end

function show(b)
    rolesWindow:setVisible(b)
end

function update(data)
	if data then
		U.copyTable(groundControlData, data)
	else
		initData()
	end
	
	for name, value in base.pairs(groundControlData.roles) do
		redSpinBox = rolesWindow[name.."RedSB"]
		redSpinBox:setValue(value.red)
        
        blueSpinBox = rolesWindow[name.."BlueSB"]
		blueSpinBox:setValue(value.blue)
		
		neutralsSpinBox = rolesWindow.pNeutrals[name.."NeutralsSB"]
		neutralsSpinBox:setValue(value.neutrals)
	end	
    
    rolesWindow.pilotControlCheck:setState(groundControlData.isPilotControlVehicles)
end

function bindSpinBox(control, name, side)
	function control:onChange()
		groundControlData.roles[name][side] = self:getValue()
	end
end

function getGroundControlData()
    return groundControlData;
end

initData()
