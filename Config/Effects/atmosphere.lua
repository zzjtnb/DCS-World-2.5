-- ключи анимации цвета солнца/эмбиента/тумана/облаков
-- первый параметр - высота солнца под/над горизонтом [-1,1]
-- {sunDir.y, R,G,B}
SunAmbient =
{
	{-0.2, 0.02, 0.02, 0.06};
	{-0.1, 0.1, 0.1, 0.2};
	{0, 0.2, 0.2, 0.3};
	{0.1, 0.5, 0.4, 0.3};
	{0.342, 1, 0.9, 0.8};
	{0.5, 0.6, 0.6, 0.6};
	{1, 0.6, 0.6, 0.6};
};

SunDiffuse =
{
	{-1.000, 0.000, 0.000, 0.000};
	{-0.045, 0.000, 0.000, 0.000};
	{0.002, 0.339, 0.264, 0.263};
	{0.055, 0.749, 0.602, 0.502};
	{0.600, 1.000, 1.000, 0.803};
	{1.000, 1.000, 1.000, 1.000};
};

FogDiffuse =
{
	{-0.045, 0.071, 0.071, 0.086};
	{0.000, 0.392, 0.404, 0.435};
	{0.100, 0.776, 0.714, 0.651};
	{1.000, 0.745, 0.780, 0.796};
};

FogDiffuseNew = --obsolete
{
	{-0.045, 0.020, 0.020, 0.027};
	{0.000, 0.141, 0.282, 0.263};
	-- {0.100, 0.149, 0.647, 0.808};
	{0.100, 156/255.0, 171/255.0, 173/255.0};
	{1.000, 0.557, 0.843, 0.933};
};

CloudsDiffuse =
{
	{-1.000, 0.000, 0.000, 0.000};
	{-0.15, 0.000, 0.000, 0.000};
	{-0.045, 0.078, 0.086, 0.094};
	{0.002, 0.659, 0.545, 0.424};
	{0.055, 0.992, 0.839, 0.651};
	{0.600, 1.000, 1.000, 0.976};
	{1.000, 1.000, 1.000, 1.000};
};

CloudsMiddle =
{
	{-1.000, 0.000, 0.000, 0.000};
	{-0.150, 0.027, 0.033, 0.039};
	{-0.045, 0.103, 0.102, 0.100};
	{0.002, 0.416, 0.376, 0.333};
	{0.055, 0.671, 0.608, 0.478};
	{0.600, 0.741, 0.800, 0.796};
	{1.000, 0.796, 0.820, 0.816};
};

CloudsAmbient =
{
	{-1.000, 0.000, 0.000, 0.000};
	{-0.150, 0.055, 0.067, 0.078};
	{-0.045, 0.129, 0.118, 0.106};
	{0.002, 0.169, 0.235, 0.251};
	{0.055, 0.302, 0.353, 0.384};
	{0.600, 0.286, 0.443, 0.580};
	{1.000, 0.341, 0.443, 0.569};
};

---------------------------------
-- new shading
---------------------------------
FogColorBase = {
	{-0.045, 0.055, 0.067, 0.071};
	{0.000, 0.239, 0.278, 0.278};
	{0.100, 0.443, 0.557, 0.624};
	{1.000, 0.718, 0.827, 0.851};
};
FogColorHeightAdd = {
	{-0.045, 0.000, 0.000, 0.000};
	{0.000, 0.161, 0.137, 0.086};
	{0.100, 0.361, 0.349, 0.071};
	{1.000, 0.694, 0.678, 0.596};
};
FogRadialColor = {
	{-0.045, 0.000, 0.000, 0.000};
	{0.000, 0.271, 0.224, 0.129};
	{0.100, 0.451, 0.388, 0.267};
	{1.000, 0.502, 0.486, 0.333};
};
FogColorHorizonAdd = {
	{-0.045, 0.000, 0.000, 0.000};
	{0.000, 0.176, 0.157, 0.067};
	{0.100, 0.341, 0.341, 0.341};
	{1.000, 0.604, 0.604, 0.604};
};

CloudsAmbientTimur =
{
	{-1.000, 0.000, 0.000, 0.000};
	{-0.100, 0.000, 0.000, 0.000};
	{-0.045, 0.063, 0.063, 0.071};
	{0.000, 0.180, 0.176, 0.153};
	{0.100, 0.404, 0.447, 0.494};
	{1.000, 0.741, 0.824, 0.867};
};