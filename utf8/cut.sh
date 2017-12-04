#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

cut -c5-10 fixtures/cut1 > out/cut1.check
./compare cut1 "Substring"

cut -f2 -d 💩 fixtures/cut2 > out/cut2.check
./compare cut2 "Field separator"
