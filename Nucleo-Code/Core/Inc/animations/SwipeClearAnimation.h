/*
 * SwipeClearAnimation.h
 *
 *  Created on: 01.10.2021
 *      Author: michaelstrupp
 */

#ifndef INC_ANIMATIONS_SWIPECLEARANIMATION_H_
#define INC_ANIMATIONS_SWIPECLEARANIMATION_H_

#include "LEDMatrix.h"

typedef struct {
	uint32_t duration;
	Color color;

	// Intern variables
	uint8_t isPlaying;
	uint32_t frame;
	uint32_t frames;

	LEDMatrix* ledMatrix;
	TIM_HandleTypeDef* htim;
} SwipeClearAnimation;

void SwipeClearAnimationInit(SwipeClearAnimation* animation, LEDMatrix* ledMatrix, TIM_HandleTypeDef* htim, uint32_t duration, Color color);

// Start the animation
void SwipeClearAnimationStart(SwipeClearAnimation* animation);

// Timer Callback function
// Display the next animation frame
// The function needs to be called when the timer overflows.
// Call in HAL_TIM_PeriodElapsedCallback.
void SwipeClearAnimationCallback(SwipeClearAnimation* animation);

#endif /* INC_ANIMATIONS_SWIPECLEARANIMATION_H_ */
