    name_localize = {ru = "Ясно",},
    name = "Clear",
    atmosphere_type = 0,
    wind = 
    {
        at8000 = 
        {
            speed = 0,
            dir = 0,
        }, -- end of at8000
        at2000 = 
        {
            speed = 0,
            dir = 0,
        }, -- end of at2000
        atGround = 
        {
            speed = 0,
            dir = 0,
        }, -- end of atGround
    }, -- end of wind
    turbulence = 
    {
        at8000 = 0,
        at2000 = 0,
        atGround = 0,
    }, -- end of turbulence
    season = 
    {
        temperature = %%TEMPERATURE%%,
        iseason = %%SEASON%%,
    }, -- end of season
    qnh = 770,
    enable_fog = false,
    fog = 
    {
        density = 0,
        visibility = 1000,
        thickness = 0,
    }, -- end of fog
    visibility = 
    {
        distance = 80000,
    }, -- end of visibility
    clouds = 
    {
        thickness = 0,
        density = %%DENSITY%%,
        base = 0,
        iprecptns = %%PRECIPITATION%%,
    }, -- end of clouds
