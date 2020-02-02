# https://atcoder.jp/contests/abc144/submissions/9499873
awk '{
    a = $1
    b = $2
    x = $3
    if(a*a*b<x*2) {
        printf("%0.10f", 90 - atan2(a*a*a, 2*(a*a*b-x))*180/3.141592653589793)
    } else {
        printf("%0.10f", 90 - atan2(2*x, a*b*b)*180/3.141592653589793)
    }
}'
