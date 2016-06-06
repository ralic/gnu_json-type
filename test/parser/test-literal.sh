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
# $ json-gentest -C parser:literal
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L literal.old <(echo \
'$ json0() { LD_LIBRARY_PATH=../lib ../src/json --pretty --verbose "$@"; }
$ json() { json0 --literal-value "$@"; }
$ echo -n null|json -b 1
null
$ echo -n null|json -b 2
null
$ echo -n null|json -b 3
null
$ echo -n null|json -b 4
null
$ echo -n null|json -b 5
null
$ echo -n null|json -b 6
null
$ echo -n null|json -b 7
null
$ echo -n null|json -b 8
null
$ echo -n null|json -b 9
null
$ echo -n null|json -b 10
null
$ echo -n null|json -b 11
null
$ echo -n null|json -b 12
null
$ echo -n null|json -b 13
null
$ echo -n null|json -b 14
null
$ echo -n null|json -b 15
null
$ echo -n null|json -b 16
null
$ echo -n null|json -b 17
null
$ echo -n null|json -b 18
null
$ echo -n null|json -b 19
null
$ echo -n null|json -b 20
null
$ echo -n null|json -b 21
null
$ echo -n null|json -b 22
null
$ echo -n null|json -b 23
null
$ echo -n null|json -b 24
null
$ echo -n null|json -b 25
null
$ echo -n null|json -b 26
null
$ echo -n null|json -b 27
null
$ echo -n null|json -b 28
null
$ echo -n null|json -b 29
null
$ echo -n null|json -b 30
null
$ echo -n null|json -b 31
null
$ echo -n null|json -b 32
null
$ echo -n false|json -b 1
false
$ echo -n false|json -b 2
false
$ echo -n false|json -b 3
false
$ echo -n false|json -b 4
false
$ echo -n false|json -b 5
false
$ echo -n false|json -b 6
false
$ echo -n false|json -b 7
false
$ echo -n false|json -b 8
false
$ echo -n false|json -b 9
false
$ echo -n false|json -b 10
false
$ echo -n false|json -b 11
false
$ echo -n false|json -b 12
false
$ echo -n false|json -b 13
false
$ echo -n false|json -b 14
false
$ echo -n false|json -b 15
false
$ echo -n false|json -b 16
false
$ echo -n false|json -b 17
false
$ echo -n false|json -b 18
false
$ echo -n false|json -b 19
false
$ echo -n false|json -b 20
false
$ echo -n false|json -b 21
false
$ echo -n false|json -b 22
false
$ echo -n false|json -b 23
false
$ echo -n false|json -b 24
false
$ echo -n false|json -b 25
false
$ echo -n false|json -b 26
false
$ echo -n false|json -b 27
false
$ echo -n false|json -b 28
false
$ echo -n false|json -b 29
false
$ echo -n false|json -b 30
false
$ echo -n false|json -b 31
false
$ echo -n false|json -b 32
false
$ echo -n true|json -b 1
true
$ echo -n true|json -b 2
true
$ echo -n true|json -b 3
true
$ echo -n true|json -b 4
true
$ echo -n true|json -b 5
true
$ echo -n true|json -b 6
true
$ echo -n true|json -b 7
true
$ echo -n true|json -b 8
true
$ echo -n true|json -b 9
true
$ echo -n true|json -b 10
true
$ echo -n true|json -b 11
true
$ echo -n true|json -b 12
true
$ echo -n true|json -b 13
true
$ echo -n true|json -b 14
true
$ echo -n true|json -b 15
true
$ echo -n true|json -b 16
true
$ echo -n true|json -b 17
true
$ echo -n true|json -b 18
true
$ echo -n true|json -b 19
true
$ echo -n true|json -b 20
true
$ echo -n true|json -b 21
true
$ echo -n true|json -b 22
true
$ echo -n true|json -b 23
true
$ echo -n true|json -b 24
true
$ echo -n true|json -b 25
true
$ echo -n true|json -b 26
true
$ echo -n true|json -b 27
true
$ echo -n true|json -b 28
true
$ echo -n true|json -b 29
true
$ echo -n true|json -b 30
true
$ echo -n true|json -b 31
true
$ echo -n true|json -b 32
true'
) -L literal.new <(
echo '$ json0() { LD_LIBRARY_PATH=../lib ../src/json --pretty --verbose "$@"; }'
json0() { LD_LIBRARY_PATH=../lib ../src/json --pretty --verbose "$@"; } 2>&1 ||
echo 'command failed: json0() { LD_LIBRARY_PATH=../lib ../src/json --pretty --verbose "$@"; }'

echo '$ json() { json0 --literal-value "$@"; }'
json() { json0 --literal-value "$@"; } 2>&1 ||
echo 'command failed: json() { json0 --literal-value "$@"; }'

echo '$ echo -n null|json -b 1'
echo -n null|json -b 1 2>&1 ||
echo 'command failed: echo -n null|json -b 1'

echo '$ echo -n null|json -b 2'
echo -n null|json -b 2 2>&1 ||
echo 'command failed: echo -n null|json -b 2'

echo '$ echo -n null|json -b 3'
echo -n null|json -b 3 2>&1 ||
echo 'command failed: echo -n null|json -b 3'

echo '$ echo -n null|json -b 4'
echo -n null|json -b 4 2>&1 ||
echo 'command failed: echo -n null|json -b 4'

echo '$ echo -n null|json -b 5'
echo -n null|json -b 5 2>&1 ||
echo 'command failed: echo -n null|json -b 5'

echo '$ echo -n null|json -b 6'
echo -n null|json -b 6 2>&1 ||
echo 'command failed: echo -n null|json -b 6'

echo '$ echo -n null|json -b 7'
echo -n null|json -b 7 2>&1 ||
echo 'command failed: echo -n null|json -b 7'

echo '$ echo -n null|json -b 8'
echo -n null|json -b 8 2>&1 ||
echo 'command failed: echo -n null|json -b 8'

echo '$ echo -n null|json -b 9'
echo -n null|json -b 9 2>&1 ||
echo 'command failed: echo -n null|json -b 9'

echo '$ echo -n null|json -b 10'
echo -n null|json -b 10 2>&1 ||
echo 'command failed: echo -n null|json -b 10'

echo '$ echo -n null|json -b 11'
echo -n null|json -b 11 2>&1 ||
echo 'command failed: echo -n null|json -b 11'

echo '$ echo -n null|json -b 12'
echo -n null|json -b 12 2>&1 ||
echo 'command failed: echo -n null|json -b 12'

echo '$ echo -n null|json -b 13'
echo -n null|json -b 13 2>&1 ||
echo 'command failed: echo -n null|json -b 13'

echo '$ echo -n null|json -b 14'
echo -n null|json -b 14 2>&1 ||
echo 'command failed: echo -n null|json -b 14'

echo '$ echo -n null|json -b 15'
echo -n null|json -b 15 2>&1 ||
echo 'command failed: echo -n null|json -b 15'

echo '$ echo -n null|json -b 16'
echo -n null|json -b 16 2>&1 ||
echo 'command failed: echo -n null|json -b 16'

echo '$ echo -n null|json -b 17'
echo -n null|json -b 17 2>&1 ||
echo 'command failed: echo -n null|json -b 17'

echo '$ echo -n null|json -b 18'
echo -n null|json -b 18 2>&1 ||
echo 'command failed: echo -n null|json -b 18'

echo '$ echo -n null|json -b 19'
echo -n null|json -b 19 2>&1 ||
echo 'command failed: echo -n null|json -b 19'

echo '$ echo -n null|json -b 20'
echo -n null|json -b 20 2>&1 ||
echo 'command failed: echo -n null|json -b 20'

echo '$ echo -n null|json -b 21'
echo -n null|json -b 21 2>&1 ||
echo 'command failed: echo -n null|json -b 21'

echo '$ echo -n null|json -b 22'
echo -n null|json -b 22 2>&1 ||
echo 'command failed: echo -n null|json -b 22'

echo '$ echo -n null|json -b 23'
echo -n null|json -b 23 2>&1 ||
echo 'command failed: echo -n null|json -b 23'

echo '$ echo -n null|json -b 24'
echo -n null|json -b 24 2>&1 ||
echo 'command failed: echo -n null|json -b 24'

echo '$ echo -n null|json -b 25'
echo -n null|json -b 25 2>&1 ||
echo 'command failed: echo -n null|json -b 25'

echo '$ echo -n null|json -b 26'
echo -n null|json -b 26 2>&1 ||
echo 'command failed: echo -n null|json -b 26'

echo '$ echo -n null|json -b 27'
echo -n null|json -b 27 2>&1 ||
echo 'command failed: echo -n null|json -b 27'

echo '$ echo -n null|json -b 28'
echo -n null|json -b 28 2>&1 ||
echo 'command failed: echo -n null|json -b 28'

echo '$ echo -n null|json -b 29'
echo -n null|json -b 29 2>&1 ||
echo 'command failed: echo -n null|json -b 29'

echo '$ echo -n null|json -b 30'
echo -n null|json -b 30 2>&1 ||
echo 'command failed: echo -n null|json -b 30'

echo '$ echo -n null|json -b 31'
echo -n null|json -b 31 2>&1 ||
echo 'command failed: echo -n null|json -b 31'

echo '$ echo -n null|json -b 32'
echo -n null|json -b 32 2>&1 ||
echo 'command failed: echo -n null|json -b 32'

echo '$ echo -n false|json -b 1'
echo -n false|json -b 1 2>&1 ||
echo 'command failed: echo -n false|json -b 1'

echo '$ echo -n false|json -b 2'
echo -n false|json -b 2 2>&1 ||
echo 'command failed: echo -n false|json -b 2'

echo '$ echo -n false|json -b 3'
echo -n false|json -b 3 2>&1 ||
echo 'command failed: echo -n false|json -b 3'

echo '$ echo -n false|json -b 4'
echo -n false|json -b 4 2>&1 ||
echo 'command failed: echo -n false|json -b 4'

echo '$ echo -n false|json -b 5'
echo -n false|json -b 5 2>&1 ||
echo 'command failed: echo -n false|json -b 5'

echo '$ echo -n false|json -b 6'
echo -n false|json -b 6 2>&1 ||
echo 'command failed: echo -n false|json -b 6'

echo '$ echo -n false|json -b 7'
echo -n false|json -b 7 2>&1 ||
echo 'command failed: echo -n false|json -b 7'

echo '$ echo -n false|json -b 8'
echo -n false|json -b 8 2>&1 ||
echo 'command failed: echo -n false|json -b 8'

echo '$ echo -n false|json -b 9'
echo -n false|json -b 9 2>&1 ||
echo 'command failed: echo -n false|json -b 9'

echo '$ echo -n false|json -b 10'
echo -n false|json -b 10 2>&1 ||
echo 'command failed: echo -n false|json -b 10'

echo '$ echo -n false|json -b 11'
echo -n false|json -b 11 2>&1 ||
echo 'command failed: echo -n false|json -b 11'

echo '$ echo -n false|json -b 12'
echo -n false|json -b 12 2>&1 ||
echo 'command failed: echo -n false|json -b 12'

echo '$ echo -n false|json -b 13'
echo -n false|json -b 13 2>&1 ||
echo 'command failed: echo -n false|json -b 13'

echo '$ echo -n false|json -b 14'
echo -n false|json -b 14 2>&1 ||
echo 'command failed: echo -n false|json -b 14'

echo '$ echo -n false|json -b 15'
echo -n false|json -b 15 2>&1 ||
echo 'command failed: echo -n false|json -b 15'

echo '$ echo -n false|json -b 16'
echo -n false|json -b 16 2>&1 ||
echo 'command failed: echo -n false|json -b 16'

echo '$ echo -n false|json -b 17'
echo -n false|json -b 17 2>&1 ||
echo 'command failed: echo -n false|json -b 17'

echo '$ echo -n false|json -b 18'
echo -n false|json -b 18 2>&1 ||
echo 'command failed: echo -n false|json -b 18'

echo '$ echo -n false|json -b 19'
echo -n false|json -b 19 2>&1 ||
echo 'command failed: echo -n false|json -b 19'

echo '$ echo -n false|json -b 20'
echo -n false|json -b 20 2>&1 ||
echo 'command failed: echo -n false|json -b 20'

echo '$ echo -n false|json -b 21'
echo -n false|json -b 21 2>&1 ||
echo 'command failed: echo -n false|json -b 21'

echo '$ echo -n false|json -b 22'
echo -n false|json -b 22 2>&1 ||
echo 'command failed: echo -n false|json -b 22'

echo '$ echo -n false|json -b 23'
echo -n false|json -b 23 2>&1 ||
echo 'command failed: echo -n false|json -b 23'

echo '$ echo -n false|json -b 24'
echo -n false|json -b 24 2>&1 ||
echo 'command failed: echo -n false|json -b 24'

echo '$ echo -n false|json -b 25'
echo -n false|json -b 25 2>&1 ||
echo 'command failed: echo -n false|json -b 25'

echo '$ echo -n false|json -b 26'
echo -n false|json -b 26 2>&1 ||
echo 'command failed: echo -n false|json -b 26'

echo '$ echo -n false|json -b 27'
echo -n false|json -b 27 2>&1 ||
echo 'command failed: echo -n false|json -b 27'

echo '$ echo -n false|json -b 28'
echo -n false|json -b 28 2>&1 ||
echo 'command failed: echo -n false|json -b 28'

echo '$ echo -n false|json -b 29'
echo -n false|json -b 29 2>&1 ||
echo 'command failed: echo -n false|json -b 29'

echo '$ echo -n false|json -b 30'
echo -n false|json -b 30 2>&1 ||
echo 'command failed: echo -n false|json -b 30'

echo '$ echo -n false|json -b 31'
echo -n false|json -b 31 2>&1 ||
echo 'command failed: echo -n false|json -b 31'

echo '$ echo -n false|json -b 32'
echo -n false|json -b 32 2>&1 ||
echo 'command failed: echo -n false|json -b 32'

echo '$ echo -n true|json -b 1'
echo -n true|json -b 1 2>&1 ||
echo 'command failed: echo -n true|json -b 1'

echo '$ echo -n true|json -b 2'
echo -n true|json -b 2 2>&1 ||
echo 'command failed: echo -n true|json -b 2'

echo '$ echo -n true|json -b 3'
echo -n true|json -b 3 2>&1 ||
echo 'command failed: echo -n true|json -b 3'

echo '$ echo -n true|json -b 4'
echo -n true|json -b 4 2>&1 ||
echo 'command failed: echo -n true|json -b 4'

echo '$ echo -n true|json -b 5'
echo -n true|json -b 5 2>&1 ||
echo 'command failed: echo -n true|json -b 5'

echo '$ echo -n true|json -b 6'
echo -n true|json -b 6 2>&1 ||
echo 'command failed: echo -n true|json -b 6'

echo '$ echo -n true|json -b 7'
echo -n true|json -b 7 2>&1 ||
echo 'command failed: echo -n true|json -b 7'

echo '$ echo -n true|json -b 8'
echo -n true|json -b 8 2>&1 ||
echo 'command failed: echo -n true|json -b 8'

echo '$ echo -n true|json -b 9'
echo -n true|json -b 9 2>&1 ||
echo 'command failed: echo -n true|json -b 9'

echo '$ echo -n true|json -b 10'
echo -n true|json -b 10 2>&1 ||
echo 'command failed: echo -n true|json -b 10'

echo '$ echo -n true|json -b 11'
echo -n true|json -b 11 2>&1 ||
echo 'command failed: echo -n true|json -b 11'

echo '$ echo -n true|json -b 12'
echo -n true|json -b 12 2>&1 ||
echo 'command failed: echo -n true|json -b 12'

echo '$ echo -n true|json -b 13'
echo -n true|json -b 13 2>&1 ||
echo 'command failed: echo -n true|json -b 13'

echo '$ echo -n true|json -b 14'
echo -n true|json -b 14 2>&1 ||
echo 'command failed: echo -n true|json -b 14'

echo '$ echo -n true|json -b 15'
echo -n true|json -b 15 2>&1 ||
echo 'command failed: echo -n true|json -b 15'

echo '$ echo -n true|json -b 16'
echo -n true|json -b 16 2>&1 ||
echo 'command failed: echo -n true|json -b 16'

echo '$ echo -n true|json -b 17'
echo -n true|json -b 17 2>&1 ||
echo 'command failed: echo -n true|json -b 17'

echo '$ echo -n true|json -b 18'
echo -n true|json -b 18 2>&1 ||
echo 'command failed: echo -n true|json -b 18'

echo '$ echo -n true|json -b 19'
echo -n true|json -b 19 2>&1 ||
echo 'command failed: echo -n true|json -b 19'

echo '$ echo -n true|json -b 20'
echo -n true|json -b 20 2>&1 ||
echo 'command failed: echo -n true|json -b 20'

echo '$ echo -n true|json -b 21'
echo -n true|json -b 21 2>&1 ||
echo 'command failed: echo -n true|json -b 21'

echo '$ echo -n true|json -b 22'
echo -n true|json -b 22 2>&1 ||
echo 'command failed: echo -n true|json -b 22'

echo '$ echo -n true|json -b 23'
echo -n true|json -b 23 2>&1 ||
echo 'command failed: echo -n true|json -b 23'

echo '$ echo -n true|json -b 24'
echo -n true|json -b 24 2>&1 ||
echo 'command failed: echo -n true|json -b 24'

echo '$ echo -n true|json -b 25'
echo -n true|json -b 25 2>&1 ||
echo 'command failed: echo -n true|json -b 25'

echo '$ echo -n true|json -b 26'
echo -n true|json -b 26 2>&1 ||
echo 'command failed: echo -n true|json -b 26'

echo '$ echo -n true|json -b 27'
echo -n true|json -b 27 2>&1 ||
echo 'command failed: echo -n true|json -b 27'

echo '$ echo -n true|json -b 28'
echo -n true|json -b 28 2>&1 ||
echo 'command failed: echo -n true|json -b 28'

echo '$ echo -n true|json -b 29'
echo -n true|json -b 29 2>&1 ||
echo 'command failed: echo -n true|json -b 29'

echo '$ echo -n true|json -b 30'
echo -n true|json -b 30 2>&1 ||
echo 'command failed: echo -n true|json -b 30'

echo '$ echo -n true|json -b 31'
echo -n true|json -b 31 2>&1 ||
echo 'command failed: echo -n true|json -b 31'

echo '$ echo -n true|json -b 32'
echo -n true|json -b 32 2>&1 ||
echo 'command failed: echo -n true|json -b 32'
)

