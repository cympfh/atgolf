# https://atcoder.jp/contests/abc071/submissions/8536716
{
    for(i=97;i<123;++i)a[sprintf("%c",i)]=1
    for(i=1;i<=length($1);++i)a[substr($1,i,1)]=0
    d="None"
    for(i=122;i>96;--i){c=sprintf("%c",i);if(a[c]>0)d=c}
    print d
}
