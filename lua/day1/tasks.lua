-- easy tasks
local function ends_in_3(num)
	return string.sub(tostring(num), -1) == "3"
end

print("ends_in_3 tests")
print("333: " .. tostring(ends_in_3(333)))
print("400: " .. tostring(ends_in_3(400)))
print("3: " .. tostring(ends_in_3(3)))
print("400706: " .. tostring(ends_in_3(400706)))
print("")

local function is_prime(num)
	for i = 2, num-1 do
		if num % i == 0 then
			return false
		end
	end
	return true
end

print("is_prime tests")
print("7: " .. tostring(is_prime(7)))
print("8: " .. tostring(is_prime(8)))
print("2000: " .. tostring(is_prime(2000)))
print("2: " .. tostring(is_prime(2)))
print("")

local function print_primes_ending_in_3(num)
	for i = 2, num do
		if ends_in_3(i) then
			print(i)
		end
	end
end

print("print_primes_ending_in_3 tests")
print_primes_ending_in_3(80)
print("")

-- medium tasks
local function for_loop(a, b, f)
	local i = a
	while true do
		if i == b + 1 then
			break
		else
			f(i)
			i = i + 1
		end
	end
end

print("for_loop tests")
for_loop(20, 30, print)
print("")

-- hard tasks
local function reduce(max, init, f)
	local aggregator = init
	for i = init + 1, max do
		aggregator = f(aggregator, i)
	end

	return aggregator
end

print("reduce tests")
print("triangular 10: " .. reduce(10, 1, function(a, b) return a + b end))
print("concat 10: " .. reduce(10, 1, function(a, b) return a .. b end))
print("")

local function factorial(n)
	return reduce(n, 1, function(a, b) return a * b end)
end

print("factorial tests")
print("4: " .. factorial(4))
print("7: " .. factorial(7))
