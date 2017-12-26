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

cat fixtures/names | pr -l10 -10 -s: | sed 's/:/💩/g' > out/pr5
cat fixtures/names | pr -l10 -10 -s💩 > out/pr5.check
./compare pr5 "Multiple columns with separator character"

cat fixtures/names | iconv -f utf-8 -t iso_8859-1 | LC_ALL=en_US.ISO8859-1 pr -l10 -10 -s: | iconv -f iso_8859-1 -t utf-8 | sed 's/:/💩/g' > out/pr6
cat fixtures/names | pr -l10 -10 -s💩 > out/pr6.check
./compare pr6 "Multiple columns with separator character, via 8859-1"

cat fixtures/names | iconv -f utf-8 -t iso_8859-1 | LC_ALL=en_US.ISO8859-1 pr -l10 -10 | iconv -f iso_8859-1 -t utf-8 > out/pr7
cat fixtures/names | pr -l10 -10 > out/pr7.check
./compare pr7 "Multiple columns via 8859-1"
