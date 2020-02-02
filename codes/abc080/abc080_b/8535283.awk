# https://atcoder.jp/contests/abc080/submissions/8535283
function f(x){
    if(x<10)return x;
    return x%10 + f(int(x/10))
}
$0 = $1 % f($1) == 0 ? "Yes" : "No"
