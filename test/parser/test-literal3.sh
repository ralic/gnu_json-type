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
# $ json-gentest -C parser:literal3
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L literal3.old <(echo \
'$ json0() { LD_LIBRARY_PATH=../lib ../src/json --pretty --verbose "$@"; }
$ json() { json0 --literal-value "$@"; }
$ echo -e '\''n\r'\''|json -b 1
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: n\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''n\r'\''|json -b 1
$ echo -e '\''n\r'\''|json -b 2
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: n\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''n\r'\''|json -b 2
$ echo -e '\''n\r'\''|json -b 3
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: n\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''n\r'\''|json -b 3
$ echo -e '\''n\r'\''|json -b 4
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: n\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''n\r'\''|json -b 4
$ echo -e '\''n\r'\''|json -b 5
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: n\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''n\r'\''|json -b 5
$ echo -e '\''n\r'\''|json -b 6
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: n\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''n\r'\''|json -b 6
$ echo -e '\''n\r'\''|json -b 7
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: n\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''n\r'\''|json -b 7
$ echo -e '\''n\r'\''|json -b 8
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: n\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''n\r'\''|json -b 8
$ echo -e '\''nu\r'\''|json -b 1
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: nu\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''nu\r'\''|json -b 1
$ echo -e '\''nu\r'\''|json -b 2
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: nu\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''nu\r'\''|json -b 2
$ echo -e '\''nu\r'\''|json -b 3
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: nu\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''nu\r'\''|json -b 3
$ echo -e '\''nu\r'\''|json -b 4
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: nu\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''nu\r'\''|json -b 4
$ echo -e '\''nu\r'\''|json -b 5
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: nu\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''nu\r'\''|json -b 5
$ echo -e '\''nu\r'\''|json -b 6
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: nu\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''nu\r'\''|json -b 6
$ echo -e '\''nu\r'\''|json -b 7
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: nu\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''nu\r'\''|json -b 7
$ echo -e '\''nu\r'\''|json -b 8
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: nu\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''nu\r'\''|json -b 8
$ echo -e '\''nul\r'\''|json -b 1
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: nul\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''nul\r'\''|json -b 1
$ echo -e '\''nul\r'\''|json -b 2
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: nul\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''nul\r'\''|json -b 2
$ echo -e '\''nul\r'\''|json -b 3
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: nul\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''nul\r'\''|json -b 3
$ echo -e '\''nul\r'\''|json -b 4
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: nul\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''nul\r'\''|json -b 4
$ echo -e '\''nul\r'\''|json -b 5
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: nul\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''nul\r'\''|json -b 5
$ echo -e '\''nul\r'\''|json -b 6
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: nul\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''nul\r'\''|json -b 6
$ echo -e '\''nul\r'\''|json -b 7
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: nul\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''nul\r'\''|json -b 7
$ echo -e '\''nul\r'\''|json -b 8
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: nul\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''nul\r'\''|json -b 8
$ echo -e '\''f\r'\''|json -b 1
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: f\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''f\r'\''|json -b 1
$ echo -e '\''f\r'\''|json -b 2
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: f\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''f\r'\''|json -b 2
$ echo -e '\''f\r'\''|json -b 3
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: f\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''f\r'\''|json -b 3
$ echo -e '\''f\r'\''|json -b 4
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: f\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''f\r'\''|json -b 4
$ echo -e '\''f\r'\''|json -b 5
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: f\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''f\r'\''|json -b 5
$ echo -e '\''f\r'\''|json -b 6
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: f\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''f\r'\''|json -b 6
$ echo -e '\''f\r'\''|json -b 7
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: f\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''f\r'\''|json -b 7
$ echo -e '\''f\r'\''|json -b 8
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: f\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''f\r'\''|json -b 8
$ echo -e '\''fa\r'\''|json -b 1
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: fa\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''fa\r'\''|json -b 1
$ echo -e '\''fa\r'\''|json -b 2
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: fa\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''fa\r'\''|json -b 2
$ echo -e '\''fa\r'\''|json -b 3
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: fa\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''fa\r'\''|json -b 3
$ echo -e '\''fa\r'\''|json -b 4
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: fa\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''fa\r'\''|json -b 4
$ echo -e '\''fa\r'\''|json -b 5
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: fa\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''fa\r'\''|json -b 5
$ echo -e '\''fa\r'\''|json -b 6
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: fa\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''fa\r'\''|json -b 6
$ echo -e '\''fa\r'\''|json -b 7
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: fa\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''fa\r'\''|json -b 7
$ echo -e '\''fa\r'\''|json -b 8
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: fa\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''fa\r'\''|json -b 8
$ echo -e '\''fal\r'\''|json -b 1
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: fal\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''fal\r'\''|json -b 1
$ echo -e '\''fal\r'\''|json -b 2
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: fal\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''fal\r'\''|json -b 2
$ echo -e '\''fal\r'\''|json -b 3
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: fal\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''fal\r'\''|json -b 3
$ echo -e '\''fal\r'\''|json -b 4
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: fal\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''fal\r'\''|json -b 4
$ echo -e '\''fal\r'\''|json -b 5
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: fal\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''fal\r'\''|json -b 5
$ echo -e '\''fal\r'\''|json -b 6
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: fal\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''fal\r'\''|json -b 6
$ echo -e '\''fal\r'\''|json -b 7
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: fal\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''fal\r'\''|json -b 7
$ echo -e '\''fal\r'\''|json -b 8
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: fal\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''fal\r'\''|json -b 8
$ echo -e '\''fals\r'\''|json -b 1
json: error: <stdin>:1:5: lex error: invalid literal
json: error: <stdin>:1:5: fals\r
json: error: <stdin>:1:5:     ^
command failed: echo -e '\''fals\r'\''|json -b 1
$ echo -e '\''fals\r'\''|json -b 2
json: error: <stdin>:1:5: lex error: invalid literal
json: error: <stdin>:1:5: fals\r
json: error: <stdin>:1:5:     ^
command failed: echo -e '\''fals\r'\''|json -b 2
$ echo -e '\''fals\r'\''|json -b 3
json: error: <stdin>:1:5: lex error: invalid literal
json: error: <stdin>:1:5: fals\r
json: error: <stdin>:1:5:     ^
command failed: echo -e '\''fals\r'\''|json -b 3
$ echo -e '\''fals\r'\''|json -b 4
json: error: <stdin>:1:5: lex error: invalid literal
json: error: <stdin>:1:5: fals\r
json: error: <stdin>:1:5:     ^
command failed: echo -e '\''fals\r'\''|json -b 4
$ echo -e '\''fals\r'\''|json -b 5
json: error: <stdin>:1:5: lex error: invalid literal
json: error: <stdin>:1:5: fals\r
json: error: <stdin>:1:5:     ^
command failed: echo -e '\''fals\r'\''|json -b 5
$ echo -e '\''fals\r'\''|json -b 6
json: error: <stdin>:1:5: lex error: invalid literal
json: error: <stdin>:1:5: fals\r
json: error: <stdin>:1:5:     ^
command failed: echo -e '\''fals\r'\''|json -b 6
$ echo -e '\''fals\r'\''|json -b 7
json: error: <stdin>:1:5: lex error: invalid literal
json: error: <stdin>:1:5: fals\r
json: error: <stdin>:1:5:     ^
command failed: echo -e '\''fals\r'\''|json -b 7
$ echo -e '\''fals\r'\''|json -b 8
json: error: <stdin>:1:5: lex error: invalid literal
json: error: <stdin>:1:5: fals\r
json: error: <stdin>:1:5:     ^
command failed: echo -e '\''fals\r'\''|json -b 8
$ echo -e '\''t\r'\''|json -b 1
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: t\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''t\r'\''|json -b 1
$ echo -e '\''t\r'\''|json -b 2
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: t\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''t\r'\''|json -b 2
$ echo -e '\''t\r'\''|json -b 3
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: t\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''t\r'\''|json -b 3
$ echo -e '\''t\r'\''|json -b 4
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: t\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''t\r'\''|json -b 4
$ echo -e '\''t\r'\''|json -b 5
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: t\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''t\r'\''|json -b 5
$ echo -e '\''t\r'\''|json -b 6
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: t\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''t\r'\''|json -b 6
$ echo -e '\''t\r'\''|json -b 7
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: t\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''t\r'\''|json -b 7
$ echo -e '\''t\r'\''|json -b 8
json: error: <stdin>:1:2: lex error: invalid literal
json: error: <stdin>:1:2: t\r
json: error: <stdin>:1:2:  ^
command failed: echo -e '\''t\r'\''|json -b 8
$ echo -e '\''tr\r'\''|json -b 1
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: tr\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''tr\r'\''|json -b 1
$ echo -e '\''tr\r'\''|json -b 2
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: tr\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''tr\r'\''|json -b 2
$ echo -e '\''tr\r'\''|json -b 3
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: tr\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''tr\r'\''|json -b 3
$ echo -e '\''tr\r'\''|json -b 4
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: tr\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''tr\r'\''|json -b 4
$ echo -e '\''tr\r'\''|json -b 5
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: tr\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''tr\r'\''|json -b 5
$ echo -e '\''tr\r'\''|json -b 6
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: tr\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''tr\r'\''|json -b 6
$ echo -e '\''tr\r'\''|json -b 7
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: tr\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''tr\r'\''|json -b 7
$ echo -e '\''tr\r'\''|json -b 8
json: error: <stdin>:1:3: lex error: invalid literal
json: error: <stdin>:1:3: tr\r
json: error: <stdin>:1:3:   ^
command failed: echo -e '\''tr\r'\''|json -b 8
$ echo -e '\''tru\r'\''|json -b 1
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: tru\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''tru\r'\''|json -b 1
$ echo -e '\''tru\r'\''|json -b 2
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: tru\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''tru\r'\''|json -b 2
$ echo -e '\''tru\r'\''|json -b 3
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: tru\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''tru\r'\''|json -b 3
$ echo -e '\''tru\r'\''|json -b 4
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: tru\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''tru\r'\''|json -b 4
$ echo -e '\''tru\r'\''|json -b 5
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: tru\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''tru\r'\''|json -b 5
$ echo -e '\''tru\r'\''|json -b 6
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: tru\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''tru\r'\''|json -b 6
$ echo -e '\''tru\r'\''|json -b 7
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: tru\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''tru\r'\''|json -b 7
$ echo -e '\''tru\r'\''|json -b 8
json: error: <stdin>:1:4: lex error: invalid literal
json: error: <stdin>:1:4: tru\r
json: error: <stdin>:1:4:    ^
command failed: echo -e '\''tru\r'\''|json -b 8'
) -L literal3.new <(
echo '$ json0() { LD_LIBRARY_PATH=../lib ../src/json --pretty --verbose "$@"; }'
json0() { LD_LIBRARY_PATH=../lib ../src/json --pretty --verbose "$@"; } 2>&1 ||
echo 'command failed: json0() { LD_LIBRARY_PATH=../lib ../src/json --pretty --verbose "$@"; }'

echo '$ json() { json0 --literal-value "$@"; }'
json() { json0 --literal-value "$@"; } 2>&1 ||
echo 'command failed: json() { json0 --literal-value "$@"; }'

echo '$ echo -e '\''n\r'\''|json -b 1'
echo -e 'n\r'|json -b 1 2>&1 ||
echo 'command failed: echo -e '\''n\r'\''|json -b 1'

echo '$ echo -e '\''n\r'\''|json -b 2'
echo -e 'n\r'|json -b 2 2>&1 ||
echo 'command failed: echo -e '\''n\r'\''|json -b 2'

echo '$ echo -e '\''n\r'\''|json -b 3'
echo -e 'n\r'|json -b 3 2>&1 ||
echo 'command failed: echo -e '\''n\r'\''|json -b 3'

echo '$ echo -e '\''n\r'\''|json -b 4'
echo -e 'n\r'|json -b 4 2>&1 ||
echo 'command failed: echo -e '\''n\r'\''|json -b 4'

echo '$ echo -e '\''n\r'\''|json -b 5'
echo -e 'n\r'|json -b 5 2>&1 ||
echo 'command failed: echo -e '\''n\r'\''|json -b 5'

echo '$ echo -e '\''n\r'\''|json -b 6'
echo -e 'n\r'|json -b 6 2>&1 ||
echo 'command failed: echo -e '\''n\r'\''|json -b 6'

echo '$ echo -e '\''n\r'\''|json -b 7'
echo -e 'n\r'|json -b 7 2>&1 ||
echo 'command failed: echo -e '\''n\r'\''|json -b 7'

echo '$ echo -e '\''n\r'\''|json -b 8'
echo -e 'n\r'|json -b 8 2>&1 ||
echo 'command failed: echo -e '\''n\r'\''|json -b 8'

echo '$ echo -e '\''nu\r'\''|json -b 1'
echo -e 'nu\r'|json -b 1 2>&1 ||
echo 'command failed: echo -e '\''nu\r'\''|json -b 1'

echo '$ echo -e '\''nu\r'\''|json -b 2'
echo -e 'nu\r'|json -b 2 2>&1 ||
echo 'command failed: echo -e '\''nu\r'\''|json -b 2'

echo '$ echo -e '\''nu\r'\''|json -b 3'
echo -e 'nu\r'|json -b 3 2>&1 ||
echo 'command failed: echo -e '\''nu\r'\''|json -b 3'

echo '$ echo -e '\''nu\r'\''|json -b 4'
echo -e 'nu\r'|json -b 4 2>&1 ||
echo 'command failed: echo -e '\''nu\r'\''|json -b 4'

echo '$ echo -e '\''nu\r'\''|json -b 5'
echo -e 'nu\r'|json -b 5 2>&1 ||
echo 'command failed: echo -e '\''nu\r'\''|json -b 5'

echo '$ echo -e '\''nu\r'\''|json -b 6'
echo -e 'nu\r'|json -b 6 2>&1 ||
echo 'command failed: echo -e '\''nu\r'\''|json -b 6'

echo '$ echo -e '\''nu\r'\''|json -b 7'
echo -e 'nu\r'|json -b 7 2>&1 ||
echo 'command failed: echo -e '\''nu\r'\''|json -b 7'

echo '$ echo -e '\''nu\r'\''|json -b 8'
echo -e 'nu\r'|json -b 8 2>&1 ||
echo 'command failed: echo -e '\''nu\r'\''|json -b 8'

echo '$ echo -e '\''nul\r'\''|json -b 1'
echo -e 'nul\r'|json -b 1 2>&1 ||
echo 'command failed: echo -e '\''nul\r'\''|json -b 1'

echo '$ echo -e '\''nul\r'\''|json -b 2'
echo -e 'nul\r'|json -b 2 2>&1 ||
echo 'command failed: echo -e '\''nul\r'\''|json -b 2'

echo '$ echo -e '\''nul\r'\''|json -b 3'
echo -e 'nul\r'|json -b 3 2>&1 ||
echo 'command failed: echo -e '\''nul\r'\''|json -b 3'

echo '$ echo -e '\''nul\r'\''|json -b 4'
echo -e 'nul\r'|json -b 4 2>&1 ||
echo 'command failed: echo -e '\''nul\r'\''|json -b 4'

echo '$ echo -e '\''nul\r'\''|json -b 5'
echo -e 'nul\r'|json -b 5 2>&1 ||
echo 'command failed: echo -e '\''nul\r'\''|json -b 5'

echo '$ echo -e '\''nul\r'\''|json -b 6'
echo -e 'nul\r'|json -b 6 2>&1 ||
echo 'command failed: echo -e '\''nul\r'\''|json -b 6'

echo '$ echo -e '\''nul\r'\''|json -b 7'
echo -e 'nul\r'|json -b 7 2>&1 ||
echo 'command failed: echo -e '\''nul\r'\''|json -b 7'

echo '$ echo -e '\''nul\r'\''|json -b 8'
echo -e 'nul\r'|json -b 8 2>&1 ||
echo 'command failed: echo -e '\''nul\r'\''|json -b 8'

echo '$ echo -e '\''f\r'\''|json -b 1'
echo -e 'f\r'|json -b 1 2>&1 ||
echo 'command failed: echo -e '\''f\r'\''|json -b 1'

echo '$ echo -e '\''f\r'\''|json -b 2'
echo -e 'f\r'|json -b 2 2>&1 ||
echo 'command failed: echo -e '\''f\r'\''|json -b 2'

echo '$ echo -e '\''f\r'\''|json -b 3'
echo -e 'f\r'|json -b 3 2>&1 ||
echo 'command failed: echo -e '\''f\r'\''|json -b 3'

echo '$ echo -e '\''f\r'\''|json -b 4'
echo -e 'f\r'|json -b 4 2>&1 ||
echo 'command failed: echo -e '\''f\r'\''|json -b 4'

echo '$ echo -e '\''f\r'\''|json -b 5'
echo -e 'f\r'|json -b 5 2>&1 ||
echo 'command failed: echo -e '\''f\r'\''|json -b 5'

echo '$ echo -e '\''f\r'\''|json -b 6'
echo -e 'f\r'|json -b 6 2>&1 ||
echo 'command failed: echo -e '\''f\r'\''|json -b 6'

echo '$ echo -e '\''f\r'\''|json -b 7'
echo -e 'f\r'|json -b 7 2>&1 ||
echo 'command failed: echo -e '\''f\r'\''|json -b 7'

echo '$ echo -e '\''f\r'\''|json -b 8'
echo -e 'f\r'|json -b 8 2>&1 ||
echo 'command failed: echo -e '\''f\r'\''|json -b 8'

echo '$ echo -e '\''fa\r'\''|json -b 1'
echo -e 'fa\r'|json -b 1 2>&1 ||
echo 'command failed: echo -e '\''fa\r'\''|json -b 1'

echo '$ echo -e '\''fa\r'\''|json -b 2'
echo -e 'fa\r'|json -b 2 2>&1 ||
echo 'command failed: echo -e '\''fa\r'\''|json -b 2'

echo '$ echo -e '\''fa\r'\''|json -b 3'
echo -e 'fa\r'|json -b 3 2>&1 ||
echo 'command failed: echo -e '\''fa\r'\''|json -b 3'

echo '$ echo -e '\''fa\r'\''|json -b 4'
echo -e 'fa\r'|json -b 4 2>&1 ||
echo 'command failed: echo -e '\''fa\r'\''|json -b 4'

echo '$ echo -e '\''fa\r'\''|json -b 5'
echo -e 'fa\r'|json -b 5 2>&1 ||
echo 'command failed: echo -e '\''fa\r'\''|json -b 5'

echo '$ echo -e '\''fa\r'\''|json -b 6'
echo -e 'fa\r'|json -b 6 2>&1 ||
echo 'command failed: echo -e '\''fa\r'\''|json -b 6'

echo '$ echo -e '\''fa\r'\''|json -b 7'
echo -e 'fa\r'|json -b 7 2>&1 ||
echo 'command failed: echo -e '\''fa\r'\''|json -b 7'

echo '$ echo -e '\''fa\r'\''|json -b 8'
echo -e 'fa\r'|json -b 8 2>&1 ||
echo 'command failed: echo -e '\''fa\r'\''|json -b 8'

echo '$ echo -e '\''fal\r'\''|json -b 1'
echo -e 'fal\r'|json -b 1 2>&1 ||
echo 'command failed: echo -e '\''fal\r'\''|json -b 1'

echo '$ echo -e '\''fal\r'\''|json -b 2'
echo -e 'fal\r'|json -b 2 2>&1 ||
echo 'command failed: echo -e '\''fal\r'\''|json -b 2'

echo '$ echo -e '\''fal\r'\''|json -b 3'
echo -e 'fal\r'|json -b 3 2>&1 ||
echo 'command failed: echo -e '\''fal\r'\''|json -b 3'

echo '$ echo -e '\''fal\r'\''|json -b 4'
echo -e 'fal\r'|json -b 4 2>&1 ||
echo 'command failed: echo -e '\''fal\r'\''|json -b 4'

echo '$ echo -e '\''fal\r'\''|json -b 5'
echo -e 'fal\r'|json -b 5 2>&1 ||
echo 'command failed: echo -e '\''fal\r'\''|json -b 5'

echo '$ echo -e '\''fal\r'\''|json -b 6'
echo -e 'fal\r'|json -b 6 2>&1 ||
echo 'command failed: echo -e '\''fal\r'\''|json -b 6'

echo '$ echo -e '\''fal\r'\''|json -b 7'
echo -e 'fal\r'|json -b 7 2>&1 ||
echo 'command failed: echo -e '\''fal\r'\''|json -b 7'

echo '$ echo -e '\''fal\r'\''|json -b 8'
echo -e 'fal\r'|json -b 8 2>&1 ||
echo 'command failed: echo -e '\''fal\r'\''|json -b 8'

echo '$ echo -e '\''fals\r'\''|json -b 1'
echo -e 'fals\r'|json -b 1 2>&1 ||
echo 'command failed: echo -e '\''fals\r'\''|json -b 1'

echo '$ echo -e '\''fals\r'\''|json -b 2'
echo -e 'fals\r'|json -b 2 2>&1 ||
echo 'command failed: echo -e '\''fals\r'\''|json -b 2'

echo '$ echo -e '\''fals\r'\''|json -b 3'
echo -e 'fals\r'|json -b 3 2>&1 ||
echo 'command failed: echo -e '\''fals\r'\''|json -b 3'

echo '$ echo -e '\''fals\r'\''|json -b 4'
echo -e 'fals\r'|json -b 4 2>&1 ||
echo 'command failed: echo -e '\''fals\r'\''|json -b 4'

echo '$ echo -e '\''fals\r'\''|json -b 5'
echo -e 'fals\r'|json -b 5 2>&1 ||
echo 'command failed: echo -e '\''fals\r'\''|json -b 5'

echo '$ echo -e '\''fals\r'\''|json -b 6'
echo -e 'fals\r'|json -b 6 2>&1 ||
echo 'command failed: echo -e '\''fals\r'\''|json -b 6'

echo '$ echo -e '\''fals\r'\''|json -b 7'
echo -e 'fals\r'|json -b 7 2>&1 ||
echo 'command failed: echo -e '\''fals\r'\''|json -b 7'

echo '$ echo -e '\''fals\r'\''|json -b 8'
echo -e 'fals\r'|json -b 8 2>&1 ||
echo 'command failed: echo -e '\''fals\r'\''|json -b 8'

echo '$ echo -e '\''t\r'\''|json -b 1'
echo -e 't\r'|json -b 1 2>&1 ||
echo 'command failed: echo -e '\''t\r'\''|json -b 1'

echo '$ echo -e '\''t\r'\''|json -b 2'
echo -e 't\r'|json -b 2 2>&1 ||
echo 'command failed: echo -e '\''t\r'\''|json -b 2'

echo '$ echo -e '\''t\r'\''|json -b 3'
echo -e 't\r'|json -b 3 2>&1 ||
echo 'command failed: echo -e '\''t\r'\''|json -b 3'

echo '$ echo -e '\''t\r'\''|json -b 4'
echo -e 't\r'|json -b 4 2>&1 ||
echo 'command failed: echo -e '\''t\r'\''|json -b 4'

echo '$ echo -e '\''t\r'\''|json -b 5'
echo -e 't\r'|json -b 5 2>&1 ||
echo 'command failed: echo -e '\''t\r'\''|json -b 5'

echo '$ echo -e '\''t\r'\''|json -b 6'
echo -e 't\r'|json -b 6 2>&1 ||
echo 'command failed: echo -e '\''t\r'\''|json -b 6'

echo '$ echo -e '\''t\r'\''|json -b 7'
echo -e 't\r'|json -b 7 2>&1 ||
echo 'command failed: echo -e '\''t\r'\''|json -b 7'

echo '$ echo -e '\''t\r'\''|json -b 8'
echo -e 't\r'|json -b 8 2>&1 ||
echo 'command failed: echo -e '\''t\r'\''|json -b 8'

echo '$ echo -e '\''tr\r'\''|json -b 1'
echo -e 'tr\r'|json -b 1 2>&1 ||
echo 'command failed: echo -e '\''tr\r'\''|json -b 1'

echo '$ echo -e '\''tr\r'\''|json -b 2'
echo -e 'tr\r'|json -b 2 2>&1 ||
echo 'command failed: echo -e '\''tr\r'\''|json -b 2'

echo '$ echo -e '\''tr\r'\''|json -b 3'
echo -e 'tr\r'|json -b 3 2>&1 ||
echo 'command failed: echo -e '\''tr\r'\''|json -b 3'

echo '$ echo -e '\''tr\r'\''|json -b 4'
echo -e 'tr\r'|json -b 4 2>&1 ||
echo 'command failed: echo -e '\''tr\r'\''|json -b 4'

echo '$ echo -e '\''tr\r'\''|json -b 5'
echo -e 'tr\r'|json -b 5 2>&1 ||
echo 'command failed: echo -e '\''tr\r'\''|json -b 5'

echo '$ echo -e '\''tr\r'\''|json -b 6'
echo -e 'tr\r'|json -b 6 2>&1 ||
echo 'command failed: echo -e '\''tr\r'\''|json -b 6'

echo '$ echo -e '\''tr\r'\''|json -b 7'
echo -e 'tr\r'|json -b 7 2>&1 ||
echo 'command failed: echo -e '\''tr\r'\''|json -b 7'

echo '$ echo -e '\''tr\r'\''|json -b 8'
echo -e 'tr\r'|json -b 8 2>&1 ||
echo 'command failed: echo -e '\''tr\r'\''|json -b 8'

echo '$ echo -e '\''tru\r'\''|json -b 1'
echo -e 'tru\r'|json -b 1 2>&1 ||
echo 'command failed: echo -e '\''tru\r'\''|json -b 1'

echo '$ echo -e '\''tru\r'\''|json -b 2'
echo -e 'tru\r'|json -b 2 2>&1 ||
echo 'command failed: echo -e '\''tru\r'\''|json -b 2'

echo '$ echo -e '\''tru\r'\''|json -b 3'
echo -e 'tru\r'|json -b 3 2>&1 ||
echo 'command failed: echo -e '\''tru\r'\''|json -b 3'

echo '$ echo -e '\''tru\r'\''|json -b 4'
echo -e 'tru\r'|json -b 4 2>&1 ||
echo 'command failed: echo -e '\''tru\r'\''|json -b 4'

echo '$ echo -e '\''tru\r'\''|json -b 5'
echo -e 'tru\r'|json -b 5 2>&1 ||
echo 'command failed: echo -e '\''tru\r'\''|json -b 5'

echo '$ echo -e '\''tru\r'\''|json -b 6'
echo -e 'tru\r'|json -b 6 2>&1 ||
echo 'command failed: echo -e '\''tru\r'\''|json -b 6'

echo '$ echo -e '\''tru\r'\''|json -b 7'
echo -e 'tru\r'|json -b 7 2>&1 ||
echo 'command failed: echo -e '\''tru\r'\''|json -b 7'

echo '$ echo -e '\''tru\r'\''|json -b 8'
echo -e 'tru\r'|json -b 8 2>&1 ||
echo 'command failed: echo -e '\''tru\r'\''|json -b 8'
)

