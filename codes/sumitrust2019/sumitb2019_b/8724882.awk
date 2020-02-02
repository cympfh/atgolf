# https://atcoder.jp/contests/sumitrust2019/submissions/8724882
{
    ok = 0;
    for (x = 1; x <= 50000; ++x) {
        if (int(1.08 * x) == $1) {
            ok = 1;
            print(x)
            break;
        }
    }
    if (ok == 0) print(":(")
}
	
