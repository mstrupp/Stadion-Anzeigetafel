/*
 * LEDMatrix.c
 *
 *  Created on: Sep 23, 2021
 *      Author: michaelstrupp
 */

#include <string.h>

#include "LEDMatrix.h"

void LEDMatrixInit(LEDMatrix* ledMatrix, uint8_t numLEDs, LED* leds, TIM_HandleTypeDef* htim, uint32_t timerChannel) {
	ledMatrix->numLEDs = numLEDs;
	ledMatrix->leds = leds;

	ledMatrix->htim = htim;
	ledMatrix->timerChannel = timerChannel;

	for (uint8_t k = 0; k < ledMatrix->numLEDs; k++) {
		ledMatrix->leds[k].color = off;
	}

	ledMatrix->nextLED = 0;
}

void LEDMatrixShow(LEDMatrix* ledMatrix) {
	// Fill the buffer with LED 0 and 1
	const uint32_t* dutyCycles = LEDgetDutyCycles(&ledMatrix->leds[0]);
	memcpy(&ledMatrix->pwmBuffer[0], dutyCycles, 96);
	dutyCycles = LEDgetDutyCycles(&ledMatrix->leds[1]);
	memcpy(&ledMatrix->pwmBuffer[24], dutyCycles, 96);

	ledMatrix->nextLED = 2;

	HAL_TIM_PWM_Start_DMA(ledMatrix->htim, ledMatrix->timerChannel, ledMatrix->pwmBuffer, 48);
}

void LEDMatrixBufferHalfSentCallback(LEDMatrix* ledMatrix) {
	// Fill the first half of the buffer with the next duty cycles
	if(ledMatrix->nextLED < ledMatrix->numLEDs) {
		const uint32_t* dutyCycles = LEDgetDutyCycles(&ledMatrix->leds[ledMatrix->nextLED]);
		memcpy(&ledMatrix->pwmBuffer[0], dutyCycles, 96);
	} else {
		memset(&ledMatrix->pwmBuffer[0], 0, 96);
		if(ledMatrix->nextLED == ledMatrix->numLEDs + 2) {
			HAL_TIM_PWM_Stop_DMA(ledMatrix->htim, ledMatrix->timerChannel);
		}
	}
	ledMatrix->nextLED += 1;
}

void LEDMatrixBufferSentCallback(LEDMatrix* ledMatrix) {
	// Fill the second half of the buffer with the next duty cycles
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
