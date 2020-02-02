# https://atcoder.jp/contests/abc146/submissions/9499838
awk 'NR==1{n=$1}
NR==2{
    for (i = 65; i < 65 + 26; ++i) {
        c = sprintf("%c", i)
        a[c] = i
    }
    t = ""
    for (i = 1; i <= length($1); ++i) {
        c = substr($1, i, 1)
        m = a[c] + n
        if (m >= 65 + 26) m -= 26
        t = t sprintf("%c", m)
    }
    print t
}'
