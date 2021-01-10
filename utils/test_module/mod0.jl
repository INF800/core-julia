# a. accessible with just -
# include("../utils/format/heading.jl")
function canBeImportedBySimpleInclude()
    print("hola! I am available by simple `include(mylocation)` \n\n")
end


# b. accessible by 
# SpecificMod.specificFuction()
module SpecificModule
    function specificFuction()
        println("Ima specific func!\n\n")
    end

    specific_var = 007
end