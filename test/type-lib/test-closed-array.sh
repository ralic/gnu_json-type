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
# $ json-gentest -C type-lib:closed-array
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L closed-array.old <(echo \
'$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }
$ json <<< '\''{"type":"array","args":[null]}'\''
json: error: <stdin>:1:25: meta error: invalid array: element is neither a type nor a "name" object
json: error: <stdin>:1:25: {"type":"array","args":[null]}
json: error: <stdin>:1:25:                         ^
command failed: json <<< '\''{"type":"array","args":[null]}'\''
$ json <<< '\''{"type":"array","args":[false]}'\''
json: error: <stdin>:1:25: meta error: invalid array: element is neither a type nor a "name" object
json: error: <stdin>:1:25: {"type":"array","args":[false]}
json: error: <stdin>:1:25:                         ^
command failed: json <<< '\''{"type":"array","args":[false]}'\''
$ json <<< '\''{"type":"array","args":[true]}'\''
json: error: <stdin>:1:25: meta error: invalid array: element is neither a type nor a "name" object
json: error: <stdin>:1:25: {"type":"array","args":[true]}
json: error: <stdin>:1:25:                         ^
command failed: json <<< '\''{"type":"array","args":[true]}'\''
$ json <<< '\''{"type":"array","args":[123]}'\''
json: error: <stdin>:1:25: meta error: invalid array: element is neither a type nor a "name" object
json: error: <stdin>:1:25: {"type":"array","args":[123]}
json: error: <stdin>:1:25:                         ^
command failed: json <<< '\''{"type":"array","args":[123]}'\''
$ json <<< '\''{"type":"array","args":["foo"]}'\''
json: error: <stdin>:1:25: meta error: invalid array: element is neither a type nor a "name" object
json: error: <stdin>:1:25: {"type":"array","args":["foo"]}
json: error: <stdin>:1:25:                         ^
command failed: json <<< '\''{"type":"array","args":["foo"]}'\''
$ json <<< '\''{"type":"array","args":["type"]}'\''
{
    "type": "array",
    "args": [
        "type"
    ]
}
$ json <<< '\''{"type":"array","args":["null"]}'\''
{
    "type": "array",
    "args": [
        "null"
    ]
}
$ json <<< '\''{"type":"array","args":["boolean"]}'\''
{
    "type": "array",
    "args": [
        "boolean"
    ]
}
$ json <<< '\''{"type":"array","args":["number"]}'\''
{
    "type": "array",
    "args": [
        "number"
    ]
}
$ json <<< '\''{"type":"array","args":["string"]}'\''
{
    "type": "array",
    "args": [
        "string"
    ]
}
$ json <<< '\''{"type":"array","args":["object"]}'\''
{
    "type": "array",
    "args": [
        "object"
    ]
}
$ json <<< '\''{"type":"array","args":["array"]}'\''
{
    "type": "array",
    "args": [
        "array"
    ]
}
$ json <<< '\''{"type":"array","args":["list"]}'\''
json: error: <stdin>:1:25: meta error: invalid array: element is neither a type nor a "name" object
json: error: <stdin>:1:25: {"type":"array","args":["list"]}
json: error: <stdin>:1:25:                         ^
command failed: json <<< '\''{"type":"array","args":["list"]}'\''
$ json <<< '\''{"type":"array","args":[{}]}'\''
json: error: <stdin>:1:25: meta error: empty objects are not allowed
json: error: <stdin>:1:25: {"type":"array","args":[{}]}
json: error: <stdin>:1:25:                         ^
command failed: json <<< '\''{"type":"array","args":[{}]}'\''
$ json <<< '\''{"type":"array","args":[{"foo":"bar"}]}'\''
json: error: <stdin>:1:26: meta error: invalid first key of object: it must be "type", "name" or "plain"
json: error: <stdin>:1:26: {"type":"array","args":[{"foo":"bar"}]}
json: error: <stdin>:1:26:                          ^
command failed: json <<< '\''{"type":"array","args":[{"foo":"bar"}]}'\''
$ json <<< '\''{"type":"array","args":[[]]}'\''
json: error: <stdin>:1:25: meta error: invalid array: element is neither a type nor a "name" object
json: error: <stdin>:1:25: {"type":"array","args":[[]]}
json: error: <stdin>:1:25:                         ^
command failed: json <<< '\''{"type":"array","args":[[]]}'\''
$ json <<< '\''{"type":"array","args":[["foo","bar"]]}'\''
json: error: <stdin>:1:26: meta error: invalid array: element is neither a type nor a "name" object
json: error: <stdin>:1:26: {"type":"array","args":[["foo","bar"]]}
json: error: <stdin>:1:26:                          ^
command failed: json <<< '\''{"type":"array","args":[["foo","bar"]]}'\''
$ json <<< '\''{"type":"array","args":[{"plain":false}]}'\''
{
    "type": "array",
    "args": [
        {
            "plain": false
        }
    ]
}
$ json <<< '\''{"type":"array","args":[{"type":"object","args":[]}]}'\''
{
    "type": "array",
    "args": [
        {
            "type": "object",
            "args": []
        }
    ]
}
$ json <<< '\''{"type":"array","args":[{"type":"array","args":"type"}]}'\''
{
    "type": "array",
    "args": [
        {
            "type": "array",
            "args": "type"
        }
    ]
}
$ json <<< '\''{"type":"array","args":[{"type":"array","args":[]}]}'\''
{
    "type": "array",
    "args": [
        {
            "type": "array",
            "args": []
        }
    ]
}'
) -L closed-array.new <(
echo '$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }'
json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; } 2>&1 ||
echo 'command failed: json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }'

echo '$ json <<< '\''{"type":"array","args":[null]}'\'''
json <<< '{"type":"array","args":[null]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":[null]}'\'''

echo '$ json <<< '\''{"type":"array","args":[false]}'\'''
json <<< '{"type":"array","args":[false]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":[false]}'\'''

echo '$ json <<< '\''{"type":"array","args":[true]}'\'''
json <<< '{"type":"array","args":[true]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":[true]}'\'''

echo '$ json <<< '\''{"type":"array","args":[123]}'\'''
json <<< '{"type":"array","args":[123]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":[123]}'\'''

echo '$ json <<< '\''{"type":"array","args":["foo"]}'\'''
json <<< '{"type":"array","args":["foo"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":["foo"]}'\'''

echo '$ json <<< '\''{"type":"array","args":["type"]}'\'''
json <<< '{"type":"array","args":["type"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":["type"]}'\'''

echo '$ json <<< '\''{"type":"array","args":["null"]}'\'''
json <<< '{"type":"array","args":["null"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":["null"]}'\'''

echo '$ json <<< '\''{"type":"array","args":["boolean"]}'\'''
json <<< '{"type":"array","args":["boolean"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":["boolean"]}'\'''

echo '$ json <<< '\''{"type":"array","args":["number"]}'\'''
json <<< '{"type":"array","args":["number"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":["number"]}'\'''

echo '$ json <<< '\''{"type":"array","args":["string"]}'\'''
json <<< '{"type":"array","args":["string"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":["string"]}'\'''

echo '$ json <<< '\''{"type":"array","args":["object"]}'\'''
json <<< '{"type":"array","args":["object"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":["object"]}'\'''

echo '$ json <<< '\''{"type":"array","args":["array"]}'\'''
json <<< '{"type":"array","args":["array"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":["array"]}'\'''

echo '$ json <<< '\''{"type":"array","args":["list"]}'\'''
json <<< '{"type":"array","args":["list"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":["list"]}'\'''

echo '$ json <<< '\''{"type":"array","args":[{}]}'\'''
json <<< '{"type":"array","args":[{}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":[{}]}'\'''

echo '$ json <<< '\''{"type":"array","args":[{"foo":"bar"}]}'\'''
json <<< '{"type":"array","args":[{"foo":"bar"}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":[{"foo":"bar"}]}'\'''

echo '$ json <<< '\''{"type":"array","args":[[]]}'\'''
json <<< '{"type":"array","args":[[]]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":[[]]}'\'''

echo '$ json <<< '\''{"type":"array","args":[["foo","bar"]]}'\'''
json <<< '{"type":"array","args":[["foo","bar"]]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":[["foo","bar"]]}'\'''

echo '$ json <<< '\''{"type":"array","args":[{"plain":false}]}'\'''
json <<< '{"type":"array","args":[{"plain":false}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":[{"plain":false}]}'\'''

echo '$ json <<< '\''{"type":"array","args":[{"type":"object","args":[]}]}'\'''
json <<< '{"type":"array","args":[{"type":"object","args":[]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":[{"type":"object","args":[]}]}'\'''

echo '$ json <<< '\''{"type":"array","args":[{"type":"array","args":"type"}]}'\'''
json <<< '{"type":"array","args":[{"type":"array","args":"type"}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":[{"type":"array","args":"type"}]}'\'''

echo '$ json <<< '\''{"type":"array","args":[{"type":"array","args":[]}]}'\'''
json <<< '{"type":"array","args":[{"type":"array","args":[]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":[{"type":"array","args":[]}]}'\'''
)

