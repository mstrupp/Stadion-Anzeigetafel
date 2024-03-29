/*
 * ScrollAnimation.c
 *
 *  Created on: Sep 8, 2022
 *      Author: michaelstrupp
 */

#include <stdio.h>

#include "animations/ScrollAnimation.h"

void ScrollAnimationInit(ScrollAnimation* self, LEDMatrix* ledMatrix, TIM_HandleTypeDef* htim, int scrollDuration) {
	self->scrollDuration = scrollDuration;
	self->isPlaying = 0;
	self->currentFrame = 0;
	self->totalFrames = 0;
	self->ledMatrix = ledMatrix;
	self->htim = htim;
}

void ScrollAnimationStart(ScrollAnimation* self, char* text, Color color) {
	self->isPlaying = 1;
	sprintf(self->displayText, "%s        %s", text, text);
	self->color = color;
	self->currentFrame = 0;
	self->totalFrames = pixelWidth(self->displayText) - pixelWidth(text) + 1;

	__HAL_TIM_SET_COUNTER(self->htim, 0);
	__HAL_TIM_CLEAR_IT(self->htim, TIM_IT_UPDATE);
	HAL_TIM_Base_Start_IT(self->htim);
	ScrollAnimationCallback(self);
}

void ScrollAnimationStop(ScrollAnimation* self) {
	HAL_TIM_Base_Stop_IT(self->htim);
	self->isPlaying = 0;
}

void ScrollAnimationCallback(ScrollAnimation* self) {
	if (self->isPlaying == 1) {
		if (self->currentFrame == 0) {
			__HAL_TIM_SET_AUTORELOAD(self->htim, 3000);
		} else if (self->currentFrame == 1) {
			__HAL_TIM_SET_AUTORELOAD(self->htim, self->scrollDuration);
		}
		int cursorPosition = -self->currentFrame;
		LEDMatrixClear(self->ledMatrix);
		LEDMatrixSetAlignment(self->ledMatrix, 'a');
		LEDMatrixSetCursorPosition(self->ledMatrix, cursorPosition);
		LEDMatrixAddText(self->ledMatrix, self->displayText, self->color);
		LEDMatrixShow(self->ledMatrix);
		self->currentFrame += 1;
		if (self->currentFrame == self->totalFrames) {
			self->currentFrame = 0;
		}
	}
}
