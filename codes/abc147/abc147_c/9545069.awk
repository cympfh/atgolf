# https://atcoder.jp/contests/abc147/submissions/9545069
function set(i, j, val) {
    array[i, j] = val
}
function get(i, j) {
    return array[i, j]
}
function tobin(x, n, _, i) {
    for (i = 0; i < n; ++i) {
        bin[i + 1] = x % 2
        x = int(x / 2)
    }
}
function binsize(bin, n, _, i, ret) {
    ret = 0
    for (i = 1; i <= n; ++i) {
        if (bin[i] == 1) ++ret
    }
    return ret
}
function max(x, y) { return x < y ? y : x }

NR == 1 {
    n = $1
    for (i = 1; i <= n; ++i) {
        for (j = 1; j <= n; ++j) {
            set(i, j, -1)
        }
    }
    a = 0
    i = 0
}
NR > 1 {
    if (a == 0) {
        a = $1
        i++
    } else {
        a--
        set(i, $1, $2)
    }
}
END {
    ans = 0
    for (iset = 0; iset < 2^n; ++iset) {
        tobin(iset, n)
        ok = 1
        for (i = 1; i <= n; ++i) {
            if (!ok) break
            if (bin[i] == 0) continue
            for (j = 1; j <= n; ++j) {
                x = get(i, j)
                if (x == -1) continue;
                if (bin[j] != x) {
                    ok = 0
                    break
                }
            }
        }
        m = binsize(bin, n);
        if (ok && m > ans) ans = m;
    }
    print ans
}
