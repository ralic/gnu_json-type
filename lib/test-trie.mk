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

.PHONY: default clean allclean all depend silent

default: all

GCC := gcc
GCC_STD := gnu99
CFLAGS := -Wall -Wextra -std=${GCC_STD} \
          -g -I. -I.. -fPIC -fvisibility=hidden \
          -DPROGRAM=test-trie \
          -DJSON_NO_LIB_MAIN \
          -DJSON_DEBUG

SRCS := common.c \
        pretty-print.c \
        pool-alloc.c \
        test-trie.c
BIN  := test-trie

ifeq (${32BIT},yes)
CFLAGS += -m32
LDFLAGS += -m32
endif

# dependency rules

ifeq (.depend-test-trie, $(wildcard .depend-test-trie))
include .depend-test-trie
endif

${BIN}: ${SRCS}

# building rules

ifeq (${SILENT},yes)
${BIN}: silent
endif

${BIN}:
	${GCC} ${CFLAGS} ${SRCS} -o $@ 

# main targets

silent:

depend:
	${GCC} ${CFLAGS} -c ${SRCS} -MM| \
	sed -r 's/^[^ \t]+\.o:/test-trie:/' > .depend-test-trie

all: ${BIN}

clean:
	rm -f *.o

allclean: clean
	rm -f *~ ${BIN}


