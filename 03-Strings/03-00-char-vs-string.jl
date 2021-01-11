include("../utils/format/Heading.jl")


Heading.main("char")
a_char = 'a'
println(typeof(a_char))
#: Char

Heading.sub("\nconversion between Int and Char")
print(Int(a_char))


Heading.main("Stirng")
a_string = "a"
println(typeof(a_string))
#: String