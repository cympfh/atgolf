# https://atcoder.jp/contests/abc021/submissions/9661198
{
    m = $1 % 2
    m += int($1/2)
    print m
    if($1%2==1)print 1
    while ($1>1) {
        print 2
        $1-=2;
    }
}
