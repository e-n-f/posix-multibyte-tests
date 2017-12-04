#!/bin/sh

LC_ALL=en_US.UTF-8
export LC_ALL

mkdir -p tmp

awk '{ 
	if (NR % 2 == 0) {
		printf(" ");
	}
	print;
}' fixtures/names |
sort > tmp/names

awk '(NR % 3 == 0 || NR % 3 == 1)' tmp/names > tmp/names1
awk '(NR % 3 == 1 || NR % 3 == 2)' tmp/names > tmp/names2

comm tmp/names1 tmp/names2 > out/comm1.check

awk '{
	if (NR % 3 == 1) {
		printf("\t\t");
	}
	if (NR % 3 == 2) {
		printf("\t");
	}
	print;
}' tmp/names > out/comm1

./compare comm1 "Comm agrees with sort"
