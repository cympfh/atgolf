# https://atcoder.jp/contests/abc092/submissions/8638971
function min(x,y){return x<y?x:y}
NR==1{a=$1}
NR==2{b=$1}
NR==3{c=$1}
NR==4{print(min(a,b)+min(c,$1))}
