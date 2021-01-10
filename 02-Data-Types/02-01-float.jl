include("../utils/format/Heading.jl")


# float32/64
float_64= 1e-2
float_32= 1f-2
println(typeof(float_64), " ", typeof(float_32))
#: Float64 Float32


# underscore as digit separator
println(100_000, " ", 0.00_00_5)
#: 100000 5.0e-5


# flotiing point has two zeros - positive and negative
# both are `=` same but `bitstring` different 
println(0.0 == -0.0)
#: true
println(bitstring(0.0) == bitstring(-0.0))
#: false


Heading.main("Special floating point values")


println(-5/0)
println(-5/Inf)
#: -Inf
#: -0.0


println(Inf+500)
#: Inf


# as Inf+x (or) Inf-x (or) Inf + Inf all equal to Inf
# Information is lost. So, Inf - Inf cannot be exactly 0 
println(Inf - Inf)
#: NaN 



# epsilon: distance between 1.0 and the next larger 
# representable floating-point value i.e smallest distance 
# possible from 1.0
println(eps(Float16))
println(eps(Float32))
println(eps(Float64))
println(eps()) # same as 64
#: 0.000977
#: 1.1920929e-7
#: 2.220446049250313e-16
#: 2.220446049250313e-16


println(typemax(BigFloat))
#: Inf