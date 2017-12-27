#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

cat fixtures/dd1 |
sed 'y/Çàç/𝐂𝐚𝐜/' > out/sed1.check

./compare sed1 "Character substitution"

cat fixtures/sed2 |
sed 's/𝐥*/𝑙/' > out/sed2.check

./compare sed2 "Regular expression star"

cat fixtures/sed2 |
sed 's/[𝐥]*//g' > out/sed3.check

./compare sed3 "Regular expression star with brackets"

cat fixtures/sed2 |
sed 's/𝐥.//g' > out/sed4.check

./compare sed4 "Regular expression dot"
