    name_localize = {ru = "Шторм",},
    name = "Storm",
    atmosphere_type = 0,
    wind = 
    {
        at8000 = 
        {
            speed = 10,
            dir = 278,
        }, -- end of at8000
        at2000 = 
        {
            speed = 11,
            dir = 258,
        }, -- end of at2000
        atGround = 
        {
            speed = 9,
            dir = 248,
        }, -- end of atGround
    }, -- end of wind
    turbulence = 
    {
        at8000 = 5,
        at2000 = 3,
        atGround = 4,
    }, -- end of turbulence
    season = 
    {
        temperature = %%TEMPERATURE%%,
        iseason = %%SEASON%%,
    }, -- end of season
    qnh = 730,
    enable_fog = false,
    fog = 
    {
        density = 0,
        visibility = 1000,
        thickness = 0,
    }, -- end of fog
    visibility = 
    {
        distance = 60000,
    }, -- end of visibility
    clouds = 
    {
        thickness = 800,
        density = %%DENSITY%%,
        base = 900,
        iprecptns = %%PRECIPITATION%%,
    }, -- end of clouds
