/*
 * Scoreboard.h
 *
 *  Created on: 07.10.2021
 *      Author: michaelstrupp
 */

#ifndef INC_SCOREBOARD_H_
#define INC_SCOREBOARD_H_

#include "stm32g0xx_hal.h"

#include "animations/ScrollAnimation.h"
#include "animations/SwipeClearAnimation.h"
#include "LED.h"
#include "LEDMatrix.h"
#include "RS485Receiver.h"
#include "TemperatureSensor.h"

typedef struct {
	// LED matrix
	LEDMatrix* ledMatrix;

	// animations
	ScrollAnimation* scrollAnimation;
	SwipeClearAnimation* swipeClearAnimation;

	// Receiver
	RS485Receiver* receiver;

	// Temperature Sensor
	TemperatureSensor* temperatureSensor;
} Scoreboard;

void ScoreboardInit(Scoreboard* scoreboard, LEDMatrix* ledMatrix, RS485Receiver* receiver, SwipeClearAnimation* swipeClearAnimation, ScrollAnimation* scrollAnimation, TemperatureSensor* temperatureSensor);

void ScoreboardStart(Scoreboard* scoreboard);

// Main function that receives inputs and controls the LED matrix.
// Needs to be called when a new command is received via RS485.
// Call in HAL_UART_RxCpltCallback.
void ScoreboardMain(Scoreboard* scoreboard);

#endif /* INC_SCOREBOARD_H_ */
