# https://atcoder.jp/contests/abc054/submissions/9533176
NR == 1 {
    n = $1
    m = $2
}
NR > 1 && NR <= n + 1 {
    a[NR - 1] = $0
}
NR > n + 1 {
    b[NR - n - 1] = $0
}
END {
    for (i = 0; i <= n - m; ++i) {
        for (j = 0; j <= n - m; ++j) {

            ok = 1
            for (k = 1; k <= m; ++k) {
                for (l = 1; l <= m; ++l) {
                    substr(a[i+k], j+l, 1) != substr(b[k], l, 1) && ok = 0
                }
            }
            if (ok) {
                print "Yes"
                exit
            }

        }
    }
    print "No"
}
