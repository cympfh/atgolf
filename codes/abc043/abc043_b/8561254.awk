# https://atcoder.jp/contests/abc043/submissions/8561254
{
    buffer = ""
    for (i = 1; i <= length($1); ++i) {
        c = substr($1, i, 1)
        if (c == "B") {
            buffer = substr(buffer, 1, length(buffer) - 1)
        } else {
            buffer = buffer c
        }
    }
    print buffer
}
