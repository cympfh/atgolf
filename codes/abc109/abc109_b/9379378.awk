# https://atcoder.jp/contests/abc109/submissions/9379378
BEGIN{last=""; ans = "Yes"}
c++{
    head = substr($1, 1, 1)
    if(last != "" && last != head) ans = "No"
    if (used[$1]) ans = "No"
    last = substr($1, length($1), 1)
    used[$1] = 1
}
END{
    print ans
}
