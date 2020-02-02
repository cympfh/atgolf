# https://atcoder.jp/contests/abc037/submissions/9642164
NR == 1 {
    n = $1
    q = $2
}
NR > 1 {
    for (i=$1; i<=$2; ++i) a[i] = $3
}
END {
    for (i=1; i<=n; ++i) {
        print +a[i]
    }
}
