local sceneEnvironment = require('demosceneEnvironment')
preview =
{
    scene = {}, -- сюда кладем все созданные объекты

    objectHeight = 5000, --высота объекта, вокруг которого крутим камеру

    cameraSpeed  = 0.25,
    cameraFov	 = 60,
    cameraAngVDefault = math.rad(25),
    cameraDistance = 50,
    cameraDistMult = 0,

    cameraAngH	 = 0,
    cameraAngV	 = 0,
    cameraRadius = 0,
    cameraHeight = 0,
    camAng = 0,
    camDist = 0,
    camTime = 0,

    mouseSensitivity = 0.0034, -- скорость вращения камеры
    wheelSensitivity = 0.02, -- скорость удаления/приближения камеры

}

preview.payloadPreviewUpdate = function(t, dt)
        preview.camTime = preview.camTime + dt
        preview.camAng = preview.cameraSpeed*preview.camTime + preview.cameraAngH;
        preview.camDist = preview.cameraDistance*math.exp(preview.cameraDistMult)
        preview.cameraHeight = math.sin(preview.cameraAngV)*preview.camDist
        preview.cameraRadius = math.cos(preview.cameraAngV)*preview.camDist
        preview.scene.cam.transform:setPosition(math.sin(preview.camAng)*preview.cameraRadius, preview.objectHeight + preview.cameraHeight, math.cos(preview.camAng)*preview.cameraRadius)
        preview.scene.cam.transform:lookAtPoint(0, preview.objectHeight, 0)
    end

preview.payloadPreviewUpdateNoRotate = function(t,dt)
        preview.camAng = preview.cameraSpeed*preview.camTime + preview.cameraAngH;
        preview.camDist = preview.cameraDistance*math.exp(preview.cameraDistMult)
        preview.cameraHeight = math.sin(preview.cameraAngV)*preview.camDist
        preview.cameraRadius = math.cos(preview.cameraAngV)*preview.camDist
        preview.scene.cam.transform:setPosition(math.sin(preview.camAng)*preview.cameraRadius, preview.objectHeight + preview.cameraHeight, math.cos(preview.camAng)*preview.cameraRadius)
        preview.scene.cam.transform:lookAtPoint(0, preview.objectHeight, 0)
    end
    
function loadScene(scenePtr)
    local sceneAPI = sceneEnvironment.getInterface(scenePtr)	
    sceneAPI:setSky(true)
	sceneAPI:setSun(math.rad(25), math.rad(0))
    preview.scene.cam = sceneAPI:addCamera(0, 0, 0)
    preview.scene.cam:setNearClip(0.2)
    preview.scene.cam:setFarClip(300)
	
end