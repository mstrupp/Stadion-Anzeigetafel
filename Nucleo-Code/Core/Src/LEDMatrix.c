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

	ledMatrix->currentLED = 0;
}

void LEDMatrixShow(LEDMatrix* ledMatrix) {
	ledMatrix->currentLED = 0;

	// Fill the buffer with LED 0 and 1
	const uint32_t* dutyCycles = LEDgetDutyCycles(&ledMatrix->leds[0]);
	memcpy(&ledMatrix->pwmBuffer[0], dutyCycles, 96);
	dutyCycles = LEDgetDutyCycles(&ledMatrix->leds[1]);
	memcpy(&ledMatrix->pwmBuffer[24], dutyCycles, 96);

	HAL_TIM_PWM_Start_DMA(ledMatrix->htim, ledMatrix->timerChannel, ledMatrix->pwmBuffer, 48);
}

void LEDMatrixBufferHalfSentCallback(LEDMatrix* ledMatrix) {

}

void LEDMatrixBufferSentCallback(LEDMatrix* ledMatrix) {

}
