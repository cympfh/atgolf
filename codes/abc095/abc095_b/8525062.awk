# https://atcoder.jp/contests/abc095/submissions/8525062
NR==1{
    n = $1
    x = $2
    min = 2000
}
NR > 1 {
    ans++
    x -= $1
    min = min < $1 ? min : $1
}
END {
    print ans + int(x / min)
}
