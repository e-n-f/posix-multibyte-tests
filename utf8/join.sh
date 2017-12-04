#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

mkdir -p tmp

sort -b -k1 fixtures/join1 > tmp/join1
sort -b -k1 fixtures/join2 > tmp/join2

join tmp/join1 tmp/join2 > out/join1.check
sort fixtures/join2a > out/join1

./compare join1 "Sort and join agree"
