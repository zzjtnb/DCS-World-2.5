    name_localize = {ru = "Облачность",},
    name = "Cloudy",
    atmosphere_type = 0,
    wind = 
    {
        at8000 = 
        {
            speed = 2,
            dir = 71,
        }, -- end of at8000
        at2000 = 
        {
            speed = 5,
            dir = 243,
        }, -- end of at2000
        atGround = 
        {
            speed = 1,
            dir = 160,
        }, -- end of atGround
    }, -- end of wind
    turbulence = 
    {
        at8000 = 1,
        at2000 = 2,
        atGround = 3,
    }, -- end of turbulence
    season = 
    {
        temperature = %%TEMPERATURE%%,
        iseason = %%SEASON%%,
    }, -- end of season
    qnh = 755,
    enable_fog = false,
    fog = 
    {
        density = 0,
        visibility = 1000,
        thickness = 0,
    }, -- end of fog
    visibility = 
    {
        distance = 70000,
    }, -- end of visibility
    clouds = 
    {
        thickness = 300,
        density = %%DENSITY%%,
        base = 1000,
        iprecptns = %%PRECIPITATION%%,
    }, -- end of clouds
