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
# $ json-gentest -C type-lib:list-closed-array-any-boolean-closed-array-any-type
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L list-closed-array-any-boolean-closed-array-any-type.old <(echo \
'$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","type"]}]}'\''
json: error: <stdin>:1:84: attribute error: invalid "list" type object: array argument ambiguity (the other is at 1:48)
json: error: <stdin>:1:84: lean"]},{"type":"array","args":["type","type"]}]}
json: error: <stdin>:1:84:                                 ^
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "boolean"
            ]
        },
        {
            "type": "array",
            "args": [
                "type",
                "type"
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": null,
        "array": {
            "open": null,
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
                "hi": {
                    "sym": "type",
                    "lo": null,
                    "eq": {
                        "sym": "type",
                        "lo": null,
                        "eq": {
                            "val": {
                                "type": "array",
                                "args": [
                                    "type",
                                    "type"
                                ]
                            },
                            "lo": null,
                            "hi": null
                        },
                        "hi": null
                    },
                    "hi": null
                }
            }
        }
    }
}
command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","type"]}]}'\''
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","null"]}]}'\''
json: error: <stdin>:1:84: attribute error: invalid "list" type object: array argument ambiguity (the other is at 1:48)
json: error: <stdin>:1:84: lean"]},{"type":"array","args":["type","null"]}]}
json: error: <stdin>:1:84:                                 ^
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "boolean"
            ]
        },
        {
            "type": "array",
            "args": [
                "type",
                "null"
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": null,
        "array": {
            "open": null,
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
                "hi": {
                    "sym": "type",
                    "lo": null,
                    "eq": {
                        "sym": "null",
                        "lo": null,
                        "eq": {
                            "val": {
                                "type": "array",
                                "args": [
                                    "type",
                                    "null"
                                ]
                            },
                            "lo": null,
                            "hi": null
                        },
                        "hi": null
                    },
                    "hi": null
                }
            }
        }
    }
}
command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","null"]}]}'\''
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","boolean"]}]}'\''
json: error: <stdin>:1:84: attribute error: invalid "list" type object: array argument ambiguity (the other is at 1:48)
json: error: <stdin>:1:84: lean"]},{"type":"array","args":["type","boolean"]}]}
json: error: <stdin>:1:84:                                 ^
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "boolean"
            ]
        },
        {
            "type": "array",
            "args": [
                "type",
                "boolean"
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": null,
        "array": {
            "open": null,
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
                "hi": {
                    "sym": "type",
                    "lo": null,
                    "eq": {
                        "sym": "boolean",
                        "lo": null,
                        "eq": {
                            "val": {
                                "type": "array",
                                "args": [
                                    "type",
                                    "boolean"
                                ]
                            },
                            "lo": null,
                            "hi": null
                        },
                        "hi": null
                    },
                    "hi": null
                }
            }
        }
    }
}
command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","boolean"]}]}'\''
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","number"]}]}'\''
json: error: <stdin>:1:84: attribute error: invalid "list" type object: array argument ambiguity (the other is at 1:48)
json: error: <stdin>:1:84: lean"]},{"type":"array","args":["type","number"]}]}
json: error: <stdin>:1:84:                                 ^
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "boolean"
            ]
        },
        {
            "type": "array",
            "args": [
                "type",
                "number"
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": null,
        "array": {
            "open": null,
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
                "hi": {
                    "sym": "type",
                    "lo": null,
                    "eq": {
                        "sym": "number",
                        "lo": null,
                        "eq": {
                            "val": {
                                "type": "array",
                                "args": [
                                    "type",
                                    "number"
                                ]
                            },
                            "lo": null,
                            "hi": null
                        },
                        "hi": null
                    },
                    "hi": null
                }
            }
        }
    }
}
command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","number"]}]}'\''
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","string"]}]}'\''
json: error: <stdin>:1:84: attribute error: invalid "list" type object: array argument ambiguity (the other is at 1:48)
json: error: <stdin>:1:84: lean"]},{"type":"array","args":["type","string"]}]}
json: error: <stdin>:1:84:                                 ^
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "boolean"
            ]
        },
        {
            "type": "array",
            "args": [
                "type",
                "string"
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": null,
        "array": {
            "open": null,
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
                "hi": {
                    "sym": "type",
                    "lo": null,
                    "eq": {
                        "sym": "string",
                        "lo": null,
                        "eq": {
                            "val": {
                                "type": "array",
                                "args": [
                                    "type",
                                    "string"
                                ]
                            },
                            "lo": null,
                            "hi": null
                        },
                        "hi": null
                    },
                    "hi": null
                }
            }
        }
    }
}
command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","string"]}]}'\''
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","object"]}]}'\''
json: error: <stdin>:1:84: attribute error: invalid "list" type object: array argument ambiguity (the other is at 1:48)
json: error: <stdin>:1:84: lean"]},{"type":"array","args":["type","object"]}]}
json: error: <stdin>:1:84:                                 ^
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "boolean"
            ]
        },
        {
            "type": "array",
            "args": [
                "type",
                "object"
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": null,
        "array": {
            "open": null,
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
                "hi": {
                    "sym": "type",
                    "lo": null,
                    "eq": {
                        "sym": "object",
                        "lo": null,
                        "eq": {
                            "val": {
                                "type": "array",
                                "args": [
                                    "type",
                                    "object"
                                ]
                            },
                            "lo": null,
                            "hi": null
                        },
                        "hi": null
                    },
                    "hi": null
                }
            }
        }
    }
}
command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","object"]}]}'\''
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","array"]}]}'\''
json: error: <stdin>:1:84: attribute error: invalid "list" type object: array argument ambiguity (the other is at 1:48)
json: error: <stdin>:1:84: lean"]},{"type":"array","args":["type","array"]}]}
json: error: <stdin>:1:84:                                 ^
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "boolean"
            ]
        },
        {
            "type": "array",
            "args": [
                "type",
                "array"
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": null,
        "array": {
            "open": null,
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
                "hi": {
                    "sym": "type",
                    "lo": null,
                    "eq": {
                        "sym": "array",
                        "lo": null,
                        "eq": {
                            "val": {
                                "type": "array",
                                "args": [
                                    "type",
                                    "array"
                                ]
                            },
                            "lo": null,
                            "hi": null
                        },
                        "hi": null
                    },
                    "hi": null
                }
            }
        }
    }
}
command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","array"]}]}'\''
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"object","args":[]}]}]}'\''
json: error: <stdin>:1:84: attribute error: invalid "list" type object: array argument ambiguity (the other is at 1:48)
json: error: <stdin>:1:84: lean"]},{"type":"array","args":["type",{"type":"object","args":[]
json: error: <stdin>:1:84:                                 ^
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "boolean"
            ]
        },
        {
            "type": "array",
            "args": [
                "type",
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
            "open": null,
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
                "hi": {
                    "sym": "type",
                    "lo": null,
                    "eq": {
                        "sym": {
                            "type": "object",
                            "args": []
                        },
                        "lo": null,
                        "eq": {
                            "val": {
                                "type": "array",
                                "args": [
                                    "type",
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
                    },
                    "hi": null
                }
            }
        }
    }
}
command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"object","args":[]}]}]}'\''
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"object","args":[{"name":"bar","type":"boolean"},{"name":"baz","type":"number"}]}]}]}'\''
json: error: <stdin>:1:84: attribute error: invalid "list" type object: array argument ambiguity (the other is at 1:48)
json: error: <stdin>:1:84: lean"]},{"type":"array","args":["type",{"type":"object","args":[{
json: error: <stdin>:1:84:                                 ^
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "boolean"
            ]
        },
        {
            "type": "array",
            "args": [
                "type",
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
            "open": null,
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
                "hi": {
                    "sym": "type",
                    "lo": null,
                    "eq": {
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
                                    "type",
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
                    },
                    "hi": null
                }
            }
        }
    }
}
command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"object","args":[{"name":"bar","type":"boolean"},{"name":"baz","type":"number"}]}]}]}'\''
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"array","args":"type"}]}]}'\''
json: error: <stdin>:1:84: attribute error: invalid "list" type object: array argument ambiguity (the other is at 1:48)
json: error: <stdin>:1:84: lean"]},{"type":"array","args":["type",{"type":"array","args":"ty
json: error: <stdin>:1:84:                                 ^
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "boolean"
            ]
        },
        {
            "type": "array",
            "args": [
                "type",
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
            "open": null,
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
                "hi": {
                    "sym": "type",
                    "lo": null,
                    "eq": {
                        "sym": {
                            "type": "array",
                            "args": "type"
                        },
                        "lo": null,
                        "eq": {
                            "val": {
                                "type": "array",
                                "args": [
                                    "type",
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
                    },
                    "hi": null
                }
            }
        }
    }
}
command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"array","args":"type"}]}]}'\''
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"array","args":["number","object"]}]}]}'\''
json: error: <stdin>:1:84: attribute error: invalid "list" type object: array argument ambiguity (the other is at 1:48)
json: error: <stdin>:1:84: lean"]},{"type":"array","args":["type",{"type":"array","args":["n
json: error: <stdin>:1:84:                                 ^
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "boolean"
            ]
        },
        {
            "type": "array",
            "args": [
                "type",
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
            "open": null,
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
                "hi": {
                    "sym": "type",
                    "lo": null,
                    "eq": {
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
                                    "type",
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
                    },
                    "hi": null
                }
            }
        }
    }
}
command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"array","args":["number","object"]}]}]}'\'''
) -L list-closed-array-any-boolean-closed-array-any-type.new <(
echo '$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }'
json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; } 2>&1 ||
echo 'command failed: json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }'

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","type"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","type"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","type"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","null"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","null"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","null"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","boolean"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","boolean"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","boolean"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","number"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","number"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","number"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","string"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","string"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","string"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","object"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","object"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","object"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","array"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","array"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type","array"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"object","args":[]}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"object","args":[]}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"object","args":[]}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"object","args":[{"name":"bar","type":"boolean"},{"name":"baz","type":"number"}]}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"object","args":[{"name":"bar","type":"boolean"},{"name":"baz","type":"number"}]}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"object","args":[{"name":"bar","type":"boolean"},{"name":"baz","type":"number"}]}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"array","args":"type"}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"array","args":"type"}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"array","args":"type"}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"array","args":["number","object"]}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"array","args":["number","object"]}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["boolean"]},{"type":"array","args":["type",{"type":"array","args":["number","object"]}]}]}'\'''
)

