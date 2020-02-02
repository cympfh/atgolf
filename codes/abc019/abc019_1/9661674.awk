# https://atcoder.jp/contests/abc019/submissions/9661674
function sort(xs, n, _, i, j, t) {
    for (i = 0; i < n; ++i) {
        for (j = 1; j < n; ++j) {
            if (xs[j] > xs[j+1]) {
                t=xs[j]; xs[j]=xs[j+1]; xs[j+1] = t;
            }
        }
    }
}
{
    for(i=1;i<4;++i)xs[i]=$i
    sort(xs,3)
    print xs[2]
}
