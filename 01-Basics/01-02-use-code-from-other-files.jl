# Note: the path is IRRELEVANT OF cur working dir
include("../utils/test_module/mod0.jl")

# a. access available by simple `include`
canBeImportedBySimpleInclude()
#: hola! I am available by simple `include(mylocation)`


# b. not accessible by simple `include`
# specificFuction()
#: ERROR: LoadError: UndefVarError: specificFuction not defined


# c. access the not accessible
SpecificModule.specificFuction()
#: Ima specific func!


# d. access not accessible var
println(SpecificModule.specific_var)
#: 007