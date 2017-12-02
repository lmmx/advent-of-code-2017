include("../../util/aoc.jl")
using AoC

function solve(seq)
    # since seq is circular each match is both forward & back
    # i.e. rather than appending, simply count matches twice
    # split seq into two, find zero-elements in vec difference
    l = Int64(length(seq)/2)
    a = split(SubString(seq,1,l),"")
    b = split(SubString(seq,l+1),"")
    m = map(x->parse(Int64,x), a[find(a .== b)])
    return sum(2m)
end

solution = solve(@aoc_in)
open("output-2.txt", "w") do f
    write(f, string(solution) * "\n")
end
