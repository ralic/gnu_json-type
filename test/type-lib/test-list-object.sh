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
# $ json-gentest -C type-lib:list-object
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L list-object.old <(echo \
'$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }
$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"type"}]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "object",
            "args": [
                {
                    "name": "foo",
                    "type": "type"
                }
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": {
            "sym": {
                "name": "foo"
            },
            "lo": null,
            "eq": {
                "sym": {
                    "node": "type"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "object",
                        "args": [
                            {
                                "name": "foo",
                                "type": "type"
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
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"null"}]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "object",
            "args": [
                {
                    "name": "foo",
                    "type": "null"
                }
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": {
            "sym": {
                "name": "foo"
            },
            "lo": null,
            "eq": {
                "sym": {
                    "node": "null"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "object",
                        "args": [
                            {
                                "name": "foo",
                                "type": "null"
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
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"boolean"}]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "object",
            "args": [
                {
                    "name": "foo",
                    "type": "boolean"
                }
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": {
            "sym": {
                "name": "foo"
            },
            "lo": null,
            "eq": {
                "sym": {
                    "node": "boolean"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "object",
                        "args": [
                            {
                                "name": "foo",
                                "type": "boolean"
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
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"number"}]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "object",
            "args": [
                {
                    "name": "foo",
                    "type": "number"
                }
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": {
            "sym": {
                "name": "foo"
            },
            "lo": null,
            "eq": {
                "sym": {
                    "node": "number"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "object",
                        "args": [
                            {
                                "name": "foo",
                                "type": "number"
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
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"string"}]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "object",
            "args": [
                {
                    "name": "foo",
                    "type": "string"
                }
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": {
            "sym": {
                "name": "foo"
            },
            "lo": null,
            "eq": {
                "sym": {
                    "node": "string"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "object",
                        "args": [
                            {
                                "name": "foo",
                                "type": "string"
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
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"object"}]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "object",
            "args": [
                {
                    "name": "foo",
                    "type": "object"
                }
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": {
            "sym": {
                "name": "foo"
            },
            "lo": null,
            "eq": {
                "sym": {
                    "node": "object"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "object",
                        "args": [
                            {
                                "name": "foo",
                                "type": "object"
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
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"array"}]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "object",
            "args": [
                {
                    "name": "foo",
                    "type": "array"
                }
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": {
            "sym": {
                "name": "foo"
            },
            "lo": null,
            "eq": {
                "sym": {
                    "node": "array"
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "object",
                        "args": [
                            {
                                "name": "foo",
                                "type": "array"
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
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":{"type":"object","args":[]}}]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "object",
            "args": [
                {
                    "name": "foo",
                    "type": {
                        "type": "object",
                        "args": []
                    }
                }
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": {
            "sym": {
                "name": "foo"
            },
            "lo": null,
            "eq": {
                "sym": {
                    "node": {
                        "type": "object",
                        "args": []
                    }
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "object",
                        "args": [
                            {
                                "name": "foo",
                                "type": {
                                    "type": "object",
                                    "args": []
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
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":{"type":"object","args":[{"name":"bar","type":"boolean"},{"name":"baz","type":"number"}]}}]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "object",
            "args": [
                {
                    "name": "foo",
                    "type": {
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
                }
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": {
            "sym": {
                "name": "foo"
            },
            "lo": null,
            "eq": {
                "sym": {
                    "node": {
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
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "object",
                        "args": [
                            {
                                "name": "foo",
                                "type": {
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
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "object",
            "args": [
                {
                    "name": "foo",
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
        "plain": null,
        "object": {
            "sym": {
                "name": "foo"
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
                                "name": "foo",
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
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":{"type":"array","args":["number","object"]}}]}]}'\''
{
    "type": "list",
    "args": [
        {
            "type": "object",
            "args": [
                {
                    "name": "foo",
                    "type": {
                        "type": "array",
                        "args": [
                            "number",
                            "object"
                        ]
                    }
                }
            ]
        }
    ],
    "attr": {
        "any": null,
        "plain": null,
        "object": {
            "sym": {
                "name": "foo"
            },
            "lo": null,
            "eq": {
                "sym": {
                    "node": {
                        "type": "array",
                        "args": [
                            "number",
                            "object"
                        ]
                    }
                },
                "lo": null,
                "eq": {
                    "val": {
                        "type": "object",
                        "args": [
                            {
                                "name": "foo",
                                "type": {
                                    "type": "array",
                                    "args": [
                                        "number",
                                        "object"
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
        "array": {
            "open": null,
            "closed": null
        }
    }
}'
) -L list-object.new <(
echo '$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }'
json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; } 2>&1 ||
echo 'command failed: json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }'

echo '$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"type"}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"type"}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"type"}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"null"}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"null"}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"null"}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"boolean"}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"boolean"}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"boolean"}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"number"}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"number"}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"number"}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"string"}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"string"}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"string"}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"object"}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"object"}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"object"}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"array"}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"array"}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":"array"}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":{"type":"object","args":[]}}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":{"type":"object","args":[]}}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":{"type":"object","args":[]}}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":{"type":"object","args":[{"name":"bar","type":"boolean"},{"name":"baz","type":"number"}]}}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":{"type":"object","args":[{"name":"bar","type":"boolean"},{"name":"baz","type":"number"}]}}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":{"type":"object","args":[{"name":"bar","type":"boolean"},{"name":"baz","type":"number"}]}}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":{"type":"array","args":"type"}}]}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":{"type":"array","args":["number","object"]}}]}]}'\'''
json <<< '{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":{"type":"array","args":["number","object"]}}]}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"type":"object","args":[{"name":"foo","type":{"type":"array","args":["number","object"]}}]}]}'\'''
)

