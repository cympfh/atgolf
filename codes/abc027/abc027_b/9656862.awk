# https://atcoder.jp/contests/abc027/submissions/9656862
c++{
    sum = 0
    for (i=1; i<=NF; ++i) sum += $i;
    if (sum % NF != 0) {
        print -1
        exit
    }
    m = sum / NF;
    ac = 0
    ac_num = 0
    ans = 0;
    for (i = 1; i <= NF; ++i) {
        ac += $i;
        ac_num++;
        if (ac == m * ac_num) {
            ans += ac_num - 1;
            ac = 0;
            ac_num = 0;
        }
    }

    print ans;
}
