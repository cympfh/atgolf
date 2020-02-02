# https://atcoder.jp/contests/abc060/submissions/9651061
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}

NR == 1 {
    N = $1
    W = $2
}
NR == 2 {
    w1 = $1
    w = $1
    v = $2
    num[0] = 1
    xs0[1] = v
}
NR > 2 {
    w = $1
    v = $2
    d = w - w1
    num[d]++
    if (d == 0) {
        xs0[num[d]] = v
    } else if (d == 1) {
        xs1[num[d]] = v
    } else if (d == 2) {
        xs2[num[d]] = v
    } else if (d == 3) {
        xs3[num[d]] = v
    }
}

function sort(xs, n, _, i, j, t) {
    for (i = 0; i < n; ++i) {
        for (j = 1; j < n; ++j) {
            if (xs[j] < xs[j+1]) {
                t=xs[j]; xs[j]=xs[j+1]; xs[j+1] = t;
            }
        }
    }
}

function accumulate(xs, n, ac, _, i) {
    ac[0] = 0;
    ac[1] = xs[1];
    for (i=2; i<=n; ++i) {
        ac[i] = ac[i-1] + xs[i];
    }
}

END {
    sort(xs0, num[0])
    sort(xs1, num[1])
    sort(xs2, num[2])
    sort(xs3, num[3])
    accumulate(xs0, num[0], ac0);
    accumulate(xs1, num[1], ac1);
    accumulate(xs2, num[2], ac2);
    accumulate(xs3, num[3], ac3);

    ans = 0;

    for (i0=0; i0 <= num[0]; i0++) {
    for (i1=0; i1 <= num[1]; i1++) {
    for (i2=0; i2 <= num[2]; i2++) {
    for (i3=0; i3 <= num[3]; i3++) {
        if (w1 * i0 + (w1 + 1) * i1 + (w1 + 2) * i2 + (w1 + 3) * i3 > W) continue;
        ans = max(ans, ac0[i0] + ac1[i1] + ac2[i2] + ac3[i3]);
    }}}}

    print ans;
}
