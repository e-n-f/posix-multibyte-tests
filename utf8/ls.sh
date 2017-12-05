#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

rm -rf tmp
mkdir -p tmp

cat fixtures/names |
while read name
do
	touch "tmp/$name"
done

ls tmp > out/ls1.check
ls tmp | sort > out/ls1

# This is still weird on the Mac because the file system
# does Unicode normalization, so the output of ls isn't
# the same as sorting the original list of filenames

./compare ls1 "Sort and ls agree"
