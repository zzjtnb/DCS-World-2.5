--| ----------------------------------------------------------------------------------------------------|
--| The script file must contain either groups_mission_id or order_data.                                |
--| (in any case, groups_mission_id will be read first, and if successful, order_data is ignored)       |
--| ----------------------------------------------------------------------------------------------------|
--| groups_mission_id                                                                                   |
--| table -   includes a identifiers of objects(groups)                                         		|
--|           groups_mission_id = [id_1, id_2,...]                                                      |
--|           plane_1 - id_1    plane_2 - id_2    plane_1 - id_1,id_3    ...                            |
--|           each next object will be associated with another aircraft,                                |
--|           this will happen until the list of objects is finished.                                   |
--| ----------------------------------------------------------------------------------------------------|
--| order_data                                                                                          |
--| table -   includes tables of object identifiers (groups).                                           |
--|           order_data = [ [id_1, id_2,...],[id_3, id_4,...],... ]                                    |
--|                       plane_1                plane_2                                                |
--|           each table is for one aircraft, all objects will be associated with it.                   |
--|           if there are more planes among the objects, the extra groups will be deleted              |
--| ----------------------------------------------------------------------------------------------------|


package.path = package.path..'./?.lua;'..'./GeneratedTasks/?.lua;'..'./Scripts/GeneratedTasks/?.lua;'..'./Scripts/GeneratedTasks/moduls/?.lua;'

local first_sq = require('descent_two_squad_on_tiger')

groups_mission_id = first_sq.TrooperGroups (nil, country.id.RUSSIA)


--| ----------------------------------------------------------------------------------------------------|
--| Файл скрипта должен содержать либо groups_mission_id либо order_data                                |
--| (в любом случае сначала будет читаться groups_mission_id, и в случае успеха order_data игнорируется)|
--| ----------------------------------------------------------------------------------------------------|
--| groups_mission_id                                                                                   |
--| таблица - включает в себя идентификаторы объектов(групп)                                            |
--|           groups_mission_id = [id_1, id_2,...]                                                      |
--|           plane_1 - id_1    plane_2 - id_2    plane_1 - id_1,id_3    ...                            |
--|           каждый следующий объект будет проассоциировани с очередным самолетом                      |
--|           это будет происходить пока списов объектов не закончится                                  |
--| ----------------------------------------------------------------------------------------------------|
--| order_data                                                                                          |
--| таблица - включает в себя таблицы идентификаторов объектов(групп)                                   |
--|           order_data = [ [id_1, id_2,...],[id_3, id_4,...],... ]                                    |
--|                       plane_1                plane_2                                                |
--|           каждая таблица предназначена для одного самолета,                                         |
--|           все объекты будут с ним проасоциированы                                                   |
--|           если таблиц объектов окажктся больше самолетов, то лишние группы удалятся                 |
--| ----------------------------------------------------------------------------------------------------|