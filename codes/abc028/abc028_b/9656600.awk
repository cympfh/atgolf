# https://atcoder.jp/contests/abc028/submissions/9656600
{
    t["A"]=t["B"]=t["C"]=t["D"]=t["E"]=t["F"]=0;
    for(i=1;i<=length($1);++i)t[substr($1,i,1)]++;
    print t["A"], t["B"], t["C"], t["D"], t["E"], t["F"]
}
