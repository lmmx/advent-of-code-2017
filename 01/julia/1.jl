include("../../util/aoc.jl")
using AoC
using RLEVectors

function solve(seq)
    # append start character to treat seq circularly
    seq *= SubString(seq,1,1)
    # split seq into run-length encoded vectors
    rlev = RLEVector(split(seq,""))
    # [could split into bigrams but RLE is simpler]
    # value * (n-1) for all RLEVec of length n, n>1
    v = map(x->parse(Int64,x), values(rlev))
    w = widths(rlev) - 1
    return sum(v .* w)
end

solution = solve(@aoc_in)
open("output-1.txt", "w") do f
    write(f, string(solution) * "\n")
end
