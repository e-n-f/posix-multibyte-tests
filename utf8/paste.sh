#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

cat fixtures/names | paste -d💩𝗼 - - - - > out/paste1.check

./compare paste1 "Paste field separator"
