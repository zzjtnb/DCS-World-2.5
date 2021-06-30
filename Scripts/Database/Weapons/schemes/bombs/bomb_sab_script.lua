function init()
	count = 0;
end


function getBasis(w, x, y, z, axis)
    local wx, wy, wz, xx, yy, yz, xy, xz, zz, x2, y2, z2;
	x2 = x + x;
	y2 = y + y;
	z2 = z + z;
	xx = x * x2;   xy = x * y2;   xz = x * z2;
	yy = y * y2;   yz = y * z2;   zz = z * z2;
	wx = w * x2;   wy = w * y2;   wz = w * z2;

	if( axis == 0 ) then
        return 1.0 - (yy + zz), xy + wz, xz - wy;
    end
	
	if( axis == 1 ) then
		return xy - wz, 1.0 - (xx + zz), yz + wx;
    end
	
	if( axis == 2 ) then
		return xz + wy, yz - wx, 1.0 - (xx + yy);
	end    
end

function run(t)
	if t == 0 then
		outputs.check_obj(false);
		
		return ${check_delay};
	else
		if (math.abs(t - ${check_delay}) < 1E-3) then
			outputs.check_obj(true);
			return ${open_delay} - t
		end
		
		if t >= ${open_delay} - 1E-3 then
            local qw, qx, qy, qz = inputs.rot();
            local x, y, z        = inputs.pos();
            local xx, xy, xz     = getBasis(qw, qx, qy, qz, 0);
            local yx, yy, yz     = getBasis(qw, qx, qy, qz, 1);
            
            x = x - yx*0.15 - xx*0.3;
            y = y - yy*0.15 - xy*0.3;
            z = z - yz*0.15 - xz*0.3;
            
            outputs.pos(x, y, z);
        
			outports.open(true);
            count = count + 1;
            
            if (count < ${items_count}) then
                return ${open_interval};
            else
                return -1;
            end
		end
	end
end