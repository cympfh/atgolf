# https://atcoder.jp/contests/abc015/submissions/9655589
NR==1{
    RS=FS
    FS="@"
    num = 0
    sum = 0
}
NR>1 && $1>0 {
    sum += $1
    num++
}
END {
    print int((sum + num - 1) / num)
}
