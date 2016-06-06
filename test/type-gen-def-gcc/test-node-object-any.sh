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
# $ json-gentest -C type-gen-def-gcc:node-object-any
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L node-object-any.old <(echo \
'$ set -o pipefail
$ json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'\''1i\\\\\\#include "json-type.h"\n'\'''\'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''|tee /dev/fd/2|sed -r '\''s/^\\//'\''|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; }
$ json <<< '\''{"type":"object","args":[{"name":"foo","type":"type"}]}'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_type_type
    }
};
static const struct json_type_object_node_arg_t __1[] = {
    {
        .name = (const uchar_t*) "foo",
        .type = &__0
    }
};
static const struct json_type_node_t __2 = {
    .type = json_type_object_node_type,
    .node.object = {
        .args = __1,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__2
};
$ json <<< '\''{"type":"object","args":[{"name":"foo","type":"null"}]}'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_null_type
    }
};
static const struct json_type_object_node_arg_t __1[] = {
    {
        .name = (const uchar_t*) "foo",
        .type = &__0
    }
};
static const struct json_type_node_t __2 = {
    .type = json_type_object_node_type,
    .node.object = {
        .args = __1,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__2
};
$ json <<< '\''{"type":"object","args":[{"name":"foo","type":"boolean"}]}'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_boolean_type
    }
};
static const struct json_type_object_node_arg_t __1[] = {
    {
        .name = (const uchar_t*) "foo",
        .type = &__0
    }
};
static const struct json_type_node_t __2 = {
    .type = json_type_object_node_type,
    .node.object = {
        .args = __1,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__2
};
$ json <<< '\''{"type":"object","args":[{"name":"foo","type":"number"}]}'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_number_type
    }
};
static const struct json_type_object_node_arg_t __1[] = {
    {
        .name = (const uchar_t*) "foo",
        .type = &__0
    }
};
static const struct json_type_node_t __2 = {
    .type = json_type_object_node_type,
    .node.object = {
        .args = __1,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__2
};
$ json <<< '\''{"type":"object","args":[{"name":"foo","type":"string"}]}'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_string_type
    }
};
static const struct json_type_object_node_arg_t __1[] = {
    {
        .name = (const uchar_t*) "foo",
        .type = &__0
    }
};
static const struct json_type_node_t __2 = {
    .type = json_type_object_node_type,
    .node.object = {
        .args = __1,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__2
};
$ json <<< '\''{"type":"object","args":[{"name":"foo","type":"object"}]}'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_object_type
    }
};
static const struct json_type_object_node_arg_t __1[] = {
    {
        .name = (const uchar_t*) "foo",
        .type = &__0
    }
};
static const struct json_type_node_t __2 = {
    .type = json_type_object_node_type,
    .node.object = {
        .args = __1,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__2
};
$ json <<< '\''{"type":"object","args":[{"name":"foo","type":"array"}]}'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_array_type
    }
};
static const struct json_type_object_node_arg_t __1[] = {
    {
        .name = (const uchar_t*) "foo",
        .type = &__0
    }
};
static const struct json_type_node_t __2 = {
    .type = json_type_object_node_type,
    .node.object = {
        .args = __1,
        .size = 1
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__2
};'
) -L node-object-any.new <(
echo '$ set -o pipefail'
set -o pipefail 2>&1 ||
echo 'command failed: set -o pipefail'

echo '$ json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'\''1i\\\\\\#include "json-type.h"\n'\'''\'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''|tee /dev/fd/2|sed -r '\''s/^\\//'\''|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; }'
json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'1i\\\\\\#include "json-type.h"\n'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'|tee /dev/fd/2|sed -r 's/^\\//'|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; } 2>&1 ||
echo 'command failed: json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'\''1i\\\\\\#include "json-type.h"\n'\'''\'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''|tee /dev/fd/2|sed -r '\''s/^\\//'\''|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; }'

echo '$ json <<< '\''{"type":"object","args":[{"name":"foo","type":"type"}]}'\'''
json <<< '{"type":"object","args":[{"name":"foo","type":"type"}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"object","args":[{"name":"foo","type":"type"}]}'\'''

echo '$ json <<< '\''{"type":"object","args":[{"name":"foo","type":"null"}]}'\'''
json <<< '{"type":"object","args":[{"name":"foo","type":"null"}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"object","args":[{"name":"foo","type":"null"}]}'\'''

echo '$ json <<< '\''{"type":"object","args":[{"name":"foo","type":"boolean"}]}'\'''
json <<< '{"type":"object","args":[{"name":"foo","type":"boolean"}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"object","args":[{"name":"foo","type":"boolean"}]}'\'''

echo '$ json <<< '\''{"type":"object","args":[{"name":"foo","type":"number"}]}'\'''
json <<< '{"type":"object","args":[{"name":"foo","type":"number"}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"object","args":[{"name":"foo","type":"number"}]}'\'''

echo '$ json <<< '\''{"type":"object","args":[{"name":"foo","type":"string"}]}'\'''
json <<< '{"type":"object","args":[{"name":"foo","type":"string"}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"object","args":[{"name":"foo","type":"string"}]}'\'''

echo '$ json <<< '\''{"type":"object","args":[{"name":"foo","type":"object"}]}'\'''
json <<< '{"type":"object","args":[{"name":"foo","type":"object"}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"object","args":[{"name":"foo","type":"object"}]}'\'''

echo '$ json <<< '\''{"type":"object","args":[{"name":"foo","type":"array"}]}'\'''
json <<< '{"type":"object","args":[{"name":"foo","type":"array"}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"object","args":[{"name":"foo","type":"array"}]}'\'''
)

