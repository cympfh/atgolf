# https://atcoder.jp/contests/abc064/submissions/1340057
tail -1|
sed 's/ /\n/g' | awk 'BEGIN{mn=1000;mx=0;}
{mn=mn<$1?mn:$1;mx=mx>$1?mx:$1}
END{ print (mx-mn)}'
