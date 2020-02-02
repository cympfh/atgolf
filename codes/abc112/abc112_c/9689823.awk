# https://atcoder.jp/contests/abc112/submissions/9689823
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}
NR==1{
    n = $1;
}
NR>1{
    x[NR-1]=$1
    y[NR-1]=$2
    h[NR-1]=$3
}
END{
    for (cx=0; cx<=100; ++cx) {
        for (cy=0; cy<=100; ++cy) {
            ch = 0
            for (i = 1; i <= n; ++i) {
                if (h[i] == 0) continue;
                ch = h[i] + abs(x[i] - cx) + abs(y[i] - cy)
            }
            valid = 1;
            for (i = 1; i <= n; ++i) {
                if (max(0, ch - abs(x[i] - cx) - abs(y[i] - cy)) != h[i]) {
                    valid = 0;
                }
            }
            if (valid) {
                print cx, cy, ch
                exit
            }
        }
    }
}
