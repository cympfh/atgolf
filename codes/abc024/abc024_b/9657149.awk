# https://atcoder.jp/contests/abc024/submissions/9657149

function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}
NR==1{
    t=$2
    ans = 0
    current_t = 0
}
NR>1{
    if (current_t < $1) {
        ans += t
    } else {
        ans += max(0, $1 + t - current_t)
    }
    current_t = $1 + t
}
END {
    print ans
}
