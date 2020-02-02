# https://atcoder.jp/contests/abc126/submissions/9500529
{
    n = $1
    k = $2
    ans = 0
    for (i = 1; i <= n; ++i) {
        p = 1.0 / n
        x = i
        while (x < k) {
            p /= 2
            x *= 2
        }
        ans += p
    }
    printf "%.10f", ans
}
