# https://atcoder.jp/contests/past201912-open/submissions/9521598
NR == 1 {
    n = $1
}
NR > 1 {
    a[$1]++
}
END{
    x = 0
    y = 0
    for (i=1; i<=n; ++i) {
        if (a[i] == 2) {
            x = i
        } else if (a[i] == 0) {
            y = i
        }
        del a[i]
    }
    print (x == 0 && y == 0) ? "Correct" : (x " " y)
}
