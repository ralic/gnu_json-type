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
# $ json-gentest -C type-cases:37
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L 37.old <(echo \
'$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@" 2>&1|sed -r '\''/error:/s|(/dev/fd/)[0-9]+|\1??|'\''; }
$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''null'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"type":"array",...}'\''
json: error: <stdin>:1:1: null
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''null'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[]'\''
[]
$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[[]]'\''
[[]]
$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[[],[]]'\''
[[],[]]
$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[[0]]'\''
[[0]]
$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[[0,1]]'\''
[[0,1]]
$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[[null,false,0,"",[],{}],[null,true,1,"",[],{}]]'\''
[[null,false,0,"",[],{}],[null,true,1,"",[],{}]]
$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[0]'\''
[0]
$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[0,1]'\''
[0,1]
$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[false]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"number"'\'' or `"array"'\'' or, otherwise, no value at all
json: error: <stdin>:1:2: [false]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[false]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[[]]'\''
[[]]'
) -L 37.new <(
echo '$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@" 2>&1|sed -r '\''/error:/s|(/dev/fd/)[0-9]+|\1??|'\''; }'
json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@" 2>&1|sed -r '/error:/s|(/dev/fd/)[0-9]+|\1??|'; } 2>&1 ||
echo 'command failed: json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@" 2>&1|sed -r '\''/error:/s|(/dev/fd/)[0-9]+|\1??|'\''; }'

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''null'\'''
json -d '{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}' <<< 'null' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''null'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[[]]'\'''
json -d '{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}' <<< '[[]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[[]]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[[],[]]'\'''
json -d '{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}' <<< '[[],[]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[[],[]]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[[0]]'\'''
json -d '{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}' <<< '[[0]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[[0]]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[[0,1]]'\'''
json -d '{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}' <<< '[[0,1]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[[0,1]]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[[null,false,0,"",[],{}],[null,true,1,"",[],{}]]'\'''
json -d '{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}' <<< '[[null,false,0,"",[],{}],[null,true,1,"",[],{}]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[[null,false,0,"",[],{}],[null,true,1,"",[],{}]]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[0]'\'''
json -d '{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}' <<< '[0]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[0]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[0,1]'\'''
json -d '{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}' <<< '[0,1]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[0,1]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[false]'\'''
json -d '{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}' <<< '[false]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[false]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[[]]'\'''
json -d '{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}' <<< '[[]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":"array"},{"type":"array","args":"number"}]}'\'' <<< '\''[[]]'\'''
)

