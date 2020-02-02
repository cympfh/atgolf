# https://atcoder.jp/contests/abc067/submissions/8537040
NR == 1 {
    n = $1
    k = $2
}
NR == 2 {
    for (i=1; i<=n; ++i) a[i-1]=$i
    for (i=0; i<n; ++i) {
        for (j=0; j<n-1; ++j) {
            if (a[j] < a[j+1]) {
                tmp = a[j]
                a[j] = a[j+1]
                a[j+1] = tmp
            }
        }
    }
    for (i=0; i<k; ++i) ans += a[i]
    print ans
}
