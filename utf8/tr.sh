#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

cat fixtures/dd1 |
tr Çàç 𝐂𝐚𝐜 > out/tr1.check

./compare tr1 "Character substitution"

cat fixtures/dd1 |
tr '\303\207\303\240\303\247' '360\235\220\202\360\235\220\232\360\235\220\234' > out/tr2.check

./compare tr2 "Multibyte backslash representation"

cat fixtures/dd1 |
tr '\303\207\303\240\303\247' 'Cac' > out/tr3.check

./compare tr3 "Multibyte backslash representation just on LHS"

cat fixtures/dd1 |
tr '[:lower:]' '[:upper:]' > out/tr4.check

./compare tr4 "Lower to upper with character classes"

cat fixtures/tr5 |
tr '[:lower:]' '[:upper:]' > out/tr5.check

./compare tr5 "Lower to upper in Cyrillic"
