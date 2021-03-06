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
# $ json-gentest -C type-gen-def:node-list-closed-array-any
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L node-list-closed-array-any.old <(echo \
'$ set -o pipefail
$ json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r '\''s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''; }
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["type"]}]}'\''
\#define EQ  cell.eq
\#define VAL cell.val
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_type_type
    }
};
static const struct json_type_node_t* __1[] = {
    &__0,
    NULL
};
static const struct json_type_node_t __2 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_closed_array_node_type,
        .val.closed = {
            .args = __1,
            .size = 1
        }
    }
};
static const struct json_type_trie_node_t __3 = {
    .sym = NULL,
    .VAL = &__2
};
static const struct json_type_trie_node_t __4 = {
    .sym = &__0,
    .EQ = &__3
};
static const struct json_type_trie_t __5 = {
    .root = &__4
};
static const struct json_type_list_attr_t __6 = {
    .closed_array = &__5
};
static const struct json_type_node_t* __7[] = {
    &__2,
    NULL
};
static const struct json_type_node_t __8 = {
    .type = json_type_list_node_type,
    .attr.list = &__6,
    .node.list = {
        .args = __7,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__8
};
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["null"]}]}'\''
\#define EQ  cell.eq
\#define VAL cell.val
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_null_type
    }
};
static const struct json_type_node_t* __1[] = {
    &__0,
    NULL
};
static const struct json_type_node_t __2 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_closed_array_node_type,
        .val.closed = {
            .args = __1,
            .size = 1
        }
    }
};
static const struct json_type_trie_node_t __3 = {
    .sym = NULL,
    .VAL = &__2
};
static const struct json_type_trie_node_t __4 = {
    .sym = &__0,
    .EQ = &__3
};
static const struct json_type_trie_t __5 = {
    .root = &__4
};
static const struct json_type_list_attr_t __6 = {
    .closed_array = &__5
};
static const struct json_type_node_t* __7[] = {
    &__2,
    NULL
};
static const struct json_type_node_t __8 = {
    .type = json_type_list_node_type,
    .attr.list = &__6,
    .node.list = {
        .args = __7,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__8
};
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]}]}'\''
\#define EQ  cell.eq
\#define VAL cell.val
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_boolean_type
    }
};
static const struct json_type_node_t* __1[] = {
    &__0,
    NULL
};
static const struct json_type_node_t __2 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_closed_array_node_type,
        .val.closed = {
            .args = __1,
            .size = 1
        }
    }
};
static const struct json_type_trie_node_t __3 = {
    .sym = NULL,
    .VAL = &__2
};
static const struct json_type_trie_node_t __4 = {
    .sym = &__0,
    .EQ = &__3
};
static const struct json_type_trie_t __5 = {
    .root = &__4
};
static const struct json_type_list_attr_t __6 = {
    .closed_array = &__5
};
static const struct json_type_node_t* __7[] = {
    &__2,
    NULL
};
static const struct json_type_node_t __8 = {
    .type = json_type_list_node_type,
    .attr.list = &__6,
    .node.list = {
        .args = __7,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__8
};
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]}]}'\''
\#define EQ  cell.eq
\#define VAL cell.val
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_number_type
    }
};
static const struct json_type_node_t* __1[] = {
    &__0,
    NULL
};
static const struct json_type_node_t __2 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_closed_array_node_type,
        .val.closed = {
            .args = __1,
            .size = 1
        }
    }
};
static const struct json_type_trie_node_t __3 = {
    .sym = NULL,
    .VAL = &__2
};
static const struct json_type_trie_node_t __4 = {
    .sym = &__0,
    .EQ = &__3
};
static const struct json_type_trie_t __5 = {
    .root = &__4
};
static const struct json_type_list_attr_t __6 = {
    .closed_array = &__5
};
static const struct json_type_node_t* __7[] = {
    &__2,
    NULL
};
static const struct json_type_node_t __8 = {
    .type = json_type_list_node_type,
    .attr.list = &__6,
    .node.list = {
        .args = __7,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__8
};
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["string"]}]}'\''
\#define EQ  cell.eq
\#define VAL cell.val
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_string_type
    }
};
static const struct json_type_node_t* __1[] = {
    &__0,
    NULL
};
static const struct json_type_node_t __2 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_closed_array_node_type,
        .val.closed = {
            .args = __1,
            .size = 1
        }
    }
};
static const struct json_type_trie_node_t __3 = {
    .sym = NULL,
    .VAL = &__2
};
static const struct json_type_trie_node_t __4 = {
    .sym = &__0,
    .EQ = &__3
};
static const struct json_type_trie_t __5 = {
    .root = &__4
};
static const struct json_type_list_attr_t __6 = {
    .closed_array = &__5
};
static const struct json_type_node_t* __7[] = {
    &__2,
    NULL
};
static const struct json_type_node_t __8 = {
    .type = json_type_list_node_type,
    .attr.list = &__6,
    .node.list = {
        .args = __7,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__8
};
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["object"]}]}'\''
\#define EQ  cell.eq
\#define VAL cell.val
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_object_type
    }
};
static const struct json_type_node_t* __1[] = {
    &__0,
    NULL
};
static const struct json_type_node_t __2 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_closed_array_node_type,
        .val.closed = {
            .args = __1,
            .size = 1
        }
    }
};
static const struct json_type_trie_node_t __3 = {
    .sym = NULL,
    .VAL = &__2
};
static const struct json_type_trie_node_t __4 = {
    .sym = &__0,
    .EQ = &__3
};
static const struct json_type_trie_t __5 = {
    .root = &__4
};
static const struct json_type_list_attr_t __6 = {
    .closed_array = &__5
};
static const struct json_type_node_t* __7[] = {
    &__2,
    NULL
};
static const struct json_type_node_t __8 = {
    .type = json_type_list_node_type,
    .attr.list = &__6,
    .node.list = {
        .args = __7,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__8
};
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["array"]}]}'\''
\#define EQ  cell.eq
\#define VAL cell.val
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_array_type
    }
};
static const struct json_type_node_t* __1[] = {
    &__0,
    NULL
};
static const struct json_type_node_t __2 = {
    .type = json_type_array_node_type,
    .node.array = {
        .type = json_type_closed_array_node_type,
        .val.closed = {
            .args = __1,
            .size = 1
        }
    }
};
static const struct json_type_trie_node_t __3 = {
    .sym = NULL,
    .VAL = &__2
};
static const struct json_type_trie_node_t __4 = {
    .sym = &__0,
    .EQ = &__3
};
static const struct json_type_trie_t __5 = {
    .root = &__4
};
static const struct json_type_list_attr_t __6 = {
    .closed_array = &__5
};
static const struct json_type_node_t* __7[] = {
    &__2,
    NULL
};
static const struct json_type_node_t __8 = {
    .type = json_type_list_node_type,
    .attr.list = &__6,
    .node.list = {
        .args = __7,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__8
};'
) -L node-list-closed-array-any.new <(
echo '$ set -o pipefail'
set -o pipefail 2>&1 ||
echo 'command failed: set -o pipefail'

echo '$ json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r '\''s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''; }'
json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r 's/^#/\\#/;/^\s*\/\//d;/^\s*$/d'; } 2>&1 ||
echo 'command failed: json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r '\''s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''; }'

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["type"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["type"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["type"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["null"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["null"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["null"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["boolean"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["number"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["string"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["string"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["string"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["object"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["object"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["object"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["array"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["array"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["array"]}]}'\'''
)

