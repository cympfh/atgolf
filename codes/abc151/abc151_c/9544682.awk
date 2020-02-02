# https://atcoder.jp/contests/abc151/submissions/9544682
NR == 1 {
    n = $1
    for (i = 1; i <= n; ++i) {
        ac[i] = 0
        pana[i] = 0
    }
}
NR > 1 {
    if ($2 == "AC") {
        ac[$1] = 1
    } else {
        if (ac[$1] != 1) pena[$1]++
    }
}
END {
    m = 0
    ans = 0
    for (i = 1; i <= n; ++i) {
        if (ac[i] == 1) {
            m++
            ans += pena[i]
        }
    }
    print m, ans
}
