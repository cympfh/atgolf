# https://atcoder.jp/contests/abc044/submissions/8551899
function min(x,y){return x<y?x:y}
function max(x,y){return x>y?x:y}
{
    for(i=1;i<=length($1);++i)a[substr($1,i,1)]++
    b="Yes"
    for(k in a)if(a[k]%2>0)b="No"
    print b
}
