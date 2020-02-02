# https://atcoder.jp/contests/abc103/submissions/9496038
function abs(x) { return x < 0 ? -x : x }
function min(x, y) { return x < y ? x : y }
{
    print min(abs($1 - $2) + abs($2 - $3), min(abs($1 - $3) + abs($3 - $2), abs($2 - $1) + abs($1 - $3)))
}
