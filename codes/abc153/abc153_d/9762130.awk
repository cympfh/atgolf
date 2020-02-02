# https://atcoder.jp/contests/abc153/submissions/9762130
function f(x){return x<2?x:1+2*f(int(x/2))}{printf "%.f",f($1)}
