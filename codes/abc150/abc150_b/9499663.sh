# https://atcoder.jp/contests/abc150/submissions/9499663
awk 'c++{
    for(i=3; i<=length($1); i++)
        if (substr($1, i-2, 3) == "ABC")
            ++x
    print+x
}
'
