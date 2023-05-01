using LinearAlgebra

# easy tasks
println(typeof(Symbol))
println(typeof(Int64))
println(typeof(+)) # why does this just print the call itself?

map::Dict{Symbol, Float64} = Dict(:a => 0.32, :b => 3.141592, :c => 36)
println(map)
# map[:thisis] = :notanumber # this call would fail because of mismatched types

magic() = [ones((5, 5)) * i for i=1:5]
println(magic())

Q = ones(Int64, (4, 4))
println(Q)
println(sin(Q))
println(cos(Q))
