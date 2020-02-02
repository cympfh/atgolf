# https://atcoder.jp/contests/abc111/submissions/9685900

function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}
NR == 1 {
    n = $1
}
NR == 2 {
    split($0, xs);
    for (i = 1; i <= n; ++i) {
        if (i % 2 == 1) {
            a[xs[i]]++;
        } else {
            b[xs[i]]++;
        }
    }
    len_a = int((i + 1) / 2);
    len_b = int(i / 2);

    top1_a = 0
    top2_a = 0
    for (i in a) {
        if (a[top1_a] < a[i]) {
            top2_a = top1_a;
            top1_a = i;
        } else if (a[top2_a] < a[i]) {
            top2_a = i;
        }
    }

    top1_b = 0
    top2_b = 0
    for (i in b) {
        if (b[top1_b] < b[i]) {
            top2_b = top1_b;
            top1_b = i;
        } else if (b[top2_b] < b[i]) {
            top2_b = i;
        }
    }

    # print top1_a, top2_a
    # print top1_b, top2_b

    ans = n;
    if (top1_a != top1_b) {
        ans = min(ans, n - a[top1_a] - b[top1_b])
    }
    if (top2_a != top1_b) {
        ans = min(ans, n - a[top2_a] - b[top1_b])
    }
    if (top1_a != top2_b) {
        ans = min(ans, n - a[top1_a] - b[top2_b])
    }
    print ans

}
