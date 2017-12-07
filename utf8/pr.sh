#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

pr -l10 -e💩 fixtures/pr1 > out/pr1.check
./compare pr1 "Expand tab-like"

pr -l10 -i💩 fixtures/pr2 > out/pr2.check
./compare pr2 "Unexpand tab-like"

pr -l10 -n💩5 fixtures/names > out/pr3.check
./compare pr3 "Number lines"

cat fixtures/names | pr -l10 -10 > out/pr4.check
./compare pr4 "Multiple columns"

cat fixtures/names | pr -l10 -10 -s💩 > out/pr5.check
./compare pr5 "Multiple columns with separator character"
