function init()
	no_march = 0;
end

function on_suppres_march(value)
	if value then 
		no_march = 1;
	else
		no_march = 0;
	end
end

function run(t)
	if t == 0 then
		outports.booster(false);
		outports.march(false);
		outports.march2(false);
		
		return ${boost_start};
	else
		if (math.abs(t - ${boost_start}) < 1E-3) then
			outports.booster(true);
			return ${march_start} - t;
		end
		
		if (math.abs(t - ${march_start}) < 1E-3) and (no_march == 0) then
			outports.march(true);
			return ${march2_start} - t;
		end
		
		if (math.abs(t - ${march2_start}) < 1E-3) and (no_march == 0) then
			outports.march2(true);
		end
	
		return -1;
	end
end