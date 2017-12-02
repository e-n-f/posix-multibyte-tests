posix-multibyte-tests
=====================

awk
---

Field separator is an extended regular expression, which is defined
on characters, not bytes.

bc
--

Defines `LETTER` specifically as lower case `a` through `z`.

comm
----

Unspecified behavior if files are not in locale collating sequence

cut
---

* `-c` cuts on character counts
* `-d` cuts at delimiter characters

dd
--

`conv=lcase` and `conv=ucase` do case folding

diff
----

* `-b` ignores end of line whitespace, which is locale-defined

ed
--

Marks are a letter from the portable character set

fold
----

Counts characters.

* `-s` has a special case for blanks, which are locale-defined

join
----

Files are to be sorted with `sort -b`

* `-t` specifies the field separator character; requires `sort` without `-b`.



