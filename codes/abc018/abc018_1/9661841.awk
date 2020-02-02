# https://atcoder.jp/contests/abc018/submissions/9661841

function sort(xs, n, _, i, j, t) {
    for (i = 0; i < n; ++i) {
        for (j = 1; j < n; ++j) {
            if (xs[j] < xs[j+1]) {
                t=xs[j]; xs[j]=xs[j+1]; xs[j+1] = t;
            }
        }
    }
}

function indexof(xs, x, n, _, i) {
    for (i = 1; i <= n ; ++i) if (xs[i] == x) return i;
    return 0;
}

{
    xs[NR]=$1
    input[NR]=$1
}
END {
    sort(xs, NR);
    for(i=1;i<=NR;++i)print(indexof(xs, input[i], NR))
}
