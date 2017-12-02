# advent-of-code-2017

Advent of Code 2017! :star2:

- puzzle web pages are downloaded, cleaned and converted to `README.md` files so that they'll display in each of the day directories on GitHub
  - N.B. input and the second part of each day's puzzle are not available without server auth, so just copy over the second part's HTML via the browser inspector
- puzzle inputs (shared between the day's puzzle sections) are named `input.txt`,
  - script files to solve the 2 puzzles are named `1.jl`/`2.jl`
  - test files to verify the scripts work are named `test-1.jl`/`test-2.jl`
- shared functions are exported in an `AoC` module under `util`
- the `templates` directory is used to save rewriting the same format each day
  - these are set up in the day's directory when `download-puzzle.sh` is executed

Happy holidays all :-)
