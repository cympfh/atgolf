# https://atcoder.jp/contests/abc141/submissions/8545171
NR==1{
    n = $1
    k = $2
    q = $3
}
NR>1{
    a[$1]++;
}
END {
    for (i = 1; i <= n; ++i) {
        if (k - q + a[i] <= 0) {
            print "No"
        } else {
            print "Yes"
        }
        delete a[i]
    }
}
