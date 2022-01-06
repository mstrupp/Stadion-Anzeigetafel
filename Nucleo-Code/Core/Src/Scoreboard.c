/*
 * Scoreboard.c
 *
 *  Created on: 07.10.2021
 *      Author: michaelstrupp
 */

#include "Scoreboard.h"

#include "stm32g0xx_hal.h"

#include "Message.h"
#include "protocols/gemini.h"

void ScoreboardInit(Scoreboard* scoreboard, LEDMatrix* ledMatrix, RS485Receiver* receiver, SwipeClearAnimation* swipeClearAnimation) {
	scoreboard->ledMatrix = ledMatrix;
	scoreboard->receiver = receiver;
	scoreboard->swipeClearAnimation = swipeClearAnimation;
}

void ScoreboardStart(Scoreboard* scoreboard) {
	RS485ReceiverStart(scoreboard->receiver);

	LEDMatrixClear(scoreboard->ledMatrix);
	LEDMatrixShow(scoreboard->ledMatrix);
}

// Main function that receives inputs and controls the LED matrix.
// Needs to be called when a new command is received via RS485.
// Call in HAL_UART_RxCpltCallback.
void ScoreboardMain(Scoreboard* scoreboard) {
	RS485ReceiverCallback(scoreboard->receiver);
	if (scoreboard->receiver->messageComplete) {
		Message message;
		MessageInit(&message);
		geminiGenerateMessage(scoreboard->receiver->message, &message);
		if (message.clear) {
			LEDMatrixClear(scoreboard->ledMatrix);
			LEDMatrixShow(scoreboard->ledMatrix);
		}
		if (message.timeIsValid) {
			LEDMatrixClear(scoreboard->ledMatrix);
			LEDMatrixSetAlignment(scoreboard->ledMatrix, 'c');
			LEDMatrixAddText(scoreboard->ledMatrix, message.time, amber);
			LEDMatrixShow(scoreboard->ledMatrix);
		}
		if (message.nameIsValid) {
			LEDMatrixClear(scoreboard->ledMatrix);
			LEDMatrixAddText(scoreboard->ledMatrix, message.name, debug);
			LEDMatrixShow(scoreboard->ledMatrix);
		}
	}
}
