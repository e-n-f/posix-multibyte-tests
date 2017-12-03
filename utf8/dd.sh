#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

dd conv=lcase < fixtures/dd1 > out/dd1.check
./compare dd1

dd conv=ucase < fixtures/dd1 > out/dd2.check
./compare dd2
