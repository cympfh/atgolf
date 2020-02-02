# https://atcoder.jp/contests/abc150/submissions/9560091
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}

#
# Args:
#   n: length of array
#   idx: index of permutation (1 <= idx <= n!)
#   r: return array
# Return:
#   success: bool
function permutation(n, idx, r) {
    idx--
    r[n] = 1
    for (k = 2; k <= n; ++k) {
        r[n + 1 - k] = 1 + (idx % k)
        idx = int(idx / k)
    }
    if (idx > 0) return 0;
    for (i = 1; i <= n; ++i) b[i] = 1;
    b[r[1]] = 0;
    for (k = 2; k <= n; ++k) {
        count = 1
        for (j = 1; j <= n; ++j) {
            if (b[j]) {
                if (count == r[k]) {
                    r[k] = j
                    b[j] = 0
                    break
                }
                count++
            }
        }
    }
    return 1
}

NR == 1 {
    n = $1
}
NR == 2 {
    split($0, p)
}
NR == 3 {
    split($0, q)
}
END {
    x = 0
    y = 0
    for (idx = 1;;++idx) {
        result = permutation(n, idx, r)
        if (!result) break;
        eq = 1
        for (i=1; i<=n; ++i) if (p[i] != r[i]) eq = 0
        if (eq) x = idx
        eq = 1
        for (i=1; i<=n; ++i) if (q[i] != r[i]) eq = 0
        if (eq) y = idx
    }
    print abs(x - y)
}
