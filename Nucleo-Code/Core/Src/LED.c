/*
 * LED.c
 *
 *  Created on: Sep 23, 2021
 *      Author: michaelstrupp
 */

#include "LED.h"

// Duty cycle codes
static const uint32_t ledCodeOff[24] =		{25, 25, 25, 25, 25, 25, 25, 25,
										 	 25, 25, 25, 25, 25, 25, 25, 25,
										 	 25, 25, 25, 25, 25, 25, 25, 25};
static const uint32_t ledCodeGreen[24] =	{50, 50, 50, 50, 50, 50, 50, 50,
											 25, 25, 25, 25, 25, 25, 25, 25,
											 25, 25, 25, 25, 25, 25, 25, 25};
static const uint32_t ledCodeRed[24] = 		{25, 25, 25, 25, 25, 25, 25, 25,
											 50, 50, 50, 50, 50, 50, 50, 50,
											 25, 25, 25, 25, 25, 25, 25, 25};
static const uint32_t ledCodeBlue[24] = 	{25, 25, 25, 25, 25, 25, 25, 25,
											 25, 25, 25, 25, 25, 25, 25, 25,
											 50, 50, 50, 50, 50, 50, 50, 50};

void LEDInit(LED* led) {
	led->color = off;
}

const uint32_t* LEDgetDutyCycles(LED* led) {
	switch (led->color) {
		case off:
			return ledCodeOff;
		case red:
			return ledCodeRed;
		case green:
			return ledCodeGreen;
		case blue:
			return ledCodeBlue;
		default:
			return ledCodeOff;
	}
}
