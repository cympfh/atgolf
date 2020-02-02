# https://atcoder.jp/contests/abc036/submissions/9642228
NR==1{n=$1}
c++{s[NR-1]=$1}
END{
    for (i=1; i<=n; ++i) {
        line = ""
        for (j = 1; j <= n; ++j) {
            line = line substr(s[n-j+1], i, 1)
        }
        print line
    }
}
