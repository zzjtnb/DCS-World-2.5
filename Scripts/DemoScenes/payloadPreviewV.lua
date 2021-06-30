local sceneEnvironment = require('demosceneEnvironment')
previewV =
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

previewV.payloadPreviewUpdate = function(t, dt)
        previewV.camTime = previewV.camTime + dt
        previewV.camAng = previewV.cameraSpeed*previewV.camTime + previewV.cameraAngH;
        previewV.camDist = previewV.cameraDistance*math.exp(previewV.cameraDistMult)
        previewV.cameraHeight = math.sin(previewV.cameraAngV)*previewV.camDist
        previewV.cameraRadius = math.cos(previewV.cameraAngV)*previewV.camDist
        previewV.scene.cam.transform:setPosition(math.sin(previewV.camAng)*previewV.cameraRadius, previewV.objectHeight + previewV.cameraHeight, math.cos(previewV.camAng)*previewV.cameraRadius)
        previewV.scene.cam.transform:lookAtPoint(0, previewV.objectHeight, 0)
    end

previewV.payloadPreviewUpdateNoRotate = function(t,dt)
        previewV.camAng = previewV.cameraSpeed*previewV.camTime + previewV.cameraAngH;
        previewV.camDist = previewV.cameraDistance*math.exp(previewV.cameraDistMult)
        previewV.cameraHeight = math.sin(previewV.cameraAngV)*previewV.camDist
        previewV.cameraRadius = math.cos(previewV.cameraAngV)*previewV.camDist
        previewV.scene.cam.transform:setPosition(math.sin(previewV.camAng)*previewV.cameraRadius, previewV.objectHeight + previewV.cameraHeight, math.cos(previewV.camAng)*previewV.cameraRadius)
        previewV.scene.cam.transform:lookAtPoint(0, previewV.objectHeight, 0)
    end
    
function loadScene(scenePtr)
    local sceneAPI = sceneEnvironment.getInterface(scenePtr)	
    sceneAPI:setSky(true)	
    previewV.scene.cam = sceneAPI:addCamera(0, 0, 0)
    previewV.scene.cam:setNearClip(0.2)
    previewV.scene.cam:setFarClip(300)
    
end