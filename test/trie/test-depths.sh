#!/bin/bash

# Copyright (C) 2016  Stefan Vargyas
# 
# This file is part of Json-Type.
# 
# Json-Type is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# Json-Type is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with Json-Type.  If not, see <http://www.gnu.org/licenses/>.

#
# File generated by a command like:
# $ json-gentest -C trie:depths
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L depths.old <(echo \
'$ test -x ../lib/test-trie
$ print() { printf '\''%s\n'\'' "$@"; }
$ set -o pipefail
$ test-trie() { ../lib/test-trie -D; }
$ print|test-trie
iter:     1
sib-iter: 1
lvl-iter: 1
$ print a b|test-trie
iter:     3
sib-iter: 2
lvl-iter: 2
$ print b a|test-trie
iter:     3
sib-iter: 2
lvl-iter: 2
$ print a b c|test-trie
iter:     4
sib-iter: 3
lvl-iter: 3
$ print b c a|test-trie
iter:     3
sib-iter: 2
lvl-iter: 3
$ print c b a|test-trie
iter:     4
sib-iter: 3
lvl-iter: 3
$ print a c b|test-trie
iter:     4
sib-iter: 3
lvl-iter: 3
$ print b a c|test-trie
iter:     3
sib-iter: 2
lvl-iter: 3
$ print c a b|test-trie
iter:     4
sib-iter: 3
lvl-iter: 3
$ print ab|test-trie
iter:     3
sib-iter: 1
lvl-iter: 1
$ print z ax abc abd aef aeg|test-trie
iter:     8
sib-iter: 2
lvl-iter: 6
$ print aef ae abg a abc ab abd|test-trie
iter:     7
sib-iter: 1
lvl-iter: 7
$ print '\'''\'' a|test-trie
iter:     3
sib-iter: 2
lvl-iter: 2
$ print aw ax by bz|test-trie
iter:     5
sib-iter: 2
lvl-iter: 4'
) -L depths.new <(
echo '$ test -x ../lib/test-trie'
test -x ../lib/test-trie 2>&1 ||
echo 'command failed: test -x ../lib/test-trie'

echo '$ print() { printf '\''%s\n'\'' "$@"; }'
print() { printf '%s\n' "$@"; } 2>&1 ||
echo 'command failed: print() { printf '\''%s\n'\'' "$@"; }'

echo '$ set -o pipefail'
set -o pipefail 2>&1 ||
echo 'command failed: set -o pipefail'

echo '$ test-trie() { ../lib/test-trie -D; }'
test-trie() { ../lib/test-trie -D; } 2>&1 ||
echo 'command failed: test-trie() { ../lib/test-trie -D; }'

echo '$ print|test-trie'
print|test-trie 2>&1 ||
echo 'command failed: print|test-trie'

echo '$ print a b|test-trie'
print a b|test-trie 2>&1 ||
echo 'command failed: print a b|test-trie'

echo '$ print b a|test-trie'
print b a|test-trie 2>&1 ||
echo 'command failed: print b a|test-trie'

echo '$ print a b c|test-trie'
print a b c|test-trie 2>&1 ||
echo 'command failed: print a b c|test-trie'

echo '$ print b c a|test-trie'
print b c a|test-trie 2>&1 ||
echo 'command failed: print b c a|test-trie'

echo '$ print c b a|test-trie'
print c b a|test-trie 2>&1 ||
echo 'command failed: print c b a|test-trie'

echo '$ print a c b|test-trie'
print a c b|test-trie 2>&1 ||
echo 'command failed: print a c b|test-trie'

echo '$ print b a c|test-trie'
print b a c|test-trie 2>&1 ||
echo 'command failed: print b a c|test-trie'

echo '$ print c a b|test-trie'
print c a b|test-trie 2>&1 ||
echo 'command failed: print c a b|test-trie'

echo '$ print ab|test-trie'
print ab|test-trie 2>&1 ||
echo 'command failed: print ab|test-trie'

echo '$ print z ax abc abd aef aeg|test-trie'
print z ax abc abd aef aeg|test-trie 2>&1 ||
echo 'command failed: print z ax abc abd aef aeg|test-trie'

echo '$ print aef ae abg a abc ab abd|test-trie'
print aef ae abg a abc ab abd|test-trie 2>&1 ||
echo 'command failed: print aef ae abg a abc ab abd|test-trie'

echo '$ print '\'''\'' a|test-trie'
print '' a|test-trie 2>&1 ||
echo 'command failed: print '\'''\'' a|test-trie'

echo '$ print aw ax by bz|test-trie'
print aw ax by bz|test-trie 2>&1 ||
echo 'command failed: print aw ax by bz|test-trie'
)

