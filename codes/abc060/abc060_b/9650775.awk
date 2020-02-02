# https://atcoder.jp/contests/abc060/submissions/9650775
{
    ok=0
    for(i=0; i<1000; ++i) {
        t = $1 * i;
        if (t % $2 == $3) {
            ok = 1;
            break
        }
    }
    print ok ? "YES" : "NO"
}
