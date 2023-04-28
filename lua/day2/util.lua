-- chapter components
function print_table(t)
	for key, value in pairs(t) do
	      print(key .. ": " .. value)
	end
end

function table_to_string(t)
	local result = {}

	for key, value in pairs(t) do
		result[#result+1] = key .. ": " .. value
	end

	return table.concat(result, "\n")
end
