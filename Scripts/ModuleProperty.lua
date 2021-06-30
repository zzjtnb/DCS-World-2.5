local TableUtils	= require('TableUtils')

local function makeClonable(M)
	local cloneInfos = {}
	
	M.clone = function(self)
		local result = {}
		
		setmetatable(result, {__index = M})
		
		for i, cloneInfo in ipairs(cloneInfos) do
			-- фактически делаем result:set(self:get())			
			result[cloneInfo.setter](result, self[cloneInfo.getter](self))
		end
		
		return result
	end
	
	M.cloneInfos_ = cloneInfos
end

local function cloneField(M, setterName, getterName)
	if M.cloneInfos_ then
		table.insert(M.cloneInfos_, {setter = setterName, getter = getterName})
	end
end

local function cloneBase(M, baseModule)
	if baseModule.cloneInfos_ then
		for i, cloneInfo in ipairs(baseModule.cloneInfos_) do
			table.insert(M.cloneInfos_, cloneInfo)
		end
	end
end

local function setFieldName(self, fieldName, value)
	if type(value) == 'table' then
		self[fieldName] = TableUtils.copyTable(nil, value)
	else
		self[fieldName] = value
	end
end

local function getFieldName(self, fieldName)
	local result = self[fieldName]
	
	if type(result) == 'table' then
		return TableUtils.copyTable(nil, result)
	else
		return result
	end
end

local function make1arg(M, setterName, getterName, fieldName)
	if setterName then
		M[setterName] = function(self, value)
			setFieldName(self, fieldName, value)
		end
	end

	if getterName then
		M[getterName] = function(self)
			return getFieldName(self, fieldName)
		end
	end
	
	cloneField(M, setterName, getterName)
end

local function make2arg(M, setterName, getterName, fieldName1, fieldName2)
	if setterName then
		M[setterName] = function(self, value1, value2)
			setFieldName(self, fieldName1, value1)
			setFieldName(self, fieldName2, value2)
		end
	end

	if getterName then
		M[getterName] = function(self)
			return getFieldName(self, fieldName1), getFieldName(self, fieldName2)
		end
	end
	
	cloneField(M, setterName, getterName)
end

local function make4arg(M, setterName, getterName, fieldName1, fieldName2, fieldName3, fieldName4)
	if setterName then
		M[setterName] = function(self, value1, value2, value3, value4)
			setFieldName(self, fieldName1, value1)
			setFieldName(self, fieldName2, value2)
			setFieldName(self, fieldName3, value3)
			setFieldName(self, fieldName4, value4)
		end
	end

	if getterName then
		M[getterName] = function(self)
			return 	getFieldName(self, fieldName1), 
					getFieldName(self, fieldName2),
					getFieldName(self, fieldName3), 
					getFieldName(self, fieldName4)
		end
	end
	
	cloneField(M, setterName, getterName)
end

local function cloneMember(M, fieldName)
	local setterName = '$cloneSet' .. fieldName .. '$'
	local getterName = '$cloneGet' .. fieldName .. '$'
	
	make1arg(M, setterName, getterName, fieldName)
end

return {	
	makeClonable	= makeClonable,
	cloneBase		= cloneBase,
	cloneMember		= cloneMember,
	make1arg		= make1arg,
	make2arg		= make2arg,
	make4arg		= make4arg,
}