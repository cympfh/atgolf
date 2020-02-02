# https://atcoder.jp/contests/abc009/submissions/8566742
NR==1{
m=0
n=0
}
NR>1{
if($1>m){
n=m
m=$1
}else if($1==m){
}else if($1 > n){
n = $1
}
}
END{print n}
