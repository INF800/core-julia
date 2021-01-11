include("../utils/format/Heading.jl")


# Slicing
s = "Hello world"


println(s[begin], " ", s[end])
#: H d


# creates view instead of copy (efficient)
println(SubString(s, 3, 7))
#: llo w


println("""quotes "inside" quotes""")
#: quotes "inside" quotes


