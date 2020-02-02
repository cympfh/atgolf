# https://atcoder.jp/contests/abc124/submissions/9671092
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}
{
    s = $0
    n = length(s)
    ans = n

    k = 0;
    for (i = 1; i <= n; ++i) {
        if (substr(s, i, 1) != (i % 2)) ++k;
    }
    ans = min(ans, k);

    k = 0;
    for (i = 1; i <= n; ++i) {
        if (substr(s, i, 1) != ((i+1) % 2)) ++k;
    }
    ans = min(ans, k);

    print ans;

}
