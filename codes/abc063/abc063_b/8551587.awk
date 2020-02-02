# https://atcoder.jp/contests/abc063/submissions/8551587
{
    for(i=1;i<=length($1);++i)a[substr($1,i,1)]+=1
    b="yes"
    for(k in a)if(a[k]>1)b="no"
    print b
}
