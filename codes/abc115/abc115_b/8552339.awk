# https://atcoder.jp/contests/abc115/submissions/8552339
NR==1{
m=0
s=0
}
NR>1{
    s += $1
    m = m > $1 ? m : $1
}
END{
    print(int(s - m / 2))
}
