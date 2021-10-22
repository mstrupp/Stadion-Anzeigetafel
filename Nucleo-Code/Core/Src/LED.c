/*
 * LED.c
 *
 *  Created on: Sep 23, 2021
 *      Author: michaelstrupp
 */

#include "LED.h"

// Duty cycle definitions for sending a 0/1 Bit
// a = 0: 0% duty cycle, a = 79: 100% duty cycle
// WS2811:  a0 = 15, a1 = 37
// WS2812B: a0 = 25, a1 = 50
static const uint32_t a0 = 25;
static const uint32_t a1 = 50;

// Duty cycle codes
static const uint32_t ledCodeOff[24] =		{a0, a0, a0, a0, a0, a0, a0, a0,
										 	 a0, a0, a0, a0, a0, a0, a0, a0,
										 	 a0, a0, a0, a0, a0, a0, a0, a0};
static const uint32_t ledCodeGreen[24] =	{a1, a1, a1, a1, a1, a1, a1, a1,
											 a0, a0, a0, a0, a0, a0, a0, a0,
											 a0, a0, a0, a0, a0, a0, a0, a0};
static const uint32_t ledCodeRed[24] = 		{a0, a0, a0, a0, a0, a0, a0, a0,
											 a1, a1, a1, a1, a1, a1, a1, a1,
											 a0, a0, a0, a0, a0, a0, a0, a0};
static const uint32_t ledCodeBlue[24] = 	{a0, a0, a0, a0, a0, a0, a0, a0,
											 a0, a0, a0, a0, a0, a0, a0, a0,
											 a1, a1, a1, a1, a1, a1, a1, a1};
static const uint32_t ledCodeAmber[24] = 	{a0, a1, a0, a1, a1, a0, a0, a0,
											 a1, a1, a1, a1, a1, a1, a1, a1,
											 a0, a0, a0, a0, a0, a0, a0, a0};
static const uint32_t ledCodeWhite[24] = 	{a1, a1, a1, a1, a1, a1, a1, a1,
											 a1, a1, a1, a1, a1, a1, a1, a1,
											 a1, a1, a1, a1, a1, a1, a1, a1};
static const uint32_t ledCodeDebug[24] = 	{a0, a0, a0, a0, a0, a1, a0, a0,
											 a0, a0, a0, a0, a0, a0, a0, a0,
											 a0, a0, a0, a0, a0, a0, a0, a0};

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
		case amber:
			return ledCodeAmber;
		case white:
			return ledCodeWhite;
		case debug:
			return ledCodeDebug;
		default:
			return ledCodeOff;
	}
}
