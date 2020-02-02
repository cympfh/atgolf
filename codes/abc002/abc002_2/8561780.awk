# https://atcoder.jp/contests/abc002/submissions/8561780
{
    a["a"]=a["e"]=a["i"]=a["o"]=a["u"]=1
    t = ""
    for (i = 1; i <= length($1); ++i) {
        c = substr($1, i, 1)
        if(a[c]<1)t=t c
    }
    print t
}
