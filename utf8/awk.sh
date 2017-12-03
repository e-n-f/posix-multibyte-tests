#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

awk -F'💩'  '{print $2}' fixtures/awk1 > out/awk1.check
./compare awk1
