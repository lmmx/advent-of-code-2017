include("../../util/aoc.jl")
using AoC

function solve(seq)
    # ...
    return
end

solution = solve(@aoc_in)
open("output-2.txt", "w") do f
    write(f, string(solution) * "\n")
end
