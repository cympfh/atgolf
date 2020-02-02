# https://atcoder.jp/contests/abc097/submissions/9496872
function abs(x){return x<0?-x:x}
{
    if (abs($1-$3)<=$4 || (abs($1-$2)<=$4 && abs($2-$3)<=$4)) {
        print "Yes"
    } else {
        print "No"
    }
}
