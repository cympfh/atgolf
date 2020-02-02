# https://atcoder.jp/contests/abc053/submissions/8696391
function reverse(s){t="";for(i=length(s);i>0;)t=t substr(s,i--,1);return t}
{
    a = index($1, "A")
    z = index(reverse($1), "Z")
    print(length($1) - a - z + 2)
}
