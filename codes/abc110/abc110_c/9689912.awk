# https://atcoder.jp/contests/abc110/submissions/9689912
BEGIN {
    FS = RS;
    RS = "@";
}
{
    for(i=97;i<97+26;++i) {
        c = sprintf("%c", i)
        a[c] = 0;
        b[c] = 0;
    }
    ok = 1;
    for (i=1; i<=length($1); ++i) {
        c = substr($1, i, 1);
        d = substr($2, i, 1);
        if (a[c] == 0) {
            a[c] = d;
        } else {
            if (a[c] != d) ok = 0;
        }
        if (b[d] == 0) {
            b[d] = c;
        } else {
            if (b[d] != c) ok = 0;
        }
    }
    print(ok ? "Yes" : "No")
}
