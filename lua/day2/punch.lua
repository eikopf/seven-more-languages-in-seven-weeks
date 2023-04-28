scheduler = require "scheduler"

-- turns out that the behaviour of coroutine.yield has changed since 2013
-- it won't work properly in iterators, so these functions are altered compared to
-- the original text

function punch()
	print("punch 1")
	coroutine.yield(1)
	print("punch 2")
	coroutine.yield(1)
	print("punch 3")
	coroutine.yield(1)
	print("punch 4")
	coroutine.yield(1)
	print("punch 5")
	coroutine.yield(1)
end

function block()
	print("block 1")
	coroutine.yield(2)
	print("block 2")
	coroutine.yield(2)
	print("block 3")
	coroutine.yield(2)
end

scheduler.schedule(0, coroutine.create(punch))
scheduler.schedule(0, coroutine.create(block))

scheduler.run()
