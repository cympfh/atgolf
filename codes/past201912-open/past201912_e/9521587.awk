# https://atcoder.jp/contests/past201912-open/submissions/9521587
function set(x, y) {
    if (x == y) return
    f[x ";" y] = 1
}
function get(x, y) {
    if (x == y) return 0
    return f[x ";" y]
}

NR == 1 {
    n = $1
}
NR > 1 {
    if ($1 == 1) {
        set($2, $3)
    } else if ($1 == 2) {
        for (i = 1; i <= n; ++i) {
            if (get(i, $2) == 1) {
                set($2, i)
            }
        }
    } else {
        for (i = 1; i <= n; ++i) {
            g[i] = 0
        }
        for (i = 1; i <= n; ++i) {
            if (get($2, i) != 1) continue;
            for (j = 1; j <= n; ++j) {
                if (get(i, j) == 1) {
                    g[j] = 1
                }
            }
        }
        for (i = 1; i <= n; ++i) {
            if (g[i] == 1) {
                set($2, i);
            }
        }
    }
    # print $0
    # for (i = 1; i <= n; ++i) {
    #     line = ""
    #     for (j = 1; j <= n; ++j) {
    #         line = line (get(i, j) ? "Y" : "N")
    #     }
    #     print line
    # }
    # print "---"
}
END{
    for (i = 1; i <= n; ++i) {
        line = ""
        for (j = 1; j <= n; ++j) {
            line = line (get(i, j) ? "Y" : "N")
        }
        print line
    }
}
