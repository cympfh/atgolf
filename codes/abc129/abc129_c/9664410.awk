# https://atcoder.jp/contests/abc129/submissions/9664410
NR==1{
    n=$1
}
NR>1{
    broken["" $1]=1
}
END{
    MOD=1000000007
    a = 0
    b = 1
    for(i=1; i<=n; ++i) {
        c = broken["" i] ? 0 : (a + b) % MOD
        a = b
        b = c
    }
    print c
}
