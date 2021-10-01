/*
 * font.h
 *
 *  Created on: 30.09.2021
 *      Author: michaelstrupp
 */

#ifndef INC_FONT_H_
#define INC_FONT_H_

#include <stdint.h>

typedef struct {
	const uint8_t width;
	const uint8_t height;
	const uint8_t matrix[];
} Character;

// Get a pointer to the Character struct for a given char.
const Character* getCharacter(const char character);

#endif /* INC_FONT_H_ */
