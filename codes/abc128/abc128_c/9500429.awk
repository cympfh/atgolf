# https://atcoder.jp/contests/abc128/submissions/9500429
function tobin(x, n) {
    s = ""
    for (i = 0; i < n; ++i) {
        s = (x % 2) s
        x = int(x / 2)
    }
    return s
}
NR == 1 {
    n = $1
    m = $2
}
NR > 1 && NR <= m + 1 {
    for (i=2; i<=$1 + 1; ++i) {
        sw[(NR-1) ";" $i] = 1
    }
}
NR > m + 1 {
    split($0, p)

    for (I=0; I < (2 ^ n); ++I) {
        ok = 1
        iset = tobin(I, n)
        # print "[" iset "]"
        for (j = 1; j <= m; ++j) {
            status = p[j]
            for (i=1; i <= n; ++i) {
                if (sw[j ";" i] && substr(iset, i, 1) == "1") {
                    status++
                }
            }
            if (status % 2 == 1) ok = 0
        }
        if (ok) ++ans;
    }

    print+ans
}
