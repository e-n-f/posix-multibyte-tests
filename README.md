posix-multibyte-tests
=====================

awk
---

Field separator is an extended regular expression, which is defined
on characters, not bytes.

`length`, `index`, and `substr` count characters.

`tolower` and `toupper` transform strings according to the locale.

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

ls
--

Writes filenames in collating sequence order

* `-q` transforms unprintable characters
* `-r` reverses collation

mailx
-----

* `escape=` sets the tilde escape character

paste
-----

* `-d` sets delimiter characters

pr
--

* `-e` can expand some arbitrary character instead of tab
* `-i` can unexpand some arbitrary character instead of tab
* `-n` takes a character for the separator
* `-s` takes a character for the column separator
* `-w` counts columns: are these characters?

sed
---

* `y` transliterates characters

sort
----

Uses locale collation

* `-d`: Only blanks and alphanumeric characters count for collation
* `-f`: Folds case
* `-i`: Ignores nonprintable characters
* `-n`: Sorts on locale-defined numbers
* `-b`: Ignores leading blanks
* `-t`: Sets field separator character

tr
--

Transliterates characters

Multibyte characters are written as multiple \nnn sequences

uniq
----

* `-f` skips fields defined by locale blanks
* `-s` ignores a number of characters

wc
--

* `-m` counts characters

ex
--

Buffer and mark names are lowercase letters of the POSIX locale

Substitutions can use `\l`, `\u`, `\L`, `\U` for case mapping

`paragraphs` and `sections` work by character pairs

expand
------

Counts characters for tab expansion

more
----

Backspacing for underlining and bold works on characters (but only when output is a terminal anyway)

strings
-------

Looks for runs of printable characters

unexpand
--------

Counts characters; looks for locale blanks

vi
--

Don't know how to test this
