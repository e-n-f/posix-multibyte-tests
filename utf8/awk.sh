#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

awk -F'💩'  '{ print $2 }' fixtures/awk1 > out/awk1.check
./compare awk1

awk '{ print length }' fixtures/awk2 > out/awk2.check
./compare awk2

awk 'BEGIN { print index("𝐇𝐞𝐥𝐥𝐨", "𝐨"); exit 0 }' > out/awk3.check
./compare awk3

awk 'BEGIN { print substr("𝐇𝐞𝐥𝐥𝐨 𝐰𝐨𝐫𝐥𝐝", 7); exit 0 }' > out/awk4.check
./compare awk4

awk '{ print tolower($0) }' fixtures/awk5 > out/awk5.check
./compare awk5

awk '{ print toupper($0) }' fixtures/awk5 > out/awk6.check
./compare awk6
