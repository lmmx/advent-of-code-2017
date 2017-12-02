using Base.Test

include("2.jl")

@test solve("1212") == 6
@test solve("1221") == 0
@test solve("123425") == 4
@test solve("123123") == 12
@test solve("12131415") == 4
