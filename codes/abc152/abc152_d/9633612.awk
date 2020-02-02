# https://atcoder.jp/contests/abc152/submissions/9633612
{
    for (head=1; head<=9; ++head) {
        for (tail=0; tail<=9; ++tail) {
            t[head,tail] = 0
        }
    }
    for(i=1;i<=$1;++i) {
        head = substr(i, 1, 1)
        tail = substr(i, length(i), 1)
        t[head,tail]++
    }
    ans = 0
    for(i=1;i<=$1;++i) {
        head = substr(i, 1, 1)
        tail = substr(i, length(i), 1)
        ans += t[tail,head]
    }
    print ans
}
