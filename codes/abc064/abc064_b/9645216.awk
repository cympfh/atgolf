# https://atcoder.jp/contests/abc064/submissions/9645216
function max(x,y){return x<y?y:x}
function min(x,y){return x<y?x:y}
function abs(x){return x<0?-x:x}
NR==1{mn=2000;mx=0;RS=FS;FS="@"}
C++{
    mn=min(mn,$1)
    mx=max(mx,$1)
}
END {
    print(mx-mn)
}
