# https://atcoder.jp/contests/abc070/submissions/8536813
function min(x, y) { return x < y ? x : y }
function max(x, y) { return x > y ? x : y }
{
    begin = max($1, $3)
    end = min($2, $4)
    print max(0, end - begin)
}
