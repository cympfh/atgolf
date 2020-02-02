# https://atcoder.jp/contests/arc004/submissions/8696091
BEGIN {
    sum = 0
    maxd = 0
}
NR > 1 {
    sum += $1
    if ($1 > maxd) maxd = $1
}
END {
    print sum
    if (maxd <= sum - maxd) {
        print 0
    } else {
        print (maxd * 2 - sum)
    }
}
