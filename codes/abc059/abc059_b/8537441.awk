# https://atcoder.jp/contests/abc059/submissions/8537441
NR==1{a=$0}
NR==2{b=$0;
    n = length(a)
    m = length(b)
    if (n < m) {
        print "LESS"
    } else if (n > m) {
        print "GREATER"
    } else {
        r = "EQUAL"
        for (i=1;i<=n;++i) {
            if (substr(a, i, 1) < substr(b, i, 1)) {
                r = "LESS"
                break
            } else if (substr(a, i, 1) > substr(b, i, 1)) {
                r = "GREATER"
                break
            }
        }
        print r
    }
}
