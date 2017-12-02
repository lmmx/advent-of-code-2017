using Base.Test

include("1.jl")

@test solve("1122") == 3
@test solve("1111") == 4
@test solve("1234") == 0
@test solve("91212129") == 9
