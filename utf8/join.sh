#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

mkdir -p tmp

sort -b -k1 fixtures/join1 > tmp/join1
sort -b -k1 fixtures/join2 > tmp/join2

join tmp/join1 tmp/join2 > out/join1.check
sort fixtures/join2a > out/join1

./compare join1 "Sort and join agree"

# Sort using spaces as the delimiter,
# since sort -t is broken

cat fixtures/join1 | sed 's/^ *//' | sort -k1 | sed 's/ /💩/g' > tmp/join3
cat fixtures/join2 | sed 's/^ *//' | sort -k1 | sed 's/ /💩/g' > tmp/join4

join -t '💩' tmp/join3 tmp/join4 | sort > out/join2.check
sort fixtures/join4a > out/join2

./compare join2 "Join field separator"
