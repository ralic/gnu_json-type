// Copyright (C) 2016  Stefan Vargyas
// 
// This file is part of Json-Type.
// 
// Json-Type is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// Json-Type is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with Json-Type.  If not, see <http://www.gnu.org/licenses/>.

#include "config.h"

#include <stdio.h>
#include <string.h>

#include "bit-set.h"
#include "common.h"

#ifndef MAIN

uchar_t bit_set_sizes[256] = {
  [  0] 0, [  1] 1, [  2] 1, [  3] 2,
  [  4] 1, [  5] 2, [  6] 2, [  7] 3,
  [  8] 1, [  9] 2, [ 10] 2, [ 11] 3,
  [ 12] 2, [ 13] 3, [ 14] 3, [ 15] 4,
  [ 16] 1, [ 17] 2, [ 18] 2, [ 19] 3,
  [ 20] 2, [ 21] 3, [ 22] 3, [ 23] 4,
  [ 24] 2, [ 25] 3, [ 26] 3, [ 27] 4,
  [ 28] 3, [ 29] 4, [ 30] 4, [ 31] 5,
  [ 32] 1, [ 33] 2, [ 34] 2, [ 35] 3,
  [ 36] 2, [ 37] 3, [ 38] 3, [ 39] 4,
  [ 40] 2, [ 41] 3, [ 42] 3, [ 43] 4,
  [ 44] 3, [ 45] 4, [ 46] 4, [ 47] 5,
  [ 48] 2, [ 49] 3, [ 50] 3, [ 51] 4,
  [ 52] 3, [ 53] 4, [ 54] 4, [ 55] 5,
  [ 56] 3, [ 57] 4, [ 58] 4, [ 59] 5,
  [ 60] 4, [ 61] 5, [ 62] 5, [ 63] 6,
  [ 64] 1, [ 65] 2, [ 66] 2, [ 67] 3,
  [ 68] 2, [ 69] 3, [ 70] 3, [ 71] 4,
  [ 72] 2, [ 73] 3, [ 74] 3, [ 75] 4,
  [ 76] 3, [ 77] 4, [ 78] 4, [ 79] 5,
  [ 80] 2, [ 81] 3, [ 82] 3, [ 83] 4,
  [ 84] 3, [ 85] 4, [ 86] 4, [ 87] 5,
  [ 88] 3, [ 89] 4, [ 90] 4, [ 91] 5,
  [ 92] 4, [ 93] 5, [ 94] 5, [ 95] 6,
  [ 96] 2, [ 97] 3, [ 98] 3, [ 99] 4,
  [100] 3, [101] 4, [102] 4, [103] 5,
  [104] 3, [105] 4, [106] 4, [107] 5,
  [108] 4, [109] 5, [110] 5, [111] 6,
  [112] 3, [113] 4, [114] 4, [115] 5,
  [116] 4, [117] 5, [118] 5, [119] 6,
  [120] 4, [121] 5, [122] 5, [123] 6,
  [124] 5, [125] 6, [126] 6, [127] 7,
  [128] 1, [129] 2, [130] 2, [131] 3,
  [132] 2, [133] 3, [134] 3, [135] 4,
  [136] 2, [137] 3, [138] 3, [139] 4,
  [140] 3, [141] 4, [142] 4, [143] 5,
  [144] 2, [145] 3, [146] 3, [147] 4,
  [148] 3, [149] 4, [150] 4, [151] 5,
  [152] 3, [153] 4, [154] 4, [155] 5,
  [156] 4, [157] 5, [158] 5, [159] 6,
  [160] 2, [161] 3, [162] 3, [163] 4,
  [164] 3, [165] 4, [166] 4, [167] 5,
  [168] 3, [169] 4, [170] 4, [171] 5,
  [172] 4, [173] 5, [174] 5, [175] 6,
  [176] 3, [177] 4, [178] 4, [179] 5,
  [180] 4, [181] 5, [182] 5, [183] 6,
  [184] 4, [185] 5, [186] 5, [187] 6,
  [188] 5, [189] 6, [190] 6, [191] 7,
  [192] 2, [193] 3, [194] 3, [195] 4,
  [196] 3, [197] 4, [198] 4, [199] 5,
  [200] 3, [201] 4, [202] 4, [203] 5,
  [204] 4, [205] 5, [206] 5, [207] 6,
  [208] 3, [209] 4, [210] 4, [211] 5,
  [212] 4, [213] 5, [214] 5, [215] 6,
  [216] 4, [217] 5, [218] 5, [219] 6,
  [220] 5, [221] 6, [222] 6, [223] 7,
  [224] 3, [225] 4, [226] 4, [227] 5,
  [228] 4, [229] 5, [230] 5, [231] 6,
  [232] 4, [233] 5, [234] 5, [235] 6,
  [236] 5, [237] 6, [238] 6, [239] 7,
  [240] 4, [241] 5, [242] 5, [243] 6,
  [244] 5, [245] 6, [246] 6, [247] 7,
  [248] 5, [249] 6, [250] 6, [251] 7,
  [252] 6, [253] 7, [254] 7, [255] 8,
};

size_t bit_set_get_size(
    const struct bit_set_t* set)
{
    size_t r = 0;

    // stev: the 'bit_set_sizes' table
    // above was generated on an 8-bit
    // char machine; if compiling this
    // unit on a machine not having
    // 8-bit chars, one must generate
    // a different 'bit_set_sizes' table
    // using the 'main' function below!
    STATIC(CHAR_BIT == 8);

    if (BIT_SET_IS_VAL_(set)) {
        uintptr_t v = set->val;
        size_t i;

        // stev: expecting the compiler
        // to unroll the loop below --
        // and also to eliminate the
        // last 'v >>= CHAR_BIT'
        for (i = 0;
             i < sizeof(uintptr_t);
             i ++) {
             r += bit_set_sizes[v & UCHAR_MAX];
             v >>= CHAR_BIT;
        }
    }
    else {
        const uchar_t *p, *e;

        for (p = set->ptr,
             e = p + BIT_SET_POS_END_(set);
             p < e;
             p ++)
             r += bit_set_sizes[*p];
    }

    return r;
}

void bit_set_print(
    const struct bit_set_t* set, FILE* file)
{
    size_t i;

    for (i = 0; i < set->size; i ++) {
        fputc(BIT_SET_TEST(set, i)
            ? '1' : '0', file);
    }
}

#ifdef JSON_DEBUG

void bit_set_print_debug(
    const struct bit_set_t* set, FILE* file)
{
    fprintf(file, "{.size=%zu .bits=\"", set->size);
    bit_set_print(set, file);
    fputs("\"}", file);
}

#endif

#else // MAIN

#define BIT_SET_SIZE_LEN (SZ(1) << CHAR_BIT)

int main(void)
{
    size_t i, j, n;

    STATIC(CHAR_BIT < SIZE_BIT);
    // => BIT_SET_SIZE_LEN is well-defined

    printf("uchar_t bit_set_sizes[%zu] = {\n  ",
        BIT_SET_SIZE_LEN);

    for (i = 0; i < BIT_SET_SIZE_LEN; i ++) {
        for (j = 0, n = 0; j < CHAR_BIT; j ++) {
            if (i & BIT_SET_BIT_(j))
                n ++;
        }
        printf("[%3zu] %zu,%s", i, n,
            ((i + 1) % 4)
            ? " "
            : i + 1 < BIT_SET_SIZE_LEN
            ? "\n  "
            : "\n");
    }

    printf("};\n");

    return 0;
}

#endif // MAIN


