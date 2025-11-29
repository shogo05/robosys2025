#!/bin/bash
# SPDX-FileCopyrightText:2025 Shogo Uchida
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo ${1}行目が違うよ
      res=1
}

res=0

out=$(echo 65 | ./sec2time)
[ "${out}" = "1分5秒" ] || ng "$LINENO"

out=$(echo 120 | ./sec2time)
[ "${out}" = "2分0秒" ] || ng "$LINENO"

out=$(echo あ | ./sec2time)
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./sec2time)
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res
