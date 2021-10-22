/*
 * SwipeClearAnimation.c
 *
 *  Created on: 01.10.2021
 *      Author: michaelstrupp
 */

#include "animations/SwipeClearAnimation.h"

#include "Character.h"

const Character swipe = {
		.width = 3,
		.height = 10,
		.matrix = {
				0, 1, 1,
				0, 1, 1,
				0, 1, 1,
				0, 1, 1,
				0, 1, 1,
				0, 1, 1,
				0, 1, 1,
				0, 1, 1,
				0, 1, 1,
				0, 1, 1,
		}
};

void SwipeClearAnimationInit(SwipeClearAnimation* animation, LEDMatrix* ledMatrix, TIM_HandleTypeDef* htim, uint32_t duration, Color color) {
	animation->duration = duration;
	animation->color = color;

	animation->isPlaying = 0;
	animation->frame = 0;
	animation->frames = ledMatrix->numCols + 2 * swipe.width;

	animation->ledMatrix = ledMatrix;
	animation->htim = htim;
}

// Start the animation
void SwipeClearAnimationStart(SwipeClearAnimation* animation) {
	animation->isPlaying = 1;
	animation->frame = 0;

	animation->ledMatrix->cursorPos = -swipe.width;

	uint32_t frameDuration = animation->duration / animation->frames;
	__HAL_TIM_SET_AUTORELOAD(animation->htim, frameDuration);
	HAL_TIM_Base_Start_IT(animation->htim);
}

// Timer Callback function
// Display the next animation frame
// The function needs to be called when the timer overflows.
// Call in HAL_TIM_PeriodElapsedCallback.
void SwipeClearAnimationCallback(SwipeClearAnimation* animation) {
	if (animation->isPlaying) {
		animation->frame += 1;
		// Animation is still playing, send the next frame
		if (animation->frame < animation->frames) {
			animation->ledMatrix->cursorPos += 1;
			LEDMatrixSetCharacter(animation->ledMatrix, &swipe, animation->color);
			LEDMatrixShow(animation->ledMatrix);
		// Animation is over, stop the timer
		} else {
			HAL_TIM_Base_Stop_IT(animation->htim);
			LEDMatrixClear(animation->ledMatrix);
			LEDMatrixShow(animation->ledMatrix);
			animation->isPlaying = 0;
		}
	}
}
