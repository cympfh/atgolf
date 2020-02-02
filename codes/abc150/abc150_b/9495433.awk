# https://atcoder.jp/contests/abc150/submissions/9495433
c++{
    for(i=3; i<=length($1); i++)
        if (substr($1, i-2, 3) == "ABC")
            ++x
    print+x
}
