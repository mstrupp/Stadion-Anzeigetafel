/*
 * ScrollAnimation.h
 *
 *  Created on: Sep 8, 2022
 *      Author: michaelstrupp
 */

#ifndef INC_ANIMATIONS_SCROLLANIMATION_H_
#define INC_ANIMATIONS_SCROLLANIMATION_H_

#include "stm32g0xx_hal.h"

#include "LEDMatrix.h"

typedef struct {
	char* text;
	Color color;
	int scrollDuration;

	// Intern variables
	char displayText[100];
	uint8_t isPlaying;
	int currentFrame;
	int totalFrames;

	LEDMatrix* ledMatrix;
	TIM_HandleTypeDef* htim;
} ScrollAnimation;

void ScrollAnimationInit(ScrollAnimation* self, LEDMatrix* ledMatrix, TIM_HandleTypeDef* htim, int scrollDuration);

void ScrollAnimationStart(ScrollAnimation *self, char* text, Color color);

void ScrollAnimationCallback(ScrollAnimation* self);

#endif /* INC_ANIMATIONS_SCROLLANIMATION_H_ */
