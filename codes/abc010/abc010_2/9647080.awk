# https://atcoder.jp/contests/abc010/submissions/9647080
c++{
    for(i=1;i<=NF;++i) {
        y = $i % 6
        sum += y >= 3 ? y - 3 : (y == 0 ? 3 : (y ==2 ? 1 : 0))
    }
    print sum
}
