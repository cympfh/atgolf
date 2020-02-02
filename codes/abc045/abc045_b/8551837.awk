# https://atcoder.jp/contests/abc045/submissions/8551837
NR==1{a[1]=$1}
NR==2{a[2]=$1}
NR==3{a[3]=$1
    i[1] = 1
    i[2] = 1
    i[3] = 1
    c[1] = "A"
    c[2] = "B"
    c[3] = "C"
    cur = 1
    for (;;) {
        if (length(a[cur]) < i[cur]) {
            print(c[cur])
            break
        }
        i[cur]++
        n = substr(a[cur], i[cur]-1, 1)
        if (n=="a") cur = 1
        if (n=="b") cur = 2
        if (n=="c") cur = 3
    }
}
