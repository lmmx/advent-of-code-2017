using Base.Test

include("2.jl")

@test solve("5\t9\t2\t8\n9\t4\t7\t3\n3\t8\t6\t5") == 9
