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
# $ json-gentest -C type-checker-list:list-basic-closed-array-basic-val-array-empty
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L list-basic-closed-array-basic-val-array-empty.old <(echo \
'$ export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes
$ json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; }
$ json -d '\''{"type":"list","args":["type",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\''
[]
$ json -d '\''{"type":"list","args":["type",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\''
[]
$ json -d '\''{"type":"list","args":["type",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\''
[]
$ json -d '\''{"type":"list","args":["type",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\''
[]
$ json -d '\''{"type":"list","args":["type",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\''
[]
$ json -d '\''{"type":"list","args":["type",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\''
[]
$ json -d '\''{"type":"list","args":["type",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\''
[]
$ json -d '\''{"type":"list","args":["null",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["null",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["null",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["null",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["null",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["null",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["null",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["null",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["null",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["null",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["null",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["null",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["null",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["null",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["number",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["number",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["number",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["number",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["number",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["number",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["number",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["number",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["number",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["number",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["number",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["number",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["number",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["number",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["string",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["string",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["string",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["string",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["string",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["string",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["string",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["string",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["string",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["string",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["string",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["string",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["string",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["string",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["object",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["object",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["object",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["object",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["object",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["object",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["object",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["object",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["object",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["object",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["object",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["object",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["object",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: []
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":["object",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\''
$ json -d '\''{"type":"list","args":["array",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\''
[]
$ json -d '\''{"type":"list","args":["array",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\''
[]
$ json -d '\''{"type":"list","args":["array",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\''
[]
$ json -d '\''{"type":"list","args":["array",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\''
[]
$ json -d '\''{"type":"list","args":["array",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\''
[]
$ json -d '\''{"type":"list","args":["array",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\''
[]
$ json -d '\''{"type":"list","args":["array",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\''
[]'
) -L list-basic-closed-array-basic-val-array-empty.new <(
echo '$ export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes'
export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes 2>&1 ||
echo 'command failed: export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes'

echo '$ json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; }'
json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; } 2>&1 ||
echo 'command failed: json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; }'

echo '$ json -d '\''{"type":"list","args":["type",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["type",{"type":"array","args":["type"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["type",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["type",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["type",{"type":"array","args":["null"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["type",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["type",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["type",{"type":"array","args":["boolean"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["type",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["type",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["type",{"type":"array","args":["number"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["type",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["type",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["type",{"type":"array","args":["string"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["type",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["type",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["type",{"type":"array","args":["object"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["type",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["type",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["type",{"type":"array","args":["array"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["type",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["null",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["null",{"type":"array","args":["type"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["null",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["null",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["null",{"type":"array","args":["null"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["null",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["null",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["null",{"type":"array","args":["boolean"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["null",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["null",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["null",{"type":"array","args":["number"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["null",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["null",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["null",{"type":"array","args":["string"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["null",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["null",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["null",{"type":"array","args":["object"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["null",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["null",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["null",{"type":"array","args":["array"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["null",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["boolean",{"type":"array","args":["type"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["boolean",{"type":"array","args":["null"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["boolean",{"type":"array","args":["boolean"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["boolean",{"type":"array","args":["number"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["boolean",{"type":"array","args":["string"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["boolean",{"type":"array","args":["object"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["boolean",{"type":"array","args":["array"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["boolean",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["number",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["number",{"type":"array","args":["type"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["number",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["number",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["number",{"type":"array","args":["null"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["number",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["number",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["number",{"type":"array","args":["boolean"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["number",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["number",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["number",{"type":"array","args":["number"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["number",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["number",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["number",{"type":"array","args":["string"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["number",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["number",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["number",{"type":"array","args":["object"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["number",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["number",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["number",{"type":"array","args":["array"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["number",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["string",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["string",{"type":"array","args":["type"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["string",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["string",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["string",{"type":"array","args":["null"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["string",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["string",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["string",{"type":"array","args":["boolean"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["string",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["string",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["string",{"type":"array","args":["number"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["string",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["string",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["string",{"type":"array","args":["string"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["string",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["string",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["string",{"type":"array","args":["object"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["string",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["string",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["string",{"type":"array","args":["array"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["string",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["object",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["object",{"type":"array","args":["type"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["object",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["object",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["object",{"type":"array","args":["null"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["object",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["object",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["object",{"type":"array","args":["boolean"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["object",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["object",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["object",{"type":"array","args":["number"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["object",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["object",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["object",{"type":"array","args":["string"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["object",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["object",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["object",{"type":"array","args":["object"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["object",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["object",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["object",{"type":"array","args":["array"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["object",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["array",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["array",{"type":"array","args":["type"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["array",{"type":"array","args":["type"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["array",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["array",{"type":"array","args":["null"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["array",{"type":"array","args":["null"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["array",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["array",{"type":"array","args":["boolean"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["array",{"type":"array","args":["boolean"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["array",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["array",{"type":"array","args":["number"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["array",{"type":"array","args":["number"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["array",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["array",{"type":"array","args":["string"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["array",{"type":"array","args":["string"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["array",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["array",{"type":"array","args":["object"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["array",{"type":"array","args":["object"]}]}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"type":"list","args":["array",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\'''
json -d '{"type":"list","args":["array",{"type":"array","args":["array"]}]}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":["array",{"type":"array","args":["array"]}]}'\'' <<< '\''[]'\'''
)

