# https://atcoder.jp/contests/abc004/submissions/8562082
{
    t = ""
    for (i=length($0); i>=1; --i) t=t substr($0, i, 1)
    a[NR]=t
}
END {
    for (i=4; i>=1; --i) print a[i]
}
