# https://atcoder.jp/contests/abc123/submissions/9500558
awk 'BEGIN{FS=RS;RS=""}
function abs(x){return x<0?-x:x}
{
    ans = "Yay!"
    for(i=1;i<6;++i)for(j=1;j<i;++j)if(abs($i-$j)>$6)
        ans = ":("
    print ans
}'
