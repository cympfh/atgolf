# https://atcoder.jp/contests/abc135/submissions/9500036
awk 'function sorted(a, len) {
    for (k=1; k < len; ++k) {
        if (a[k] > a[k + 1]) return 0
    }
    return 1
}
NR==2 {
    for (i=1; i<=NF; ++i) a[i] = $i;
    b = "NO"
    if(sorted(a, NF)) b = "YES";
    for (i=1; i <= NF; ++i) {
        for (j=1; j < i; ++j) {
            tmp = a[i];
            a[i] = a[j];
            a[j] = tmp;
            if (sorted(a, NF)) b = "YES";
            tmp = a[i];
            a[i] = a[j];
            a[j] = tmp;
        }
    }
    print b
}'
