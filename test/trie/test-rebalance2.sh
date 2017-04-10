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
# $ json-gentest -C trie:rebalance2
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L rebalance2.old <(echo \
'$ test -x ../lib/test-trie
$ print() { printf '\''%s\n'\'' "$@"; }
$ set -o pipefail
$ json() { env LD_LIBRARY_PATH=../lib ../src/json --no-error "$@" || return 0; }
$ test-trie() { ../lib/test-trie -R|sed -nr '\''2{s/,?"(lo|hi)":null//g;p;q}'\''|json -Po; }
$ test-shuf() { diff -u100 -L "$1" <(print $1|test-trie) -L "shuffed $1" <(print $1|shuf|test-trie); }
$ test-shuf "'\'''\'' a"
$ test-shuf "a b"
$ test-shuf "a b c"
$ test-shuf "a b c d"
$ test-shuf "a b c d e"
$ test-shuf "x xa"
$ test-shuf "xa xb"
$ test-shuf "xa xb xc"
$ test-shuf "xa xb xc xd"
$ test-shuf "xa xb xc xd xe"
$ test-shuf "xy xya"
$ test-shuf "xya xyb"
$ test-shuf "xya xyb xyc"
$ test-shuf "xya xyb xyc xyd"
$ test-shuf "xya xyb xyc xyd xye"
$ test-shuf "xa xb xc ya yb yc za zb zc"'
) -L rebalance2.new <(
echo '$ test -x ../lib/test-trie'
test -x ../lib/test-trie 2>&1 ||
echo 'command failed: test -x ../lib/test-trie'

echo '$ print() { printf '\''%s\n'\'' "$@"; }'
print() { printf '%s\n' "$@"; } 2>&1 ||
echo 'command failed: print() { printf '\''%s\n'\'' "$@"; }'

echo '$ set -o pipefail'
set -o pipefail 2>&1 ||
echo 'command failed: set -o pipefail'

echo '$ json() { env LD_LIBRARY_PATH=../lib ../src/json --no-error "$@" || return 0; }'
json() { env LD_LIBRARY_PATH=../lib ../src/json --no-error "$@" || return 0; } 2>&1 ||
echo 'command failed: json() { env LD_LIBRARY_PATH=../lib ../src/json --no-error "$@" || return 0; }'

echo '$ test-trie() { ../lib/test-trie -R|sed -nr '\''2{s/,?"(lo|hi)":null//g;p;q}'\''|json -Po; }'
test-trie() { ../lib/test-trie -R|sed -nr '2{s/,?"(lo|hi)":null//g;p;q}'|json -Po; } 2>&1 ||
echo 'command failed: test-trie() { ../lib/test-trie -R|sed -nr '\''2{s/,?"(lo|hi)":null//g;p;q}'\''|json -Po; }'

echo '$ test-shuf() { diff -u100 -L "$1" <(print $1|test-trie) -L "shuffed $1" <(print $1|shuf|test-trie); }'
test-shuf() { diff -u100 -L "$1" <(print $1|test-trie) -L "shuffed $1" <(print $1|shuf|test-trie); } 2>&1 ||
echo 'command failed: test-shuf() { diff -u100 -L "$1" <(print $1|test-trie) -L "shuffed $1" <(print $1|shuf|test-trie); }'

echo '$ test-shuf "'\'''\'' a"'
test-shuf "'' a" 2>&1 ||
echo 'command failed: test-shuf "'\'''\'' a"'

echo '$ test-shuf "a b"'
test-shuf "a b" 2>&1 ||
echo 'command failed: test-shuf "a b"'

echo '$ test-shuf "a b c"'
test-shuf "a b c" 2>&1 ||
echo 'command failed: test-shuf "a b c"'

echo '$ test-shuf "a b c d"'
test-shuf "a b c d" 2>&1 ||
echo 'command failed: test-shuf "a b c d"'

echo '$ test-shuf "a b c d e"'
test-shuf "a b c d e" 2>&1 ||
echo 'command failed: test-shuf "a b c d e"'

echo '$ test-shuf "x xa"'
test-shuf "x xa" 2>&1 ||
echo 'command failed: test-shuf "x xa"'

echo '$ test-shuf "xa xb"'
test-shuf "xa xb" 2>&1 ||
echo 'command failed: test-shuf "xa xb"'

echo '$ test-shuf "xa xb xc"'
test-shuf "xa xb xc" 2>&1 ||
echo 'command failed: test-shuf "xa xb xc"'

echo '$ test-shuf "xa xb xc xd"'
test-shuf "xa xb xc xd" 2>&1 ||
echo 'command failed: test-shuf "xa xb xc xd"'

echo '$ test-shuf "xa xb xc xd xe"'
test-shuf "xa xb xc xd xe" 2>&1 ||
echo 'command failed: test-shuf "xa xb xc xd xe"'

echo '$ test-shuf "xy xya"'
test-shuf "xy xya" 2>&1 ||
echo 'command failed: test-shuf "xy xya"'

echo '$ test-shuf "xya xyb"'
test-shuf "xya xyb" 2>&1 ||
echo 'command failed: test-shuf "xya xyb"'

echo '$ test-shuf "xya xyb xyc"'
test-shuf "xya xyb xyc" 2>&1 ||
echo 'command failed: test-shuf "xya xyb xyc"'

echo '$ test-shuf "xya xyb xyc xyd"'
test-shuf "xya xyb xyc xyd" 2>&1 ||
echo 'command failed: test-shuf "xya xyb xyc xyd"'

echo '$ test-shuf "xya xyb xyc xyd xye"'
test-shuf "xya xyb xyc xyd xye" 2>&1 ||
echo 'command failed: test-shuf "xya xyb xyc xyd xye"'

echo '$ test-shuf "xa xb xc ya yb yc za zb zc"'
test-shuf "xa xb xc ya yb yc za zb zc" 2>&1 ||
echo 'command failed: test-shuf "xa xb xc ya yb yc za zb zc"'
)
