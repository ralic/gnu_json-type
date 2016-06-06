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
# $ json-gentest -C type-gen-def-gcc:node-open-array-plain
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L node-open-array-plain.old <(echo \
'$ set -o pipefail
$ json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'\''1i\\\\\\#include "json-type.h"\n'\'''\'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''|tee /dev/fd/2|sed -r '\''s/^\\//'\''|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; }
$ json <<< '\''{"type":"array","args":{"plain":null}}'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_plain_node_type,
    .node.plain = {
        .type = json_type_plain_null_type,
    }
};
static const struct json_type_node_t __1 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_open_array_node_type,
        .val.open.arg = &__0
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__1
};
$ json <<< '\''{"type":"array","args":{"plain":false}}'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_plain_node_type,
    .node.plain = {
        .type = json_type_plain_boolean_type,
        .val.boolean = false
    }
};
static const struct json_type_node_t __1 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_open_array_node_type,
        .val.open.arg = &__0
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__1
};
$ json <<< '\''{"type":"array","args":{"plain":true}}'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_plain_node_type,
    .node.plain = {
        .type = json_type_plain_boolean_type,
        .val.boolean = true
    }
};
static const struct json_type_node_t __1 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_open_array_node_type,
        .val.open.arg = &__0
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__1
};
$ json <<< '\''{"type":"array","args":{"plain":123}}'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_plain_node_type,
    .node.plain = {
        .type = json_type_plain_number_type,
        .val.number = (const uchar_t*) "123"
    }
};
static const struct json_type_node_t __1 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_open_array_node_type,
        .val.open.arg = &__0
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__1
};
$ json <<< '\''{"type":"array","args":{"plain":"foo"}}'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_plain_node_type,
    .node.plain = {
        .type = json_type_plain_string_type,
        .val.string = (const uchar_t*) "foo"
    }
};
static const struct json_type_node_t __1 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_open_array_node_type,
        .val.open.arg = &__0
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__1
};'
) -L node-open-array-plain.new <(
echo '$ set -o pipefail'
set -o pipefail 2>&1 ||
echo 'command failed: set -o pipefail'

echo '$ json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'\''1i\\\\\\#include "json-type.h"\n'\'''\'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''|tee /dev/fd/2|sed -r '\''s/^\\//'\''|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; }'
json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'1i\\\\\\#include "json-type.h"\n'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'|tee /dev/fd/2|sed -r 's/^\\//'|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; } 2>&1 ||
echo 'command failed: json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'\''1i\\\\\\#include "json-type.h"\n'\'''\'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''|tee /dev/fd/2|sed -r '\''s/^\\//'\''|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; }'

echo '$ json <<< '\''{"type":"array","args":{"plain":null}}'\'''
json <<< '{"type":"array","args":{"plain":null}}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":{"plain":null}}'\'''

echo '$ json <<< '\''{"type":"array","args":{"plain":false}}'\'''
json <<< '{"type":"array","args":{"plain":false}}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":{"plain":false}}'\'''

echo '$ json <<< '\''{"type":"array","args":{"plain":true}}'\'''
json <<< '{"type":"array","args":{"plain":true}}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":{"plain":true}}'\'''

echo '$ json <<< '\''{"type":"array","args":{"plain":123}}'\'''
json <<< '{"type":"array","args":{"plain":123}}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":{"plain":123}}'\'''

echo '$ json <<< '\''{"type":"array","args":{"plain":"foo"}}'\'''
json <<< '{"type":"array","args":{"plain":"foo"}}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":{"plain":"foo"}}'\'''
)

