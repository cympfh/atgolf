# https://atcoder.jp/contests/arc003/submissions/8695953
function reverse(s){t="";for(i=length(s);i>0;)t=t substr(s,i--,1);return t}
NR > 1 {
    a[NR - 1] = reverse($1)
}
END {
    for (i = 1; i <= NR; ++i) {
        for (j = 1; j < NR - 1; ++j) {
            if (a[j] > a[j + 1]) {
                tmp = a[j + 1]
                a[j + 1] = a[j]
                a[j] = tmp
            }
        }
    }
    for (k = 1; k < NR; ++k) {
        print(reverse(a[k]))
    }
}
