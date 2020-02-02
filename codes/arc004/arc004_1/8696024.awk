# https://atcoder.jp/contests/arc004/submissions/8696024
NR > 1 {
    x[NR-1] = $1
    y[NR-1] = $2
}
END {
    a = 0
    for (i = 1; i < NR; ++i) {
        for (j = i + 1; j < NR; ++j) {
            d = (x[i] - x[j]) * (x[i] - x[j]) + (y[i] - y[j]) * (y[i] - y[j])
            if (d > a) a = d
        }
    }
    printf "%.9f", sqrt(a)
}
