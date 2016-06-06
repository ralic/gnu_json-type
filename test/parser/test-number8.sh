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
# $ json-gentest -C parser:number8
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L number8.old <(echo \
'$ json0() { LD_LIBRARY_PATH=../lib ../src/json --pretty --verbose "$@"; }
$ json() { json0 --literal-value -b 8 "$@"; }
$ json <<< -.e
json: error: <stdin>:1:2: lex error: invalid number literal
json: error: <stdin>:1:2: -.e
json: error: <stdin>:1:2:  ^
command failed: json <<< -.e
$ json <<< -.e0
json: error: <stdin>:1:2: lex error: invalid number literal
json: error: <stdin>:1:2: -.e0
json: error: <stdin>:1:2:  ^
command failed: json <<< -.e0
$ json <<< -.e1
json: error: <stdin>:1:2: lex error: invalid number literal
json: error: <stdin>:1:2: -.e1
json: error: <stdin>:1:2:  ^
command failed: json <<< -.e1
$ json <<< -.0e
json: error: <stdin>:1:2: lex error: invalid number literal
json: error: <stdin>:1:2: -.0e
json: error: <stdin>:1:2:  ^
command failed: json <<< -.0e
$ json <<< -.0e0
json: error: <stdin>:1:2: lex error: invalid number literal
json: error: <stdin>:1:2: -.0e0
json: error: <stdin>:1:2:  ^
command failed: json <<< -.0e0
$ json <<< -.0e1
json: error: <stdin>:1:2: lex error: invalid number literal
json: error: <stdin>:1:2: -.0e1
json: error: <stdin>:1:2:  ^
command failed: json <<< -.0e1
$ json <<< -.1e
json: error: <stdin>:1:2: lex error: invalid number literal
json: error: <stdin>:1:2: -.1e
json: error: <stdin>:1:2:  ^
command failed: json <<< -.1e
$ json <<< -.1e0
json: error: <stdin>:1:2: lex error: invalid number literal
json: error: <stdin>:1:2: -.1e0
json: error: <stdin>:1:2:  ^
command failed: json <<< -.1e0
$ json <<< -.1e1
json: error: <stdin>:1:2: lex error: invalid number literal
json: error: <stdin>:1:2: -.1e1
json: error: <stdin>:1:2:  ^
command failed: json <<< -.1e1
$ json <<< -0.e
json: error: <stdin>:1:4: lex error: invalid number literal
json: error: <stdin>:1:4: -0.e
json: error: <stdin>:1:4:    ^
command failed: json <<< -0.e
$ json <<< -0.e0
json: error: <stdin>:1:4: lex error: invalid number literal
json: error: <stdin>:1:4: -0.e0
json: error: <stdin>:1:4:    ^
command failed: json <<< -0.e0
$ json <<< -0.e1
json: error: <stdin>:1:4: lex error: invalid number literal
json: error: <stdin>:1:4: -0.e1
json: error: <stdin>:1:4:    ^
command failed: json <<< -0.e1
$ json <<< -0.0e
json: error: <stdin>:1:6: lex error: invalid number literal
json: error: <stdin>:1:6: -0.0e
json: error: <stdin>:1:6:      ^
command failed: json <<< -0.0e
$ json <<< -0.0e0
-0.0e0
$ json <<< -0.0e1
-0.0e1
$ json <<< -0.1e
json: error: <stdin>:1:6: lex error: invalid number literal
json: error: <stdin>:1:6: -0.1e
json: error: <stdin>:1:6:      ^
command failed: json <<< -0.1e
$ json <<< -0.1e0
-0.1e0
$ json <<< -0.1e1
-0.1e1
$ json <<< -1.e
json: error: <stdin>:1:4: lex error: invalid number literal
json: error: <stdin>:1:4: -1.e
json: error: <stdin>:1:4:    ^
command failed: json <<< -1.e
$ json <<< -1.e0
json: error: <stdin>:1:4: lex error: invalid number literal
json: error: <stdin>:1:4: -1.e0
json: error: <stdin>:1:4:    ^
command failed: json <<< -1.e0
$ json <<< -1.e1
json: error: <stdin>:1:4: lex error: invalid number literal
json: error: <stdin>:1:4: -1.e1
json: error: <stdin>:1:4:    ^
command failed: json <<< -1.e1
$ json <<< -1.0e
json: error: <stdin>:1:6: lex error: invalid number literal
json: error: <stdin>:1:6: -1.0e
json: error: <stdin>:1:6:      ^
command failed: json <<< -1.0e
$ json <<< -1.0e0
-1.0e0
$ json <<< -1.0e1
-1.0e1
$ json <<< -1.1e
json: error: <stdin>:1:6: lex error: invalid number literal
json: error: <stdin>:1:6: -1.1e
json: error: <stdin>:1:6:      ^
command failed: json <<< -1.1e
$ json <<< -1.1e0
-1.1e0
$ json <<< -1.1e1
-1.1e1
$ json <<< 0-.e
json: error: <stdin>:1:3: lex error: invalid number literal
json: error: <stdin>:1:3: 0-.e
json: error: <stdin>:1:3:   ^
0
command failed: json <<< 0-.e
$ json <<< 0-.e0
json: error: <stdin>:1:3: lex error: invalid number literal
json: error: <stdin>:1:3: 0-.e0
json: error: <stdin>:1:3:   ^
0
command failed: json <<< 0-.e0
$ json <<< 0-.e1
json: error: <stdin>:1:3: lex error: invalid number literal
json: error: <stdin>:1:3: 0-.e1
json: error: <stdin>:1:3:   ^
0
command failed: json <<< 0-.e1
$ json <<< 0-.0e
json: error: <stdin>:1:3: lex error: invalid number literal
json: error: <stdin>:1:3: 0-.0e
json: error: <stdin>:1:3:   ^
0
command failed: json <<< 0-.0e
$ json <<< 0-.0e0
json: error: <stdin>:1:3: lex error: invalid number literal
json: error: <stdin>:1:3: 0-.0e0
json: error: <stdin>:1:3:   ^
0
command failed: json <<< 0-.0e0
$ json <<< 0-.0e1
json: error: <stdin>:1:3: lex error: invalid number literal
json: error: <stdin>:1:3: 0-.0e1
json: error: <stdin>:1:3:   ^
0
command failed: json <<< 0-.0e1
$ json <<< 0-.1e
json: error: <stdin>:1:3: lex error: invalid number literal
json: error: <stdin>:1:3: 0-.1e
json: error: <stdin>:1:3:   ^
0
command failed: json <<< 0-.1e
$ json <<< 0-.1e0
json: error: <stdin>:1:3: lex error: invalid number literal
json: error: <stdin>:1:3: 0-.1e0
json: error: <stdin>:1:3:   ^
0
command failed: json <<< 0-.1e0
$ json <<< 0-.1e1
json: error: <stdin>:1:3: lex error: invalid number literal
json: error: <stdin>:1:3: 0-.1e1
json: error: <stdin>:1:3:   ^
0
command failed: json <<< 0-.1e1
$ json <<< 0-0.e
json: error: <stdin>:1:5: lex error: invalid number literal
json: error: <stdin>:1:5: 0-0.e
json: error: <stdin>:1:5:     ^
0
command failed: json <<< 0-0.e
$ json <<< 0-0.e0
json: error: <stdin>:1:5: lex error: invalid number literal
json: error: <stdin>:1:5: 0-0.e0
json: error: <stdin>:1:5:     ^
0
command failed: json <<< 0-0.e0
$ json <<< 0-0.e1
json: error: <stdin>:1:5: lex error: invalid number literal
json: error: <stdin>:1:5: 0-0.e1
json: error: <stdin>:1:5:     ^
0
command failed: json <<< 0-0.e1
$ json <<< 0-0.0e
json: error: <stdin>:1:7: lex error: invalid number literal
json: error: <stdin>:1:7: 0-0.0e
json: error: <stdin>:1:7:       ^
0
command failed: json <<< 0-0.0e
$ json <<< 0-0.0e0
json: error: <stdin>:1:2: parse error: multiple objects are not allowed
json: error: <stdin>:1:2: 0-0.0e0
json: error: <stdin>:1:2:  ^
0
command failed: json <<< 0-0.0e0
$ json <<< 0-0.0e1
json: error: <stdin>:1:2: parse error: multiple objects are not allowed
json: error: <stdin>:1:2: 0-0.0e1
json: error: <stdin>:1:2:  ^
0
command failed: json <<< 0-0.0e1
$ json <<< 0-0.1e
json: error: <stdin>:1:7: lex error: invalid number literal
json: error: <stdin>:1:7: 0-0.1e
json: error: <stdin>:1:7:       ^
0
command failed: json <<< 0-0.1e
$ json <<< 0-0.1e0
json: error: <stdin>:1:2: parse error: multiple objects are not allowed
json: error: <stdin>:1:2: 0-0.1e0
json: error: <stdin>:1:2:  ^
0
command failed: json <<< 0-0.1e0
$ json <<< 0-0.1e1
json: error: <stdin>:1:2: parse error: multiple objects are not allowed
json: error: <stdin>:1:2: 0-0.1e1
json: error: <stdin>:1:2:  ^
0
command failed: json <<< 0-0.1e1
$ json <<< 0-1.e
json: error: <stdin>:1:5: lex error: invalid number literal
json: error: <stdin>:1:5: 0-1.e
json: error: <stdin>:1:5:     ^
0
command failed: json <<< 0-1.e
$ json <<< 0-1.e0
json: error: <stdin>:1:5: lex error: invalid number literal
json: error: <stdin>:1:5: 0-1.e0
json: error: <stdin>:1:5:     ^
0
command failed: json <<< 0-1.e0
$ json <<< 0-1.e1
json: error: <stdin>:1:5: lex error: invalid number literal
json: error: <stdin>:1:5: 0-1.e1
json: error: <stdin>:1:5:     ^
0
command failed: json <<< 0-1.e1
$ json <<< 0-1.0e
json: error: <stdin>:1:7: lex error: invalid number literal
json: error: <stdin>:1:7: 0-1.0e
json: error: <stdin>:1:7:       ^
0
command failed: json <<< 0-1.0e
$ json <<< 0-1.0e0
json: error: <stdin>:1:2: parse error: multiple objects are not allowed
json: error: <stdin>:1:2: 0-1.0e0
json: error: <stdin>:1:2:  ^
0
command failed: json <<< 0-1.0e0
$ json <<< 0-1.0e1
json: error: <stdin>:1:2: parse error: multiple objects are not allowed
json: error: <stdin>:1:2: 0-1.0e1
json: error: <stdin>:1:2:  ^
0
command failed: json <<< 0-1.0e1
$ json <<< 0-1.1e
json: error: <stdin>:1:7: lex error: invalid number literal
json: error: <stdin>:1:7: 0-1.1e
json: error: <stdin>:1:7:       ^
0
command failed: json <<< 0-1.1e
$ json <<< 0-1.1e0
json: error: <stdin>:1:2: parse error: multiple objects are not allowed
json: error: <stdin>:1:2: 0-1.1e0
json: error: <stdin>:1:2:  ^
0
command failed: json <<< 0-1.1e0
$ json <<< 0-1.1e1
json: error: <stdin>:1:2: parse error: multiple objects are not allowed
json: error: <stdin>:1:2: 0-1.1e1
json: error: <stdin>:1:2:  ^
0
command failed: json <<< 0-1.1e1
$ json <<< 1-.e
json: error: <stdin>:1:3: lex error: invalid number literal
json: error: <stdin>:1:3: 1-.e
json: error: <stdin>:1:3:   ^
1
command failed: json <<< 1-.e
$ json <<< 1-.e0
json: error: <stdin>:1:3: lex error: invalid number literal
json: error: <stdin>:1:3: 1-.e0
json: error: <stdin>:1:3:   ^
1
command failed: json <<< 1-.e0
$ json <<< 1-.e1
json: error: <stdin>:1:3: lex error: invalid number literal
json: error: <stdin>:1:3: 1-.e1
json: error: <stdin>:1:3:   ^
1
command failed: json <<< 1-.e1
$ json <<< 1-.0e
json: error: <stdin>:1:3: lex error: invalid number literal
json: error: <stdin>:1:3: 1-.0e
json: error: <stdin>:1:3:   ^
1
command failed: json <<< 1-.0e
$ json <<< 1-.0e0
json: error: <stdin>:1:3: lex error: invalid number literal
json: error: <stdin>:1:3: 1-.0e0
json: error: <stdin>:1:3:   ^
1
command failed: json <<< 1-.0e0
$ json <<< 1-.0e1
json: error: <stdin>:1:3: lex error: invalid number literal
json: error: <stdin>:1:3: 1-.0e1
json: error: <stdin>:1:3:   ^
1
command failed: json <<< 1-.0e1
$ json <<< 1-.1e
json: error: <stdin>:1:3: lex error: invalid number literal
json: error: <stdin>:1:3: 1-.1e
json: error: <stdin>:1:3:   ^
1
command failed: json <<< 1-.1e
$ json <<< 1-.1e0
json: error: <stdin>:1:3: lex error: invalid number literal
json: error: <stdin>:1:3: 1-.1e0
json: error: <stdin>:1:3:   ^
1
command failed: json <<< 1-.1e0
$ json <<< 1-.1e1
json: error: <stdin>:1:3: lex error: invalid number literal
json: error: <stdin>:1:3: 1-.1e1
json: error: <stdin>:1:3:   ^
1
command failed: json <<< 1-.1e1
$ json <<< 1-0.e
json: error: <stdin>:1:5: lex error: invalid number literal
json: error: <stdin>:1:5: 1-0.e
json: error: <stdin>:1:5:     ^
1
command failed: json <<< 1-0.e
$ json <<< 1-0.e0
json: error: <stdin>:1:5: lex error: invalid number literal
json: error: <stdin>:1:5: 1-0.e0
json: error: <stdin>:1:5:     ^
1
command failed: json <<< 1-0.e0
$ json <<< 1-0.e1
json: error: <stdin>:1:5: lex error: invalid number literal
json: error: <stdin>:1:5: 1-0.e1
json: error: <stdin>:1:5:     ^
1
command failed: json <<< 1-0.e1
$ json <<< 1-0.0e
json: error: <stdin>:1:7: lex error: invalid number literal
json: error: <stdin>:1:7: 1-0.0e
json: error: <stdin>:1:7:       ^
1
command failed: json <<< 1-0.0e
$ json <<< 1-0.0e0
json: error: <stdin>:1:2: parse error: multiple objects are not allowed
json: error: <stdin>:1:2: 1-0.0e0
json: error: <stdin>:1:2:  ^
1
command failed: json <<< 1-0.0e0
$ json <<< 1-0.0e1
json: error: <stdin>:1:2: parse error: multiple objects are not allowed
json: error: <stdin>:1:2: 1-0.0e1
json: error: <stdin>:1:2:  ^
1
command failed: json <<< 1-0.0e1
$ json <<< 1-0.1e
json: error: <stdin>:1:7: lex error: invalid number literal
json: error: <stdin>:1:7: 1-0.1e
json: error: <stdin>:1:7:       ^
1
command failed: json <<< 1-0.1e
$ json <<< 1-0.1e0
json: error: <stdin>:1:2: parse error: multiple objects are not allowed
json: error: <stdin>:1:2: 1-0.1e0
json: error: <stdin>:1:2:  ^
1
command failed: json <<< 1-0.1e0
$ json <<< 1-0.1e1
json: error: <stdin>:1:2: parse error: multiple objects are not allowed
json: error: <stdin>:1:2: 1-0.1e1
json: error: <stdin>:1:2:  ^
1
command failed: json <<< 1-0.1e1
$ json <<< 1-1.e
json: error: <stdin>:1:5: lex error: invalid number literal
json: error: <stdin>:1:5: 1-1.e
json: error: <stdin>:1:5:     ^
1
command failed: json <<< 1-1.e
$ json <<< 1-1.e0
json: error: <stdin>:1:5: lex error: invalid number literal
json: error: <stdin>:1:5: 1-1.e0
json: error: <stdin>:1:5:     ^
1
command failed: json <<< 1-1.e0
$ json <<< 1-1.e1
json: error: <stdin>:1:5: lex error: invalid number literal
json: error: <stdin>:1:5: 1-1.e1
json: error: <stdin>:1:5:     ^
1
command failed: json <<< 1-1.e1
$ json <<< 1-1.0e
json: error: <stdin>:1:7: lex error: invalid number literal
json: error: <stdin>:1:7: 1-1.0e
json: error: <stdin>:1:7:       ^
1
command failed: json <<< 1-1.0e
$ json <<< 1-1.0e0
json: error: <stdin>:1:2: parse error: multiple objects are not allowed
json: error: <stdin>:1:2: 1-1.0e0
json: error: <stdin>:1:2:  ^
1
command failed: json <<< 1-1.0e0
$ json <<< 1-1.0e1
json: error: <stdin>:1:2: parse error: multiple objects are not allowed
json: error: <stdin>:1:2: 1-1.0e1
json: error: <stdin>:1:2:  ^
1
command failed: json <<< 1-1.0e1
$ json <<< 1-1.1e
json: error: <stdin>:1:7: lex error: invalid number literal
json: error: <stdin>:1:7: 1-1.1e
json: error: <stdin>:1:7:       ^
1
command failed: json <<< 1-1.1e
$ json <<< 1-1.1e0
json: error: <stdin>:1:2: parse error: multiple objects are not allowed
json: error: <stdin>:1:2: 1-1.1e0
json: error: <stdin>:1:2:  ^
1
command failed: json <<< 1-1.1e0
$ json <<< 1-1.1e1
json: error: <stdin>:1:2: parse error: multiple objects are not allowed
json: error: <stdin>:1:2: 1-1.1e1
json: error: <stdin>:1:2:  ^
1
command failed: json <<< 1-1.1e1'
) -L number8.new <(
echo '$ json0() { LD_LIBRARY_PATH=../lib ../src/json --pretty --verbose "$@"; }'
json0() { LD_LIBRARY_PATH=../lib ../src/json --pretty --verbose "$@"; } 2>&1 ||
echo 'command failed: json0() { LD_LIBRARY_PATH=../lib ../src/json --pretty --verbose "$@"; }'

echo '$ json() { json0 --literal-value -b 8 "$@"; }'
json() { json0 --literal-value -b 8 "$@"; } 2>&1 ||
echo 'command failed: json() { json0 --literal-value -b 8 "$@"; }'

echo '$ json <<< -.e'
json <<< -.e 2>&1 ||
echo 'command failed: json <<< -.e'

echo '$ json <<< -.e0'
json <<< -.e0 2>&1 ||
echo 'command failed: json <<< -.e0'

echo '$ json <<< -.e1'
json <<< -.e1 2>&1 ||
echo 'command failed: json <<< -.e1'

echo '$ json <<< -.0e'
json <<< -.0e 2>&1 ||
echo 'command failed: json <<< -.0e'

echo '$ json <<< -.0e0'
json <<< -.0e0 2>&1 ||
echo 'command failed: json <<< -.0e0'

echo '$ json <<< -.0e1'
json <<< -.0e1 2>&1 ||
echo 'command failed: json <<< -.0e1'

echo '$ json <<< -.1e'
json <<< -.1e 2>&1 ||
echo 'command failed: json <<< -.1e'

echo '$ json <<< -.1e0'
json <<< -.1e0 2>&1 ||
echo 'command failed: json <<< -.1e0'

echo '$ json <<< -.1e1'
json <<< -.1e1 2>&1 ||
echo 'command failed: json <<< -.1e1'

echo '$ json <<< -0.e'
json <<< -0.e 2>&1 ||
echo 'command failed: json <<< -0.e'

echo '$ json <<< -0.e0'
json <<< -0.e0 2>&1 ||
echo 'command failed: json <<< -0.e0'

echo '$ json <<< -0.e1'
json <<< -0.e1 2>&1 ||
echo 'command failed: json <<< -0.e1'

echo '$ json <<< -0.0e'
json <<< -0.0e 2>&1 ||
echo 'command failed: json <<< -0.0e'

echo '$ json <<< -0.0e0'
json <<< -0.0e0 2>&1 ||
echo 'command failed: json <<< -0.0e0'

echo '$ json <<< -0.0e1'
json <<< -0.0e1 2>&1 ||
echo 'command failed: json <<< -0.0e1'

echo '$ json <<< -0.1e'
json <<< -0.1e 2>&1 ||
echo 'command failed: json <<< -0.1e'

echo '$ json <<< -0.1e0'
json <<< -0.1e0 2>&1 ||
echo 'command failed: json <<< -0.1e0'

echo '$ json <<< -0.1e1'
json <<< -0.1e1 2>&1 ||
echo 'command failed: json <<< -0.1e1'

echo '$ json <<< -1.e'
json <<< -1.e 2>&1 ||
echo 'command failed: json <<< -1.e'

echo '$ json <<< -1.e0'
json <<< -1.e0 2>&1 ||
echo 'command failed: json <<< -1.e0'

echo '$ json <<< -1.e1'
json <<< -1.e1 2>&1 ||
echo 'command failed: json <<< -1.e1'

echo '$ json <<< -1.0e'
json <<< -1.0e 2>&1 ||
echo 'command failed: json <<< -1.0e'

echo '$ json <<< -1.0e0'
json <<< -1.0e0 2>&1 ||
echo 'command failed: json <<< -1.0e0'

echo '$ json <<< -1.0e1'
json <<< -1.0e1 2>&1 ||
echo 'command failed: json <<< -1.0e1'

echo '$ json <<< -1.1e'
json <<< -1.1e 2>&1 ||
echo 'command failed: json <<< -1.1e'

echo '$ json <<< -1.1e0'
json <<< -1.1e0 2>&1 ||
echo 'command failed: json <<< -1.1e0'

echo '$ json <<< -1.1e1'
json <<< -1.1e1 2>&1 ||
echo 'command failed: json <<< -1.1e1'

echo '$ json <<< 0-.e'
json <<< 0-.e 2>&1 ||
echo 'command failed: json <<< 0-.e'

echo '$ json <<< 0-.e0'
json <<< 0-.e0 2>&1 ||
echo 'command failed: json <<< 0-.e0'

echo '$ json <<< 0-.e1'
json <<< 0-.e1 2>&1 ||
echo 'command failed: json <<< 0-.e1'

echo '$ json <<< 0-.0e'
json <<< 0-.0e 2>&1 ||
echo 'command failed: json <<< 0-.0e'

echo '$ json <<< 0-.0e0'
json <<< 0-.0e0 2>&1 ||
echo 'command failed: json <<< 0-.0e0'

echo '$ json <<< 0-.0e1'
json <<< 0-.0e1 2>&1 ||
echo 'command failed: json <<< 0-.0e1'

echo '$ json <<< 0-.1e'
json <<< 0-.1e 2>&1 ||
echo 'command failed: json <<< 0-.1e'

echo '$ json <<< 0-.1e0'
json <<< 0-.1e0 2>&1 ||
echo 'command failed: json <<< 0-.1e0'

echo '$ json <<< 0-.1e1'
json <<< 0-.1e1 2>&1 ||
echo 'command failed: json <<< 0-.1e1'

echo '$ json <<< 0-0.e'
json <<< 0-0.e 2>&1 ||
echo 'command failed: json <<< 0-0.e'

echo '$ json <<< 0-0.e0'
json <<< 0-0.e0 2>&1 ||
echo 'command failed: json <<< 0-0.e0'

echo '$ json <<< 0-0.e1'
json <<< 0-0.e1 2>&1 ||
echo 'command failed: json <<< 0-0.e1'

echo '$ json <<< 0-0.0e'
json <<< 0-0.0e 2>&1 ||
echo 'command failed: json <<< 0-0.0e'

echo '$ json <<< 0-0.0e0'
json <<< 0-0.0e0 2>&1 ||
echo 'command failed: json <<< 0-0.0e0'

echo '$ json <<< 0-0.0e1'
json <<< 0-0.0e1 2>&1 ||
echo 'command failed: json <<< 0-0.0e1'

echo '$ json <<< 0-0.1e'
json <<< 0-0.1e 2>&1 ||
echo 'command failed: json <<< 0-0.1e'

echo '$ json <<< 0-0.1e0'
json <<< 0-0.1e0 2>&1 ||
echo 'command failed: json <<< 0-0.1e0'

echo '$ json <<< 0-0.1e1'
json <<< 0-0.1e1 2>&1 ||
echo 'command failed: json <<< 0-0.1e1'

echo '$ json <<< 0-1.e'
json <<< 0-1.e 2>&1 ||
echo 'command failed: json <<< 0-1.e'

echo '$ json <<< 0-1.e0'
json <<< 0-1.e0 2>&1 ||
echo 'command failed: json <<< 0-1.e0'

echo '$ json <<< 0-1.e1'
json <<< 0-1.e1 2>&1 ||
echo 'command failed: json <<< 0-1.e1'

echo '$ json <<< 0-1.0e'
json <<< 0-1.0e 2>&1 ||
echo 'command failed: json <<< 0-1.0e'

echo '$ json <<< 0-1.0e0'
json <<< 0-1.0e0 2>&1 ||
echo 'command failed: json <<< 0-1.0e0'

echo '$ json <<< 0-1.0e1'
json <<< 0-1.0e1 2>&1 ||
echo 'command failed: json <<< 0-1.0e1'

echo '$ json <<< 0-1.1e'
json <<< 0-1.1e 2>&1 ||
echo 'command failed: json <<< 0-1.1e'

echo '$ json <<< 0-1.1e0'
json <<< 0-1.1e0 2>&1 ||
echo 'command failed: json <<< 0-1.1e0'

echo '$ json <<< 0-1.1e1'
json <<< 0-1.1e1 2>&1 ||
echo 'command failed: json <<< 0-1.1e1'

echo '$ json <<< 1-.e'
json <<< 1-.e 2>&1 ||
echo 'command failed: json <<< 1-.e'

echo '$ json <<< 1-.e0'
json <<< 1-.e0 2>&1 ||
echo 'command failed: json <<< 1-.e0'

echo '$ json <<< 1-.e1'
json <<< 1-.e1 2>&1 ||
echo 'command failed: json <<< 1-.e1'

echo '$ json <<< 1-.0e'
json <<< 1-.0e 2>&1 ||
echo 'command failed: json <<< 1-.0e'

echo '$ json <<< 1-.0e0'
json <<< 1-.0e0 2>&1 ||
echo 'command failed: json <<< 1-.0e0'

echo '$ json <<< 1-.0e1'
json <<< 1-.0e1 2>&1 ||
echo 'command failed: json <<< 1-.0e1'

echo '$ json <<< 1-.1e'
json <<< 1-.1e 2>&1 ||
echo 'command failed: json <<< 1-.1e'

echo '$ json <<< 1-.1e0'
json <<< 1-.1e0 2>&1 ||
echo 'command failed: json <<< 1-.1e0'

echo '$ json <<< 1-.1e1'
json <<< 1-.1e1 2>&1 ||
echo 'command failed: json <<< 1-.1e1'

echo '$ json <<< 1-0.e'
json <<< 1-0.e 2>&1 ||
echo 'command failed: json <<< 1-0.e'

echo '$ json <<< 1-0.e0'
json <<< 1-0.e0 2>&1 ||
echo 'command failed: json <<< 1-0.e0'

echo '$ json <<< 1-0.e1'
json <<< 1-0.e1 2>&1 ||
echo 'command failed: json <<< 1-0.e1'

echo '$ json <<< 1-0.0e'
json <<< 1-0.0e 2>&1 ||
echo 'command failed: json <<< 1-0.0e'

echo '$ json <<< 1-0.0e0'
json <<< 1-0.0e0 2>&1 ||
echo 'command failed: json <<< 1-0.0e0'

echo '$ json <<< 1-0.0e1'
json <<< 1-0.0e1 2>&1 ||
echo 'command failed: json <<< 1-0.0e1'

echo '$ json <<< 1-0.1e'
json <<< 1-0.1e 2>&1 ||
echo 'command failed: json <<< 1-0.1e'

echo '$ json <<< 1-0.1e0'
json <<< 1-0.1e0 2>&1 ||
echo 'command failed: json <<< 1-0.1e0'

echo '$ json <<< 1-0.1e1'
json <<< 1-0.1e1 2>&1 ||
echo 'command failed: json <<< 1-0.1e1'

echo '$ json <<< 1-1.e'
json <<< 1-1.e 2>&1 ||
echo 'command failed: json <<< 1-1.e'

echo '$ json <<< 1-1.e0'
json <<< 1-1.e0 2>&1 ||
echo 'command failed: json <<< 1-1.e0'

echo '$ json <<< 1-1.e1'
json <<< 1-1.e1 2>&1 ||
echo 'command failed: json <<< 1-1.e1'

echo '$ json <<< 1-1.0e'
json <<< 1-1.0e 2>&1 ||
echo 'command failed: json <<< 1-1.0e'

echo '$ json <<< 1-1.0e0'
json <<< 1-1.0e0 2>&1 ||
echo 'command failed: json <<< 1-1.0e0'

echo '$ json <<< 1-1.0e1'
json <<< 1-1.0e1 2>&1 ||
echo 'command failed: json <<< 1-1.0e1'

echo '$ json <<< 1-1.1e'
json <<< 1-1.1e 2>&1 ||
echo 'command failed: json <<< 1-1.1e'

echo '$ json <<< 1-1.1e0'
json <<< 1-1.1e0 2>&1 ||
echo 'command failed: json <<< 1-1.1e0'

echo '$ json <<< 1-1.1e1'
json <<< 1-1.1e1 2>&1 ||
echo 'command failed: json <<< 1-1.1e1'
)

