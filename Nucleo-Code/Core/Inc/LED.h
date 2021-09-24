/*
 * LED.h
 *
 *  Created on: Sep 23, 2021
 *      Author: michaelstrupp
 */

#ifndef INC_LED_H_
#define INC_LED_H_

#include <stdint.h>

enum ledColor {off, red, green, blue};

typedef struct {
	enum ledColor color;
} LED;

void LEDInit(LED* led);

const uint32_t* LEDgetDutyCycles(LED* led);

#endif /* INC_LED_H_ */
