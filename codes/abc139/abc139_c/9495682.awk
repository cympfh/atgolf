# https://atcoder.jp/contests/abc139/submissions/9495682
NR == 1 {
    n = $1
    RS = " "
    FS = "@"
    ans = 0
    last = -100
    ac = 0
}
NR > 1 {
    if (last >= +$1) {
        ac++
        ans = ans > ac ? ans : ac
    } else {
        ac = 0
    }
    last = +$1
}
END {
    print ans
}
