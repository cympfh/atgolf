# https://atcoder.jp/contests/abc140/submissions/9499927
awk 'function min(x,y){return x<y?x:y}
NR == 1 {
    n = $1
}
NR == 2 {
    ans = 0
    for (i=0; i<n; ++i) {
        if (i == 0) {
            ans += $1
        } else if (i == n - 1) {
            ans += $(n-1)
        } else {
            ans += min($i, $(i+1))
        }
    }
    print ans
}'
