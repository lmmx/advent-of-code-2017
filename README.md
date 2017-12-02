# advent-of-code-2017

Advent of Code 2017! :star2:

- puzzle web pages are downloaded, cleaned and converted to `README.md` files so that they'll display in each of the day directories on GitHub
- puzzle inputs that are shared between puzzle sections are named `input.txt`,
  - if specific to one section, they are named `input-1.txt`/`input-2.txt`
  - script files, likewise, are named `1.jl`/`2.jl`
  - test files, likewise, are named `test-1.jl`/`test-2.jl`
- shared functions are exported in an `AoC` module under `util`
- templates (to save the effort of rewriting the same format each day) are under `templates`
  - these are set up in the day's directory when `download-puzzle.sh` is executed

Happy holidays all :-)
