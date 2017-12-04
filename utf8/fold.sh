#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

fold -w 8 fixtures/fold1 > out/fold1.check
./compare fold1 "Split at character count"

fold -w8 -s fixtures/fold2 > out/fold2.check
./compare fold2 "Break at blanks"
