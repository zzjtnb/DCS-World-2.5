local base = _G

module('me_nav_target_points')

local require = base.require
local pairs = base.pairs
local ipairs = base.ipairs
local tostring = base.tostring

local U                 = require('me_utilities')	-- Утилиты создания типовых виджетов
local DialogLoader      = require('DialogLoader')
local MapWindow         = require('me_map_window')
local mod_mission 		= require('me_mission')
local i18n              = require('i18n')

i18n.setup(_M)
 
function initModule() 
    cdata = {
        add = _('ADD'),
        edit = _('EDIT'),
        del = _('DEL'),
        lat = _('LATITUDE:'),
        lon = _('LONGITUDE:'),
        of = _('OF'),
        comment = _('Comment'),
    } 

    vdata = {}
    vdata.selectedPoint = nil
    vdata.coords = {}
    vdata.coords.x = 0
    vdata.coords.y = 0
    vdata.comment = ""
end 
 
function create(x, y, w, h)
    window = DialogLoader.spawnDialogFromFile('MissionEditor/modules/dialogs/me_nav_target_points.dlg', cdata)
    window:setBounds(x,y,w,h)
    
	local box = window.box
	
    buttonAdd = box.buttonAdd
    buttonEdit = box.buttonEdit
    buttonDel = box.buttonDel
    editComment = box.editComment
    sp_of = box.sp_of
    editboxNumber = box.editboxNumber
    staticLat = box.staticLat
    staticLon = box.staticLon
    
    function editComment:onChange(self)
		vdata.comment = editComment:getText()        
        if (vdata.selectedPoint) then
            vdata.selectedPoint.text_comment = vdata.comment
            vdata.selectedPoint.mapObjects.comment.title = vdata.comment
            mod_mission.update_group_map_objects(vdata.selectedPoint.boss)
        end
    end

    buttons = {
        buttonAdd,
        buttonEdit,
    }
    buttonAdd:setState(true)

    setupCallbacks()
end

function show(b)
    window:setVisible(b)
    if b then -- окно видимо
        if buttonAdd:getState() then -- нажата кнопка добавления
            MapWindow.setState(MapWindow.getCreatingNavTargetPointState())
        else -- кнопка добавления не нажата
            if MapWindow.selectedGroup and -- есть выделенная группа и у нее нет точек , то переходим в режим добавления 
                ( not MapWindow.selectedGroup.NavTargetPoints or ( #MapWindow.selectedGroup.NavTargetPoints < 1) ) 
                then 
                buttonAdd:setState(true)   -- нажимаем кнопку Add
                buttonEdit:setState(false)  -- отжимаем кнопку Edit
                MapWindow.setState(MapWindow.getCreatingNavTargetPointState()) -- карту в режим создания 
            else
                MapWindow.setState(MapWindow.getPanState()) -- карту в обычный режим
            end
        end    
        update()
    else --окно скрыто
        vdata.selectedPoint = nil
        selectPoint(nil)
        MapWindow.setState(MapWindow.getPanState()) -- карту в обычный режим
    end
end

function setupCallbacks()
    buttonAdd.onChange = onButtonAddChange
    buttonEdit.onChange = onButtonEditChange
    buttonDel.onChange = onButtonDelChange
    sp_of.onChange = onSpinOfChange    
end 

function toggle(button)
    for k,v in pairs(buttons) do 
        if button ~= v then
            v:setState(not button:getState())
        end
    end
end  

function onSpinOfChange(self)
    if vdata.selectedPoint then
        local group = vdata.selectedPoint.boss
        local points = group.NavTargetPoints
        
        vdata.selectedPoint = points[self:getValue()]
    end
    
    update()
end 

function selectPoint(point)
    local group
    if point ~= nil then 
        group = point.boss
    else
        if MapWindow.selectedGroup ~= nil then 
            group = MapWindow.selectedGroup
        else
            return
        end
    end
    
    if group.NavTargetPoints then
        local color = group.boss.boss.color

        for i, point in ipairs(group.NavTargetPoints) do
            point.symbol.currColor = color
            point.text.currColor = color
            point.comment.currColor = color
        end
    end
    
    if point ~= nil then
        local color = group.boss.boss.selectWaypointColor
        
        point.symbol.currColor = color
        point.text.currColor = color
        point.comment.currColor = color
    end

    base.module_mission.update_group_map_objects(group) 
end 

-- обработчик нажатия кнопки добавления Add
function onButtonAddChange(self)
    toggle(self)
    if self:getState() then -- если нажата Add
        MapWindow.setState(MapWindow.getCreatingNavTargetPointState()) -- карту в режим создания точек
        --buttonEdit:setState(false) -- отжать кнопку Edit
    else -- если Add не нажата 
        MapWindow.setState(MapWindow.getPanState()) -- карту в обычный режим
    end
    update()
end

-- обработчик нажатия кнопки редактирования Edit
function onButtonEditChange(self)
    toggle(self)
    if self:getState() then -- если нажата Edit
        --buttonAdd:setState(false) -- отжать Add
        MapWindow.setState(MapWindow.getPanState()) --  карту в обычный режим
    end
    update()
end

-- обработчик нажатия кнопки удаления Del
function onButtonDelChange(self)
    if vdata.selectedPoint then
        local group = vdata.selectedPoint.boss
        local points = group.NavTargetPoints
        base.module_mission.remove_NavTargetPoint(group, vdata.selectedPoint.index)        
        if #points > 0 then
            vdata.selectedPoint = points[1]
            selectPoint(vdata.selectedPoint)
        end
        update()        
    end
end

-- обновить панель 
function update()
    if not window:isVisible() then
        return
    end
    
    if vdata.selectedPoint == nil then
        if not MapWindow.selectedGroup then
            vdata.selectedPoint = nil
        else
            if MapWindow.selectedGroup.NavTargetPoints then
                if #MapWindow.selectedGroup.NavTargetPoints > 0 then
                    vdata.selectedPoint = MapWindow.selectedGroup.NavTargetPoints[1]
                else
                    vdata.selectedPoint = nil
                end
            else
                vdata.selectedPoint = nil
            end
        end    
    end
    
    if buttonAdd:getState() then
        MapWindow.setState(MapWindow.getCreatingNavTargetPointState())
    else
        MapWindow.setState(MapWindow.getPanState())
    end

    local lat = 0
    local long = 0
    
    if vdata.selectedPoint then -- что-то выделено
        -- обновить едиты
        vdata.coords.x = vdata.selectedPoint.x
        vdata.coords.y = vdata.selectedPoint.y
        
        -- lat, long в градусах
        lat, long = MapWindow.convertMetersToLatLon(vdata.selectedPoint.x, vdata.selectedPoint.y)
        
        editboxNumber:setText(tostring(vdata.selectedPoint.index))
        local pointCount = #vdata.selectedPoint.boss.NavTargetPoints
        sp_of:setRange(1, pointCount)
        sp_of:setEnabled(true)
        editboxNumber:setEnabled(true)
        editboxNumber:setText(tostring(pointCount))
        sp_of:setValue(vdata.selectedPoint.index)
        if (vdata.selectedPoint.text_comment) then
            editComment:setText(vdata.selectedPoint.text_comment)  
        else
            editComment:setText("")
        end
        selectPoint(vdata.selectedPoint)
    else -- нифига не выделено 
        editboxNumber:setText('0')
        editboxNumber:setEnabled(false)
        sp_of:setRange(0,1)
        sp_of:setEnabled(false)
        sp_of:setValue(0) 
        editComment:setText("")    
        selectPoint(nil)
    end
    
   staticLat:setText(U.getLatitudeString(U.toRadians(lat)))
   staticLon:setText(U.getLongitudeString(U.toRadians(long)))
end

-- установить режим редактирования точек коррекции
function setEditMode(b)
    if b then 
        buttonAdd:setState(false) -- Add 
        buttonEdit:setState(true) -- Edit нажать
    else
        buttonEdit:setState(false)    
    end
end


initModule()
