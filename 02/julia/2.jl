include("../../util/aoc.jl")
using AoC

function quotient_check(a)
    # check each numeral only against smaller numerals
    # i.e. let x = dividend, n = divisor, for all n < x
    qs = []
    for x in a
        vs = [n for n in setdiff(a, [x]) if n < x]
        q = [round(Int64, x/d) for d in vs if x % d == 0]
        append!(qs, q)
    end
    return length(qs) > 0 ? sum(qs) : 0
end

function check_row(row)
    v = split(row, "\t")
    v = map(x->parse(Int64,x), v)
    q = quotient_check(v)
    return q
end

function solve(table)
    h = map(check_row, split(table, "\n"))
    return sum(h)
end

solution = solve(@aoc_in)
open("output-2.txt", "w") do f
    write(f, string(solution) * "\n")
end
