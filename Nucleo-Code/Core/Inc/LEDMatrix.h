/*
 * LEDMatrix.h
 *
 *  Created on: Sep 23, 2021
 *      Author: michaelstrupp
 */

#ifndef INC_LEDMATRIX_H_
#define INC_LEDMATRIX_H_

#include "stm32g0xx_hal.h"

#include "LED.h"

typedef struct {
	uint8_t numLEDs;
	LED* leds;

	TIM_HandleTypeDef* htim;
	uint32_t timerChannel;

	// Intern variables
	uint32_t pwmBuffer[48];
	uint8_t currentLED;
} LEDMatrix;

void LEDMatrixInit(LEDMatrix* ledMatrix, uint8_t numLEDs, LED* leds, TIM_HandleTypeDef* htim, uint32_t timerChannel);

void LEDMatrixShow(LEDMatrix* ledMatrix);

void LEDMatrixBufferHalfSentCallback(LEDMatrix* ledMatrix);
void LEDMatrixBufferSentCallback(LEDMatrix* ledMatrix);

#endif /* INC_LEDMATRIX_H_ */
