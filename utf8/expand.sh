#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

expand fixtures/expand1 > out/expand1.check

./compare expand1 "Expand around multibyte characters"
