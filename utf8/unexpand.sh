#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

unexpand fixtures/unexpand1 > out/unexpand1.check

./compare unexpand "Unexpand around multibyte characters"
