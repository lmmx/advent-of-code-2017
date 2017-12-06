using Base.Test

include("1.jl")

@test spiral(1) == 0
@test spiral(2) == spiral(9) == 1
@test spiral(10) == spiral(25) == 2
@test spiral(26) == spiral(49) == 3
@test spiral(50) == spiral(81) == 4

# @test coord(1) == [0.0]
@test coord(12) == [2,1]
@test coord(23) == [0,-2]
@test coord(1024) == [-15,16]

@test solve("12") ==  3
@test solve("23") == 2
@test solve("1024") == 31
