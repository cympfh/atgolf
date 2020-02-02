# https://atcoder.jp/contests/abc132/submissions/9663132
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
function gcd(x,y){return y==0?x:gcd(y,x%y)}
function lcm(x,y){return x/gcd(x,y)*y}
function shuffle(xs, n, _, i, j, t) {
    for (i = n; i > 0; --i) {
        j = int(rand() * i) + 1;
        t=xs[i]; xs[i]=xs[j]; xs[j]=t;
    }
}
function sort(xs, n) {
    sort_sub(xs, 1, n)
}
function sort_sub(xs, left, right, _, pivot, i, n_lt, n_eq, n_gt, lt, gt) {
    if (left >= right) return;
    pivot = xs[left]

    # print "---"
    # print "sort", left, right
    # line = ""
    # for(i=left;i<=right;++i)line = line xs[i] " "
    # print line
    # print "pivot", pivot

    n_lt = 0
    n_eq = 0
    n_gt = 0
    for (i = left; i <= right; ++i) {
        if (xs[i] < pivot) {
            n_lt++;
            lt[n_lt] = xs[i];
        } else if (xs[i] == pivot) {
            n_eq++;
        } else {
            n_gt++;
            gt[n_gt] = xs[i];
        }
    }
    # print "n_lt, n_eq, n_gt", n_lt, n_eq, n_gt
    for (i = 1; i <= n_lt; ++i) {
        xs[left + i - 1] = lt[i];
    }
    for (i = 1; i <= n_eq; ++i) {
        xs[left + n_lt + i - 1] = pivot;
    }
    for (i = 1; i <= n_gt; ++i) {
        xs[left + n_lt + n_eq + i - 1] = gt[i];
    }
    # line = ""
    # for(i=left;i<=right;++i)line = line xs[i] " "
    # print "=>", line
    sort_sub(xs, left, left + n_lt - 1);
    sort_sub(xs, right - n_gt + 1, right);
}
NR==1{
    n = $1
}
NR==2{
    split($0,xs)
    # shuffle(xs, n)
    sort(xs, n)

    # line = ""
    # for(i=1;i<=n;++i)line = line xs[i] " "
    # print line

    print xs[n/2+1] - xs[n/2]
}
