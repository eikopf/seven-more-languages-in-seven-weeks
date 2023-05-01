using LinearAlgebra

# in R^2
# R(theta) = [cos(theta) -sin(theta); sin(theta) cos(theta)]

# in R^3
# R_x(theta) = [1 0 0; 0 cos(theta) -sin(theta); 0 sin(theta) cos(theta)]

# Cayley-Klein quaternion parameterisation for R^3
function R_ck(a, b, c, d) 
@assert sqrt(a^2 + b^2 + c^2 + d^2) == 1 "Quaternion must be have unit length"
return [(a^2 + b^2 - c^2 - d^2) 2(bc - ad) 2(ac + bd);
	2(ad + bc) (a^2 - b^2 + c^2 - d^2) 2(cd - ab);
	2(bd - ac) 2(ab + cd) (a^2 - b^2 - c^2 + d^2)]
end
