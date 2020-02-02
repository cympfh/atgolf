# https://atcoder.jp/contests/abc148/submissions/9499734
awk 'NR==1{
    n = $1
}
NR==2{
    s = ""
    for (i = 1; i <= n; ++i) {
        s = s substr($1, i, 1)
        s = s substr($2, i, 1)
    }
    print(s)
}'
