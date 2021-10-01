/*
 * font.c
 *
 *  Created on: 01.10.2021
 *      Author: michaelstrupp
 */

#include "font.h"

const Character letterA = {
		.width = 2,
		.height = 7,
		.matrix = {
				0, 0,
				0, 1,
				1, 0,
				0, 1,
				0, 0,
				1, 1,
				1, 0
		}
};

// Get a pointer to the Character struct for a given char.
const Character* getCharacter(const char character) {
	switch (character) {
		case 'A':
			return &letterA;
		default:
			return &letterA;
	}
}
