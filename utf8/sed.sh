#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

cat fixtures/dd1 |
sed 'y/Çàç/𝐂𝐚𝐜/' > out/sed1.check

./compare sed1 "Character substitution"
