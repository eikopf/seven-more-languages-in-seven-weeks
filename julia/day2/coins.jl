# we can write a function to flip some number of coins, and count the heads
function flip(coins)
	count = 0
	for i = 1:coins
		count += Int(rand(Bool))
	end
	return count
end

println("timing 1000000000 trials of non-parallel flips")
@time flip(1000000000)

# but that's slow
# we can parallelize this process like so

using Distributed
addprocs(8) # add worker processes
function dflip(coins)
@distributed (+) for i = 1:coins
Int(rand(Bool))
end
end

println("timing 1000000000 trials of parallel flips with 8 workers")
@time dflip(1000000000)
