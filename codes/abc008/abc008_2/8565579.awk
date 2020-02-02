# https://atcoder.jp/contests/abc008/submissions/8565579
NR==1{
c=""
m=0
}
NR>1{
a[$1]+=1
if(a[$1]>m){
c=$1
m=a[$1]
}
}
END{print c}
