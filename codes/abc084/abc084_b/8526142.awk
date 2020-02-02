# https://atcoder.jp/contests/abc084/submissions/8526142
function is_digit(d){
    for(j=0;j<10;++j)if(d==j)return 1;
    return 0
}
NR==1{a=$1;b=$2}
NR==2{
    ok=1
    for(i=1;i<=a;++i)if(!is_digit(substr($1,i,1)))ok=0
    if(substr($1,a+1,1)!="-")ok=0
    for(i=a+2;i<=a+b+1;++i)if(!is_digit(substr($1,i,1)))ok=0
    print ok ? "Yes" : "No"
}
