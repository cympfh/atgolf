# https://atcoder.jp/contests/abc125/submissions/9670722
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}
NR==1{
    n = $1
}
NR>1{
    split($0, xs);
    head[0] = 0;
    tail[n+1] = 0;
    for (i = 1; i <= n; ++i) {
        head[i] = gcd(head[i-1], xs[i]);
    }
    for (i = n; i > 0; --i) {
        tail[i] = gcd(tail[i+1], xs[i]);
    }
    ans = 1;
    for (i = 1; i <= n; ++i) {
        ans = max(ans, gcd(head[i-1], tail[i+1]));
    }
    print ans;
}
