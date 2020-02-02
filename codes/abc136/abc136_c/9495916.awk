# https://atcoder.jp/contests/abc136/submissions/9495916
NR == 1 {
    ok = "Yes"
    RS = FS
    FS = "@"
    last = -100
}
NR > 1 {
    if (last <= ($1 - 1)) {
        last = $1 - 1
    } else if (last <= $1) {
        last = $1
    } else {
        ok = "No"
    }
}
END {
    print ok
}
