/*
 * LED.h
 *
 *  Created on: Sep 23, 2021
 *      Author: michaelstrupp
 */

#ifndef INC_LED_H_
#define INC_LED_H_

#include <stdint.h>

typedef enum color {off, red, green, blue, amber, amber75, amber50, amber25, white, debug} Color;

typedef struct {
	Color color;
} LED;

void LEDInit(LED* led);

const uint32_t* LEDgetDutyCycles(LED* led);

#endif /* INC_LED_H_ */
