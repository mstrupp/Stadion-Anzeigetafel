/*
 * font.h
 *
 *  Created on: 30.09.2021
 *      Author: michaelstrupp
 */

#ifndef INC_FONT_H_
#define INC_FONT_H_

typedef struct {
	const uint8_t width;
	const uint8_t height;
	const uint8_t matrix[];
} Character;

Character letterA = {
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

#endif /* INC_FONT_H_ */
