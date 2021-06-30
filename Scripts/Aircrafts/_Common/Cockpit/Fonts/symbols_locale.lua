
symbols_locale_included = true

cp1251_after_128_due_192 =
{
	[128]=	1026,
	[129]=	1027,
	[130]=	8218,
	[131]=	1107,
	[132]=	8222,
	[133]=	8214,
	[134]=	8224,
	[135]=	8225,
	[136]=	8364,
	[137]=	8240,
	[138]=	1033,
	[139]=	8249,
	[140]=	1034,
	[141]=	1036,
	[142]=	1035,
	[143]=	1039,
	[144]=	1106,
	[145]=	8216,
	[146]=	8217,
	[147]=	8220,
	[148]=	8221,
	[149]=	8226,
	[150]=	8211,
	[151]=	8212,
	[152]=	8481,
	[153]=	8482,
	[154]=	1113,
	[155]=	8250,
	[156]=	1114,
	[157]=	1116,
	[158]=	1115,
	[159]=	1119,
	[160]=	160	,
	[161]=	1038,
	[162]=	1118,
	[163]=	1032,
	[164]=	164	,
	[165]=	1168,
	[166]=	166	,
	[167]=	167	,
	[168]=	1025,
	[169]=	169	,
	[170]=	1028,
	[171]=	171	,
	[172]=	172	,
	[173]=	173	,
	[174]=	174	,
	[175]=	1031,
	[176]=	176	,
	[177]=	177	,
	[178]=	1030,
	[179]=	1110,
	[180]=	1169,
	[181]=	181	,
	[182]=	182	,
	[183]=	183	,
	[184]=	1105,
	[185]=	8470,
	[186]=	1108,
	[187]=	187	,
	[188]=	1112,
	[189]=	1029,
	[190]=	1109,
	[191]=	1111,
}


CP1251_toUTF8 = {}
for i = 128,191 do CP1251_toUTF8[i] = cp1251_after_128_due_192[i] end
-- ugly hack
CP1251_toUTF8[219] = 1102
CP1251_toUTF8[241] = 1103


latin =
{
	['A'] = 65,
	['B'] = 66,
	['C'] = 67,
	['D'] = 68,
	['E'] = 69,
	['F'] = 70,
	['G'] = 71,
	['H'] = 72,
	['I'] = 73,
	['J'] = 74,
	['K'] = 75,
	['L'] = 76,
	['M'] = 77,
	['N'] = 78,
	['O'] = 79,
	['P'] = 80,
	['Q'] = 81,
	['R'] = 82,
	['S'] = 83,
	['T'] = 84,
	['U'] = 85,
	['V'] = 86,
	['W'] = 87,
	['X'] = 88,
	['Y'] = 89,
	['Z'] = 90,

	['a'] = 97,
	['b'] = 98,
	['c'] = 99,
	['d'] = 100,
	['e'] = 101,
	['f'] = 102,
	['g'] = 103,
	['h'] = 104,
	['i'] = 105,
	['j'] = 106,
	['k'] = 107,
	['l'] = 108,
	['m'] = 109,
	['n'] = 110,
	['o'] = 111,
	['p'] = 112,
	['q'] = 113,
	['r'] = 114,
	['s'] = 115,
	['t'] = 116,
	['u'] = 117,
	['v'] = 118,
	['w'] = 119,
	['x'] = 120,
	['y'] = 121,
	['z'] = 122,
}

symbol =
{
	[' '] = 32,
	['!'] = 33,
	['"'] = 34, -- quote (probably should be - '\"' )
	['#'] = 35,
	['$'] = 36,
	['%'] = 37,
	['&'] = 38,
	['\''] = 39, -- apostrophe
	['('] = 40,
	[')'] = 41,
	['*'] = 42,
	['+'] = 43,
	[','] = 44,
	['-'] = 45,
	['.'] = 46,
	['/'] = 47,
	['0'] = 48,
	['1'] = 49,
	['2'] = 50,
	['3'] = 51,
	['4'] = 52,
	['5'] = 53,
	['6'] = 54,
	['7'] = 55,
	['8'] = 56,
	['9'] = 57,
	[':'] = 58,
	[';'] = 59,
	['<'] = 60,
	['='] = 61,
	['>'] = 62,
	['?'] = 63,
	['@'] = 64,
	['['] = 91,
	['\\'] = 92, -- backslash
	[']'] = 93,
	['^'] = 94,
	['_'] = 95,
	['`'] = 96,
	['{'] = 123,
	['|'] = 124,
	['}'] = 125,
	['~'] = 126,
	['°'] = CP1251_toUTF8[176],
}

cyrillic = 
{
	['А']=	1040,
	['Б']=	1041,
	['В']=	1042,
	['Г']=	1043,
	['Д']=	1044,
	['Е']=	1045,
	['Ё']=  1025,
	['Ж']=	1046,
	['З']=	1047,
	['И']=	1048,
	['Й']=	1049,
	['К']=	1050,
	['Л']=	1051,
	['М']=	1052,
	['Н']=	1053,
	['О']=	1054,
	['П']=	1055,
	['Р']=	1056,
	['С']=	1057,
	['Т']=	1058,
	['У']=	1059,
	['Ф']=	1060,
	['Х']=	1061,
	['Ц']=	1062,
	['Ч']=	1063,
	['Ш']=	1064,
	['Щ']=	1065,
	['Ъ']=	1066,
	['Ы']=	1067,
	['Ь']=	1068,
	['Э']=	1069,
	['Ю']=	1070,
	['Я']=	1071,
	
	['а']=	1072,
	['б']=	1073,
	['в']=	1074,
	['г']=	1075,
	['д']=	1076,
	['е']=	1077,
	['ё']=	1105,
	['ж']=	1078,
	['з']=	1079,
	['и']=	1080,
	['й']=	1081,
	['к']=	1082,
	['л']=	1083,
	['м']=	1084,
	['н']=	1085,
	['о']=	1086,
	['п']=	1087,
	['р']=	1088,
	['с']=	1089,
	['т']=	1090,
	['у']=	1091,
	['ф']=	1092,
	['х']=	1093,
	['ц']=	1094,
	['ч']=	1095,
	['ш']=	1096,
	['щ']=	1097,
	['ъ']=	1098,
	['ы']=	1099,
	['ь']=	1100,
	['э']=	1101,
	['ю']=	1102,
	['я']=	1103,
}

euro_spec =
{
	------------------------------------------
	-- german --------------------------------
	['ß'] = 223,
	['Ä'] = 196,
	['Ö'] = 214,
	['Ü'] = 220,
	------------------------------------------
	-- french --------------------------------
	['É'] = 201,
	['Ê'] = 202,
	['À'] = 192,
	['Â'] = 194,
	------------------------------------------
	-- spanish -------------------------------
	['Á'] = 193,
	--['É'] = 201,	-- already added
	['Í'] = 205,
	['Ó'] = 211,
	['Ú'] = 218,
	['Ç'] = 199,
	--['Ü'] = 220,	-- already added
	['Ñ'] = 209,
	------------------------------------------
	-- czech ---------------------------------
	--['Á'] = 193,	-- already added
	--['É'] = 201,	-- already added
	['Ě'] = 282,
	--['Í'] = 205,	-- already added
	['Ý'] = 221,
	['Ů'] = 366,
	--['Ú'] = 218,	-- already added
	['Ť'] = 356,
	['Š'] = 352,
	['Ř'] = 344,
	--['Ó'] = 211,	-- already added
	['Ň'] = 327,
}

function add_cyrillic_capitals(tbl,szx,szy)
	tbl[#tbl + 1] = {cyrillic['А'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Б'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['В'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Г'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Д'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Е'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Ж'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['З'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['И'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Й'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['К'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Л'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['М'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Н'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['О'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['П'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Р'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['С'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Т'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['У'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Ф'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Х'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Ц'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Ч'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Ш'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Щ'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Ъ'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Ы'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Ь'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Э'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Ю'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['Я'],szx, szy}
end

function add_cyrillic_smalls(tbl,szx,szy)
	tbl[#tbl + 1] = {cyrillic['а'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['б'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['в'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['г'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['д'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['е'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['ж'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['з'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['и'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['й'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['к'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['л'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['м'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['н'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['о'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['п'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['р'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['с'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['т'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['у'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['ф'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['х'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['ц'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['ч'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['ш'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['щ'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['ъ'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['ы'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['ь'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['э'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['ю'],szx, szy}
	tbl[#tbl + 1] = {cyrillic['я'],szx, szy}
end
