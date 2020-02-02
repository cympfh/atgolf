# https://atcoder.jp/contests/abc032/submissions/9646967
BEGIN{FS=RS;RS="@"}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}
{
    l=lcm($1,$2)
    print l*int(($3+l-1)/l)
}
