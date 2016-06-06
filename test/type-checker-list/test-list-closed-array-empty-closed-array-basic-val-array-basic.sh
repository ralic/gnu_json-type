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
# $ json-gentest -C type-checker-list:list-closed-array-empty-closed-array-basic-val-array-basic
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L list-closed-array-empty-closed-array-basic-val-array-basic.old <(echo \
'$ export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes
$ json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; }
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''[null]'\''
[null]
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''[false]'\''
[false]
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''[true]'\''
[true]
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''[123]'\''
[123]
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''["foo"]'\''
["foo"]
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''[{}]'\''
[{}]
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''[[]]'\''
[[]]
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[null]'\''
[null]
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[false]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"null"'\'' or no value at all
json: error: <stdin>:1:2: [false]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[false]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[true]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"null"'\'' or no value at all
json: error: <stdin>:1:2: [true]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[true]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[123]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"null"'\'' or no value at all
json: error: <stdin>:1:2: [123]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[123]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''["foo"]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"null"'\'' or no value at all
json: error: <stdin>:1:2: ["foo"]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''["foo"]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[{}]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"null"'\'' or no value at all
json: error: <stdin>:1:2: [{}]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[{}]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[[]]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"null"'\'' or no value at all
json: error: <stdin>:1:2: [[]]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[[]]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[null]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"boolean"'\'' or no value at all
json: error: <stdin>:1:2: [null]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[null]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[false]'\''
[false]
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[true]'\''
[true]
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[123]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"boolean"'\'' or no value at all
json: error: <stdin>:1:2: [123]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[123]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''["foo"]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"boolean"'\'' or no value at all
json: error: <stdin>:1:2: ["foo"]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''["foo"]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[{}]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"boolean"'\'' or no value at all
json: error: <stdin>:1:2: [{}]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[{}]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[[]]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"boolean"'\'' or no value at all
json: error: <stdin>:1:2: [[]]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[[]]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[null]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"number"'\'' or no value at all
json: error: <stdin>:1:2: [null]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[null]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[false]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"number"'\'' or no value at all
json: error: <stdin>:1:2: [false]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[false]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[true]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"number"'\'' or no value at all
json: error: <stdin>:1:2: [true]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[true]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[123]'\''
[123]
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''["foo"]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"number"'\'' or no value at all
json: error: <stdin>:1:2: ["foo"]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''["foo"]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[{}]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"number"'\'' or no value at all
json: error: <stdin>:1:2: [{}]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[{}]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[[]]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"number"'\'' or no value at all
json: error: <stdin>:1:2: [[]]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[[]]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[null]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"string"'\'' or no value at all
json: error: <stdin>:1:2: [null]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[null]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[false]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"string"'\'' or no value at all
json: error: <stdin>:1:2: [false]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[false]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[true]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"string"'\'' or no value at all
json: error: <stdin>:1:2: [true]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[true]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[123]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"string"'\'' or no value at all
json: error: <stdin>:1:2: [123]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[123]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''["foo"]'\''
["foo"]
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[{}]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"string"'\'' or no value at all
json: error: <stdin>:1:2: [{}]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[{}]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[[]]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"string"'\'' or no value at all
json: error: <stdin>:1:2: [[]]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[[]]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[null]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"object"'\'' or no value at all
json: error: <stdin>:1:2: [null]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[null]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[false]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"object"'\'' or no value at all
json: error: <stdin>:1:2: [false]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[false]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[true]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"object"'\'' or no value at all
json: error: <stdin>:1:2: [true]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[true]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[123]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"object"'\'' or no value at all
json: error: <stdin>:1:2: [123]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[123]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''["foo"]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"object"'\'' or no value at all
json: error: <stdin>:1:2: ["foo"]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''["foo"]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[{}]'\''
[{}]
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[[]]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"object"'\'' or no value at all
json: error: <stdin>:1:2: [[]]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[[]]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[null]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"array"'\'' or no value at all
json: error: <stdin>:1:2: [null]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[null]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[false]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"array"'\'' or no value at all
json: error: <stdin>:1:2: [false]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[false]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[true]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"array"'\'' or no value at all
json: error: <stdin>:1:2: [true]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[true]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[123]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"array"'\'' or no value at all
json: error: <stdin>:1:2: [123]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[123]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''["foo"]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"array"'\'' or no value at all
json: error: <stdin>:1:2: ["foo"]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''["foo"]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[{}]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"array"'\'' or no value at all
json: error: <stdin>:1:2: [{}]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[{}]'\''
$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[[]]'\''
[[]]'
) -L list-closed-array-empty-closed-array-basic-val-array-basic.new <(
echo '$ export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes'
export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes 2>&1 ||
echo 'command failed: export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes'

echo '$ json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; }'
json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; } 2>&1 ||
echo 'command failed: json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; }'

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''[null]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}' <<< '[null]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''[null]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''[false]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}' <<< '[false]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''[false]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''[true]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}' <<< '[true]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''[true]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''[123]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}' <<< '[123]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''[123]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''["foo"]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}' <<< '["foo"]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''["foo"]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''[{}]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}' <<< '[{}]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''[{}]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''[[]]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}' <<< '[[]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["type"]}]}'\'' <<< '\''[[]]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[null]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}' <<< '[null]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[null]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[false]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}' <<< '[false]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[false]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[true]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}' <<< '[true]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[true]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[123]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}' <<< '[123]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[123]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''["foo"]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}' <<< '["foo"]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''["foo"]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[{}]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}' <<< '[{}]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[{}]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[[]]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}' <<< '[[]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["null"]}]}'\'' <<< '\''[[]]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[null]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}' <<< '[null]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[null]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[false]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}' <<< '[false]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[false]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[true]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}' <<< '[true]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[true]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[123]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}' <<< '[123]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[123]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''["foo"]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}' <<< '["foo"]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''["foo"]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[{}]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}' <<< '[{}]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[{}]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[[]]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}' <<< '[[]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["boolean"]}]}'\'' <<< '\''[[]]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[null]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}' <<< '[null]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[null]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[false]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}' <<< '[false]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[false]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[true]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}' <<< '[true]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[true]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[123]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}' <<< '[123]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[123]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''["foo"]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}' <<< '["foo"]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''["foo"]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[{}]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}' <<< '[{}]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[{}]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[[]]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}' <<< '[[]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["number"]}]}'\'' <<< '\''[[]]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[null]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}' <<< '[null]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[null]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[false]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}' <<< '[false]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[false]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[true]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}' <<< '[true]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[true]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[123]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}' <<< '[123]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[123]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''["foo"]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}' <<< '["foo"]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''["foo"]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[{}]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}' <<< '[{}]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[{}]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[[]]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}' <<< '[[]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["string"]}]}'\'' <<< '\''[[]]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[null]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}' <<< '[null]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[null]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[false]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}' <<< '[false]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[false]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[true]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}' <<< '[true]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[true]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[123]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}' <<< '[123]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[123]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''["foo"]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}' <<< '["foo"]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''["foo"]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[{}]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}' <<< '[{}]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[{}]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[[]]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}' <<< '[[]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["object"]}]}'\'' <<< '\''[[]]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[null]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}' <<< '[null]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[null]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[false]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}' <<< '[false]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[false]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[true]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}' <<< '[true]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[true]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[123]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}' <<< '[123]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[123]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''["foo"]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}' <<< '["foo"]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''["foo"]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[{}]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}' <<< '[{}]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[{}]'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[[]]'\'''
json -d '{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}' <<< '[[]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"array","args":[]},{"type":"array","args":["array"]}]}'\'' <<< '\''[[]]'\'''
)

