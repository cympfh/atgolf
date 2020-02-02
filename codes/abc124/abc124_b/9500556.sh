# https://atcoder.jp/contests/abc124/submissions/9500556
awk 'function max(x,y){return x>y?x:y}
c++{
    mx = 0
    for(i=1;i<=NF;++i) {
        if (mx <= $i) {
            ++a
            mx = $i
        }
    }
    print+a
}'
