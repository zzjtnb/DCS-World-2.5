local _testing_ = false;
--[[
Случайные значения ошибок распределяются по нормальному закону распределения.
Указанное в параметре и меньше него по величине значение ошибки будет выпадать в более 75% случаев.
Максимальная ошибка будет иметь значение в 3 раза больше указанной.
Пример: Если вы хотите описать систему, планируемая МАКСИМАЛЬНАЯ ошибка ПРИЦЕЛИВАНИЯ
которой по азимуту будет 10м [-10;10], то следует задать значение
deviation_error_azimuth = 0.03. При этом 75% итераций прицеливания будет
происходить с отклонением < 3м и только оставшиеся 25% будут распределяться
на отклонения 3-10м с 

Угловые ошибки прицеливания связанные с:
 - недостаточной точностью совмещения желаемого направления и устанавливаемого
deviation_error_azimuth -  по азимуту
deviation_error_elevation - по возвышению
единицы измерения - тысячные (0.001 - 1 тысячная, 1м в сторону на расстоянии 1 км)

deviation_error_speed_sensor - ошибка определения скорости движения цели
измеряется в долях

deviation_error_stability - ошибки прицеливая связанные с помехами вызванными движением платформы по неровной поверхности
измеряется в долях увеличения ошибок на единицу скорости (м/с)
например значение 0.03 следует понимать как возрастание амплитуд ошибок на 3% при скорости 1 м/с
Прим.: при движении по дороге это значение делится на 3.

deviation_error_distance - ошибка определения дальности
измеряется в долях
]]

-- weapons sensors
-- zero errors, for debugging purposes
WSN_0 = {}
WSN_0.deviation_error_azimuth = 0.0000
WSN_0.deviation_error_elevation = 0.0000
WSN_0.deviation_error_speed_sensor = 0.000
WSN_0.deviation_error_stability = 0
WSN_0.deviation_error_distance = 0

-- softpoint mount, machinegun_12_7, machinegun_7_62, RPG
WSN_1 = {}
WSN_1.deviation_error_azimuth = 0.005
WSN_1.deviation_error_elevation = 0.005
WSN_1.deviation_error_speed_sensor = 0.2
WSN_1.deviation_error_stability = 0.05
WSN_1.deviation_error_distance = 0.2

-- human gunner, hardpoint mount, automatic_gun_KPVT
WSN_2 = {}
WSN_2.deviation_error_azimuth = 0.003
WSN_2.deviation_error_elevation = 0.003
WSN_2.deviation_error_speed_sensor = 0.2
WSN_2.deviation_error_stability = 0.05
WSN_2.deviation_error_distance = 0.1

-- human gunner, hardpoint mount, ZU-23
WSN_3 = {}
WSN_3.deviation_error_azimuth = 0.001
WSN_3.deviation_error_elevation = 0.001
WSN_3.deviation_error_speed_sensor = 0.2
WSN_3.deviation_error_stability = 0.04
WSN_3.deviation_error_distance = 0.1

-- human gunner, hardpoint mount, BMP-2, Marder, LAV-25
WSN_4 = {}
WSN_4.deviation_error_azimuth = 0.001
WSN_4.deviation_error_elevation = 0.001
WSN_4.deviation_error_speed_sensor = 0.2
WSN_4.deviation_error_stability = 0.01
WSN_4.deviation_error_distance = 0.1

-- human gunner, hardpoint mount, rangefinder, M2, M6, BMP-3
WSN_11 = {}
WSN_11.deviation_error_azimuth = 0.0007
WSN_11.deviation_error_elevation = 0.0007
WSN_11.deviation_error_speed_sensor = 0.15
WSN_11.deviation_error_stability = 0.01
WSN_11.deviation_error_distance = 0.015

-- automatic gunner, hardpoint mount, radar rangefinder, Tunguska, Vulcan, Kortik, Phalanx, Gepard, AK630, Shilka
WSN_5 = {}
WSN_5.deviation_error_azimuth = 0.0007
WSN_5.deviation_error_elevation = 0.0007
WSN_5.deviation_error_speed_sensor = 0.005
WSN_5.deviation_error_stability = 0.01
WSN_5.deviation_error_distance = 0.02

-- tanks 2-nd generation, T55, Leo1, M60,
WSN_6 = {}
WSN_6.deviation_error_azimuth = 0.0008
WSN_6.deviation_error_elevation = 0.0008
WSN_6.deviation_error_speed_sensor = 0.1
WSN_6.deviation_error_stability = 0.01
WSN_6.deviation_error_distance = 0.1

-- tanks 3-nd generation, laser rangefinder M1, T-80, Leo2, Striker MGS
WSN_7 = {}
WSN_7.deviation_error_azimuth = 0.0005
WSN_7.deviation_error_elevation = 0.0005
WSN_7.deviation_error_speed_sensor = 0.08
WSN_7.deviation_error_stability = 0.003
WSN_7.deviation_error_distance = 0.01

-- howitzers
WSN_8 = {}
WSN_8.deviation_error_azimuth = 0.0002
WSN_8.deviation_error_elevation = 0.0002
WSN_8.deviation_error_speed_sensor = 0.1
WSN_8.deviation_error_stability = 0.2
WSN_8.deviation_error_distance = 0.003

-- human gunner
WSN_9 = {}
WSN_9.deviation_error_azimuth = 0.0008
WSN_9.deviation_error_elevation = 0.0008
WSN_9.deviation_error_speed_sensor = 0.1
WSN_9.deviation_error_stability = 0.0008
WSN_9.deviation_error_distance = 0.08

-- Navy artillery
WSN_10 = {}
WSN_10.deviation_error_azimuth = 0.0003
WSN_10.deviation_error_elevation = 0.0003
WSN_10.deviation_error_speed_sensor = 0.1
WSN_10.deviation_error_stability = 0.003
WSN_10.deviation_error_distance = 0.003

-- for tests
if(_testing_) then
    WSN_1 = WSN_0;
    WSN_2 = WSN_0;
    WSN_3 = WSN_0;
    WSN_4 = WSN_0;
    WSN_5 = WSN_0;
    WSN_6 = WSN_0;
    WSN_7 = WSN_0;
    WSN_8 = WSN_0;
	WSN_9 = WSN_0;
	WSN_10 = WSN_0;
	WSN_11 = WSN_0;
end

GT_t.WSN_t = {WSN_1, WSN_2, WSN_3, WSN_4, WSN_5, WSN_6, WSN_7, WSN_8, WSN_9, WSN_10, WSN_11};
GT_t.WSN_t[0] = WSN_0;