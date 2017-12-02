using Base.Test

include("1.jl")

@test solve("5\t1\t9\t5\n7\t5\t3\n2\t4\t6\t8") == 18
