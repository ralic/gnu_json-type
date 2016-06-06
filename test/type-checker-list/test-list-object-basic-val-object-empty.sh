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
# $ json-gentest -C type-checker-list:list-object-basic-val-object-empty
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L list-object-basic-val-object-empty.old <(echo \
'$ export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes
$ json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; }
$ json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"type"}]}]}'\'' <<< '\''{}'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: {}
json: error: <stdin>:1:2:  ^
{
command failed: json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"type"}]}]}'\'' <<< '\''{}'\''
$ json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"null"}]}]}'\'' <<< '\''{}'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: {}
json: error: <stdin>:1:2:  ^
{
command failed: json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"null"}]}]}'\'' <<< '\''{}'\''
$ json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"boolean"}]}]}'\'' <<< '\''{}'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: {}
json: error: <stdin>:1:2:  ^
{
command failed: json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"boolean"}]}]}'\'' <<< '\''{}'\''
$ json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"number"}]}]}'\'' <<< '\''{}'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: {}
json: error: <stdin>:1:2:  ^
{
command failed: json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"number"}]}]}'\'' <<< '\''{}'\''
$ json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"string"}]}]}'\'' <<< '\''{}'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: {}
json: error: <stdin>:1:2:  ^
{
command failed: json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"string"}]}]}'\'' <<< '\''{}'\''
$ json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"object"}]}]}'\'' <<< '\''{}'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: {}
json: error: <stdin>:1:2:  ^
{
command failed: json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"object"}]}]}'\'' <<< '\''{}'\''
$ json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"array"}]}]}'\'' <<< '\''{}'\''
json: error: <stdin>:1:2: type check error: too few arguments
json: error: <stdin>:1:2: {}
json: error: <stdin>:1:2:  ^
{
command failed: json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"array"}]}]}'\'' <<< '\''{}'\'''
) -L list-object-basic-val-object-empty.new <(
echo '$ export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes'
export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes 2>&1 ||
echo 'command failed: export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes'

echo '$ json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; }'
json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; } 2>&1 ||
echo 'command failed: json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; }'

echo '$ json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"type"}]}]}'\'' <<< '\''{}'\'''
json -d '{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"type"}]}]}' <<< '{}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"type"}]}]}'\'' <<< '\''{}'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"null"}]}]}'\'' <<< '\''{}'\'''
json -d '{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"null"}]}]}' <<< '{}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"null"}]}]}'\'' <<< '\''{}'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"boolean"}]}]}'\'' <<< '\''{}'\'''
json -d '{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"boolean"}]}]}' <<< '{}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"boolean"}]}]}'\'' <<< '\''{}'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"number"}]}]}'\'' <<< '\''{}'\'''
json -d '{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"number"}]}]}' <<< '{}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"number"}]}]}'\'' <<< '\''{}'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"string"}]}]}'\'' <<< '\''{}'\'''
json -d '{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"string"}]}]}' <<< '{}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"string"}]}]}'\'' <<< '\''{}'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"object"}]}]}'\'' <<< '\''{}'\'''
json -d '{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"object"}]}]}' <<< '{}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"object"}]}]}'\'' <<< '\''{}'\'''

echo '$ json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"array"}]}]}'\'' <<< '\''{}'\'''
json -d '{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"array"}]}]}' <<< '{}' 2>&1 ||
echo 'command failed: json -d '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"array"}]}]}'\'' <<< '\''{}'\'''
)

