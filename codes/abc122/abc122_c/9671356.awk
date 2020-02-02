# https://atcoder.jp/contests/abc122/submissions/9671356
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}
NR==2 {
    ac = 0;
    xs[0] = 0;
    for (i = 1; i <= length($0); ++i) {
        c = substr($0, i, 2);
        if (c == "AC") {
            ac++;
        }
        xs[i] = ac;
    }
}
NR>2 {
    print (xs[$2-1] - xs[$1-1])
}
