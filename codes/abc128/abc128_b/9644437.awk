# https://atcoder.jp/contests/abc128/submissions/9644437
function gt(a, b, _, s, t) {
    split(a, s)
    split(b, t)
    if (s[1] != t[1]) return (s[1] > t[1]);
    return (+s[2] < +t[2]);
}

function sort(xs, n, _, i, j, t) {
    for (i = 0; i < n; ++i) {
        for (j = 1; j < n; ++j) {
            if (gt(xs[j], xs[j+1])) {
                t=xs[j]; xs[j]=xs[j+1]; xs[j+1] = t;
            }
        }
    }
}

NR == 1 {
    n = $1
}
c++ {
    r[NR-1] = $1 " " $2 " " (NR-1)
}
END {
    sort(r, n)
    for (i = 1; i <= n; ++i) {
        split(r[i], s);
        print(s[3])
    }
}
