include("../../util/aoc.jl")
using AoC
import DataStructures: OrderedDict, merge

"""
each successive spiral adds (n+2)^2-(n^2)
s. t. the zeroth spiral (n=0) just adds 1
       the first spiral (n=1) adds 9-1 = 8
      the second spiral (n=2) adds 25-9 = 16
       the third spiral (n=3) adds 49-25 = 24
Note that (after n=0), under this 1-based numbering:
- the minimum location in the spiral is (2n-1)^2 + 1
- the maximum location in the spiral is (2n+1)^2
So sqrt can be used to find the spiral of a location
n: 0 => min.  1, max. 1   (1^2)
n: 1 => min.  2, max. 9   (3^2)
n: 2 => min. 10, max. 25  (5^2)
n: 3 => min. 26, max. 49  (7^2)
n: 4 => min. 50, max. 81  (9^2)
...
Convert locations to 0-based by firstly decrementing 1,
s.t. [square root]->[floor]->[decrement if even] gives n,
i.e. the spiral a given number is in, like so:
"""
function spiral(loc::Int)
    s = sqrt(loc-1) |> floor |> Int
    if s % 2 == 0
        s -= 1
    end
    s = (s+1)/2 |> Int
    return s
end

"""
Generate coordinates for a given spiral from square geometry: calculated by segmenting
the total location range of the spiral into right/top/left/bottom ranges.

Segment perimeter (right/left a/descending) in disjoint sets of `m-1` locations
i.e. to assign these coordinates to locations, simply count through from either
`loc_min` (incrementing) or `loc_max` (decrementing). Since `loc_max` is the square
I'll count down from it then reverse upon returning so to match the spiral direction
N.B. this situation would switch if we used 0-based numbering, however it would
mean this function didn't work with actual location numbers, which I want to avoid.
Zip a coordinate series decrementing from (`n`,`-n`) [the max. coordinate] then reverse.
  - locations as keys: most decremented first (i.e. last location at end of array)
  - coordinates as values: most in/decremented first (i.e. corner coord. at end)
"""
function perimeter(n::Int)
    n > 0 || return OrderedDict([1,[0,0]])
    m = 2n + 1 # width/height of the spiral [square] indexed by n
    loc_max = m^2 # loc_min = (2n-1)^2 + 1
    ra = [[m^2-(y+3m-3), [n,n-y]] for y in (m-2):-1:0]
    la = [[m^2-(y+2m-2), [y-n,n]] for y in (m-2):-1:0]
    ld = [[m^2-(y+m-1), [-n,y-n]] for y in (m-2):-1:0]
    rd = [[m^2-y, [n-y,-n]] for y in (m-2):-1:0]
    return OrderedDict(vcat(ra,la,ld,rd))
end

"""
Give matrix coordinates for a given location.
"""
function coord(loc::Int)
    cds = spiral(loc) |> perimeter
    return cds[loc]
end

"""
Compute Manhattan distance (L1 norm).
"""
function mdist(p::Array{Int,1}, q::Array{Int,1})
    md = norm(p-q,1) |> Int
    return md
end

function solve(loc::String)
    # firstly, determine what spiral a given location is in
    o = [0,0]
    c = parse(Int64, loc) |> coord
    d = mdist(o, c)
    return d
end


"""
Enumerate all coordinates up to a given spiral ('walk' to spiral `n`).
"""
function walk(n)
    cds = OrderedDict(1 => [0,0])
    n > 0 || return cds
    for i in 1:n
        cds = merge(cds, perimeter(i))
    end
    return cds
end

solution = solve(@aoc_in)
open("output-1.txt", "w") do f
    write(f, string(solution) * "\n")
end
