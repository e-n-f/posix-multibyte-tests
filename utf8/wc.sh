#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

wc -m fixtures/cut1 > out/wc1.check

./compare wc1 "Count characters"
