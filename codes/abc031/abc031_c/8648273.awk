# https://atcoder.jp/contests/abc031/submissions/8648273
function min(x,y){return x<y?x:y}
function max(x,y){return x>y?x:y}
NR>1{
    ans = -1000000
    for (i = 1; i <= NF; ++i) {
        aa = 0
        mx = -10000000
        for (j = 1; j<= NF; ++j) {
            if (i == j) continue
            a = 0
            b = 0
            k0 = min(i, j)
            k1 = max(i, j)
            for (k = k0; k <= k1; ++k) {
                if ((k - k0) % 2 == 0) a += $k;
                else b += $k;
            }
            if (b > mx) {
                # print(i, j, a, b)
                mx = b
                aa = a
            }
        }
        ans = max(ans, aa)
    }
    print ans
}
