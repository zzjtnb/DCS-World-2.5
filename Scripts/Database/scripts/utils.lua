-- utility functions
copy_recursive = function(child, parent)
    local k,v
    for k,v in pairs(parent) do
        if type(v)=="table" then
            if not child[k] then child[k]={} end
            copy_recursive(child[k], parent[k])
        else
            child[k] = parent[k]
        end
    end
end

copy_recursive_with_metatables = function(child, parent, max_level, level)
	level = level or 1
    local k,v
    for k,v in pairs(parent) do
        if type(v)=="table" and (max_level == nil or level < max_level) then
            if not child[k] then child[k]={} end
            setmetatable(child[k], getmetatable(parent[k]));
            copy_recursive_with_metatables(child[k], parent[k], max_level, level+1)
        else
            child[k] = parent[k]
        end
    end
end

-- utility functions
set_recursive_metatable = function(child, parent) -- by D.Baikov
    local k,v
    for k,v in pairs(parent) do
        if type(v)=="table" then
            if not child[k] then child[k]={} end
            set_recursive_metatable(child[k], parent[k])
        end
    end
    setmetatable(child, {__index=parent})
end

add_launcher = function(_ws, _lnchr)
	_ws.LN = _ws.LN or {};
	local _nextN = table.maxn(_ws.LN)+1;
	_ws.LN[_nextN] = {};
	local _ln = _ws.LN[_nextN];
	if(_lnchr) then
		set_recursive_metatable(_ln, _lnchr);
	end;
	return _ln;
end;