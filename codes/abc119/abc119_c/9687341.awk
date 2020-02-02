# https://atcoder.jp/contests/abc119/submissions/9687341
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}
NR==1{
    n = $1
    a = $2
    b = $3
    c = $4
}
NR>1{
    take[NR-1] = $1
}
END{
    ans = 10000000000000
    for(bp = 0; bp < 4^n; ++bp) {
        line = ""
        iset = bp;
        x = 0
        y = 0
        z = 0
        mp = -30
        used = ""
        for (i = 1; i <= n; ++i) {
            idx = iset % 4;
            used = used idx " "
            iset = int(iset / 4);
            if (idx == 1) {
                x += take[i];
                mp += 10;
            } else if (idx == 2) {
                y += take[i];
                mp += 10;
            } else if (idx == 3) {
                z += take[i];
                mp += 10;
            }
        }
        if (x == 0 || y == 0 || z == 0) continue;
        mp += abs(a - x);
        mp += abs(b - y);
        mp += abs(c - z);
        ans = min(ans, mp);
    }
    print ans;

}
