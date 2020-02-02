# https://atcoder.jp/contests/abc003/submissions/8562026
NR == 1 {
    N = $1
    K = $2
}
NR == 2 {
    for (i = 1; i <= N; ++i) {
        for (j = 1; j < N; ++j) {
            if ($j > $(j+1)) {
                tmp = $j
                $j = $(j+1)
                $(j+1) = tmp
            }
        }
    }
    r = 0
    for (i = N - K + 1; i <= N; ++i) {
        r = (r + $i) / 2
    }
    printf "%.9f", r
}
