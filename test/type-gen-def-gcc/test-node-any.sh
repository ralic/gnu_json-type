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
# $ json-gentest -C type-gen-def-gcc:node-any
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L node-any.old <(echo \
'$ set -o pipefail
$ json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'\''1i\\\\\\#include "json-type.h"\n'\'''\'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''|tee /dev/fd/2|sed -r '\''s/^\\//'\''|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; }
$ json <<< '\''"type"'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_type_type
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__0
};
$ json <<< '\''"null"'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_null_type
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__0
};
$ json <<< '\''"boolean"'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_boolean_type
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__0
};
$ json <<< '\''"number"'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_number_type
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__0
};
$ json <<< '\''"string"'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_string_type
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__0
};
$ json <<< '\''"object"'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_object_type
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__0
};
$ json <<< '\''"array"'\''
\#include "json-type.h"
static const struct json_type_node_t __0 = {
    .type = json_type_any_node_type,
    .node.any = {
        .type = json_type_any_array_type
    }
};
static const struct json_type_def_t MODULE_TYPE_DEF = {
    .type = json_type_def_node_type,
    .val.node = &__0
};'
) -L node-any.new <(
echo '$ set -o pipefail'
set -o pipefail 2>&1 ||
echo 'command failed: set -o pipefail'

echo '$ json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'\''1i\\\\\\#include "json-type.h"\n'\'''\'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''|tee /dev/fd/2|sed -r '\''s/^\\//'\''|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; }'
json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'1i\\\\\\#include "json-type.h"\n'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'|tee /dev/fd/2|sed -r 's/^\\//'|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; } 2>&1 ||
echo 'command failed: json() { LD_LIBRARY_PATH=../lib ../src/json -Td "$@"|sed -r $'\''1i\\\\\\#include "json-type.h"\n'\'''\'';s/^#/\\#/;/^\s*\/\//d;/^\s*$/d'\''|tee /dev/fd/2|sed -r '\''s/^\\//'\''|gcc -Wall -Wextra -std=gnu99 -I ../lib -xc -c - -o /dev/null; }'

echo '$ json <<< '\''"type"'\'''
json <<< '"type"' 2>&1 ||
echo 'command failed: json <<< '\''"type"'\'''

echo '$ json <<< '\''"null"'\'''
json <<< '"null"' 2>&1 ||
echo 'command failed: json <<< '\''"null"'\'''

echo '$ json <<< '\''"boolean"'\'''
json <<< '"boolean"' 2>&1 ||
echo 'command failed: json <<< '\''"boolean"'\'''

echo '$ json <<< '\''"number"'\'''
json <<< '"number"' 2>&1 ||
echo 'command failed: json <<< '\''"number"'\'''

echo '$ json <<< '\''"string"'\'''
json <<< '"string"' 2>&1 ||
echo 'command failed: json <<< '\''"string"'\'''

echo '$ json <<< '\''"object"'\'''
json <<< '"object"' 2>&1 ||
echo 'command failed: json <<< '\''"object"'\'''

echo '$ json <<< '\''"array"'\'''
json <<< '"array"' 2>&1 ||
echo 'command failed: json <<< '\''"array"'\'''
)

