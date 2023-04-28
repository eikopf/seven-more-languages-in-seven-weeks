-- easy tasks

local function concatenate(a1, a2)
	local result = { table.unpack(a1) }
	for k,v in pairs(a2) do
		result[k+#a1] = v
	end

	return result
end

print("concatenate tests")
a1 = {
	"one", 
	"two",
	"three", 
}

a2 = {
	"four",
	"five",
	"six",
}
print("a1: ")
for k, v in pairs(a1) do print(k .. ": " .. v) end print("")

print("a2: ")
for k, v in pairs(a2) do print(k .. ": " .. v) end print("")

print("a1 + a2: ")
for k, v in pairs(concatenate(a1, a2)) do print(k .. ": " .. v) end print("")

local _private = {}

local function strict_read(table, key)
	if _private[key] then
		return _private[key]
	else
		error("bad key: read")
	end
end

local function strict_write(table, key, value)
	if _private[key] then
		if value then
			error("bad key: write")
		else
			_private[key] = nil
		end
	else
		_private[key] = value
	end
end

strict_mt = {
	__index = strict_read,
	__newindex = strict_write,
}

guy = {}
setmetatable(guy, strict_mt)

guy.name = "oliver"
guy.surname = "wooding"
guy.age = 19

-- medium tasks

