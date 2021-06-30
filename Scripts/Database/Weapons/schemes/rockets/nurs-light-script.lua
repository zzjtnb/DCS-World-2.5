function init()
end

function run(t)
	if t == 0 then
        return ${delay}
	else
        outports.fire(true)
    
        return -1;
	end
end