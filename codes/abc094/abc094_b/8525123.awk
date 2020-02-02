# https://atcoder.jp/contests/abc094/submissions/8525123
NR==1{m=$2;x=$3}
NR==2{
    a=0
    for(i=1;i<=m;++i){if($i<x)a++;if($i>x)b++}
    print a<b?a:b
}
