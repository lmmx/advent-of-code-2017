include("../../util/aoc.jl")
using AoC

function check_row(row)
    v = split(row, "\t")
    v = map(x->parse(Int64,x), v)
    return (maximum(v) - minimum(v))
end

function solve(table)
    h = map(check_row, split(table, "\n"))
    return sum(h)
end

solution = solve(@aoc_in)
open("output-1.txt", "w") do f
    write(f, string(solution) * "\n")
end
