#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

unexpand -a fixtures/unexpand1 > out/unexpand1.check

./compare unexpand1 "Unexpand around multibyte characters"
