# https://atcoder.jp/contests/abc103/submissions/9496080
BEGIN {
    FS = RS
    RS = "@"
}
{
    n = length($1)
    ans = "No"
    for (i = 0; i < n; ++i) {
        t = substr($1, i + 1, n - i) substr($1, 1, i)
        if (t == $2) {
            ans = "Yes"
            break
        }
    }
    print ans
}
