# https://atcoder.jp/contests/abc023/submissions/9657287
c++{
    t[0] = "b";
    for(i=1;i<103;++i){
        if (t[i-1]==$1) {
            print (i-1)
            exit
        }
        if (i%3==1) {
            t[i] = "a" t[i-1] "c"
        } else if (i%3==2) {
            t[i] = "c" t[i-1] "a"
        } else {
            t[i] = "b" t[i-1] "b"
        }
    }
    print (-1);
}
