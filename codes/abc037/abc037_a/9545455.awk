# https://atcoder.jp/contests/abc037/submissions/9545455
function min(x,y){return x<y?x:y}
function max(x,y){return x>y?x:y}
function abs(x){return x<0?-x:x}
function pow(n,m){return m<0?1/pow(n,-m):m==0?1:(z=pow(n,int(m/2)))*z*((n-1)*(m%2)+1)}
function reverse(s){t="";for(i=length(s);i>0;)t=t substr(s,i--,1);return t}
{
    print int($3/min($1,$2))
}
