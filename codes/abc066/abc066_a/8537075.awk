# https://atcoder.jp/contests/abc066/submissions/8537075
{
    a = $1
    b = $2
    c = $3
    mx = a > b ? (a > c ? a : c) : (b > c ? b : c)
    print a + b + c - mx
}
