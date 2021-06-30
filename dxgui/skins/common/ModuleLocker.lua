module('ModuleLocker', package.seeall)

function lock(module)
  local metatableLockValue = 'module metatable locked!'
  
  -- ���� ������ ��� �������, �� ������ �� ������
  if getmetatable(module) == metatableLockValue then
    return
  end
  
  -- ���� � ������, ������� �������� �� ����
  local tablesToIgnore = {
    _NAME = true,
    _PACKAGE = true,
    _M = true,
  }
  
  local t = {}
  
  for k, v in pairs(module) do
    if not tablesToIgnore[k] then
      t[k] = v
      rawset(module, k, nil);
      
      if 'table' == type(v) then
        lock(v)
      end
    end
  end
  
  -- ��������� ��� ������ �� ������ � ����������� �������
  rawset(module, 'lockedData_', t);
  
  local meta = {}

  meta.__newindex = function (t, k, v)
    error("access denied!")
  end

  meta.__index = function (t, k)
    -- ������� ������ �� �������� ��������
    return rawget(t.lockedData_, k)
  end

  -- ����� ����������� - �� ����� �� ������ ��������!
  meta.__metatable = metatableLockValue

  setmetatable(module, meta)
end

function setValue(module, key, value)
  module.lockedData_[key] = value
end

function getKeys(module)
  local result = {}
  local data
  
  if module.lockedData_ then
    data = module.lockedData_
  else
    data = module
  end  
  
  for k, v in pairs(data) do
    table.insert(result, k)
  end
  
  return result
end
