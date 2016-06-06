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
# $ json-gentest -C type-lib:json-type
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L json-type.old <(echo \
'$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }
$ json <<< '\''{"type":"list","args":[{"plain":"type"},{"plain":"null"},{"plain":"boolean"},{"plain":"number"},{"plain":"string"},{"plain":"object"},{"plain":"array"},{"type":"object","args":[{"name":"plain","type":{"type":"list","args":["null","boolean","number","string"]}}]},{"type":"object","args":[{"name":"type","type":{"plain":"object"}},{"name":"args","type":{"type":"array","args":{"type":"object","args":[{"name":"name","type":"string"},{"name":"type","type":"type"}]}}}]},{"type":"object","args":[{"name":"type","type":{"plain":"array"}},{"name":"args","type":{"type":"list","args":["type",{"type":"array","args":"type"}]}}]},{"type":"object","args":[{"name":"type","type":{"plain":"list"}},{"name":"args","type":{"type":"array","args":"type"}}]}]}'\''
json: error: <stdin>:1:153: attribute error: invalid "list" type object: sort of object of list type not yet supported (the inner list is at 1:201)
json: error: <stdin>:1:153: in":"object"},{"plain":"array"},{"type":"object","args":[{"name":
json: error: <stdin>:1:153:                                 ^
{
    "type": "list",
    "args": [
        {
            "plain": "type"
        },
        {
            "plain": "null"
        },
        {
            "plain": "boolean"
        },
        {
            "plain": "number"
        },
        {
            "plain": "string"
        },
        {
            "plain": "object"
        },
        {
            "plain": "array"
        },
        {
            "type": "object",
            "args": [
                {
                    "name": "plain",
                    "type": {
                        "type": "list",
                        "args": [
                            "null",
                            "boolean",
                            "number",
                            "string"
                        ],
                        "attr": {
                            "any": {
                                "sym": "null",
                                "lo": null,
                                "eq": {
                                    "val": "null",
                                    "lo": null,
                                    "hi": null
                                },
                                "hi": {
                                    "sym": "boolean",
                                    "lo": null,
                                    "eq": {
                                        "val": "boolean",
                                        "lo": null,
                                        "hi": null
                                    },
                                    "hi": {
                                        "sym": "number",
                                        "lo": null,
                                        "eq": {
                                            "val": "number",
                                            "lo": null,
                                            "hi": null
                                        },
                                        "hi": {
                                            "sym": "string",
                                            "lo": null,
                                            "eq": {
                                                "val": "string",
                                                "lo": null,
                                                "hi": null
                                            },
                                            "hi": null
                                        }
                                    }
                                }
                            },
                            "plain": null,
                            "object": null,
                            "array": {
                                "open": null,
                                "closed": null
                            }
                        }
                    }
                }
            ]
        },
        {
            "type": "object",
            "args": [
                {
                    "name": "type",
                    "type": {
                        "plain": "object"
                    }
                },
                {
                    "name": "args",
                    "type": {
                        "type": "array",
                        "args": {
                            "type": "object",
                            "args": [
                                {
                                    "name": "name",
                                    "type": "string"
                                },
                                {
                                    "name": "type",
                                    "type": "type"
                                }
                            ]
                        }
                    }
                }
            ]
        },
        {
            "type": "object",
            "args": [
                {
                    "name": "type",
                    "type": {
                        "plain": "array"
                    }
                },
                {
                    "name": "args",
                    "type": {
                        "type": "list",
                        "args": [
                            "type",
                            {
                                "type": "array",
                                "args": "type"
                            }
                        ],
                        "attr": {
                            "any": {
                                "sym": "type",
                                "lo": null,
                                "eq": {
                                    "val": "type",
                                    "lo": null,
                                    "hi": null
                                },
                                "hi": null
                            },
                            "plain": null,
                            "object": null,
                            "array": {
                                "open": {
                                    "sym": "type",
                                    "lo": null,
                                    "eq": {
                                        "val": {
                                            "type": "array",
                                            "args": "type"
                                        },
                                        "lo": null,
                                        "hi": null
                                    },
                                    "hi": null
                                },
                                "closed": null
                            }
                        }
                    }
                }
            ]
        },
        {
            "type": "object",
            "args": [
                {
                    "name": "type",
                    "type": {
                        "plain": "list"
                    }
                },
                {
                    "name": "args",
                    "type": {
                        "type": "array",
                        "args": "type"
                    }
                }
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": {
            "sym": {
                "plain": "type"
            },
            "lo": {
                "sym": {
                    "plain": "null"
                },
                "lo": {
                    "sym": {
                        "plain": "boolean"
                    },
                    "lo": {
                        "sym": {
                            "plain": "array"
                        },
                        "lo": null,
                        "eq": {
                            "val": {
                                "plain": "array"
                            },
                            "lo": null,
                            "hi": null
                        },
                        "hi": null
                    },
                    "eq": {
                        "val": {
                            "plain": "boolean"
                        },
                        "lo": null,
                        "hi": null
                    },
                    "hi": null
                },
                "eq": {
                    "val": {
                        "plain": "null"
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": {
                    "sym": {
                        "plain": "number"
                    },
                    "lo": null,
                    "eq": {
                        "val": {
                            "plain": "number"
                        },
                        "lo": null,
                        "hi": null
                    },
                    "hi": {
                        "sym": {
                            "plain": "string"
                        },
                        "lo": {
                            "sym": {
                                "plain": "object"
                            },
                            "lo": null,
                            "eq": {
                                "val": {
                                    "plain": "object"
                                },
                                "lo": null,
                                "hi": null
                            },
                            "hi": null
                        },
                        "eq": {
                            "val": {
                                "plain": "string"
                            },
                            "lo": null,
                            "hi": null
                        },
                        "hi": null
                    }
                }
            },
            "eq": {
                "val": {
                    "plain": "type"
                },
                "lo": null,
                "hi": null
            },
            "hi": null
        },
        "object": {
            "sym": {
                "name": "plain"
            },
            "lo": null,
            "eq": {
                "sym": {
                    "node": {
                        "type": "list",
                        "args": [
                            "null",
                            "boolean",
                            "number",
                            "string"
                        ]
                    }
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "object",
                        "args": [
                            {
                                "name": "plain",
                                "type": {
                                    "type": "list",
                                    "args": [
                                        "null",
                                        "boolean",
                                        "number",
                                        "string"
                                    ]
                                }
                            }
                        ]
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            },
            "hi": {
                "sym": {
                    "name": "type"
                },
                "lo": null,
                "eq": {
                    "sym": {
                        "node": {
                            "plain": "object"
                        }
                    },
                    "lo": {
                        "sym": {
                            "node": {
                                "plain": "array"
                            }
                        },
                        "lo": null,
                        "eq": {
                            "sym": {
                                "name": "args"
                            },
                            "lo": null,
                            "eq": {
                                "sym": {
                                    "node": {
                                        "type": "list",
                                        "args": [
                                            "type",
                                            {
                                                "type": "array",
                                                "args": "type"
                                            }
                                        ]
                                    }
                                },
                                "lo": null,
                                "eq": {
                                    "val": {
                                        "type": "object",
                                        "args": [
                                            {
                                                "name": "type",
                                                "type": {
                                                    "plain": "array"
                                                }
                                            },
                                            {
                                                "name": "args",
                                                "type": {
                                                    "type": "list",
                                                    "args": [
                                                        "type",
                                                        {
                                                            "type": "array",
                                                            "args": "type"
                                                        }
                                                    ]
                                                }
                                            }
                                        ]
                                    },
                                    "lo": null,
                                    "hi": null
                                },
                                "hi": null
                            },
                            "hi": null
                        },
                        "hi": {
                            "sym": {
                                "node": {
                                    "plain": "list"
                                }
                            },
                            "lo": null,
                            "eq": {
                                "sym": {
                                    "name": "args"
                                },
                                "lo": null,
                                "eq": {
                                    "sym": {
                                        "node": {
                                            "type": "array",
                                            "args": "type"
                                        }
                                    },
                                    "lo": null,
                                    "eq": {
                                        "val": {
                                            "type": "object",
                                            "args": [
                                                {
                                                    "name": "type",
                                                    "type": {
                                                        "plain": "list"
                                                    }
                                                },
                                                {
                                                    "name": "args",
                                                    "type": {
                                                        "type": "array",
                                                        "args": "type"
                                                    }
                                                }
                                            ]
                                        },
                                        "lo": null,
                                        "hi": null
                                    },
                                    "hi": null
                                },
                                "hi": null
                            },
                            "hi": null
                        }
                    },
                    "eq": {
                        "sym": {
                            "name": "args"
                        },
                        "lo": null,
                        "eq": {
                            "sym": {
                                "node": {
                                    "type": "array",
                                    "args": {
                                        "type": "object",
                                        "args": [
                                            {
                                                "name": "name",
                                                "type": "string"
                                            },
                                            {
                                                "name": "type",
                                                "type": "type"
                                            }
                                        ]
                                    }
                                }
                            },
                            "lo": null,
                            "eq": {
                                "val": {
                                    "type": "object",
                                    "args": [
                                        {
                                            "name": "type",
                                            "type": {
                                                "plain": "object"
                                            }
                                        },
                                        {
                                            "name": "args",
                                            "type": {
                                                "type": "array",
                                                "args": {
                                                    "type": "object",
                                                    "args": [
                                                        {
                                                            "name": "name",
                                                            "type": "string"
                                                        },
                                                        {
                                                            "name": "type",
                                                            "type": "type"
                                                        }
                                                    ]
                                                }
                                            }
                                        }
                                    ]
                                },
                                "lo": null,
                                "hi": null
                            },
                            "hi": null
                        },
                        "hi": null
                    },
                    "hi": null
                },
                "hi": null
            }
        },
        "array": {
            "open": null,
            "closed": null
        }
    }
}
command failed: json <<< '\''{"type":"list","args":[{"plain":"type"},{"plain":"null"},{"plain":"boolean"},{"plain":"number"},{"plain":"string"},{"plain":"object"},{"plain":"array"},{"type":"object","args":[{"name":"plain","type":{"type":"list","args":["null","boolean","number","string"]}}]},{"type":"object","args":[{"name":"type","type":{"plain":"object"}},{"name":"args","type":{"type":"array","args":{"type":"object","args":[{"name":"name","type":"string"},{"name":"type","type":"type"}]}}}]},{"type":"object","args":[{"name":"type","type":{"plain":"array"}},{"name":"args","type":{"type":"list","args":["type",{"type":"array","args":"type"}]}}]},{"type":"object","args":[{"name":"type","type":{"plain":"list"}},{"name":"args","type":{"type":"array","args":"type"}}]}]}'\'''
) -L json-type.new <(
echo '$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }'
json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; } 2>&1 ||
echo 'command failed: json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }'

echo '$ json <<< '\''{"type":"list","args":[{"plain":"type"},{"plain":"null"},{"plain":"boolean"},{"plain":"number"},{"plain":"string"},{"plain":"object"},{"plain":"array"},{"type":"object","args":[{"name":"plain","type":{"type":"list","args":["null","boolean","number","string"]}}]},{"type":"object","args":[{"name":"type","type":{"plain":"object"}},{"name":"args","type":{"type":"array","args":{"type":"object","args":[{"name":"name","type":"string"},{"name":"type","type":"type"}]}}}]},{"type":"object","args":[{"name":"type","type":{"plain":"array"}},{"name":"args","type":{"type":"list","args":["type",{"type":"array","args":"type"}]}}]},{"type":"object","args":[{"name":"type","type":{"plain":"list"}},{"name":"args","type":{"type":"array","args":"type"}}]}]}'\'''
json <<< '{"type":"list","args":[{"plain":"type"},{"plain":"null"},{"plain":"boolean"},{"plain":"number"},{"plain":"string"},{"plain":"object"},{"plain":"array"},{"type":"object","args":[{"name":"plain","type":{"type":"list","args":["null","boolean","number","string"]}}]},{"type":"object","args":[{"name":"type","type":{"plain":"object"}},{"name":"args","type":{"type":"array","args":{"type":"object","args":[{"name":"name","type":"string"},{"name":"type","type":"type"}]}}}]},{"type":"object","args":[{"name":"type","type":{"plain":"array"}},{"name":"args","type":{"type":"list","args":["type",{"type":"array","args":"type"}]}}]},{"type":"object","args":[{"name":"type","type":{"plain":"list"}},{"name":"args","type":{"type":"array","args":"type"}}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"plain":"type"},{"plain":"null"},{"plain":"boolean"},{"plain":"number"},{"plain":"string"},{"plain":"object"},{"plain":"array"},{"type":"object","args":[{"name":"plain","type":{"type":"list","args":["null","boolean","number","string"]}}]},{"type":"object","args":[{"name":"type","type":{"plain":"object"}},{"name":"args","type":{"type":"array","args":{"type":"object","args":[{"name":"name","type":"string"},{"name":"type","type":"type"}]}}}]},{"type":"object","args":[{"name":"type","type":{"plain":"array"}},{"name":"args","type":{"type":"list","args":["type",{"type":"array","args":"type"}]}}]},{"type":"object","args":[{"name":"type","type":{"plain":"list"}},{"name":"args","type":{"type":"array","args":"type"}}]}]}'\'''
)

