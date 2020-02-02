# https://atcoder.jp/contests/abc113/submissions/9686708
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}

function sort(xs, n) {
    sort_sub(xs, 1, n);
}
function swap(xs, i, j) {
    if (i == j) return;
    t = xs[i]; xs[i] = xs[j]; xs[j] = t;
}
function sort_sub(xs, left, right, _, i, pivot, lt_left, lt_right, eq_left, eq_right, gt_left, gt_right) {
    if (left >= right) return;
    pivot = xs[right];
    lt_left = left
    lt_right = left - 1
    eq_left = left
    eq_right = left - 1
    gt_left = left
    gt_right = left - 1
    for (i = left; i <= right; ++i) {
        if (xs[i] < pivot) {
            if (eq_left < gt_left) swap(xs, eq_left, i);
            swap(xs, gt_left, i);
            lt_right++;
            eq_left++;
            eq_right++;
            gt_left++;
            gt_right++;
        } else if (xs[i] == pivot) {
            swap(xs, gt_left, i);
            eq_right++;
            gt_left++;
            gt_right++;
        } else {
            gt_right++;
        }
    }
    sort_sub(xs, lt_left, lt_right);
    sort_sub(xs, gt_left, gt_right);
}

NR==1{
    n = $1
    m = $2
}
NR>1{
    arr[NR-1] = sprintf("%06d %20d %06d", $1, $2, NR-1)
}
END{
    sort(arr, m);
    last_p = -1;
    num = 0;
    for (i = 1; i <= m; ++i) {
        split(arr[i], words);
        if (last_p == words[1]) {
            num++;
        } else {
            last_p = words[1]
            num = 1;
        }
        result[+words[3]] = sprintf("%06d%06d", words[1], num)
    }
    for (i = 1; i <= m; ++i) {
        print(result[i]);
    }
}
