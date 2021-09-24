/*
 * LED.c
 *
 *  Created on: Sep 23, 2021
 *      Author: michaelstrupp
 */

#include "LED.h"

static const uint32_t ledCodeOff[24] =	{27, 27, 27, 27, 27, 27, 27, 27,
										 27, 27, 27, 27, 27, 27, 27, 27,
										 27, 27, 27, 27, 27, 27, 27, 27};
static const uint32_t ledCodeRed[24] =	{53, 53, 53, 53, 53, 53, 53, 53,
											27, 27, 27, 27, 27, 27, 27, 27,
											27, 27, 27, 27, 27, 27, 27, 27};
static const uint32_t ledCodeGreen[24] = {27, 27, 27, 27, 27, 27, 27, 27,
										53, 53, 53, 53, 53, 53, 53, 53,
										27, 27, 27, 27, 27, 27, 27, 27};
static const uint32_t ledCodeBlue[24] = {27, 27, 27, 27, 27, 27, 27, 27,
										27, 27, 27, 27, 27, 27, 27, 27,
										53, 53, 53, 53, 53, 53, 53, 53};


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
