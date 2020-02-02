# https://atcoder.jp/contests/abc021/submissions/9661607
NR==2{
    t[$1]=1
    t[$2]=1
}
NR==3{
    RS="[ \n]"
    FS="@"
    ok=1
}
NR>3{
    if(t[$1]==1)ok=0;
    t[$1]=1;
}
END{
    print ok?"YES":"NO"
}
