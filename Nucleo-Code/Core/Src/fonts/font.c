/*
 * font.c
 *
 *  Created on: 01.10.2021
 *      Author: michaelstrupp
 */

#include "fonts/font.h"

#include <stdint.h>

const Character char0x20 = { // space
		.width = 2,
		.height = 10,
		.matrix = {
				0, 0,
				0, 0,
				0, 0,
				0, 0,
				0, 0,
				0, 0,
				0, 0,
				0, 0,
				0, 0,
				0, 0
		}
};
const Character char0x26 = { // &
		.width = 6,
		.height = 10,
		.matrix = {
				0, 0, 1, 1, 0, 0,
				0, 1, 0, 0, 1, 0,
				0, 1, 0, 0, 1, 0,
				0, 1, 0, 0, 1, 0,
				0, 0, 1, 1, 0, 0,
				0, 1, 1, 0, 0, 1,
				1, 0, 0, 1, 0, 1,
				1, 0, 0, 0, 1, 0,
				1, 0, 0, 1, 1, 0,
				0, 1, 1, 0, 0, 1
		}
};
const Character char0x2C = { // ,
		.width = 2,
		.height = 10,
		.matrix = {
				0, 0,
				0, 0,
				0, 0,
				0, 0,
				0, 0,
				0, 0,
				1, 1,
				0, 1,
				0, 1,
				1, 0,
		}
};
const Character char0x2D = { // -
		.width = 5,
		.height = 10,
		.matrix = {
				0, 0, 0, 0, 0,
				0, 0, 0, 0, 0,
				0, 0, 0, 0, 0,
				0, 0, 0, 0, 0,
				0, 0, 0, 0, 0,
				1, 1, 1, 1, 1,
				0, 0, 0, 0, 0,
				0, 0, 0, 0, 0,
				0, 0, 0, 0, 0,
				0, 0, 0, 0, 0,
		}
};
const Character char0x2E = { // .
		.width = 3,
		.height = 10,
		.matrix = {
				0, 0, 0,
				0, 0, 0,
				0, 0, 0,
				0, 0, 0,
				0, 0, 0,
				0, 0, 0,
				0, 0, 0,
				0, 1, 0,
				1, 1, 1,
				0, 1, 0,
		}
};
const Character char0x30 = { // 0
		.width = 6,
		.height = 10,
		.matrix = {
				0, 0, 1, 1, 0, 0,
				0, 1, 0, 0, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				0, 1, 0, 0, 1, 0,
				0, 0, 1, 1, 0, 0
		}
};
const Character char0x31 = { // 1
		.width = 6,
		.height = 10,
		.matrix = {
				0, 0, 0, 1, 0, 0,
				0, 0, 1, 1, 0, 0,
				0, 1, 0, 1, 0, 0,
				1, 0, 0, 1, 0, 0,
				0, 0, 0, 1, 0, 0,
				0, 0, 0, 1, 0, 0,
				0, 0, 0, 1, 0, 0,
				0, 0, 0, 1, 0, 0,
				0, 0, 0, 1, 0, 0,
				0,1, 1, 1, 1, 1
		}
};
const Character char0x32 = { // 2
		.width = 6,
		.height = 10,
		.matrix = {
				0, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				0, 0, 0, 0, 0, 1,
				0, 0, 0, 0, 1, 0,
				0, 0, 0, 0, 1, 0,
				0, 0, 0, 1, 0, 0,
				0, 0, 1, 0, 0, 0,
				0, 1, 0, 0, 0, 0,
				1, 1, 1, 1, 1, 1
		}
};
const Character char0x33 = { // 3
		.width = 6,
		.height = 10,
		.matrix = {
				1, 1, 1, 1, 1, 1,
				0, 0, 0, 0, 0, 1,
				0, 0, 0, 0, 1, 0,
				0, 0, 0, 1, 0, 0,
				0, 0, 1, 1, 1, 0,
				0, 0, 0, 0, 0, 1,
				0, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				0, 1, 1, 1, 1, 0
		}
};
const Character char0x34 = { // 4
		.width = 6,
		.height = 10,
		.matrix = {
				0, 0, 0, 0, 1, 0,
				0, 0, 0, 1, 1, 0,
				0, 0, 1, 0, 1, 0,
				0, 0, 1, 0, 1, 0,
				0, 1, 0, 0, 1, 0,
				0, 1, 0, 0, 1, 0,
				1, 0, 0, 0, 1, 0,
				1, 1, 1, 1, 1, 1,
				0, 0, 0, 0, 1, 0,
				0, 0, 0, 0, 1, 0
		}
};
const Character char0x35 = { // 5
		.width = 6,
		.height = 10,
		.matrix = {
				1, 1, 1, 1, 1, 1,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 1, 1, 1, 1, 0,
				0, 0, 0, 0, 0, 1,
				0, 0, 0, 0, 0, 1,
				0, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				0, 1, 1, 1, 1, 0
		}
};
const Character char0x36 = { // 6
		.width = 6,
		.height = 10,
		.matrix = {
				0, 0, 1, 1, 1, 0,
				0, 1, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 1, 1, 1, 0,
				1, 1, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				0, 1, 1, 1, 1, 0
		}
};
const Character char0x37 = { // 7
		.width = 6,
		.height = 10,
		.matrix = {
				1, 1, 1, 1, 1, 1,
				0, 0, 0, 0, 0, 1,
				0, 0, 0, 0, 1, 0,
				0, 0, 0, 0, 1, 0,
				0, 0, 0, 1, 0, 0,
				0, 0, 0, 1, 0, 0,
				0, 0, 1, 0, 0, 0,
				0, 0, 1, 0, 0, 0,
				0, 1, 0, 0, 0, 0,
				0, 1, 0, 0, 0, 0,
		}
};
const Character char0x38 = { // 8
		.width = 6,
		.height = 10,
		.matrix = {
				0, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				0, 1, 0, 0, 1, 0,
				0, 0, 1, 1, 0, 0,
				0, 1, 0, 0, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				0, 1, 1, 1, 1, 0,
		}
};
const Character char0x39 = { // 9
		.width = 6,
		.height = 10,
		.matrix = {
				0, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 1, 1,
				0, 1, 1, 1, 0, 1,
				0, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 1, 0,
				0, 1, 1, 1, 0, 0
		}
};
const Character char0x3A = { // :
		.width = 3,
		.height = 10,
		.matrix = {
				0, 0, 0,
				0, 0, 0,
				0, 1, 0,
				1, 1, 1,
				0, 1, 0,
				0, 0, 0,
				0, 0, 0,
				0, 1, 0,
				1, 1, 1,
				0, 1, 0,
		}
};
const Character char0x3F = { // ?
		.width = 6,
		.height = 10,
		.matrix = {
				0, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				0, 0, 0, 0, 1, 0,
				0, 0, 0, 1, 0, 0,
				0, 0, 0, 1, 0, 0,
				0, 0, 0, 1, 0, 0,
				0, 0, 0, 0, 0, 0,
				0, 0, 0, 1, 0, 0,
				0, 0, 0, 1, 0, 0,
		}
};
const Character char0x41 = { // A
		.width = 6,
		.height = 10,
		.matrix = {
				0, 0, 1, 1, 0, 0,
				0, 1, 0, 0, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 1, 1, 1, 1, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1
		}
};
const Character char0x42 = { // B
		.width = 6,
		.height = 10,
		.matrix = {
				1, 1, 1, 1, 0, 0,
				1, 0, 0, 0, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 1, 0,
				1, 1, 1, 1, 0, 0,
				1, 0, 0, 0, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 1, 0,
				1, 1, 1, 1, 0, 0,
		}
};
const Character char0x43 = { // C
		.width = 6,
		.height = 10,
		.matrix = {
				0, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				0, 1, 1, 1, 1, 0
		}
};
const Character char0x44 = { // D
		.width = 6,
		.height = 10,
		.matrix = {
				1, 1, 1, 1, 0, 0,
				1, 0, 0, 0, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 1, 0,
				1, 1, 1, 1, 0, 0
		}
};
const Character char0x45 = { // E
		.width = 6,
		.height = 10,
		.matrix = {
				1, 1, 1, 1, 1, 1,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 1, 1, 1, 1, 1
		}
};
const Character char0x46 = { // F
		.width = 6,
		.height = 10,
		.matrix = {
				1, 1, 1, 1, 1, 1,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0
		}
};
const Character char0x47 = { // G
		.width = 6,
		.height = 10,
		.matrix = {
				0, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 1, 1, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 1, 1,
				0, 1, 1, 1, 0, 1
		}
};
const Character char0x48 = { // H
		.width = 6,
		.height = 10,
		.matrix = {
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 1, 1, 1, 1, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
		}
};
const Character char0x49 = { // I
		.width = 5,
		.height = 10,
		.matrix = {
				1, 1, 1, 1, 1,
				0, 0, 1, 0, 0,
				0, 0, 1, 0, 0,
				0, 0, 1, 0, 0,
				0, 0, 1, 0, 0,
				0, 0, 1, 0, 0,
				0, 0, 1, 0, 0,
				0, 0, 1, 0, 0,
				0, 0, 1, 0, 0,
				1, 1, 1, 1, 1
		}
};
const Character char0x4A = { // J
		.width = 6,
		.height = 10,
		.matrix = {
				0, 0, 0, 1, 1, 1,
				0, 0, 0, 0, 1, 0,
				0, 0, 0, 0, 1, 0,
				0, 0, 0, 0, 1, 0,
				0, 0, 0, 0, 1, 0,
				0, 0, 0, 0, 1, 0,
				0, 0, 0, 0, 1, 0,
				1, 0, 0, 0, 1, 0,
				1, 0, 0, 0, 1, 0,
				0, 1, 1, 1, 0, 0
		}
};
const Character char0x4B = { // K
		.width = 6,
		.height = 10,
		.matrix = {
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 1, 0,
				1, 0, 0, 1, 0, 0,
				1, 0, 1, 0, 0, 0,
				1, 1, 0, 0, 0, 0,
				1, 0, 1, 0, 0, 0,
				1, 0, 0, 1, 0, 0,
				1, 0, 0, 0, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
		}
};
const Character char0x4C = { // L
		.width = 6,
		.height = 10,
		.matrix = {
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 1, 1, 1, 1, 1
		}
};
const Character char0x4D = { // M
		.width = 6,
		.height = 10,
		.matrix = {
				1, 0, 0, 0, 0, 1,
				1, 1, 0, 0, 1, 1,
				1, 1, 0, 0, 1, 1,
				1, 0, 1, 1, 0, 1,
				1, 0, 1, 1, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1
		}
};
const Character char0x4E = { // N
		.width = 6,
		.height = 10,
		.matrix = {
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 1, 0, 0, 0, 1,
				1, 1, 0, 0, 0, 1,
				1, 0, 1, 0, 0, 1,
				1, 0, 0, 1, 0, 1,
				1, 0, 0, 0, 1, 1,
				1, 0, 0, 0, 1, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1
		}
};
const Character char0x4F = { // O
		.width = 6,
		.height = 10,
		.matrix = {
				0, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				0, 1, 1, 1, 1, 0,
		}
};
const Character char0x50 = { // P
		.width = 6,
		.height = 10,
		.matrix = {
				1, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0
		}
};
const Character char0x51 = { // Q
		.width = 6,
		.height = 10,
		.matrix = {
				0, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 1, 0, 1,
				1, 0, 0, 0, 1, 1,
				0, 1, 1, 1, 1, 0,
				0, 0, 0, 0, 1, 0,
				0, 0, 0, 0, 0, 1,
		}
};
const Character char0x52 = { // R
		.width = 6,
		.height = 10,
		.matrix = {
				1, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 1, 1, 1, 1, 0,
				1, 0, 0, 1, 0, 0,
				1, 0, 0, 0, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
		}
};
const Character char0x53 = { // S
		.width = 6,
		.height = 10,
		.matrix = {
				0, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 0,
				0, 1, 1, 0, 0, 0,
				0, 0, 0, 1, 1, 0,
				0, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				0, 1, 1, 1, 1, 0
		}
};
const Character char0x54 = { // T
		.width = 7,
		.height = 10,
		.matrix = {
				1, 1, 1, 1, 1, 1, 1,
				0, 0, 0, 1, 0, 0, 0,
				0, 0, 0, 1, 0, 0, 0,
				0, 0, 0, 1, 0, 0, 0,
				0, 0, 0, 1, 0, 0, 0,
				0, 0, 0, 1, 0, 0, 0,
				0, 0, 0, 1, 0, 0, 0,
				0, 0, 0, 1, 0, 0, 0,
				0, 0, 0, 1, 0, 0, 0,
				0, 0, 0, 1, 0, 0, 0
		}
};
const Character char0x55 = { // U
		.width = 6,
		.height = 10,
		.matrix = {
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				0, 1, 1, 1, 1, 0
		}
};
const Character char0x56 = { // V
		.width = 6,
		.height = 10,
		.matrix = {
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				0, 1, 0, 0, 1, 0,
				0, 1, 0, 0, 1, 0,
				0, 1, 0, 0, 1, 0,
				0, 0, 1, 1, 0, 0,
				0, 0, 1, 1, 0, 0,
				0, 0, 1, 1, 0, 0,
		}
};
const Character char0x57 = { // W
		.width = 5,
		.height = 10,
		.matrix = {
				1, 0, 0, 0, 1,
				1, 0, 0, 0, 1,
				1, 0, 0, 0, 1,
				1, 0, 0, 0, 1,
				1, 0, 0, 0, 1,
				1, 0, 0, 0, 1,
				1, 0, 1, 0, 1,
				1, 0, 1, 0, 1,
				1, 0, 1, 0, 1,
				0, 1, 0, 1, 0
		}
};
const Character char0x58 = { // X
		.width = 6,
		.height = 10,
		.matrix = {
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				0, 1, 0, 0, 1, 0,
				0, 1, 0, 0, 1, 0,
				0, 0, 1, 1, 0, 0,
				0, 0, 1, 1, 0, 0,
				0, 1, 0, 0, 1, 0,
				0, 1, 0, 0, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1
		}
};
const Character char0x59 = { // Y
		.width = 5,
		.height = 10,
		.matrix = {
				1, 0, 0, 0, 1,
				1, 0, 0, 0, 1,
				1, 0, 0, 0, 1,
				0, 1, 0, 1, 0,
				0, 1, 0, 1, 0,
				0, 0, 1, 0, 0,
				0, 0, 1, 0, 0,
				0, 0, 1, 0, 0,
				0, 0, 1, 0, 0,
				0, 0, 1, 0, 0,
		}
};
const Character char0x5A = { // Z
		.width = 6,
		.height = 10,
		.matrix = {
				1, 1, 1, 1, 1, 1,
				0, 0, 0, 0, 0, 1,
				0, 0, 0, 0, 1, 0,
				0, 0, 0, 1, 0, 0,
				0, 0, 0, 1, 0, 0,
				0, 0, 1, 0, 0, 0,
				0, 1, 0, 0, 0, 0,
				0, 1, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 1, 1, 1, 1, 1
		}
};
const Character char0xB0 = { // Degree Sign
		.width = 4,
		.height = 10,
		.matrix = {
				0, 1, 1, 0,
				1, 0, 0, 1,
				1, 0, 0, 1,
				0, 1, 1, 0,
				0, 0, 0, 0,
				0, 0, 0, 0,
				0, 0, 0, 0,
				0, 0, 0, 0,
				0, 0, 0, 0,
				0, 0, 0, 0,
		}
};
const Character char0xC0 = { // À
		.width = 6,
		.height = 10,
		.matrix = {
				0, 0, 1, 0, 0, 0,
				0, 0, 0, 1, 0, 0,
				0, 0, 0, 0, 0, 0,
				0, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 1, 1, 1, 1, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
		}
};
const Character char0xC1 = { // Á
		.width = 6,
		.height = 10,
		.matrix = {
				0, 0, 0, 1, 0, 0,
				0, 0, 1, 0, 0, 0,
				0, 0, 0, 0, 0, 0,
				0, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 1, 1, 1, 1, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
		}
};
const Character char0xC4 = { // Ä
		.width = 6,
		.height = 10,
		.matrix = {
				0, 1, 0, 0, 1, 0,
				0, 0, 0, 0, 0, 0,
				0, 0, 1, 1, 0, 0,
				0, 1, 0, 0, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 1, 1, 1, 1, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
		}
};
const Character char0xC8 = { // È
		.width = 6,
		.height = 10,
		.matrix = {
				0, 0, 1, 0, 0, 0,
				0, 0, 0, 1, 0, 0,
				0, 0, 0, 0, 0, 0,
				1, 1, 1, 1, 1, 1,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 1, 1, 1, 1, 1,
		}
};
const Character char0xC9 = { // É
		.width = 6,
		.height = 10,
		.matrix = {
				0, 0, 0, 1, 0, 0,
				0, 0, 1, 0, 0, 0,
				0, 0, 0, 0, 0, 0,
				1, 1, 1, 1, 1, 1,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 0,
				1, 1, 1, 1, 1, 1,
		}
};
const Character char0xD6 = { // Ö
		.width = 6,
		.height = 10,
		.matrix = {
				0, 1, 0, 0, 1, 0,
				0, 0, 0, 0, 0, 0,
				0, 1, 1, 1, 1, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				0, 1, 1, 1, 1, 0,
		}
};
const Character char0xDC = { // Ü
		.width = 6,
		.height = 10,
		.matrix = {
				0, 1, 0, 0, 1, 0,
				0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				1, 0, 0, 0, 0, 1,
				0, 1, 1, 1, 1, 0,
		}
};
const Character char0xDF = { // ß
		.width = 6,
		.height = 10,
		.matrix = {
				0, 0, 1, 1, 0, 0,
				0, 1, 0, 0, 1, 0,
				0, 1, 0, 0, 1, 0,
				0, 1, 0, 0, 1, 0,
				0, 1, 1, 1, 0, 0,
				0, 1, 0, 0, 1, 0,
				0, 1, 0, 0, 0, 1,
				0, 1, 0, 0, 0, 1,
				0, 1, 0, 0, 0, 1,
				1, 1, 1, 1, 1, 0,
		}
};
const Character letterHeart = { // heart
		.width = 11,
		.height = 10,
		.matrix = {
				0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0,
				0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0,
				1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
				1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
				1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
				0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,
				0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0,
				0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0,
				0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0
		}
};

// Get a pointer to the Character struct for a given char.
const Character* getCharacter(const uint8_t character) {
	switch (character) {
		case ' ':
			return &char0x20;
		case '&':
			return &char0x26;
		case ',':
			return &char0x2C;
		case '-':
			return &char0x2D;
		case '.':
			return &char0x2E;
		case '0':
			return &char0x30;
		case '1':
			return &char0x31;
		case '2':
			return &char0x32;
		case '3':
			return &char0x33;
		case '4':
			return &char0x34;
		case '5':
			return &char0x35;
		case '6':
			return &char0x36;
		case '7':
			return &char0x37;
		case '8':
			return &char0x38;
		case '9':
			return &char0x39;
		case ':':
			return &char0x3A;
		case 'a':
		case 'A':
			return &char0x41;
		case 'b':
		case 'B':
			return &char0x42;
		case 'c':
		case 'C':
			return &char0x43;
		case 'd':
		case 'D':
			return &char0x44;
		case 'e':
		case 'E':
			return &char0x45;
		case 'f':
		case 'F':
			return &char0x46;
		case 'g':
		case 'G':
			return &char0x47;
		case 'h':
		case 'H':
			return &char0x48;
		case 'i':
		case 'I':
			return &char0x49;
		case 'j':
		case 'J':
			return &char0x4A;
		case 'k':
		case 'K':
			return &char0x4B;
		case 'l':
		case 'L':
			return &char0x4C;
		case 'm':
		case 'M':
			return &char0x4D;
		case 'n':
		case 'N':
			return &char0x4E;
		case 'o':
		case 'O':
			return &char0x4F;
		case 'p':
		case 'P':
			return &char0x50;
		case 'q':
		case 'Q':
			return &char0x51;
		case 'r':
		case 'R':
			return &char0x52;
		case 's':
		case 'S':
			return &char0x53;
		case 't':
		case 'T':
			return &char0x54;
		case 'u':
		case 'U':
			return &char0x55;
		case 'v':
		case 'V':
			return &char0x56;
		case 'w':
		case 'W':
			return &char0x57;
		case 'x':
		case 'X':
			return &char0x58;
		case 'y':
		case 'Y':
			return &char0x59;
		case 'z':
		case 'Z':
			return &char0x5A;
		case 0xB0: // °
			return &char0xB0;
		case 0xE0: // à
		case 0xC0: // À
			return &char0xC0;
		case 0xE1: // á
		case 0xC1: // Á
			return &char0xC1;
		case 0xE4: // ä
		case 0xC4: // Ä
			return &char0xC4;
		case 0xE8: // è
		case 0xC8: // È
			return &char0xC8;
		case 0xE9: // é
		case 0xC9: // É
			return &char0xC9;
		case 0xF6: // ö
		case 0xD6: // Ö
			return &char0xD6;
		case 0xFC: // ü
		case 0xDC: // Ü
			return &char0xDC;
		case 0xDF: // ß
			return &char0xDF;
		default:
			return &char0x3F; // ?
	}
}
