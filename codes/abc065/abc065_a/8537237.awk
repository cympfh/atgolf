# https://atcoder.jp/contests/abc065/submissions/8537237
{
    x = $1
    d = $3 - $2
    if (d <= 0) {
        print "delicious"
    } else if (d <= x) {
        print "safe"
    } else {
        print "dangerous"
    }
}
