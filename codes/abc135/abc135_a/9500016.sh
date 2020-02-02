# https://atcoder.jp/contests/abc135/submissions/9500016
awk '{
s=$1+$2
if(s%2==0) {print(s/2)}else
{
print("IMPOSSIBLE")
}
}'
