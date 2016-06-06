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
# $ json-gentest -C type-checker:plain
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L plain.old <(echo \
'$ export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes
$ json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; }
$ json -d '\''{"plain":null}'\'' <<< '\''null'\''
null
$ json -d '\''{"plain":null}'\'' <<< '\''false'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":null}'\''
json: error: <stdin>:1:1: false
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":null}'\'' <<< '\''false'\''
$ json -d '\''{"plain":null}'\'' <<< '\''true'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":null}'\''
json: error: <stdin>:1:1: true
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":null}'\'' <<< '\''true'\''
$ json -d '\''{"plain":null}'\'' <<< '\''123'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":null}'\''
json: error: <stdin>:1:1: 123
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":null}'\'' <<< '\''123'\''
$ json -d '\''{"plain":null}'\'' <<< '\''"foo"'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":null}'\''
json: error: <stdin>:1:1: "foo"
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":null}'\'' <<< '\''"foo"'\''
$ json -d '\''{"plain":null}'\'' <<< '\''{}'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":null}'\''
json: error: <stdin>:1:1: {}
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":null}'\'' <<< '\''{}'\''
$ json -d '\''{"plain":null}'\'' <<< '\''[]'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":null}'\''
json: error: <stdin>:1:1: []
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":null}'\'' <<< '\''[]'\''
$ json -d '\''{"plain":false}'\'' <<< '\''null'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":false}'\''
json: error: <stdin>:1:1: null
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":false}'\'' <<< '\''null'\''
$ json -d '\''{"plain":false}'\'' <<< '\''false'\''
false
$ json -d '\''{"plain":false}'\'' <<< '\''true'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":false}'\''
json: error: <stdin>:1:1: true
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":false}'\'' <<< '\''true'\''
$ json -d '\''{"plain":false}'\'' <<< '\''123'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":false}'\''
json: error: <stdin>:1:1: 123
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":false}'\'' <<< '\''123'\''
$ json -d '\''{"plain":false}'\'' <<< '\''"foo"'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":false}'\''
json: error: <stdin>:1:1: "foo"
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":false}'\'' <<< '\''"foo"'\''
$ json -d '\''{"plain":false}'\'' <<< '\''{}'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":false}'\''
json: error: <stdin>:1:1: {}
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":false}'\'' <<< '\''{}'\''
$ json -d '\''{"plain":false}'\'' <<< '\''[]'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":false}'\''
json: error: <stdin>:1:1: []
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":false}'\'' <<< '\''[]'\''
$ json -d '\''{"plain":true}'\'' <<< '\''null'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":true}'\''
json: error: <stdin>:1:1: null
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":true}'\'' <<< '\''null'\''
$ json -d '\''{"plain":true}'\'' <<< '\''false'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":true}'\''
json: error: <stdin>:1:1: false
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":true}'\'' <<< '\''false'\''
$ json -d '\''{"plain":true}'\'' <<< '\''true'\''
true
$ json -d '\''{"plain":true}'\'' <<< '\''123'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":true}'\''
json: error: <stdin>:1:1: 123
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":true}'\'' <<< '\''123'\''
$ json -d '\''{"plain":true}'\'' <<< '\''"foo"'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":true}'\''
json: error: <stdin>:1:1: "foo"
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":true}'\'' <<< '\''"foo"'\''
$ json -d '\''{"plain":true}'\'' <<< '\''{}'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":true}'\''
json: error: <stdin>:1:1: {}
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":true}'\'' <<< '\''{}'\''
$ json -d '\''{"plain":true}'\'' <<< '\''[]'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":true}'\''
json: error: <stdin>:1:1: []
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":true}'\'' <<< '\''[]'\''
$ json -d '\''{"plain":123}'\'' <<< '\''null'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":123}'\''
json: error: <stdin>:1:1: null
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":123}'\'' <<< '\''null'\''
$ json -d '\''{"plain":123}'\'' <<< '\''false'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":123}'\''
json: error: <stdin>:1:1: false
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":123}'\'' <<< '\''false'\''
$ json -d '\''{"plain":123}'\'' <<< '\''true'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":123}'\''
json: error: <stdin>:1:1: true
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":123}'\'' <<< '\''true'\''
$ json -d '\''{"plain":123}'\'' <<< '\''123'\''
123
$ json -d '\''{"plain":123}'\'' <<< '\''"foo"'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":123}'\''
json: error: <stdin>:1:1: "foo"
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":123}'\'' <<< '\''"foo"'\''
$ json -d '\''{"plain":123}'\'' <<< '\''{}'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":123}'\''
json: error: <stdin>:1:1: {}
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":123}'\'' <<< '\''{}'\''
$ json -d '\''{"plain":123}'\'' <<< '\''[]'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":123}'\''
json: error: <stdin>:1:1: []
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":123}'\'' <<< '\''[]'\''
$ json -d '\''{"plain":"foo"}'\'' <<< '\''null'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":"foo"}'\''
json: error: <stdin>:1:1: null
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":"foo"}'\'' <<< '\''null'\''
$ json -d '\''{"plain":"foo"}'\'' <<< '\''false'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":"foo"}'\''
json: error: <stdin>:1:1: false
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":"foo"}'\'' <<< '\''false'\''
$ json -d '\''{"plain":"foo"}'\'' <<< '\''true'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":"foo"}'\''
json: error: <stdin>:1:1: true
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":"foo"}'\'' <<< '\''true'\''
$ json -d '\''{"plain":"foo"}'\'' <<< '\''123'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":"foo"}'\''
json: error: <stdin>:1:1: 123
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":"foo"}'\'' <<< '\''123'\''
$ json -d '\''{"plain":"foo"}'\'' <<< '\''"foo"'\''
"foo"
$ json -d '\''{"plain":"foo"}'\'' <<< '\''{}'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":"foo"}'\''
json: error: <stdin>:1:1: {}
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":"foo"}'\'' <<< '\''{}'\''
$ json -d '\''{"plain":"foo"}'\'' <<< '\''[]'\''
json: error: <stdin>:1:1: type check error: type mismatch: expected a value of type `{"plain":"foo"}'\''
json: error: <stdin>:1:1: []
json: error: <stdin>:1:1: ^
command failed: json -d '\''{"plain":"foo"}'\'' <<< '\''[]'\'''
) -L plain.new <(
echo '$ export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes'
export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes 2>&1 ||
echo 'command failed: export JSON_TYPE_CHECK_ERROR_COMPLETE_TYPES=yes'

echo '$ json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; }'
json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; } 2>&1 ||
echo 'command failed: json() { LD_LIBRARY_PATH=../lib ../src/json --terse --verbose --literal-value "$@"; }'

echo '$ json -d '\''{"plain":null}'\'' <<< '\''null'\'''
json -d '{"plain":null}' <<< 'null' 2>&1 ||
echo 'command failed: json -d '\''{"plain":null}'\'' <<< '\''null'\'''

echo '$ json -d '\''{"plain":null}'\'' <<< '\''false'\'''
json -d '{"plain":null}' <<< 'false' 2>&1 ||
echo 'command failed: json -d '\''{"plain":null}'\'' <<< '\''false'\'''

echo '$ json -d '\''{"plain":null}'\'' <<< '\''true'\'''
json -d '{"plain":null}' <<< 'true' 2>&1 ||
echo 'command failed: json -d '\''{"plain":null}'\'' <<< '\''true'\'''

echo '$ json -d '\''{"plain":null}'\'' <<< '\''123'\'''
json -d '{"plain":null}' <<< '123' 2>&1 ||
echo 'command failed: json -d '\''{"plain":null}'\'' <<< '\''123'\'''

echo '$ json -d '\''{"plain":null}'\'' <<< '\''"foo"'\'''
json -d '{"plain":null}' <<< '"foo"' 2>&1 ||
echo 'command failed: json -d '\''{"plain":null}'\'' <<< '\''"foo"'\'''

echo '$ json -d '\''{"plain":null}'\'' <<< '\''{}'\'''
json -d '{"plain":null}' <<< '{}' 2>&1 ||
echo 'command failed: json -d '\''{"plain":null}'\'' <<< '\''{}'\'''

echo '$ json -d '\''{"plain":null}'\'' <<< '\''[]'\'''
json -d '{"plain":null}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"plain":null}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"plain":false}'\'' <<< '\''null'\'''
json -d '{"plain":false}' <<< 'null' 2>&1 ||
echo 'command failed: json -d '\''{"plain":false}'\'' <<< '\''null'\'''

echo '$ json -d '\''{"plain":false}'\'' <<< '\''false'\'''
json -d '{"plain":false}' <<< 'false' 2>&1 ||
echo 'command failed: json -d '\''{"plain":false}'\'' <<< '\''false'\'''

echo '$ json -d '\''{"plain":false}'\'' <<< '\''true'\'''
json -d '{"plain":false}' <<< 'true' 2>&1 ||
echo 'command failed: json -d '\''{"plain":false}'\'' <<< '\''true'\'''

echo '$ json -d '\''{"plain":false}'\'' <<< '\''123'\'''
json -d '{"plain":false}' <<< '123' 2>&1 ||
echo 'command failed: json -d '\''{"plain":false}'\'' <<< '\''123'\'''

echo '$ json -d '\''{"plain":false}'\'' <<< '\''"foo"'\'''
json -d '{"plain":false}' <<< '"foo"' 2>&1 ||
echo 'command failed: json -d '\''{"plain":false}'\'' <<< '\''"foo"'\'''

echo '$ json -d '\''{"plain":false}'\'' <<< '\''{}'\'''
json -d '{"plain":false}' <<< '{}' 2>&1 ||
echo 'command failed: json -d '\''{"plain":false}'\'' <<< '\''{}'\'''

echo '$ json -d '\''{"plain":false}'\'' <<< '\''[]'\'''
json -d '{"plain":false}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"plain":false}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"plain":true}'\'' <<< '\''null'\'''
json -d '{"plain":true}' <<< 'null' 2>&1 ||
echo 'command failed: json -d '\''{"plain":true}'\'' <<< '\''null'\'''

echo '$ json -d '\''{"plain":true}'\'' <<< '\''false'\'''
json -d '{"plain":true}' <<< 'false' 2>&1 ||
echo 'command failed: json -d '\''{"plain":true}'\'' <<< '\''false'\'''

echo '$ json -d '\''{"plain":true}'\'' <<< '\''true'\'''
json -d '{"plain":true}' <<< 'true' 2>&1 ||
echo 'command failed: json -d '\''{"plain":true}'\'' <<< '\''true'\'''

echo '$ json -d '\''{"plain":true}'\'' <<< '\''123'\'''
json -d '{"plain":true}' <<< '123' 2>&1 ||
echo 'command failed: json -d '\''{"plain":true}'\'' <<< '\''123'\'''

echo '$ json -d '\''{"plain":true}'\'' <<< '\''"foo"'\'''
json -d '{"plain":true}' <<< '"foo"' 2>&1 ||
echo 'command failed: json -d '\''{"plain":true}'\'' <<< '\''"foo"'\'''

echo '$ json -d '\''{"plain":true}'\'' <<< '\''{}'\'''
json -d '{"plain":true}' <<< '{}' 2>&1 ||
echo 'command failed: json -d '\''{"plain":true}'\'' <<< '\''{}'\'''

echo '$ json -d '\''{"plain":true}'\'' <<< '\''[]'\'''
json -d '{"plain":true}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"plain":true}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"plain":123}'\'' <<< '\''null'\'''
json -d '{"plain":123}' <<< 'null' 2>&1 ||
echo 'command failed: json -d '\''{"plain":123}'\'' <<< '\''null'\'''

echo '$ json -d '\''{"plain":123}'\'' <<< '\''false'\'''
json -d '{"plain":123}' <<< 'false' 2>&1 ||
echo 'command failed: json -d '\''{"plain":123}'\'' <<< '\''false'\'''

echo '$ json -d '\''{"plain":123}'\'' <<< '\''true'\'''
json -d '{"plain":123}' <<< 'true' 2>&1 ||
echo 'command failed: json -d '\''{"plain":123}'\'' <<< '\''true'\'''

echo '$ json -d '\''{"plain":123}'\'' <<< '\''123'\'''
json -d '{"plain":123}' <<< '123' 2>&1 ||
echo 'command failed: json -d '\''{"plain":123}'\'' <<< '\''123'\'''

echo '$ json -d '\''{"plain":123}'\'' <<< '\''"foo"'\'''
json -d '{"plain":123}' <<< '"foo"' 2>&1 ||
echo 'command failed: json -d '\''{"plain":123}'\'' <<< '\''"foo"'\'''

echo '$ json -d '\''{"plain":123}'\'' <<< '\''{}'\'''
json -d '{"plain":123}' <<< '{}' 2>&1 ||
echo 'command failed: json -d '\''{"plain":123}'\'' <<< '\''{}'\'''

echo '$ json -d '\''{"plain":123}'\'' <<< '\''[]'\'''
json -d '{"plain":123}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"plain":123}'\'' <<< '\''[]'\'''

echo '$ json -d '\''{"plain":"foo"}'\'' <<< '\''null'\'''
json -d '{"plain":"foo"}' <<< 'null' 2>&1 ||
echo 'command failed: json -d '\''{"plain":"foo"}'\'' <<< '\''null'\'''

echo '$ json -d '\''{"plain":"foo"}'\'' <<< '\''false'\'''
json -d '{"plain":"foo"}' <<< 'false' 2>&1 ||
echo 'command failed: json -d '\''{"plain":"foo"}'\'' <<< '\''false'\'''

echo '$ json -d '\''{"plain":"foo"}'\'' <<< '\''true'\'''
json -d '{"plain":"foo"}' <<< 'true' 2>&1 ||
echo 'command failed: json -d '\''{"plain":"foo"}'\'' <<< '\''true'\'''

echo '$ json -d '\''{"plain":"foo"}'\'' <<< '\''123'\'''
json -d '{"plain":"foo"}' <<< '123' 2>&1 ||
echo 'command failed: json -d '\''{"plain":"foo"}'\'' <<< '\''123'\'''

echo '$ json -d '\''{"plain":"foo"}'\'' <<< '\''"foo"'\'''
json -d '{"plain":"foo"}' <<< '"foo"' 2>&1 ||
echo 'command failed: json -d '\''{"plain":"foo"}'\'' <<< '\''"foo"'\'''

echo '$ json -d '\''{"plain":"foo"}'\'' <<< '\''{}'\'''
json -d '{"plain":"foo"}' <<< '{}' 2>&1 ||
echo 'command failed: json -d '\''{"plain":"foo"}'\'' <<< '\''{}'\'''

echo '$ json -d '\''{"plain":"foo"}'\'' <<< '\''[]'\'''
json -d '{"plain":"foo"}' <<< '[]' 2>&1 ||
echo 'command failed: json -d '\''{"plain":"foo"}'\'' <<< '\''[]'\'''
)

