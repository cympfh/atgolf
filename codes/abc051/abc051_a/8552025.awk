# https://atcoder.jp/contests/abc051/submissions/8552025
{
    t = ""
    for (i = 1; i <= length($1); ++i) {
        c = substr($1, i, 1)
        if (c == ",") {
            t = t " "
        } else {
            t = t c
        }
    }
    print t
}
