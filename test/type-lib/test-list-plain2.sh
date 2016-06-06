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
# $ json-gentest -C type-lib:list-plain2
#

[[ "$1" =~ ^-u[0-9]+$ ]] &&
u="${1:2}" ||
u=""

diff -u$u -L list-plain2.old <(echo \
'$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }
$ json <<< '\''{"type":"list","args":[{"plain":null},{"plain":null}]}'\''
json: error: <stdin>:1:39: attribute error: invalid "list" type object: duplicated '\''plain'\'' entry (previous defined at 1:24)
json: error: <stdin>:1:39: ":"list","args":[{"plain":null},{"plain":null}]}
json: error: <stdin>:1:39:                                 ^
command failed: json <<< '\''{"type":"list","args":[{"plain":null},{"plain":null}]}'\''
$ json <<< '\''{"type":"list","args":[{"plain":null},{"plain":false}]}'\''
{
    "type": "list",
    "args": [
        {
            "plain": null
        },
        {
            "plain": false
        }
    ],
    "attr": {
        "any": null,
        "plain": {
            "sym": {
                "plain": null
            },
            "lo": null,
            "eq": {
                "val": {
                    "plain": null
                },
                "lo": null,
                "hi": null
            },
            "hi": {
                "sym": {
                    "plain": false
                },
                "lo": null,
                "eq": {
                    "val": {
                        "plain": false
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            }
        },
        "object": null,
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"plain":null},{"plain":true}]}'\''
{
    "type": "list",
    "args": [
        {
            "plain": null
        },
        {
            "plain": true
        }
    ],
    "attr": {
        "any": null,
        "plain": {
            "sym": {
                "plain": null
            },
            "lo": null,
            "eq": {
                "val": {
                    "plain": null
                },
                "lo": null,
                "hi": null
            },
            "hi": {
                "sym": {
                    "plain": true
                },
                "lo": null,
                "eq": {
                    "val": {
                        "plain": true
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            }
        },
        "object": null,
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"plain":null},{"plain":123}]}'\''
{
    "type": "list",
    "args": [
        {
            "plain": null
        },
        {
            "plain": 123
        }
    ],
    "attr": {
        "any": null,
        "plain": {
            "sym": {
                "plain": null
            },
            "lo": null,
            "eq": {
                "val": {
                    "plain": null
                },
                "lo": null,
                "hi": null
            },
            "hi": {
                "sym": {
                    "plain": 123
                },
                "lo": null,
                "eq": {
                    "val": {
                        "plain": 123
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            }
        },
        "object": null,
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"plain":false},{"plain":null}]}'\''
{
    "type": "list",
    "args": [
        {
            "plain": false
        },
        {
            "plain": null
        }
    ],
    "attr": {
        "any": null,
        "plain": {
            "sym": {
                "plain": false
            },
            "lo": {
                "sym": {
                    "plain": null
                },
                "lo": null,
                "eq": {
                    "val": {
                        "plain": null
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            },
            "eq": {
                "val": {
                    "plain": false
                },
                "lo": null,
                "hi": null
            },
            "hi": null
        },
        "object": null,
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"plain":false},{"plain":false}]}'\''
json: error: <stdin>:1:40: attribute error: invalid "list" type object: duplicated '\''plain'\'' entry (previous defined at 1:24)
json: error: <stdin>:1:40: :"list","args":[{"plain":false},{"plain":false}]}
json: error: <stdin>:1:40:                                 ^
command failed: json <<< '\''{"type":"list","args":[{"plain":false},{"plain":false}]}'\''
$ json <<< '\''{"type":"list","args":[{"plain":false},{"plain":true}]}'\''
{
    "type": "list",
    "args": [
        {
            "plain": false
        },
        {
            "plain": true
        }
    ],
    "attr": {
        "any": null,
        "plain": {
            "sym": {
                "plain": false
            },
            "lo": null,
            "eq": {
                "val": {
                    "plain": false
                },
                "lo": null,
                "hi": null
            },
            "hi": {
                "sym": {
                    "plain": true
                },
                "lo": null,
                "eq": {
                    "val": {
                        "plain": true
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            }
        },
        "object": null,
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"plain":false},{"plain":123}]}'\''
{
    "type": "list",
    "args": [
        {
            "plain": false
        },
        {
            "plain": 123
        }
    ],
    "attr": {
        "any": null,
        "plain": {
            "sym": {
                "plain": false
            },
            "lo": null,
            "eq": {
                "val": {
                    "plain": false
                },
                "lo": null,
                "hi": null
            },
            "hi": {
                "sym": {
                    "plain": 123
                },
                "lo": null,
                "eq": {
                    "val": {
                        "plain": 123
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            }
        },
        "object": null,
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"plain":true},{"plain":null}]}'\''
{
    "type": "list",
    "args": [
        {
            "plain": true
        },
        {
            "plain": null
        }
    ],
    "attr": {
        "any": null,
        "plain": {
            "sym": {
                "plain": true
            },
            "lo": {
                "sym": {
                    "plain": null
                },
                "lo": null,
                "eq": {
                    "val": {
                        "plain": null
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            },
            "eq": {
                "val": {
                    "plain": true
                },
                "lo": null,
                "hi": null
            },
            "hi": null
        },
        "object": null,
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"plain":true},{"plain":false}]}'\''
{
    "type": "list",
    "args": [
        {
            "plain": true
        },
        {
            "plain": false
        }
    ],
    "attr": {
        "any": null,
        "plain": {
            "sym": {
                "plain": true
            },
            "lo": {
                "sym": {
                    "plain": false
                },
                "lo": null,
                "eq": {
                    "val": {
                        "plain": false
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            },
            "eq": {
                "val": {
                    "plain": true
                },
                "lo": null,
                "hi": null
            },
            "hi": null
        },
        "object": null,
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"plain":true},{"plain":true}]}'\''
json: error: <stdin>:1:39: attribute error: invalid "list" type object: duplicated '\''plain'\'' entry (previous defined at 1:24)
json: error: <stdin>:1:39: ":"list","args":[{"plain":true},{"plain":true}]}
json: error: <stdin>:1:39:                                 ^
command failed: json <<< '\''{"type":"list","args":[{"plain":true},{"plain":true}]}'\''
$ json <<< '\''{"type":"list","args":[{"plain":true},{"plain":123}]}'\''
{
    "type": "list",
    "args": [
        {
            "plain": true
        },
        {
            "plain": 123
        }
    ],
    "attr": {
        "any": null,
        "plain": {
            "sym": {
                "plain": true
            },
            "lo": null,
            "eq": {
                "val": {
                    "plain": true
                },
                "lo": null,
                "hi": null
            },
            "hi": {
                "sym": {
                    "plain": 123
                },
                "lo": null,
                "eq": {
                    "val": {
                        "plain": 123
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            }
        },
        "object": null,
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"plain":123},{"plain":null}]}'\''
{
    "type": "list",
    "args": [
        {
            "plain": 123
        },
        {
            "plain": null
        }
    ],
    "attr": {
        "any": null,
        "plain": {
            "sym": {
                "plain": 123
            },
            "lo": {
                "sym": {
                    "plain": null
                },
                "lo": null,
                "eq": {
                    "val": {
                        "plain": null
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            },
            "eq": {
                "val": {
                    "plain": 123
                },
                "lo": null,
                "hi": null
            },
            "hi": null
        },
        "object": null,
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"plain":123},{"plain":false}]}'\''
{
    "type": "list",
    "args": [
        {
            "plain": 123
        },
        {
            "plain": false
        }
    ],
    "attr": {
        "any": null,
        "plain": {
            "sym": {
                "plain": 123
            },
            "lo": {
                "sym": {
                    "plain": false
                },
                "lo": null,
                "eq": {
                    "val": {
                        "plain": false
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            },
            "eq": {
                "val": {
                    "plain": 123
                },
                "lo": null,
                "hi": null
            },
            "hi": null
        },
        "object": null,
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"plain":123},{"plain":true}]}'\''
{
    "type": "list",
    "args": [
        {
            "plain": 123
        },
        {
            "plain": true
        }
    ],
    "attr": {
        "any": null,
        "plain": {
            "sym": {
                "plain": 123
            },
            "lo": {
                "sym": {
                    "plain": true
                },
                "lo": null,
                "eq": {
                    "val": {
                        "plain": true
                    },
                    "lo": null,
                    "hi": null
                },
                "hi": null
            },
            "eq": {
                "val": {
                    "plain": 123
                },
                "lo": null,
                "hi": null
            },
            "hi": null
        },
        "object": null,
        "array": {
            "open": null,
            "closed": null
        }
    }
}
$ json <<< '\''{"type":"list","args":[{"plain":123},{"plain":123}]}'\''
json: error: <stdin>:1:38: attribute error: invalid "list" type object: duplicated '\''plain'\'' entry (previous defined at 1:24)
json: error: <stdin>:1:38: e":"list","args":[{"plain":123},{"plain":123}]}
json: error: <stdin>:1:38:                                 ^
command failed: json <<< '\''{"type":"list","args":[{"plain":123},{"plain":123}]}'\'''
) -L list-plain2.new <(
echo '$ json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }'
json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; } 2>&1 ||
echo 'command failed: json() { set -o pipefail && LD_LIBRARY_PATH=../lib ../src/json --literal-value -V -TA "$@"|LD_LIBRARY_PATH=../lib ../src/json --from-ast-print --verbose --no-error; }'

echo '$ json <<< '\''{"type":"list","args":[{"plain":null},{"plain":null}]}'\'''
json <<< '{"type":"list","args":[{"plain":null},{"plain":null}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"plain":null},{"plain":null}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"plain":null},{"plain":false}]}'\'''
json <<< '{"type":"list","args":[{"plain":null},{"plain":false}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"plain":null},{"plain":false}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"plain":null},{"plain":true}]}'\'''
json <<< '{"type":"list","args":[{"plain":null},{"plain":true}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"plain":null},{"plain":true}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"plain":null},{"plain":123}]}'\'''
json <<< '{"type":"list","args":[{"plain":null},{"plain":123}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"plain":null},{"plain":123}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"plain":false},{"plain":null}]}'\'''
json <<< '{"type":"list","args":[{"plain":false},{"plain":null}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"plain":false},{"plain":null}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"plain":false},{"plain":false}]}'\'''
json <<< '{"type":"list","args":[{"plain":false},{"plain":false}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"plain":false},{"plain":false}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"plain":false},{"plain":true}]}'\'''
json <<< '{"type":"list","args":[{"plain":false},{"plain":true}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"plain":false},{"plain":true}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"plain":false},{"plain":123}]}'\'''
json <<< '{"type":"list","args":[{"plain":false},{"plain":123}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"plain":false},{"plain":123}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"plain":true},{"plain":null}]}'\'''
json <<< '{"type":"list","args":[{"plain":true},{"plain":null}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"plain":true},{"plain":null}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"plain":true},{"plain":false}]}'\'''
json <<< '{"type":"list","args":[{"plain":true},{"plain":false}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"plain":true},{"plain":false}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"plain":true},{"plain":true}]}'\'''
json <<< '{"type":"list","args":[{"plain":true},{"plain":true}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"plain":true},{"plain":true}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"plain":true},{"plain":123}]}'\'''
json <<< '{"type":"list","args":[{"plain":true},{"plain":123}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"plain":true},{"plain":123}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"plain":123},{"plain":null}]}'\'''
json <<< '{"type":"list","args":[{"plain":123},{"plain":null}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"plain":123},{"plain":null}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"plain":123},{"plain":false}]}'\'''
json <<< '{"type":"list","args":[{"plain":123},{"plain":false}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"plain":123},{"plain":false}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"plain":123},{"plain":true}]}'\'''
json <<< '{"type":"list","args":[{"plain":123},{"plain":true}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"plain":123},{"plain":true}]}'\'''

echo '$ json <<< '\''{"type":"list","args":[{"plain":123},{"plain":123}]}'\'''
json <<< '{"type":"list","args":[{"plain":123},{"plain":123}]}' 2>&1 ||
echo 'command failed: json <<< '\''{"type":"list","args":[{"plain":123},{"plain":123}]}'\'''
)

