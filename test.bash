#!/bin/bash
# SPDX-FileCopyrightText:2025 Shogo Uchida
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo ${1}行目が違うよ
      res=1
}

res=0

out=$(echo 65 | ./sec2time)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "1:5" ] || ng "$LINENO"

out=$(seq 60 10 90 | ./sec2time)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "1:0
1:10
1:20
1:30" ] || ng "$LINENO"

out=$(echo あ | ./sec2time)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./sec2time)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res
