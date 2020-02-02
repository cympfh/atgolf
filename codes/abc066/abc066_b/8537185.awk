# https://atcoder.jp/contests/abc066/submissions/8537185
function good(s) {
    n = length(s)
    if (n % 2 == 1) return 0
    return substr(s, 1, n/2) == substr(s, n/2+1, n)
}
{
    s = $1
    m = length(s)
    for (k = m - 1; k > 0; --k) {
        t = substr(s, 1, k)
        if (good(t)) {
            print k
            break
        }
    }
}
