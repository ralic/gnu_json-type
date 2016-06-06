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
# $ json-gentest -C type-lib:list-open-array-array-closed-array
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L list-open-array-array-closed-array.old <(echo \
'$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }
$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["type"]}]}'\''
json: error: <stdin>:1:47: attribute error: invalid "list" type object: array ambiguity (the other defined at 1:79)
json: error: <stdin>:1:47: ,"args":[{"type":"array","args":{"type":"array","args":"type"}},{
json: error: <stdin>:1:47:                                 ^
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": {
                "type": "array",
                "args": "type"
            }
        },
        {
            "type": "array",
            "args": [
                "type"
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": null,
        "array": {
            "open": {
                "sym": {
                    "type": "array",
                    "args": "type"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": {
                            "type": "array",
                            "args": "type"
                        }
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            },
            "closed": {
                "sym": "type",
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": [
                            "type"
                        ]
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            }
        }
    }
}
command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["type"]}]}'\''
$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["null"]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": {
                "type": "array",
                "args": "type"
            }
        },
        {
            "type": "array",
            "args": [
                "null"
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": null,
        "array": {
            "open": {
                "sym": {
                    "type": "array",
                    "args": "type"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": {
                            "type": "array",
                            "args": "type"
                        }
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            },
            "closed": {
                "sym": "null",
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": [
                            "null"
                        ]
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            }
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["boolean"]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": {
                "type": "array",
                "args": "type"
            }
        },
        {
            "type": "array",
            "args": [
                "boolean"
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": null,
        "array": {
            "open": {
                "sym": {
                    "type": "array",
                    "args": "type"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": {
                            "type": "array",
                            "args": "type"
                        }
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            },
            "closed": {
                "sym": "boolean",
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": [
                            "boolean"
                        ]
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            }
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["number"]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": {
                "type": "array",
                "args": "type"
            }
        },
        {
            "type": "array",
            "args": [
                "number"
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": null,
        "array": {
            "open": {
                "sym": {
                    "type": "array",
                    "args": "type"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": {
                            "type": "array",
                            "args": "type"
                        }
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            },
            "closed": {
                "sym": "number",
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": [
                            "number"
                        ]
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            }
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["string"]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": {
                "type": "array",
                "args": "type"
            }
        },
        {
            "type": "array",
            "args": [
                "string"
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": null,
        "array": {
            "open": {
                "sym": {
                    "type": "array",
                    "args": "type"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": {
                            "type": "array",
                            "args": "type"
                        }
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            },
            "closed": {
                "sym": "string",
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": [
                            "string"
                        ]
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            }
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["object"]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": {
                "type": "array",
                "args": "type"
            }
        },
        {
            "type": "array",
            "args": [
                "object"
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": null,
        "array": {
            "open": {
                "sym": {
                    "type": "array",
                    "args": "type"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": {
                            "type": "array",
                            "args": "type"
                        }
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            },
            "closed": {
                "sym": "object",
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": [
                            "object"
                        ]
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            }
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["array"]}]}'\''
json: error: <stdin>:1:47: attribute error: invalid "list" type object: array ambiguity (the other defined at 1:79)
json: error: <stdin>:1:47: ,"args":[{"type":"array","args":{"type":"array","args":"type"}},{
json: error: <stdin>:1:47:                                 ^
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": {
                "type": "array",
                "args": "type"
            }
        },
        {
            "type": "array",
            "args": [
                "array"
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": null,
        "array": {
            "open": {
                "sym": {
                    "type": "array",
                    "args": "type"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": {
                            "type": "array",
                            "args": "type"
                        }
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            },
            "closed": {
                "sym": "array",
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": [
                            "array"
                        ]
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            }
        }
    }
}
command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["array"]}]}'\''
$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":[{"type":"object","args":[]}]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": {
                "type": "array",
                "args": "type"
            }
        },
        {
            "type": "array",
            "args": [
                {
                    "type": "object",
                    "args": []
                }
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": null,
        "array": {
            "open": {
                "sym": {
                    "type": "array",
                    "args": "type"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": {
                            "type": "array",
                            "args": "type"
                        }
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            },
            "closed": {
                "sym": {
                    "type": "object",
                    "args": []
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": [
                            {
                                "type": "object",
                                "args": []
                            }
                        ]
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            }
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":[{"type":"object","args":[{"name":"bar","type":"boolean"},{"name":"baz","type":"number"}]}]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": {
                "type": "array",
                "args": "type"
            }
        },
        {
            "type": "array",
            "args": [
                {
                    "type": "object",
                    "args": [
                        {
                            "name": "bar",
                            "type": "boolean"
                        },
                        {
                            "name": "baz",
                            "type": "number"
                        }
                    ]
                }
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": null,
        "array": {
            "open": {
                "sym": {
                    "type": "array",
                    "args": "type"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": {
                            "type": "array",
                            "args": "type"
                        }
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            },
            "closed": {
                "sym": {
                    "type": "object",
                    "args": [
                        {
                            "name": "bar",
                            "type": "boolean"
                        },
                        {
                            "name": "baz",
                            "type": "number"
                        }
                    ]
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": [
                            {
                                "type": "object",
                                "args": [
                                    {
                                        "name": "bar",
                                        "type": "boolean"
                                    },
                                    {
                                        "name": "baz",
                                        "type": "number"
                                    }
                                ]
                            }
                        ]
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            }
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":[{"type":"array","args":"type"}]}]}'\''
json: error: <stdin>:1:47: attribute error: invalid "list" type object: array ambiguity (the other defined at 1:79)
json: error: <stdin>:1:47: ,"args":[{"type":"array","args":{"type":"array","args":"type"}},{
json: error: <stdin>:1:47:                                 ^
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": {
                "type": "array",
                "args": "type"
            }
        },
        {
            "type": "array",
            "args": [
                {
                    "type": "array",
                    "args": "type"
                }
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": null,
        "array": {
            "open": {
                "sym": {
                    "type": "array",
                    "args": "type"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": {
                            "type": "array",
                            "args": "type"
                        }
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            },
            "closed": {
                "sym": {
                    "type": "array",
                    "args": "type"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": [
                            {
                                "type": "array",
                                "args": "type"
                            }
                        ]
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            }
        }
    }
}
command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":[{"type":"array","args":"type"}]}]}'\''
$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":[{"type":"array","args":["number","object"]}]}]}'\''
json: error: <stdin>:1:47: attribute error: invalid "list" type object: sort of array of array type not yet supported (the other inner array is at 1:103)
json: error: <stdin>:1:47: ,"args":[{"type":"array","args":{"type":"array","args":"type"}},{
json: error: <stdin>:1:47:                                 ^
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": {
                "type": "array",
                "args": "type"
            }
        },
        {
            "type": "array",
            "args": [
                {
                    "type": "array",
                    "args": [
                        "number",
                        "object"
                    ]
                }
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": null,
        "array": {
            "open": {
                "sym": {
                    "type": "array",
                    "args": "type"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": {
                            "type": "array",
                            "args": "type"
                        }
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            },
            "closed": {
                "sym": {
                    "type": "array",
                    "args": [
                        "number",
                        "object"
                    ]
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "array",
                        "args": [
                            {
                                "type": "array",
                                "args": [
                                    "number",
                                    "object"
                                ]
                            }
                        ]
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            }
        }
    }
}
command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":[{"type":"array","args":["number","object"]}]}]}'\'''
) -L list-open-array-array-closed-array.new <(
echo '$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }'
json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; } 2>&1 ||
echo 'command failed: json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }'

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["type"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["type"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["type"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["null"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["null"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["null"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["boolean"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["boolean"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["boolean"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["number"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["number"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["number"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["string"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["string"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["string"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["object"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["object"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["object"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["array"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["array"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":["array"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":[{"type":"object","args":[]}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":[{"type":"object","args":[]}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":[{"type":"object","args":[]}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":[{"type":"object","args":[{"name":"bar","type":"boolean"},{"name":"baz","type":"number"}]}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":[{"type":"object","args":[{"name":"bar","type":"boolean"},{"name":"baz","type":"number"}]}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":[{"type":"object","args":[{"name":"bar","type":"boolean"},{"name":"baz","type":"number"}]}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":[{"type":"array","args":"type"}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":[{"type":"array","args":"type"}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":[{"type":"array","args":"type"}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":[{"type":"array","args":["number","object"]}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":[{"type":"array","args":["number","object"]}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":{"type":"array","args":"type"}},{"type":"array","args":[{"type":"array","args":["number","object"]}]}]}'\'''
)

