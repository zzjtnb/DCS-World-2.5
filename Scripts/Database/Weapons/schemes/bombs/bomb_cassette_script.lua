function init()
	count = 0;
end


function run(t)
	if t == 0 then
		outputs.check_obj(false);
		
		return ${check_delay};
	else
	
		if (math.abs(t - ${check_delay}) < 1E-3) then
			if( ${open_delay} <= ${check_delay} ) then
				outputs.check_obj(true);
				outports.open(true);
				return -1;
			end
			outputs.check_obj(true);
			return ${open_delay} - t
		end
		
		if (math.abs(t - ${open_delay}) < 1E-3) then
			outports.open(true);
			return -1;
		end
	end
end