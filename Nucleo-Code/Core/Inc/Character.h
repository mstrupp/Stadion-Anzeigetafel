/*
 * Character.h
 *
 *  Created on: Oct 1, 2021
 *      Author: michaelstrupp
 */

#ifndef INC_CHARACTER_H_
#define INC_CHARACTER_H_

#include <stdint.h>

typedef struct {
	const uint8_t width;
	const uint8_t height;
	const uint8_t matrix[];
} Character;

#endif /* INC_CHARACTER_H_ */
