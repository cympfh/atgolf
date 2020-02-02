# https://atcoder.jp/contests/abc133/submissions/9662538
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}

{
    if ($2 - $1 > 2020) {
        print 0
        exit
    }
    ans = 2019
    for (i = $1; i <= $2; ++i) {
        for (j = i+1; j <= $2; ++j) {
            ans = min(ans, ((i % 2019) * (j % 2019)) % 2019);
        }
    }
    print ans
}
