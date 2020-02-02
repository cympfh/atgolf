# https://atcoder.jp/contests/abc153/submissions/9760718
BEGIN{
    RS="[ \n]"
    FS="@"
}
NR==1{h=$0}
NR>2{s+=$0}
END{
    print (h <= s ? "Yes" : "No")
}
