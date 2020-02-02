# https://atcoder.jp/contests/abc088/submissions/9798494
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}
{
    i = NR - 1;
    for (j = 0; j < 3; ++j) {
        c[i * 3 + j] = $(j+1);
    }
}
END{
    for(a1=0; a1<=100; a1++) {
                b1 = c[0] - a1;
                b2 = c[3] - a1;
                b3 = c[6] - a1;
                a2 = c[1] - b1;
                a3 = c[2] - b1;
                ok = 1;
                if (b1 + a1 != c[0]) ok = 0;
                if (b1 + a2 != c[1]) ok = 0;
                if (b1 + a3 != c[2]) ok = 0;
                if (b2 + a1 != c[3 + 0]) ok = 0;
                if (b2 + a2 != c[3 + 1]) ok = 0;
                if (b2 + a3 != c[3 + 2]) ok = 0;
                if (b3 + a1 != c[6 + 0]) ok = 0;
                if (b3 + a2 != c[6 + 1]) ok = 0;
                if (b3 + a3 != c[6 + 2]) ok = 0;
                if (ok) {
                    print "Yes";
                    exit
                }
            }
            print "No"
}
