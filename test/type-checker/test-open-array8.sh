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
# $ json-gentest -C type-checker:open-array8
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L open-array8.old <(echo \
'$ export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes
$ json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; }
$ json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar",null]'\''
["bar",null]
$ json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar",false]'\''
["bar",false]
$ json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar",true]'\''
["bar",true]
$ json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar",123]'\''
["bar",123]
$ json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar","foo"]'\''
["bar","foo"]
$ json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar",{}]'\''
["bar",{}]
$ json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar",[]]'\''
["bar",[]]
$ json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",null]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"null"'\''
json: error: <stdin>:1:2: ["bar",null]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",null]'\''
$ json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",false]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"null"'\''
json: error: <stdin>:1:2: ["bar",false]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",false]'\''
$ json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",true]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"null"'\''
json: error: <stdin>:1:2: ["bar",true]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",true]'\''
$ json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",123]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"null"'\''
json: error: <stdin>:1:2: ["bar",123]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",123]'\''
$ json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar","foo"]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"null"'\''
json: error: <stdin>:1:2: ["bar","foo"]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar","foo"]'\''
$ json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",{}]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"null"'\''
json: error: <stdin>:1:2: ["bar",{}]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",{}]'\''
$ json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",[]]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"null"'\''
json: error: <stdin>:1:2: ["bar",[]]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",[]]'\''
$ json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",null]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"boolean"'\''
json: error: <stdin>:1:2: ["bar",null]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",null]'\''
$ json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",false]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"boolean"'\''
json: error: <stdin>:1:2: ["bar",false]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",false]'\''
$ json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",true]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"boolean"'\''
json: error: <stdin>:1:2: ["bar",true]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",true]'\''
$ json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",123]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"boolean"'\''
json: error: <stdin>:1:2: ["bar",123]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",123]'\''
$ json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar","foo"]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"boolean"'\''
json: error: <stdin>:1:2: ["bar","foo"]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar","foo"]'\''
$ json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",{}]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"boolean"'\''
json: error: <stdin>:1:2: ["bar",{}]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",{}]'\''
$ json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",[]]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"boolean"'\''
json: error: <stdin>:1:2: ["bar",[]]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",[]]'\''
$ json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",null]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"number"'\''
json: error: <stdin>:1:2: ["bar",null]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",null]'\''
$ json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",false]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"number"'\''
json: error: <stdin>:1:2: ["bar",false]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",false]'\''
$ json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",true]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"number"'\''
json: error: <stdin>:1:2: ["bar",true]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",true]'\''
$ json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",123]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"number"'\''
json: error: <stdin>:1:2: ["bar",123]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",123]'\''
$ json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar","foo"]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"number"'\''
json: error: <stdin>:1:2: ["bar","foo"]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar","foo"]'\''
$ json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",{}]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"number"'\''
json: error: <stdin>:1:2: ["bar",{}]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",{}]'\''
$ json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",[]]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"number"'\''
json: error: <stdin>:1:2: ["bar",[]]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",[]]'\''
$ json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",null]'\''
json: error: <stdin>:1:8: type check error: type mismatch: expected a value of type `"string"'\''
json: error: <stdin>:1:8: ["bar",null]
json: error: <stdin>:1:8:        ^
["bar",
command failed: json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",null]'\''
$ json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",false]'\''
json: error: <stdin>:1:8: type check error: type mismatch: expected a value of type `"string"'\''
json: error: <stdin>:1:8: ["bar",false]
json: error: <stdin>:1:8:        ^
["bar",
command failed: json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",false]'\''
$ json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",true]'\''
json: error: <stdin>:1:8: type check error: type mismatch: expected a value of type `"string"'\''
json: error: <stdin>:1:8: ["bar",true]
json: error: <stdin>:1:8:        ^
["bar",
command failed: json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",true]'\''
$ json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",123]'\''
json: error: <stdin>:1:8: type check error: type mismatch: expected a value of type `"string"'\''
json: error: <stdin>:1:8: ["bar",123]
json: error: <stdin>:1:8:        ^
["bar",
command failed: json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",123]'\''
$ json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar","foo"]'\''
["bar","foo"]
$ json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",{}]'\''
json: error: <stdin>:1:8: type check error: type mismatch: expected a value of type `"string"'\''
json: error: <stdin>:1:8: ["bar",{}]
json: error: <stdin>:1:8:        ^
["bar",
command failed: json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",{}]'\''
$ json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",[]]'\''
json: error: <stdin>:1:8: type check error: type mismatch: expected a value of type `"string"'\''
json: error: <stdin>:1:8: ["bar",[]]
json: error: <stdin>:1:8:        ^
["bar",
command failed: json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",[]]'\''
$ json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",null]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"object"'\''
json: error: <stdin>:1:2: ["bar",null]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",null]'\''
$ json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",false]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"object"'\''
json: error: <stdin>:1:2: ["bar",false]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",false]'\''
$ json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",true]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"object"'\''
json: error: <stdin>:1:2: ["bar",true]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",true]'\''
$ json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",123]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"object"'\''
json: error: <stdin>:1:2: ["bar",123]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",123]'\''
$ json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar","foo"]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"object"'\''
json: error: <stdin>:1:2: ["bar","foo"]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar","foo"]'\''
$ json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",{}]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"object"'\''
json: error: <stdin>:1:2: ["bar",{}]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",{}]'\''
$ json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",[]]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"object"'\''
json: error: <stdin>:1:2: ["bar",[]]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",[]]'\''
$ json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",null]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"array"'\''
json: error: <stdin>:1:2: ["bar",null]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",null]'\''
$ json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",false]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"array"'\''
json: error: <stdin>:1:2: ["bar",false]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",false]'\''
$ json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",true]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"array"'\''
json: error: <stdin>:1:2: ["bar",true]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",true]'\''
$ json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",123]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"array"'\''
json: error: <stdin>:1:2: ["bar",123]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",123]'\''
$ json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar","foo"]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"array"'\''
json: error: <stdin>:1:2: ["bar","foo"]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar","foo"]'\''
$ json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",{}]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"array"'\''
json: error: <stdin>:1:2: ["bar",{}]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",{}]'\''
$ json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",[]]'\''
json: error: <stdin>:1:2: type check error: type mismatch: expected a value of type `"array"'\''
json: error: <stdin>:1:2: ["bar",[]]
json: error: <stdin>:1:2:  ^
[
command failed: json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",[]]'\'''
) -L open-array8.new <(
echo '$ export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes'
export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes 2>&1 ||
echo 'command failed: export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes'

echo '$ json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; }'
json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; } 2>&1 ||
echo 'command failed: json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; }'

echo '$ json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar",null]'\'''
json -d '{"type":"array","args":"type"}' <<< '["bar",null]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar",null]'\'''

echo '$ json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar",false]'\'''
json -d '{"type":"array","args":"type"}' <<< '["bar",false]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar",false]'\'''

echo '$ json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar",true]'\'''
json -d '{"type":"array","args":"type"}' <<< '["bar",true]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar",true]'\'''

echo '$ json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar",123]'\'''
json -d '{"type":"array","args":"type"}' <<< '["bar",123]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar",123]'\'''

echo '$ json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar","foo"]'\'''
json -d '{"type":"array","args":"type"}' <<< '["bar","foo"]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar","foo"]'\'''

echo '$ json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar",{}]'\'''
json -d '{"type":"array","args":"type"}' <<< '["bar",{}]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar",{}]'\'''

echo '$ json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar",[]]'\'''
json -d '{"type":"array","args":"type"}' <<< '["bar",[]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"type"}'\'' <<< '\''["bar",[]]'\'''

echo '$ json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",null]'\'''
json -d '{"type":"array","args":"null"}' <<< '["bar",null]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",null]'\'''

echo '$ json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",false]'\'''
json -d '{"type":"array","args":"null"}' <<< '["bar",false]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",false]'\'''

echo '$ json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",true]'\'''
json -d '{"type":"array","args":"null"}' <<< '["bar",true]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",true]'\'''

echo '$ json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",123]'\'''
json -d '{"type":"array","args":"null"}' <<< '["bar",123]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",123]'\'''

echo '$ json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar","foo"]'\'''
json -d '{"type":"array","args":"null"}' <<< '["bar","foo"]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar","foo"]'\'''

echo '$ json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",{}]'\'''
json -d '{"type":"array","args":"null"}' <<< '["bar",{}]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",{}]'\'''

echo '$ json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",[]]'\'''
json -d '{"type":"array","args":"null"}' <<< '["bar",[]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"null"}'\'' <<< '\''["bar",[]]'\'''

echo '$ json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",null]'\'''
json -d '{"type":"array","args":"boolean"}' <<< '["bar",null]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",null]'\'''

echo '$ json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",false]'\'''
json -d '{"type":"array","args":"boolean"}' <<< '["bar",false]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",false]'\'''

echo '$ json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",true]'\'''
json -d '{"type":"array","args":"boolean"}' <<< '["bar",true]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",true]'\'''

echo '$ json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",123]'\'''
json -d '{"type":"array","args":"boolean"}' <<< '["bar",123]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",123]'\'''

echo '$ json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar","foo"]'\'''
json -d '{"type":"array","args":"boolean"}' <<< '["bar","foo"]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar","foo"]'\'''

echo '$ json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",{}]'\'''
json -d '{"type":"array","args":"boolean"}' <<< '["bar",{}]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",{}]'\'''

echo '$ json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",[]]'\'''
json -d '{"type":"array","args":"boolean"}' <<< '["bar",[]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"boolean"}'\'' <<< '\''["bar",[]]'\'''

echo '$ json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",null]'\'''
json -d '{"type":"array","args":"number"}' <<< '["bar",null]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",null]'\'''

echo '$ json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",false]'\'''
json -d '{"type":"array","args":"number"}' <<< '["bar",false]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",false]'\'''

echo '$ json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",true]'\'''
json -d '{"type":"array","args":"number"}' <<< '["bar",true]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",true]'\'''

echo '$ json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",123]'\'''
json -d '{"type":"array","args":"number"}' <<< '["bar",123]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",123]'\'''

echo '$ json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar","foo"]'\'''
json -d '{"type":"array","args":"number"}' <<< '["bar","foo"]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar","foo"]'\'''

echo '$ json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",{}]'\'''
json -d '{"type":"array","args":"number"}' <<< '["bar",{}]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",{}]'\'''

echo '$ json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",[]]'\'''
json -d '{"type":"array","args":"number"}' <<< '["bar",[]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"number"}'\'' <<< '\''["bar",[]]'\'''

echo '$ json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",null]'\'''
json -d '{"type":"array","args":"string"}' <<< '["bar",null]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",null]'\'''

echo '$ json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",false]'\'''
json -d '{"type":"array","args":"string"}' <<< '["bar",false]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",false]'\'''

echo '$ json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",true]'\'''
json -d '{"type":"array","args":"string"}' <<< '["bar",true]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",true]'\'''

echo '$ json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",123]'\'''
json -d '{"type":"array","args":"string"}' <<< '["bar",123]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",123]'\'''

echo '$ json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar","foo"]'\'''
json -d '{"type":"array","args":"string"}' <<< '["bar","foo"]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar","foo"]'\'''

echo '$ json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",{}]'\'''
json -d '{"type":"array","args":"string"}' <<< '["bar",{}]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",{}]'\'''

echo '$ json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",[]]'\'''
json -d '{"type":"array","args":"string"}' <<< '["bar",[]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"string"}'\'' <<< '\''["bar",[]]'\'''

echo '$ json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",null]'\'''
json -d '{"type":"array","args":"object"}' <<< '["bar",null]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",null]'\'''

echo '$ json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",false]'\'''
json -d '{"type":"array","args":"object"}' <<< '["bar",false]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",false]'\'''

echo '$ json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",true]'\'''
json -d '{"type":"array","args":"object"}' <<< '["bar",true]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",true]'\'''

echo '$ json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",123]'\'''
json -d '{"type":"array","args":"object"}' <<< '["bar",123]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",123]'\'''

echo '$ json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar","foo"]'\'''
json -d '{"type":"array","args":"object"}' <<< '["bar","foo"]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar","foo"]'\'''

echo '$ json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",{}]'\'''
json -d '{"type":"array","args":"object"}' <<< '["bar",{}]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",{}]'\'''

echo '$ json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",[]]'\'''
json -d '{"type":"array","args":"object"}' <<< '["bar",[]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"object"}'\'' <<< '\''["bar",[]]'\'''

echo '$ json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",null]'\'''
json -d '{"type":"array","args":"array"}' <<< '["bar",null]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",null]'\'''

echo '$ json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",false]'\'''
json -d '{"type":"array","args":"array"}' <<< '["bar",false]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",false]'\'''

echo '$ json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",true]'\'''
json -d '{"type":"array","args":"array"}' <<< '["bar",true]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",true]'\'''

echo '$ json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",123]'\'''
json -d '{"type":"array","args":"array"}' <<< '["bar",123]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",123]'\'''

echo '$ json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar","foo"]'\'''
json -d '{"type":"array","args":"array"}' <<< '["bar","foo"]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar","foo"]'\'''

echo '$ json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",{}]'\'''
json -d '{"type":"array","args":"array"}' <<< '["bar",{}]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",{}]'\'''

echo '$ json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",[]]'\'''
json -d '{"type":"array","args":"array"}' <<< '["bar",[]]' 2>&1 ||
echo 'command failed: json -d '\''{"type":"array","args":"array"}'\'' <<< '\''["bar",[]]'\'''
)

