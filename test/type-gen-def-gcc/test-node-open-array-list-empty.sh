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
# $ json-gentest -C type-gen-def-gcc:node-open-array-list-empty
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L node-open-array-list-empty.old <(echo \
'$ set -o pipefail
$ json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'\''1i\\\\\\#include "json-type.h"\n'\'''\'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''|tee /dev/fd/2|sed -r '\''s/^\\//'\''|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; }
$ json <<< '\''{"type":"array","args":{"type":"list","args":[]}}'\''
\#include "json-type.h"
static const struct json_type_list_attr_t __0;
static const struct json_type_node_t* __1[] = {
    NULL
};
static const struct json_type_node_t __2 = {
    .type = json_type_list_node_type,
    .attr.list = &__0,
    .node.list = {
        .args = __1,
        .size = 0
    }
};
static const struct json_type_node_t __3 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_open_array_node_type,
        .val.open.arg = &__2
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__3
};
$ json <<< '\''{"type":"array","args":{"type":"array","args":{"type":"list","args":[]}}}'\''
\#include "json-type.h"
static const struct json_type_list_attr_t __0;
static const struct json_type_node_t* __1[] = {
    NULL
};
static const struct json_type_node_t __2 = {
    .type = json_type_list_node_type,
    .attr.list = &__0,
    .node.list = {
        .args = __1,
        .size = 0
    }
};
static const struct json_type_node_t __3 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_open_array_node_type,
        .val.open.arg = &__2
    }
};
static const struct json_type_node_t __4 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_open_array_node_type,
        .val.open.arg = &__3
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__4
};
$ json <<< '\''{"type":"array","args":{"type":"array","args":{"type":"array","args":{"type":"array","args":{"type":"list","args":[]}}}}}'\''
\#include "json-type.h"
static const struct json_type_list_attr_t __0;
static const struct json_type_node_t* __1[] = {
    NULL
};
static const struct json_type_node_t __2 = {
    .type = json_type_list_node_type,
    .attr.list = &__0,
    .node.list = {
        .args = __1,
        .size = 0
    }
};
static const struct json_type_node_t __3 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_open_array_node_type,
        .val.open.arg = &__2
    }
};
static const struct json_type_node_t __4 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_open_array_node_type,
        .val.open.arg = &__3
    }
};
static const struct json_type_node_t __5 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_open_array_node_type,
        .val.open.arg = &__4
    }
};
static const struct json_type_node_t __6 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_open_array_node_type,
        .val.open.arg = &__5
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__6
};'
) -L node-open-array-list-empty.new <(
echo '$ set -o pipefail'
set -o pipefail 2>&1 ||
echo 'command failed: set -o pipefail'

echo '$ json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'\''1i\\\\\\#include "json-type.h"\n'\'''\'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''|tee /dev/fd/2|sed -r '\''s/^\\//'\''|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; }'
json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'1i\\\\\\#include "json-type.h"\n'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'|tee /dev/fd/2|sed -r 's/^\\//'|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; } 2>&1 ||
echo 'command failed: json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'\''1i\\\\\\#include "json-type.h"\n'\'''\'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''|tee /dev/fd/2|sed -r '\''s/^\\//'\''|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; }'

echo '$ json <<< '\''{"type":"array","args":{"type":"list","args":[]}}'\'''
json <<< '{"type":"array","args":{"type":"list","args":[]}}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":{"type":"list","args":[]}}'\'''

echo '$ json <<< '\''{"type":"array","args":{"type":"array","args":{"type":"list","args":[]}}}'\'''
json <<< '{"type":"array","args":{"type":"array","args":{"type":"list","args":[]}}}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":{"type":"array","args":{"type":"list","args":[]}}}'\'''

echo '$ json <<< '\''{"type":"array","args":{"type":"array","args":{"type":"array","args":{"type":"array","args":{"type":"list","args":[]}}}}}'\'''
json <<< '{"type":"array","args":{"type":"array","args":{"type":"array","args":{"type":"array","args":{"type":"list","args":[]}}}}}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":{"type":"array","args":{"type":"array","args":{"type":"array","args":{"type":"list","args":[]}}}}}'\'''
)

