#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

diff -b fixtures/diff1a fixtures/diff1b > out/diff1.check
./compare diff1 "Ignore end-of-line whitespace"
