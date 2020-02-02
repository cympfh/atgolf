# https://atcoder.jp/contests/abc098/submissions/9496651
function max(x,y){return x>y?x:y}
{
    print max(max($1+$2,$1-$2),$1*$2)
}
