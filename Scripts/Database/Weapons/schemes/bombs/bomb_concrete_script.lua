function init()
	count = 0;
end


function run(t)
	if t == 0 then
		outputs.check_obj(false);
		outputs.par_open(false);
		
		return math.min(${delay_check}, ${delay_par});
	else
	
		if (math.abs(t - ${delay_check}) < 1E-3) then
			outputs.check_obj(true);
			count = count+1;
		end
		
		if (math.abs(t - ${delay_par}) < 1E-3) then
			outputs.par_open(true);
			count = count+1;
		end
		
		if (math.abs(t - ${delay_eng}) < 1E-3) then
			outputs.par_open(false);
			outports.eng_on(true);
			return -1;
		end
		
		if (count == 1) then
			return math.max(${delay_check}, ${delay_par})-t;
		end
	
		return ${delay_eng} - t;
	end
end