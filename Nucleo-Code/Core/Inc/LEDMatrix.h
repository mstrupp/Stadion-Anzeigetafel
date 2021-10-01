/*
 * LEDMatrix.h
 *
 *  Created on: Sep 23, 2021
 *      Author: michaelstrupp
 */

#ifndef INC_LEDMATRIX_H_
#define INC_LEDMATRIX_H_

#include "stm32g0xx_hal.h"

#include "font.h"
#include "LED.h"

typedef struct {
	uint32_t numLEDs;
	uint8_t numCols;
	LED* leds;

	TIM_HandleTypeDef* htim;
	uint32_t timerChannel;

	// Intern variables
	uint8_t cursorPos;
	// DMA
	uint32_t pwmBuffer[48];
	uint32_t nextLED;
} LEDMatrix;

void LEDMatrixInit(LEDMatrix* ledMatrix, uint32_t numLEDs, uint8_t numCols, LED* leds, TIM_HandleTypeDef* htim, uint32_t timerChannel);

// Matrix Manipulation
// Shuts all leds off
void LEDMatrixClear(LEDMatrix* ledMatrix);
// Adds a string to the end of the matrix in the given color
void LEDMatrixAddText(LEDMatrix* ledMatrix, char text[], Color color);

// Send the bit signals for the current LED configuration.
void LEDMatrixShow(LEDMatrix* ledMatrix);

// DMA Callback functions
// Fill the buffer with the next duty cycle values depending on the LED colors.
// The functions need to be called when the buffer is half/completely transferred.
// Call LEDMatrixBufferHalfSentCallback in HAL_TIM_PWM_PulseFinishedHalfCpltCallback.
// Call LEDMatrixBufferSentCallback in HAL_TIM_PWM_PulseFinishedCallback.

void LEDMatrixBufferHalfSentCallback(LEDMatrix* ledMatrix);
void LEDMatrixBufferSentCallback(LEDMatrix* ledMatrix);

#endif /* INC_LEDMATRIX_H_ */
