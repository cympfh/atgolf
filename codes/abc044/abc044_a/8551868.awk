# https://atcoder.jp/contests/abc044/submissions/8551868
function min(x,y){return x<y?x:y}
function max(x,y){return x>y?x:y}
NR==1{n=$1}
NR==2{k=$1}
NR==3{x=$1}
NR==4{y=$1}
END{
    print(min(k, n) * x + max(n - k, 0) * y)
}
