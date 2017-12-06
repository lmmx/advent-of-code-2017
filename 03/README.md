[Advent of Code](/) {.title-global}
===================

-   [[About]](/2017/about)
-   [[AoC++]](/2017/support)
-   [[Events]](/2017/events)
-   [[Log In]](/2017/auth/login)

       λy.[2017](/2017) {.title-event}
=======================

-   [[Calendar]](/2017)
-   [[Leaderboard]](/2017/leaderboard)
-   [[Stats]](/2017/stats)
-   [[Sponsors]](/2017/sponsors)

Our [sponsors](/2017/sponsors) help make Advent of Code possible:

[Kx Systems](http://kx.com/) - kdb+, the in-memory time series
technology standard

--- Day 3: Spiral Memory ---
----------------------------

You come across an experimental new kind of memory stored on an infinite
two-dimensional grid.

Each square on the grid is allocated in a spiral pattern starting at a
location marked `1` and then counting up while spiraling outward. For
example, the first few squares are allocated like this:

    17  16  15  14  13
    18   5   4   3  12
    19   6   1   2  11
    20   7   8   9  10
    21  22  23---> ...

While this is very space-efficient (no squares are skipped), requested
data must be carried back to square `1` (the location of the only access
port for this memory system) by programs that can only move up, down,
left, or right. They always take the shortest path: the [Manhattan
Distance](https://en.wikipedia.org/wiki/Taxicab_geometry) between the
location of the data and square `1`.

For example:

-   Data from square `1` is carried `0` steps, since it's at the access
    port.
-   Data from square `12` is carried `3` steps, such as: down, left,
    left.
-   Data from square `23` is carried only `2` steps: up twice.
-   Data from square `1024` must be carried `31` steps.

*How many steps* are required to carry the data from the square
identified in your puzzle input all the way to the access port?

To play, please identify yourself via one of these services:

[[GitHub]](/auth/github) [[Google]](/auth/google)
[[Twitter]](/auth/twitter) [[Reddit]](/auth/reddit)

(Twitter users: if you have auth problems that claim "There is no
request token for this page", please clear your twitter.com cookies and
try again.)
