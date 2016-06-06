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
# $ json-gentest -C type-lib:name3
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L name3.old <(echo \
'$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }
$ json <<< '\''{"name":"faa","type":"type","fuu":null}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: arguments not of size two
json: error: <stdin>:1:1: {"name":"faa","type":"type","fuu"
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"type","fuu":null}'\''
$ json <<< '\''{"name":"faa","type":"type","fuu":false}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: arguments not of size two
json: error: <stdin>:1:1: {"name":"faa","type":"type","fuu"
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"type","fuu":false}'\''
$ json <<< '\''{"name":"faa","type":"type","fuu":true}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: arguments not of size two
json: error: <stdin>:1:1: {"name":"faa","type":"type","fuu"
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"type","fuu":true}'\''
$ json <<< '\''{"name":"faa","type":"type","fuu":123}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: arguments not of size two
json: error: <stdin>:1:1: {"name":"faa","type":"type","fuu"
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"type","fuu":123}'\''
$ json <<< '\''{"name":"faa","type":"type","fuu":"foo"}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: arguments not of size two
json: error: <stdin>:1:1: {"name":"faa","type":"type","fuu"
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"type","fuu":"foo"}'\''
$ json <<< '\''{"name":"faa","type":"type","fuu":"type"}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: arguments not of size two
json: error: <stdin>:1:1: {"name":"faa","type":"type","fuu"
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"type","fuu":"type"}'\''
$ json <<< '\''{"name":"faa","type":"type","fuu":"null"}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: arguments not of size two
json: error: <stdin>:1:1: {"name":"faa","type":"type","fuu"
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"type","fuu":"null"}'\''
$ json <<< '\''{"name":"faa","type":"type","fuu":"boolean"}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: arguments not of size two
json: error: <stdin>:1:1: {"name":"faa","type":"type","fuu"
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"type","fuu":"boolean"}'\''
$ json <<< '\''{"name":"faa","type":"type","fuu":"number"}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: arguments not of size two
json: error: <stdin>:1:1: {"name":"faa","type":"type","fuu"
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"type","fuu":"number"}'\''
$ json <<< '\''{"name":"faa","type":"type","fuu":"string"}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: arguments not of size two
json: error: <stdin>:1:1: {"name":"faa","type":"type","fuu"
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"type","fuu":"string"}'\''
$ json <<< '\''{"name":"faa","type":"type","fuu":"object"}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: arguments not of size two
json: error: <stdin>:1:1: {"name":"faa","type":"type","fuu"
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"type","fuu":"object"}'\''
$ json <<< '\''{"name":"faa","type":"type","fuu":"array"}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: arguments not of size two
json: error: <stdin>:1:1: {"name":"faa","type":"type","fuu"
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"type","fuu":"array"}'\''
$ json <<< '\''{"name":"faa","type":"type","fuu":"list"}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: arguments not of size two
json: error: <stdin>:1:1: {"name":"faa","type":"type","fuu"
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"type","fuu":"list"}'\''
$ json <<< '\''{"name":"faa","type":"type","fuu":{}}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: arguments not of size two
json: error: <stdin>:1:1: {"name":"faa","type":"type","fuu"
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"type","fuu":{}}'\''
$ json <<< '\''{"name":"faa","type":"type","fuu":{"foo":"bar"}}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: arguments not of size two
json: error: <stdin>:1:1: {"name":"faa","type":"type","fuu"
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"type","fuu":{"foo":"bar"}}'\''
$ json <<< '\''{"name":"faa","type":"type","fuu":[]}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: arguments not of size two
json: error: <stdin>:1:1: {"name":"faa","type":"type","fuu"
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"type","fuu":[]}'\''
$ json <<< '\''{"name":"faa","type":"type","fuu":["foo","bar"]}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: arguments not of size two
json: error: <stdin>:1:1: {"name":"faa","type":"type","fuu"
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"type","fuu":["foo","bar"]}'\'''
) -L name3.new <(
echo '$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }'
json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; } 2>&1 ||
echo 'command failed: json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }'

echo '$ json <<< '\''{"name":"faa","type":"type","fuu":null}'\'''
json <<< '{"name":"faa","type":"type","fuu":null}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"type","fuu":null}'\'''

echo '$ json <<< '\''{"name":"faa","type":"type","fuu":false}'\'''
json <<< '{"name":"faa","type":"type","fuu":false}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"type","fuu":false}'\'''

echo '$ json <<< '\''{"name":"faa","type":"type","fuu":true}'\'''
json <<< '{"name":"faa","type":"type","fuu":true}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"type","fuu":true}'\'''

echo '$ json <<< '\''{"name":"faa","type":"type","fuu":123}'\'''
json <<< '{"name":"faa","type":"type","fuu":123}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"type","fuu":123}'\'''

echo '$ json <<< '\''{"name":"faa","type":"type","fuu":"foo"}'\'''
json <<< '{"name":"faa","type":"type","fuu":"foo"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"type","fuu":"foo"}'\'''

echo '$ json <<< '\''{"name":"faa","type":"type","fuu":"type"}'\'''
json <<< '{"name":"faa","type":"type","fuu":"type"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"type","fuu":"type"}'\'''

echo '$ json <<< '\''{"name":"faa","type":"type","fuu":"null"}'\'''
json <<< '{"name":"faa","type":"type","fuu":"null"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"type","fuu":"null"}'\'''

echo '$ json <<< '\''{"name":"faa","type":"type","fuu":"boolean"}'\'''
json <<< '{"name":"faa","type":"type","fuu":"boolean"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"type","fuu":"boolean"}'\'''

echo '$ json <<< '\''{"name":"faa","type":"type","fuu":"number"}'\'''
json <<< '{"name":"faa","type":"type","fuu":"number"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"type","fuu":"number"}'\'''

echo '$ json <<< '\''{"name":"faa","type":"type","fuu":"string"}'\'''
json <<< '{"name":"faa","type":"type","fuu":"string"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"type","fuu":"string"}'\'''

echo '$ json <<< '\''{"name":"faa","type":"type","fuu":"object"}'\'''
json <<< '{"name":"faa","type":"type","fuu":"object"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"type","fuu":"object"}'\'''

echo '$ json <<< '\''{"name":"faa","type":"type","fuu":"array"}'\'''
json <<< '{"name":"faa","type":"type","fuu":"array"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"type","fuu":"array"}'\'''

echo '$ json <<< '\''{"name":"faa","type":"type","fuu":"list"}'\'''
json <<< '{"name":"faa","type":"type","fuu":"list"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"type","fuu":"list"}'\'''

echo '$ json <<< '\''{"name":"faa","type":"type","fuu":{}}'\'''
json <<< '{"name":"faa","type":"type","fuu":{}}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"type","fuu":{}}'\'''

echo '$ json <<< '\''{"name":"faa","type":"type","fuu":{"foo":"bar"}}'\'''
json <<< '{"name":"faa","type":"type","fuu":{"foo":"bar"}}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"type","fuu":{"foo":"bar"}}'\'''

echo '$ json <<< '\''{"name":"faa","type":"type","fuu":[]}'\'''
json <<< '{"name":"faa","type":"type","fuu":[]}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"type","fuu":[]}'\'''

echo '$ json <<< '\''{"name":"faa","type":"type","fuu":["foo","bar"]}'\'''
json <<< '{"name":"faa","type":"type","fuu":["foo","bar"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"type","fuu":["foo","bar"]}'\'''
)

