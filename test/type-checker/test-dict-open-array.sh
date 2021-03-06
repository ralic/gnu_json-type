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
# $ json-gentest -C type-checker:dict-open-array
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L dict-open-array.old <(echo \
'$ export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes
$ json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; }
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":[null]}'\''
{"foo":[null]}
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":[false]}'\''
{"foo":[false]}
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":[true]}'\''
{"foo":[true]}
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":[123]}'\''
{"foo":[123]}
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":["bar"]}'\''
{"foo":["bar"]}
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":[{}]}'\''
{"foo":[{}]}
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":[[]]}'\''
{"foo":[[]]}
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[null]}'\''
{"foo":[null]}
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[false]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"null"'\''
json: error: <stdin>:1:9: {"foo":[false]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[false]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[true]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"null"'\''
json: error: <stdin>:1:9: {"foo":[true]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[true]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[123]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"null"'\''
json: error: <stdin>:1:9: {"foo":[123]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[123]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":["bar"]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"null"'\''
json: error: <stdin>:1:9: {"foo":["bar"]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":["bar"]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[{}]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"null"'\''
json: error: <stdin>:1:9: {"foo":[{}]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[{}]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[[]]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"null"'\''
json: error: <stdin>:1:9: {"foo":[[]]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[[]]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[null]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"boolean"'\''
json: error: <stdin>:1:9: {"foo":[null]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[null]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[false]}'\''
{"foo":[false]}
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[true]}'\''
{"foo":[true]}
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[123]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"boolean"'\''
json: error: <stdin>:1:9: {"foo":[123]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[123]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":["bar"]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"boolean"'\''
json: error: <stdin>:1:9: {"foo":["bar"]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":["bar"]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[{}]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"boolean"'\''
json: error: <stdin>:1:9: {"foo":[{}]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[{}]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[[]]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"boolean"'\''
json: error: <stdin>:1:9: {"foo":[[]]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[[]]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[null]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"number"'\''
json: error: <stdin>:1:9: {"foo":[null]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[null]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[false]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"number"'\''
json: error: <stdin>:1:9: {"foo":[false]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[false]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[true]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"number"'\''
json: error: <stdin>:1:9: {"foo":[true]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[true]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[123]}'\''
{"foo":[123]}
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":["bar"]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"number"'\''
json: error: <stdin>:1:9: {"foo":["bar"]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":["bar"]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[{}]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"number"'\''
json: error: <stdin>:1:9: {"foo":[{}]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[{}]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[[]]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"number"'\''
json: error: <stdin>:1:9: {"foo":[[]]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[[]]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[null]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"string"'\''
json: error: <stdin>:1:9: {"foo":[null]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[null]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[false]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"string"'\''
json: error: <stdin>:1:9: {"foo":[false]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[false]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[true]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"string"'\''
json: error: <stdin>:1:9: {"foo":[true]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[true]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[123]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"string"'\''
json: error: <stdin>:1:9: {"foo":[123]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[123]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":["bar"]}'\''
{"foo":["bar"]}
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[{}]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"string"'\''
json: error: <stdin>:1:9: {"foo":[{}]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[{}]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[[]]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"string"'\''
json: error: <stdin>:1:9: {"foo":[[]]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[[]]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[null]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"object"'\''
json: error: <stdin>:1:9: {"foo":[null]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[null]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[false]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"object"'\''
json: error: <stdin>:1:9: {"foo":[false]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[false]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[true]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"object"'\''
json: error: <stdin>:1:9: {"foo":[true]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[true]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[123]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"object"'\''
json: error: <stdin>:1:9: {"foo":[123]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[123]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":["bar"]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"object"'\''
json: error: <stdin>:1:9: {"foo":["bar"]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":["bar"]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[{}]}'\''
{"foo":[{}]}
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[[]]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"object"'\''
json: error: <stdin>:1:9: {"foo":[[]]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[[]]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[null]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"array"'\''
json: error: <stdin>:1:9: {"foo":[null]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[null]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[false]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"array"'\''
json: error: <stdin>:1:9: {"foo":[false]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[false]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[true]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"array"'\''
json: error: <stdin>:1:9: {"foo":[true]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[true]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[123]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"array"'\''
json: error: <stdin>:1:9: {"foo":[123]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[123]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":["bar"]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"array"'\''
json: error: <stdin>:1:9: {"foo":["bar"]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":["bar"]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[{}]}'\''
json: error: <stdin>:1:9: type check error: type mismatch: expected a value of type `"array"'\''
json: error: <stdin>:1:9: {"foo":[{}]}
json: error: <stdin>:1:9:         ^
{"foo":[
command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[{}]}'\''
$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[[]]}'\''
{"foo":[[]]}'
) -L dict-open-array.new <(
echo '$ export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes'
export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes 2>&1 ||
echo 'command failed: export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes'

echo '$ json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; }'
json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; } 2>&1 ||
echo 'command failed: json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; }'

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":[null]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}' <<< '{"foo":[null]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":[null]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":[false]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}' <<< '{"foo":[false]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":[false]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":[true]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}' <<< '{"foo":[true]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":[true]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":[123]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}' <<< '{"foo":[123]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":[123]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":["bar"]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}' <<< '{"foo":["bar"]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":["bar"]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":[{}]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}' <<< '{"foo":[{}]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":[{}]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":[[]]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}' <<< '{"foo":[[]]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}'\'' <<< '\''{"foo":[[]]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[null]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}' <<< '{"foo":[null]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[null]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[false]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}' <<< '{"foo":[false]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[false]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[true]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}' <<< '{"foo":[true]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[true]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[123]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}' <<< '{"foo":[123]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[123]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":["bar"]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}' <<< '{"foo":["bar"]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":["bar"]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[{}]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}' <<< '{"foo":[{}]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[{}]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[[]]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}' <<< '{"foo":[[]]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"null"}}]}'\'' <<< '\''{"foo":[[]]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[null]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}' <<< '{"foo":[null]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[null]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[false]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}' <<< '{"foo":[false]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[false]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[true]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}' <<< '{"foo":[true]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[true]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[123]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}' <<< '{"foo":[123]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[123]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":["bar"]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}' <<< '{"foo":["bar"]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":["bar"]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[{}]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}' <<< '{"foo":[{}]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[{}]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[[]]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}' <<< '{"foo":[[]]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"boolean"}}]}'\'' <<< '\''{"foo":[[]]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[null]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}' <<< '{"foo":[null]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[null]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[false]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}' <<< '{"foo":[false]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[false]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[true]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}' <<< '{"foo":[true]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[true]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[123]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}' <<< '{"foo":[123]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[123]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":["bar"]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}' <<< '{"foo":["bar"]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":["bar"]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[{}]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}' <<< '{"foo":[{}]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[{}]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[[]]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}' <<< '{"foo":[[]]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"number"}}]}'\'' <<< '\''{"foo":[[]]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[null]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}' <<< '{"foo":[null]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[null]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[false]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}' <<< '{"foo":[false]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[false]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[true]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}' <<< '{"foo":[true]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[true]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[123]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}' <<< '{"foo":[123]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[123]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":["bar"]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}' <<< '{"foo":["bar"]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":["bar"]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[{}]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}' <<< '{"foo":[{}]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[{}]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[[]]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}' <<< '{"foo":[[]]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"string"}}]}'\'' <<< '\''{"foo":[[]]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[null]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}' <<< '{"foo":[null]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[null]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[false]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}' <<< '{"foo":[false]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[false]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[true]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}' <<< '{"foo":[true]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[true]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[123]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}' <<< '{"foo":[123]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[123]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":["bar"]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}' <<< '{"foo":["bar"]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":["bar"]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[{}]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}' <<< '{"foo":[{}]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[{}]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[[]]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}' <<< '{"foo":[[]]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"object"}}]}'\'' <<< '\''{"foo":[[]]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[null]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}' <<< '{"foo":[null]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[null]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[false]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}' <<< '{"foo":[false]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[false]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[true]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}' <<< '{"foo":[true]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[true]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[123]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}' <<< '{"foo":[123]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[123]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":["bar"]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}' <<< '{"foo":["bar"]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":["bar"]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[{}]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}' <<< '{"foo":[{}]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[{}]}'\'''

echo '$ json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[[]]}'\'''
json -d '{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}' <<< '{"foo":[[]]}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"dict","args":[{"name":"foo","type":{"type":"array","args":"array"}}]}'\'' <<< '\''{"foo":[[]]}'\'''
)

