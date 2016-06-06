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
# $ json-gentest -C type-gen-def:node-open-array-any
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L node-open-array-any.old <(echo \
'$ set -o pipefail
$ json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r '\''s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''; }
$ json <<< '\''{"type":"array","args":"type"}'\''
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_type_type
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
$ json <<< '\''{"type":"array","args":"null"}'\''
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_null_type
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
$ json <<< '\''{"type":"array","args":"boolean"}'\''
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_boolean_type
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
$ json <<< '\''{"type":"array","args":"number"}'\''
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_number_type
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
$ json <<< '\''{"type":"array","args":"string"}'\''
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_string_type
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
$ json <<< '\''{"type":"array","args":"object"}'\''
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_object_type
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
$ json <<< '\''{"type":"array","args":"array"}'\''
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_array_type
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
) -L node-open-array-any.new <(
echo '$ set -o pipefail'
set -o pipefail 2>&1 ||
echo 'command failed: set -o pipefail'

echo '$ json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r '\''s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''; }'
json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r 's/^#/\\#/;/^\s*\/\//d;/^\s*$/d'; } 2>&1 ||
echo 'command failed: json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r '\''s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''; }'

echo '$ json <<< '\''{"type":"array","args":"type"}'\'''
json <<< '{"type":"array","args":"type"}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":"type"}'\'''

echo '$ json <<< '\''{"type":"array","args":"null"}'\'''
json <<< '{"type":"array","args":"null"}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":"null"}'\'''

echo '$ json <<< '\''{"type":"array","args":"boolean"}'\'''
json <<< '{"type":"array","args":"boolean"}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":"boolean"}'\'''

echo '$ json <<< '\''{"type":"array","args":"number"}'\'''
json <<< '{"type":"array","args":"number"}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":"number"}'\'''

echo '$ json <<< '\''{"type":"array","args":"string"}'\'''
json <<< '{"type":"array","args":"string"}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":"string"}'\'''

echo '$ json <<< '\''{"type":"array","args":"object"}'\'''
json <<< '{"type":"array","args":"object"}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":"object"}'\'''

echo '$ json <<< '\''{"type":"array","args":"array"}'\'''
json <<< '{"type":"array","args":"array"}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"array","args":"array"}'\'''
)

