macro aoc_in()
    return :(open(joinpath(dirname(Base.source_path()), "../input.txt")) do f; chomp(readstring(f)) end)
end
