--Standart athmosphere

local PH = {-2.0, 10.5, 11.2, 11.5, 24.5, 25.16, 25.5};
local K  = {0.00025,-0.386248,1.2661,-0.88011,-0.170736,0.506547,-0.33585};
local RG=287.039;
local T1=301.19;
local RO1=0.15072;
local P1=13031.0;
local G1=9.80665;
local R1=6371.21;
local Y1=3.322227e-3;
local YH1=0.708257e-4;
local YHH1=0.304223e-5;
local A1=20.0463;
local A2=0.0341649;

local function satm(h)
	local h_ = h*0.001;
	local DH= h_- PH[1];
	local Y = Y1 + DH* (YH1+ DH*YHH1/ 2.0);
	local X = 1000.0*DH*(Y1+ DH*(YH1+ DH*YHH1/3.0)/ 2.0);
	for i=0,7 do
		DH= h_- PH[i+1];
		if DH <= 0 then
			break;
		end
		Z = DH* K[i+1]* DH*DH;
		Y = Y+ 0.001*Z/ 6;
		X = X+ Z* DH/ 24;
	end
	
	local T = (R1/(R1+h_))*(R1/(R1+h_))/ Y;
	local A = math.exp(-A2*X);
	local RO= RO1*(T1/T)*A;
	local A = A1*math.sqrt(math.abs(T));
	if A < 295.0 then A = 295.0 end
	if A > 340.4 then A = 340.4 end
	if RO < 0.0 then RO = 0.0 end
	if RO > 0.12551 then RO = 0.12551 end
	
	local sndSpeed = A;
	local rho = RO*G1;
	
	return rho, sndSpeed
end

local rho0 = satm(0)

local pi		= 3.14159
local atten		= 5  --во сколько раз уменьшится частота колебаний за 5 сек

-- Solid cylinder of radius r, height l and mass m
function calcIyz(m, l, r)
	return m * (l * l + 3 * r * r) / 12.0
end

-- Solid cylinder of radius r and mass m
function calcIx(m, r)
	return m * r * r / 2.0
end

function calcS(D)
	return pi * D * D / 4
end

function calcMa(I, L, S, lambda)
	return (2 * pi / lambda) * (2 * pi / lambda) * 2 * I / (rho0 * S * L);
end

function calcMw(I, L, S)
	local beta = math.log(atten) / 5;
	return 4 * I * beta / (L * L * rho0 * 111 * S);	
end

function calcCy(va, h, mass, N, Sw)
	local rho, sndSpeed = satm(h)
	local q = rho * va * va / 2
	return mass * 9.8 * N / (q * Sw)
end