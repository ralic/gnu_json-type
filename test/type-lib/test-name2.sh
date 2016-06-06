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
# $ json-gentest -C type-lib:name2
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L name2.old <(echo \
'$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }
$ json <<< '\''{"name":"faa","fuu":null}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: key of second argument is not "type"
json: error: <stdin>:1:1: {"name":"faa","fuu":null}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","fuu":null}'\''
$ json <<< '\''{"name":"faa","type":null}'\''
json: error: <stdin>:1:22: meta error: invalid "name" object: its "type" argument must be a type
json: error: <stdin>:1:22: {"name":"faa","type":null}
json: error: <stdin>:1:22:                      ^
command failed: json <<< '\''{"name":"faa","type":null}'\''
$ json <<< '\''{"name":"faa","fuu":false}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: key of second argument is not "type"
json: error: <stdin>:1:1: {"name":"faa","fuu":false}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","fuu":false}'\''
$ json <<< '\''{"name":"faa","type":false}'\''
json: error: <stdin>:1:22: meta error: invalid "name" object: its "type" argument must be a type
json: error: <stdin>:1:22: {"name":"faa","type":false}
json: error: <stdin>:1:22:                      ^
command failed: json <<< '\''{"name":"faa","type":false}'\''
$ json <<< '\''{"name":"faa","fuu":true}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: key of second argument is not "type"
json: error: <stdin>:1:1: {"name":"faa","fuu":true}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","fuu":true}'\''
$ json <<< '\''{"name":"faa","type":true}'\''
json: error: <stdin>:1:22: meta error: invalid "name" object: its "type" argument must be a type
json: error: <stdin>:1:22: {"name":"faa","type":true}
json: error: <stdin>:1:22:                      ^
command failed: json <<< '\''{"name":"faa","type":true}'\''
$ json <<< '\''{"name":"faa","fuu":123}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: key of second argument is not "type"
json: error: <stdin>:1:1: {"name":"faa","fuu":123}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","fuu":123}'\''
$ json <<< '\''{"name":"faa","type":123}'\''
json: error: <stdin>:1:22: meta error: invalid "name" object: its "type" argument must be a type
json: error: <stdin>:1:22: {"name":"faa","type":123}
json: error: <stdin>:1:22:                      ^
command failed: json <<< '\''{"name":"faa","type":123}'\''
$ json <<< '\''{"name":"faa","fuu":"foo"}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: key of second argument is not "type"
json: error: <stdin>:1:1: {"name":"faa","fuu":"foo"}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","fuu":"foo"}'\''
$ json <<< '\''{"name":"faa","type":"foo"}'\''
json: error: <stdin>:1:22: meta error: invalid "name" object: its "type" argument must be a type
json: error: <stdin>:1:22: {"name":"faa","type":"foo"}
json: error: <stdin>:1:22:                      ^
command failed: json <<< '\''{"name":"faa","type":"foo"}'\''
$ json <<< '\''{"name":"faa","fuu":"type"}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: key of second argument is not "type"
json: error: <stdin>:1:1: {"name":"faa","fuu":"type"}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","fuu":"type"}'\''
$ json <<< '\''{"name":"faa","type":"type"}'\''
json: error: <stdin>:1:1: meta error: invalid top value: it must be a type or an array of "name" objects
json: error: <stdin>:1:1: {"name":"faa","type":"type"}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"type"}'\''
$ json <<< '\''{"name":"faa","fuu":"null"}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: key of second argument is not "type"
json: error: <stdin>:1:1: {"name":"faa","fuu":"null"}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","fuu":"null"}'\''
$ json <<< '\''{"name":"faa","type":"null"}'\''
json: error: <stdin>:1:1: meta error: invalid top value: it must be a type or an array of "name" objects
json: error: <stdin>:1:1: {"name":"faa","type":"null"}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"null"}'\''
$ json <<< '\''{"name":"faa","fuu":"boolean"}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: key of second argument is not "type"
json: error: <stdin>:1:1: {"name":"faa","fuu":"boolean"}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","fuu":"boolean"}'\''
$ json <<< '\''{"name":"faa","type":"boolean"}'\''
json: error: <stdin>:1:1: meta error: invalid top value: it must be a type or an array of "name" objects
json: error: <stdin>:1:1: {"name":"faa","type":"boolean"}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"boolean"}'\''
$ json <<< '\''{"name":"faa","fuu":"number"}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: key of second argument is not "type"
json: error: <stdin>:1:1: {"name":"faa","fuu":"number"}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","fuu":"number"}'\''
$ json <<< '\''{"name":"faa","type":"number"}'\''
json: error: <stdin>:1:1: meta error: invalid top value: it must be a type or an array of "name" objects
json: error: <stdin>:1:1: {"name":"faa","type":"number"}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"number"}'\''
$ json <<< '\''{"name":"faa","fuu":"string"}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: key of second argument is not "type"
json: error: <stdin>:1:1: {"name":"faa","fuu":"string"}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","fuu":"string"}'\''
$ json <<< '\''{"name":"faa","type":"string"}'\''
json: error: <stdin>:1:1: meta error: invalid top value: it must be a type or an array of "name" objects
json: error: <stdin>:1:1: {"name":"faa","type":"string"}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"string"}'\''
$ json <<< '\''{"name":"faa","fuu":"object"}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: key of second argument is not "type"
json: error: <stdin>:1:1: {"name":"faa","fuu":"object"}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","fuu":"object"}'\''
$ json <<< '\''{"name":"faa","type":"object"}'\''
json: error: <stdin>:1:1: meta error: invalid top value: it must be a type or an array of "name" objects
json: error: <stdin>:1:1: {"name":"faa","type":"object"}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"object"}'\''
$ json <<< '\''{"name":"faa","fuu":"array"}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: key of second argument is not "type"
json: error: <stdin>:1:1: {"name":"faa","fuu":"array"}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","fuu":"array"}'\''
$ json <<< '\''{"name":"faa","type":"array"}'\''
json: error: <stdin>:1:1: meta error: invalid top value: it must be a type or an array of "name" objects
json: error: <stdin>:1:1: {"name":"faa","type":"array"}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","type":"array"}'\''
$ json <<< '\''{"name":"faa","fuu":"list"}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: key of second argument is not "type"
json: error: <stdin>:1:1: {"name":"faa","fuu":"list"}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","fuu":"list"}'\''
$ json <<< '\''{"name":"faa","type":"list"}'\''
json: error: <stdin>:1:22: meta error: invalid "name" object: its "type" argument must be a type
json: error: <stdin>:1:22: {"name":"faa","type":"list"}
json: error: <stdin>:1:22:                      ^
command failed: json <<< '\''{"name":"faa","type":"list"}'\''
$ json <<< '\''{"name":"faa","fuu":{}}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: key of second argument is not "type"
json: error: <stdin>:1:1: {"name":"faa","fuu":{}}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","fuu":{}}'\''
$ json <<< '\''{"name":"faa","type":{}}'\''
json: error: <stdin>:1:22: meta error: empty objects are not allowed
json: error: <stdin>:1:22: {"name":"faa","type":{}}
json: error: <stdin>:1:22:                      ^
command failed: json <<< '\''{"name":"faa","type":{}}'\''
$ json <<< '\''{"name":"faa","fuu":{"foo":"bar"}}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: key of second argument is not "type"
json: error: <stdin>:1:1: {"name":"faa","fuu":{"foo":"bar"}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","fuu":{"foo":"bar"}}'\''
$ json <<< '\''{"name":"faa","type":{"foo":"bar"}}'\''
json: error: <stdin>:1:23: meta error: invalid first key of object: it must be "type", "name" or "plain"
json: error: <stdin>:1:23: {"name":"faa","type":{"foo":"bar"}}
json: error: <stdin>:1:23:                       ^
command failed: json <<< '\''{"name":"faa","type":{"foo":"bar"}}'\''
$ json <<< '\''{"name":"faa","fuu":[]}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: key of second argument is not "type"
json: error: <stdin>:1:1: {"name":"faa","fuu":[]}
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","fuu":[]}'\''
$ json <<< '\''{"name":"faa","type":[]}'\''
json: error: <stdin>:1:22: meta error: invalid "name" object: its "type" argument must be a type
json: error: <stdin>:1:22: {"name":"faa","type":[]}
json: error: <stdin>:1:22:                      ^
command failed: json <<< '\''{"name":"faa","type":[]}'\''
$ json <<< '\''{"name":"faa","fuu":["foo","bar"]}'\''
json: error: <stdin>:1:1: meta error: invalid "name" object: key of second argument is not "type"
json: error: <stdin>:1:1: {"name":"faa","fuu":["foo","bar"]
json: error: <stdin>:1:1: ^
command failed: json <<< '\''{"name":"faa","fuu":["foo","bar"]}'\''
$ json <<< '\''{"name":"faa","type":["foo","bar"]}'\''
json: error: <stdin>:1:23: meta error: invalid array: element is neither a type nor a "name" object
json: error: <stdin>:1:23: {"name":"faa","type":["foo","bar"]}
json: error: <stdin>:1:23:                       ^
command failed: json <<< '\''{"name":"faa","type":["foo","bar"]}'\'''
) -L name2.new <(
echo '$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }'
json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; } 2>&1 ||
echo 'command failed: json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }'

echo '$ json <<< '\''{"name":"faa","fuu":null}'\'''
json <<< '{"name":"faa","fuu":null}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","fuu":null}'\'''

echo '$ json <<< '\''{"name":"faa","type":null}'\'''
json <<< '{"name":"faa","type":null}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":null}'\'''

echo '$ json <<< '\''{"name":"faa","fuu":false}'\'''
json <<< '{"name":"faa","fuu":false}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","fuu":false}'\'''

echo '$ json <<< '\''{"name":"faa","type":false}'\'''
json <<< '{"name":"faa","type":false}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":false}'\'''

echo '$ json <<< '\''{"name":"faa","fuu":true}'\'''
json <<< '{"name":"faa","fuu":true}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","fuu":true}'\'''

echo '$ json <<< '\''{"name":"faa","type":true}'\'''
json <<< '{"name":"faa","type":true}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":true}'\'''

echo '$ json <<< '\''{"name":"faa","fuu":123}'\'''
json <<< '{"name":"faa","fuu":123}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","fuu":123}'\'''

echo '$ json <<< '\''{"name":"faa","type":123}'\'''
json <<< '{"name":"faa","type":123}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":123}'\'''

echo '$ json <<< '\''{"name":"faa","fuu":"foo"}'\'''
json <<< '{"name":"faa","fuu":"foo"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","fuu":"foo"}'\'''

echo '$ json <<< '\''{"name":"faa","type":"foo"}'\'''
json <<< '{"name":"faa","type":"foo"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"foo"}'\'''

echo '$ json <<< '\''{"name":"faa","fuu":"type"}'\'''
json <<< '{"name":"faa","fuu":"type"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","fuu":"type"}'\'''

echo '$ json <<< '\''{"name":"faa","type":"type"}'\'''
json <<< '{"name":"faa","type":"type"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"type"}'\'''

echo '$ json <<< '\''{"name":"faa","fuu":"null"}'\'''
json <<< '{"name":"faa","fuu":"null"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","fuu":"null"}'\'''

echo '$ json <<< '\''{"name":"faa","type":"null"}'\'''
json <<< '{"name":"faa","type":"null"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"null"}'\'''

echo '$ json <<< '\''{"name":"faa","fuu":"boolean"}'\'''
json <<< '{"name":"faa","fuu":"boolean"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","fuu":"boolean"}'\'''

echo '$ json <<< '\''{"name":"faa","type":"boolean"}'\'''
json <<< '{"name":"faa","type":"boolean"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"boolean"}'\'''

echo '$ json <<< '\''{"name":"faa","fuu":"number"}'\'''
json <<< '{"name":"faa","fuu":"number"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","fuu":"number"}'\'''

echo '$ json <<< '\''{"name":"faa","type":"number"}'\'''
json <<< '{"name":"faa","type":"number"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"number"}'\'''

echo '$ json <<< '\''{"name":"faa","fuu":"string"}'\'''
json <<< '{"name":"faa","fuu":"string"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","fuu":"string"}'\'''

echo '$ json <<< '\''{"name":"faa","type":"string"}'\'''
json <<< '{"name":"faa","type":"string"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"string"}'\'''

echo '$ json <<< '\''{"name":"faa","fuu":"object"}'\'''
json <<< '{"name":"faa","fuu":"object"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","fuu":"object"}'\'''

echo '$ json <<< '\''{"name":"faa","type":"object"}'\'''
json <<< '{"name":"faa","type":"object"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"object"}'\'''

echo '$ json <<< '\''{"name":"faa","fuu":"array"}'\'''
json <<< '{"name":"faa","fuu":"array"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","fuu":"array"}'\'''

echo '$ json <<< '\''{"name":"faa","type":"array"}'\'''
json <<< '{"name":"faa","type":"array"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"array"}'\'''

echo '$ json <<< '\''{"name":"faa","fuu":"list"}'\'''
json <<< '{"name":"faa","fuu":"list"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","fuu":"list"}'\'''

echo '$ json <<< '\''{"name":"faa","type":"list"}'\'''
json <<< '{"name":"faa","type":"list"}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":"list"}'\'''

echo '$ json <<< '\''{"name":"faa","fuu":{}}'\'''
json <<< '{"name":"faa","fuu":{}}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","fuu":{}}'\'''

echo '$ json <<< '\''{"name":"faa","type":{}}'\'''
json <<< '{"name":"faa","type":{}}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":{}}'\'''

echo '$ json <<< '\''{"name":"faa","fuu":{"foo":"bar"}}'\'''
json <<< '{"name":"faa","fuu":{"foo":"bar"}}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","fuu":{"foo":"bar"}}'\'''

echo '$ json <<< '\''{"name":"faa","type":{"foo":"bar"}}'\'''
json <<< '{"name":"faa","type":{"foo":"bar"}}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":{"foo":"bar"}}'\'''

echo '$ json <<< '\''{"name":"faa","fuu":[]}'\'''
json <<< '{"name":"faa","fuu":[]}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","fuu":[]}'\'''

echo '$ json <<< '\''{"name":"faa","type":[]}'\'''
json <<< '{"name":"faa","type":[]}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":[]}'\'''

echo '$ json <<< '\''{"name":"faa","fuu":["foo","bar"]}'\'''
json <<< '{"name":"faa","fuu":["foo","bar"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","fuu":["foo","bar"]}'\'''

echo '$ json <<< '\''{"name":"faa","type":["foo","bar"]}'\'''
json <<< '{"name":"faa","type":["foo","bar"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"name":"faa","type":["foo","bar"]}'\'''
)

