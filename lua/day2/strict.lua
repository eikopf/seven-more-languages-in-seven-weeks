-- these functions cause runtime errors on bad reads and writes

local _private = {}

function strict_read(table, key)
	if _private[key] then
		return _private[key]
	else
		error("invalid key: " .. key)
	end
end

function strict_write(table, key, value)
	if _private[key] then
		error("duplicate key: " .. key)
	else
		_private[key] = value
	end
end

local mt = {
	__index = strict_read,
	__newindex = strict_write,
}

treasure = {}
setmetatable(treasure, mt)
