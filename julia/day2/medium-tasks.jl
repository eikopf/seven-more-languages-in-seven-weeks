using Distributed
addprocs(8)

function dfac(n::Int64)
@distributed (*) for i = 1:n 
	i
end
end

@time dfac(2000)
println(dfac(7))
