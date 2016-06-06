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
# $ json-gentest -C type-gen-def-gcc:node-list-any
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L node-list-any.old <(echo \
'$ set -o pipefail
$ json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'\''1i\\\\\\#include "json-type.h"\n'\'''\'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''|tee /dev/fd/2|sed -r '\''s/^\\//'\''|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; }
$ json <<< '\''{"type":"list","args":["type"]}'\''
\#include "json-type.h"
\#define EQ  cell.eq
\#define VAL cell.val
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_type_type
    }
};
static const struct json_type_trie_node_t __1 = {
    .sym = NULL,
    .VAL = &__0
};
static const struct json_type_trie_node_t __2 = {
    .sym = &__0,
    .EQ = &__1
};
static const struct json_type_trie_t __3 = {
    .root = &__2
};
static const struct json_type_list_attr_t __4 = {
    .any = &__3
};
static const struct json_type_node_t* __5[] = {
    &__0,
    NULL
};
static const struct json_type_node_t __6 = {
    .type = json_type_list_node_type,
    .attr.list = &__4,
    .node.list = {
        .args = __5,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__6
};
$ json <<< '\''{"type":"list","args":["null"]}'\''
\#include "json-type.h"
\#define EQ  cell.eq
\#define VAL cell.val
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_null_type
    }
};
static const struct json_type_trie_node_t __1 = {
    .sym = NULL,
    .VAL = &__0
};
static const struct json_type_trie_node_t __2 = {
    .sym = &__0,
    .EQ = &__1
};
static const struct json_type_trie_t __3 = {
    .root = &__2
};
static const struct json_type_list_attr_t __4 = {
    .any = &__3
};
static const struct json_type_node_t* __5[] = {
    &__0,
    NULL
};
static const struct json_type_node_t __6 = {
    .type = json_type_list_node_type,
    .attr.list = &__4,
    .node.list = {
        .args = __5,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__6
};
$ json <<< '\''{"type":"list","args":["boolean"]}'\''
\#include "json-type.h"
\#define EQ  cell.eq
\#define VAL cell.val
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_boolean_type
    }
};
static const struct json_type_trie_node_t __1 = {
    .sym = NULL,
    .VAL = &__0
};
static const struct json_type_trie_node_t __2 = {
    .sym = &__0,
    .EQ = &__1
};
static const struct json_type_trie_t __3 = {
    .root = &__2
};
static const struct json_type_list_attr_t __4 = {
    .any = &__3
};
static const struct json_type_node_t* __5[] = {
    &__0,
    NULL
};
static const struct json_type_node_t __6 = {
    .type = json_type_list_node_type,
    .attr.list = &__4,
    .node.list = {
        .args = __5,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__6
};
$ json <<< '\''{"type":"list","args":["number"]}'\''
\#include "json-type.h"
\#define EQ  cell.eq
\#define VAL cell.val
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_number_type
    }
};
static const struct json_type_trie_node_t __1 = {
    .sym = NULL,
    .VAL = &__0
};
static const struct json_type_trie_node_t __2 = {
    .sym = &__0,
    .EQ = &__1
};
static const struct json_type_trie_t __3 = {
    .root = &__2
};
static const struct json_type_list_attr_t __4 = {
    .any = &__3
};
static const struct json_type_node_t* __5[] = {
    &__0,
    NULL
};
static const struct json_type_node_t __6 = {
    .type = json_type_list_node_type,
    .attr.list = &__4,
    .node.list = {
        .args = __5,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__6
};
$ json <<< '\''{"type":"list","args":["string"]}'\''
\#include "json-type.h"
\#define EQ  cell.eq
\#define VAL cell.val
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_string_type
    }
};
static const struct json_type_trie_node_t __1 = {
    .sym = NULL,
    .VAL = &__0
};
static const struct json_type_trie_node_t __2 = {
    .sym = &__0,
    .EQ = &__1
};
static const struct json_type_trie_t __3 = {
    .root = &__2
};
static const struct json_type_list_attr_t __4 = {
    .any = &__3
};
static const struct json_type_node_t* __5[] = {
    &__0,
    NULL
};
static const struct json_type_node_t __6 = {
    .type = json_type_list_node_type,
    .attr.list = &__4,
    .node.list = {
        .args = __5,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__6
};
$ json <<< '\''{"type":"list","args":["object"]}'\''
\#include "json-type.h"
\#define EQ  cell.eq
\#define VAL cell.val
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_object_type
    }
};
static const struct json_type_trie_node_t __1 = {
    .sym = NULL,
    .VAL = &__0
};
static const struct json_type_trie_node_t __2 = {
    .sym = &__0,
    .EQ = &__1
};
static const struct json_type_trie_t __3 = {
    .root = &__2
};
static const struct json_type_list_attr_t __4 = {
    .any = &__3
};
static const struct json_type_node_t* __5[] = {
    &__0,
    NULL
};
static const struct json_type_node_t __6 = {
    .type = json_type_list_node_type,
    .attr.list = &__4,
    .node.list = {
        .args = __5,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__6
};
$ json <<< '\''{"type":"list","args":["array"]}'\''
\#include "json-type.h"
\#define EQ  cell.eq
\#define VAL cell.val
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_array_type
    }
};
static const struct json_type_trie_node_t __1 = {
    .sym = NULL,
    .VAL = &__0
};
static const struct json_type_trie_node_t __2 = {
    .sym = &__0,
    .EQ = &__1
};
static const struct json_type_trie_t __3 = {
    .root = &__2
};
static const struct json_type_list_attr_t __4 = {
    .any = &__3
};
static const struct json_type_node_t* __5[] = {
    &__0,
    NULL
};
static const struct json_type_node_t __6 = {
    .type = json_type_list_node_type,
    .attr.list = &__4,
    .node.list = {
        .args = __5,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__6
};'
) -L node-list-any.new <(
echo '$ set -o pipefail'
set -o pipefail 2>&1 ||
echo 'command failed: set -o pipefail'

echo '$ json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'\''1i\\\\\\#include "json-type.h"\n'\'''\'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''|tee /dev/fd/2|sed -r '\''s/^\\//'\''|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; }'
json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'1i\\\\\\#include "json-type.h"\n'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'|tee /dev/fd/2|sed -r 's/^\\//'|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; } 2>&1 ||
echo 'command failed: json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'\''1i\\\\\\#include "json-type.h"\n'\'''\'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''|tee /dev/fd/2|sed -r '\''s/^\\//'\''|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; }'

echo '$ json <<< '\''{"type":"list","args":["type"]}'\'''
json <<< '{"type":"list","args":["type"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":["type"]}'\'''

echo '$ json <<< '\''{"type":"list","args":["null"]}'\'''
json <<< '{"type":"list","args":["null"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":["null"]}'\'''

echo '$ json <<< '\''{"type":"list","args":["boolean"]}'\'''
json <<< '{"type":"list","args":["boolean"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":["boolean"]}'\'''

echo '$ json <<< '\''{"type":"list","args":["number"]}'\'''
json <<< '{"type":"list","args":["number"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":["number"]}'\'''

echo '$ json <<< '\''{"type":"list","args":["string"]}'\'''
json <<< '{"type":"list","args":["string"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":["string"]}'\'''

echo '$ json <<< '\''{"type":"list","args":["object"]}'\'''
json <<< '{"type":"list","args":["object"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":["object"]}'\'''

echo '$ json <<< '\''{"type":"list","args":["array"]}'\'''
json <<< '{"type":"list","args":["array"]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":["array"]}'\'''
)

