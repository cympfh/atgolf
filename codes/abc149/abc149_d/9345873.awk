# https://atcoder.jp/contests/abc149/submissions/9345873
NR == 1 {
  n = $1
  k = $2
}
NR == 2 {
  r = $1
  s = $2
  p = $3
}
NR == 3 {
  t = $0
  ans = 0
  for (i=1; i<=k; ++i) {
    last = ""
    for (j=i; j<=n; j += k) {
      c = substr(t, j, 1)
      if (c == "r" && last != "p") {
        last = "p"
        ans += p
      } else if (c == "p" && last != "s") {
        last = "s"
        ans += s
      } else if (c == "s" && last != "r") {
        last = "r"
        ans += r
      } else {
        last = j
      }
    }
  }
  print ans
}
