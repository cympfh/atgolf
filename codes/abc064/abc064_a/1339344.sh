# https://atcoder.jp/contests/abc064/submissions/1339344
#!/bin/bash

if [ $(( $(tr -d ' ') % 4)) -eq 0 ]; then
    echo YES
else
    echo NO
fi
