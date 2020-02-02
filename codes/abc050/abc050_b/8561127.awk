# https://atcoder.jp/contests/abc050/submissions/8561127
NR==1{
    N = $1
}
NR==2{
    s = 0
    for (i=1; i <= N; ++i) {
        a[i] = $i
        s += $i
    }
}
NR>3 {
    print(s - a[$1] + $2)
}
