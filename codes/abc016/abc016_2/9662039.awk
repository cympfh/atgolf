# https://atcoder.jp/contests/abc016/submissions/9662039
{
    a=$1+$2==$3
    b=$1-$2==$3
    if(a&&b) print "?"
    else if (a) print "+"
    else if (b) print "-"
    else print "!"
}
