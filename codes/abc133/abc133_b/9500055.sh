# https://atcoder.jp/contests/abc133/submissions/9500055
awk 'NR==1{
    n = $1
    d = $2
}
NR > 1 {
    for (i = 1; i <= d; ++i) X[(NR-1) * d + i] = $i;
}
END {
    ans = 0
    for (i=1; i<=n; ++i) {
        for (j=1; j<i; ++j) {
            norm = 0;
            for (k=1; k<=d; ++k) {
                norm += (X[i*d+k] - X[j*d+k]) * (X[i*d+k] - X[j*d+k])
            }
            rt = int(sqrt(norm + 0.5))
            if (rt * rt == norm) ans++;
        }
    }
    print ans
}'
