# https://atcoder.jp/contests/abc120/submissions/9687154

function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}
{
    for(i=1;i<=length($0);++i)if(substr($0,i,1)==0)++a;
    print min(a,length($0)-a)*2
}
