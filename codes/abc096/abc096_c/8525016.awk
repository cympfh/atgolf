# https://atcoder.jp/contests/abc096/submissions/8525016
NR==1{
    h = $1
    w = $2
}
NR > 1 {
    s[NR - 1] = $1
}
function at(i, j) {
    return substr(s[i], j, 1)
}
END {
    ans = "Yes"
    for (i=1; i<=h; ++i) {
        for (j=1; j<=w; ++j) {
            if (ans == "No") continue;
            if (at(i, j) == ".") continue;
            ok = 0;
            if (i > 1 && at(i - 1, j) == "#") ok = 1;
            if (i < h && at(i + 1, j) == "#") ok = 1;
            if (j > 1 && at(i, j - 1) == "#") ok = 1;
            if (j < w && at(i, j + 1) == "#") ok = 1;
            if (ok == 0) ans = "No";
        }
    }
    print ans
}
