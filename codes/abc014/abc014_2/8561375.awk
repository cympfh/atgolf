# https://atcoder.jp/contests/abc014/submissions/8561375
NR==1{
    N = $1
    X = $2
}
NR == 2 {
    ans = 0
    for (i = 1; i <= 20; ++i) {
        if (X % 2 == 1) {
            ans += $i
        }
        X = int(X / 2)
    }
    print ans
}
