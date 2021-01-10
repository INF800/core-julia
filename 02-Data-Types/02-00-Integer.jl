include("../utils/format/Heading.jl")

Heading.main("Default type")
Heading.sub("type for an integer literal depends on whether the target system is 32/64 bit")


println(Sys.WORD_SIZE)
#: 64


println(typeof(1))
#: Int64


# explicitly give make 32
println(typeof(Int32(1)))
#: Int32


# unsigned UInt is given by hex. 
# size of UInt increases with num of hex
println(typeof(UInt(1)))
println(typeof(0x1)) # small => UInt8
println(typeof(0x0123456789abcdef)) # big => UInt64
#: UInt64
#: UInt8 
#: UInt64


Heading.main("All types with ranges")
rpadval = 50
for T in [Int8, Int16, Int32, Int64, Int128, UInt8, UInt16, UInt32, UInt64, UInt128]
    println("$(T)\t:\t\t $(rpad(typemin(T), rpadval)) $(typemax(T))")
end
#: Int8    :                -128                                               127
#: Int16   :                -32768                                             32767
#: Int32   :                -2147483648                                        2147483647
#: Int64   :                -9223372036854775808                               9223372036854775807
#: Int128  :                -170141183460469231731687303715884105728           170141183460469231731687303715884105727
#: UInt8   :                0                                                  255
#: UInt16  :                0                                                  65535
#: UInt32  :                0                                                  4294967295
#: UInt64  :                0                                                  18446744073709551615
#: UInt128 :                0                                                  340282366920938463463374607431768211455


Heading.main("Modular arithematic overflow")
max_int8 = typemax(Int8)
a = Int8(max_int8) + Int8(1)
print(a == typemin(Int8))
#: true


# Note: Int8 + Int64 => Int64
a = Int8(max_int8) + 1 # type of `1` is `Sys.WORD_SIZE` i.e 64
print(typeof(a))
#: Int64


Heading.main("Solution to Overflow")
Heading.sub("In logics where overflow is possible, do not use Int!!!! Use BigInt")
# BigInt is arbitary precision used as `big`


println(typemax(Int64))
#: 9223372036854775807


println(10^19)
#! -8446744073709551616 (wrong)


println(big(10)^20)
#: 100000000000000000000