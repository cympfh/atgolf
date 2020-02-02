# https://atcoder.jp/contests/abc151/submissions/9499646
awk 'NR == 1 {
    n = $1
    k = $2
    m = $3
}
NR == 2 {
    sum = 0
    for (i=1;i<n;++i) sum += $i;
    rest = m * n - sum
    if (rest > k) {
        print -1
    } else if (rest < 0) {
        print 0
    } else {
        print rest
    }
}
'
