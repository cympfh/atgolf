# https://atcoder.jp/contests/abc148/submissions/9648862
NR==1{
    RS=" "
    FS="@"
    e = 1
    n = $1
}
NR>1{
    if (e == $1) {
        e++
    }
}
END {
    if (e == 1) {
        print -1
    } else {
        print n-e+1
    }
}
