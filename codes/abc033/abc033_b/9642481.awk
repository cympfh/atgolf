# https://atcoder.jp/contests/abc033/submissions/9642481
BEGIN{
    sup = 0
    sum = 0
    name = ""
}

c++{
    if (sup < $2) {
        name = $1
        sup = $2
    }
    sum += $2
}

END {
    if (sup * 2 > sum) {
        print name
    } else {
        print "atcoder"
    }
}
