include("../utils/format/Heading.jl")


Heading.main("Constants")
Heading.sub("Note: Cannot redefine a built-in constant or function already in use")


# print(pi) 
#! Uncomment the line above, pi will be referenced i.e will
#! be "in use". As a result, the below lines will get error!
#! ERROR: LoadError: cannot assign a value to variable MathConstants.pi from module Main


pi = 0
println(pi) 
#: 0 


pi = 3.14
println(pi)
#: 3.14

