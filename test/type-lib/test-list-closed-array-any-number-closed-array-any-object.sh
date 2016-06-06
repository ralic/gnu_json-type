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
# $ json-gentest -C type-lib:list-closed-array-any-number-closed-array-any-object
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L list-closed-array-any-number-closed-array-any-object.old <(echo \
'$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","type"]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "number"
            ]
        },
        {
            "type": "array",
            "args": [
                "object",
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
                "hi": {
                    "sym": "object",
                    "lo": null,
                    "eq": {
                        "sym": "type",
                        "lo": null,
                        "eq": {
                            "val": {
                                "type": "array",
                                "args": [
                                    "object",
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
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","null"]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "number"
            ]
        },
        {
            "type": "array",
            "args": [
                "object",
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
                "hi": {
                    "sym": "object",
                    "lo": null,
                    "eq": {
                        "sym": "null",
                        "lo": null,
                        "eq": {
                            "val": {
                                "type": "array",
                                "args": [
                                    "object",
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
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","boolean"]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "number"
            ]
        },
        {
            "type": "array",
            "args": [
                "object",
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
                "hi": {
                    "sym": "object",
                    "lo": null,
                    "eq": {
                        "sym": "boolean",
                        "lo": null,
                        "eq": {
                            "val": {
                                "type": "array",
                                "args": [
                                    "object",
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
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","number"]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "number"
            ]
        },
        {
            "type": "array",
            "args": [
                "object",
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
                "hi": {
                    "sym": "object",
                    "lo": null,
                    "eq": {
                        "sym": "number",
                        "lo": null,
                        "eq": {
                            "val": {
                                "type": "array",
                                "args": [
                                    "object",
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
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","string"]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "number"
            ]
        },
        {
            "type": "array",
            "args": [
                "object",
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
                "hi": {
                    "sym": "object",
                    "lo": null,
                    "eq": {
                        "sym": "string",
                        "lo": null,
                        "eq": {
                            "val": {
                                "type": "array",
                                "args": [
                                    "object",
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
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","object"]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "number"
            ]
        },
        {
            "type": "array",
            "args": [
                "object",
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
                "hi": {
                    "sym": "object",
                    "lo": null,
                    "eq": {
                        "sym": "object",
                        "lo": null,
                        "eq": {
                            "val": {
                                "type": "array",
                                "args": [
                                    "object",
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
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","array"]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "number"
            ]
        },
        {
            "type": "array",
            "args": [
                "object",
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
                "hi": {
                    "sym": "object",
                    "lo": null,
                    "eq": {
                        "sym": "array",
                        "lo": null,
                        "eq": {
                            "val": {
                                "type": "array",
                                "args": [
                                    "object",
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
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object",{"type":"object","args":[]}]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "number"
            ]
        },
        {
            "type": "array",
            "args": [
                "object",
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
                "hi": {
                    "sym": "object",
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
                                    "object",
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
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object",{"type":"object","args":[{"name":"bar","type":"boolean"},{"name":"baz","type":"number"}]}]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "number"
            ]
        },
        {
            "type": "array",
            "args": [
                "object",
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
                "hi": {
                    "sym": "object",
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
                                    "object",
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
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object",{"type":"array","args":"type"}]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "number"
            ]
        },
        {
            "type": "array",
            "args": [
                "object",
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
                "hi": {
                    "sym": "object",
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
                                    "object",
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
$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object",{"type":"array","args":["number","object"]}]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "array",
            "args": [
                "number"
            ]
        },
        {
            "type": "array",
            "args": [
                "object",
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
                "hi": {
                    "sym": "object",
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
                                    "object",
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
}'
) -L list-closed-array-any-number-closed-array-any-object.new <(
echo '$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }'
json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; } 2>&1 ||
echo 'command failed: json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }'

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","type"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","type"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","type"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","null"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","null"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","null"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","boolean"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","boolean"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","boolean"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","number"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","number"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","number"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","string"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","string"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","string"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","object"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","object"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","object"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","array"]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","array"]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object","array"]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object",{"type":"object","args":[]}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object",{"type":"object","args":[]}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object",{"type":"object","args":[]}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object",{"type":"object","args":[{"name":"bar","type":"boolean"},{"name":"baz","type":"number"}]}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object",{"type":"object","args":[{"name":"bar","type":"boolean"},{"name":"baz","type":"number"}]}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object",{"type":"object","args":[{"name":"bar","type":"boolean"},{"name":"baz","type":"number"}]}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object",{"type":"array","args":"type"}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object",{"type":"array","args":"type"}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object",{"type":"array","args":"type"}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object",{"type":"array","args":["number","object"]}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object",{"type":"array","args":["number","object"]}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"array","args":["number"]},{"type":"array","args":["object",{"type":"array","args":["number","object"]}]}]}'\'''
)

