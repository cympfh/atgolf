# https://atcoder.jp/contests/abc143/submissions/8545061
NR==2{
    last = " "
    ans = 0
    for(i=1;i<=length($1);++i){
        c = substr($1, i, 1)
        if (c != last) {
            last = c;
            ans++
        }
    }
    print ans
}
