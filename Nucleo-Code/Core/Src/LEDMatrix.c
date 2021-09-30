/*
 * LEDMatrix.c
 *
 *  Created on: Sep 23, 2021
 *      Author: michaelstrupp
 */

#include <string.h>

#include "LEDMatrix.h"

#include "font.h"

void LEDMatrixInit(LEDMatrix* ledMatrix, uint32_t numLEDs, uint8_t numCols, LED* leds, TIM_HandleTypeDef* htim, uint32_t timerChannel) {
	ledMatrix->numLEDs = numLEDs;
	ledMatrix->numCols = numCols;
	ledMatrix->leds = leds;

	ledMatrix->htim = htim;
	ledMatrix->timerChannel = timerChannel;

	for (uint32_t k = 0; k < ledMatrix->numLEDs; k++) {
		LEDInit(&ledMatrix->leds[k]);
	}

	ledMatrix->cursorPos = 0;

	ledMatrix->nextLED = 0;
}

// Shuts all leds off
void LEDMatrixClear(LEDMatrix* ledMatrix) {
	for (int k = 0; k < ledMatrix->numLEDs; ++k) {
		ledMatrix->leds[k].color = off;
	}
	ledMatrix->cursorPos = 0;
}

// Sets a test letter at the current cursor position
void LEDMatrixSet(LEDMatrix* ledMatrix) {
	enum ledColor color = amber;

	for (int line = 0; line < letterA.height; ++line) {
		for (int col = 0; col < letterA.width; ++col) {
			if (line % 2 == 0) {
				// Even line
				ledMatrix->leds[line * ledMatrix->numCols + col + ledMatrix->cursorPos].color =
						letterA.matrix[line * letterA.width + col] ? color : off;
			} else {
				// Uneven line
				ledMatrix->leds[line * ledMatrix->numCols + (ledMatrix->numCols - 1 - col) - ledMatrix->cursorPos].color =
						letterA.matrix[line * letterA.width + col] ? color : off;
			}
		}
	}
	ledMatrix->cursorPos += letterA.width + 1;
}

void LEDMatrixShow(LEDMatrix* ledMatrix) {
	// Fill the buffer with LED 0 and 1
	const uint32_t* dutyCycles = LEDgetDutyCycles(&ledMatrix->leds[0]);
	memcpy(&ledMatrix->pwmBuffer[0], dutyCycles, 96);
	dutyCycles = LEDgetDutyCycles(&ledMatrix->leds[1]);
	memcpy(&ledMatrix->pwmBuffer[24], dutyCycles, 96);

	ledMatrix->nextLED = 2;

	// Start sending the PWM pulses
	HAL_TIM_PWM_Start_DMA(ledMatrix->htim, ledMatrix->timerChannel, ledMatrix->pwmBuffer, 48);
}

void LEDMatrixBufferHalfSentCallback(LEDMatrix* ledMatrix) {
	// Fill the first half of the buffer with the next duty cycles
	if(ledMatrix->nextLED < ledMatrix->numLEDs) {
		const uint32_t* dutyCycles = LEDgetDutyCycles(&ledMatrix->leds[ledMatrix->nextLED]);
		memcpy(&ledMatrix->pwmBuffer[0], dutyCycles, 96);
	} else {
		// All color LEDs are sent. Set reset pulse (low signal).
		memset(&ledMatrix->pwmBuffer[0], 0, 96);
		if(ledMatrix->nextLED == ledMatrix->numLEDs + 2) {
			// Reset signal sent. Disable PWM generation.
			HAL_TIM_PWM_Stop_DMA(ledMatrix->htim, ledMatrix->timerChannel);
		}
	}
	ledMatrix->nextLED += 1;
}

void LEDMatrixBufferSentCallback(LEDMatrix* ledMatrix) {
	if(ledMatrix->nextLED < ledMatrix->numLEDs) {
		const uint32_t* dutyCycles = LEDgetDutyCycles(&ledMatrix->leds[ledMatrix->nextLED]);
		memcpy(&ledMatrix->pwmBuffer[24], dutyCycles, 96);
	} else {
		memset(&ledMatrix->pwmBuffer[24], 0, 96);
		if(ledMatrix->nextLED == ledMatrix->numLEDs + 2) {
			HAL_TIM_PWM_Stop_DMA(ledMatrix->htim, ledMatrix->timerChannel);
		}
	}
	ledMatrix->nextLED += 1;
}
