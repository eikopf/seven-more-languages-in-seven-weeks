function fibonacci()
	local m, n = 1, 1

	while true do
		coroutine.yield(m)
		m, n = n, m + n
	end
end

fib_generator = coroutine.create(fibonacci)
