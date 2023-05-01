using LinearAlgebra

# medium tasks
Q = [9 3 4; 7 4 1; 3 2 -4 ]
println(Q * inv(Q))

d1::Dict{Symbol, Rational} = Dict(:hello => 1, :world => 3//2)
d2::Dict{Symbol, Complex{Float64}} = Dict(:a => 0.34 + 0.7im, :b => 21 + 3.2im)

println(d1)
println(d2)
println(merge(d1, d2))
