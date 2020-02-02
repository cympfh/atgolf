# https://atcoder.jp/contests/abc098/submissions/9496818
c++{
    s = $1
    n = length(s)
    for (i = 1; i <= n; ++i) {
        a[substr(s, i, 1)]++
    }
    ans = 0
    ac = 0
    for (i = 1; i <= n; ++i) {
        c = substr(s, i, 1)
        b[c]++
        a[c]--
        if (b[c] == 1 && a[c] > 0) {
            ac++
        }
        if (b[c] > 1 && a[c] == 0) {
            ac--
        }
        ac > ans && ans = ac
    }
    print ans
}
