# https://atcoder.jp/contests/abc003/submissions/8561995
BEGIN {
    v["a"] = 1
    v["t"] = 1
    v["c"] = 1
    v["o"] = 1
    v["d"] = 1
    v["e"] = 1
    v["r"] = 1
}
NR == 1 {
    s = $1
}
NR == 2 {
    t = $1
}
END {
    ans = "You can win"
    for (i = 1; i <= length(s); ++i) {
        c = substr(s, i, 1)
        d = substr(t, i, 1)
        # print(i, c, d)
        if (c == d) {
            continue
        } else if (c == "@" && v[d] == 1) {
            continue
        } else if (d == "@" && v[c] == 1) {
            continue
        } else {
            ans = "You will lose"
        }
    }
    print ans
}
