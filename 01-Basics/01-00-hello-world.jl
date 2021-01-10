# a. prints in singe line
print("This ")
print("is ")
print("sinle ")
print("line .\n\n")
#: This is sinle line .


# b. prints in multiple line
println("This ")
println("is ")
println("multiple ")
println("lines .\n\n")
#: This 
#: is 
#: multiple 
#: lines .


# c. args
for iarg in ARGS
    println(iarg, " " ,typeof(iarg))
end  
print("\n\n")
#: > julia file.jl 1 2 3 a
#: 1 String
#: 2 String
#: 3 String
#: a String

