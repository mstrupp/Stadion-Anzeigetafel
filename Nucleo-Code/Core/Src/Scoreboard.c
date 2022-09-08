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

void ScoreboardInit(Scoreboard* scoreboard, LEDMatrix* ledMatrix, RS485Receiver* receiver, SwipeClearAnimation* swipeClearAnimation, ScrollAnimation* scrollAnimation) {
	scoreboard->ledMatrix = ledMatrix;
	scoreboard->receiver = receiver;
	scoreboard->swipeClearAnimation = swipeClearAnimation;
}

void ScoreboardStart(Scoreboard* scoreboard) {
	RS485ReceiverStart(scoreboard->receiver);

	LEDMatrixClear(scoreboard->ledMatrix);
	LEDMatrixSetAlignment(scoreboard->ledMatrix, 'c');
	LEDMatrixAddText(scoreboard->ledMatrix, "Willkommen", amber);
	LEDMatrixShow(scoreboard->ledMatrix);
}

// Main function that receives inputs and controls the LED matrix.
// Needs to be called when a new command is received via RS485.
// Call in HAL_UART_RxCpltCallback.
void ScoreboardMain(Scoreboard* scoreboard) {
	static int clearCount = 0;
	static Color color = amber;
	RS485ReceiverCallback(scoreboard->receiver);
	if (scoreboard->receiver->messageComplete) {
		Message message;
		MessageInit(&message);
		geminiGenerateMessage(scoreboard->receiver->message, &message);
		if (message.clear) {
			LEDMatrixClear(scoreboard->ledMatrix);
			if (clearCount == 2) {
				LEDMatrixSetAlignment(scoreboard->ledMatrix, 'c');
				LEDMatrixAddText(scoreboard->ledMatrix, "WHS 2022", color);
			} else if (clearCount == 4) {
				LEDMatrixSetAlignment(scoreboard->ledMatrix, 'c');
				LEDMatrixAddText(scoreboard->ledMatrix, "Powered by", color);
			} else if (clearCount == 5) {
				LEDMatrixSetAlignment(scoreboard->ledMatrix, 'c');
				LEDMatrixAddText(scoreboard->ledMatrix, "Michael", color);
			} else if (clearCount == 7) {
				LEDMatrixSetAlignment(scoreboard->ledMatrix, 'c');
				LEDMatrixAddText(scoreboard->ledMatrix, "Sponsor:", color);
			} else if (clearCount == 8) {
				LEDMatrixSetAlignment(scoreboard->ledMatrix, 'c');
				LEDMatrixAddText(scoreboard->ledMatrix, "Mama & Papa", color);
			} else if (clearCount == 10) {
				color = amber25;
				LEDMatrixAddText(scoreboard->ledMatrix, "Bright 1", color);
			} else if (clearCount == 12) {
				color = amber50;
				LEDMatrixAddText(scoreboard->ledMatrix, "Bright 2", color);
			} else if (clearCount == 14) {
				color = amber75;
				LEDMatrixAddText(scoreboard->ledMatrix, "Bright 3", color);
			} else if (clearCount == 16) {
				color = amber;
				LEDMatrixAddText(scoreboard->ledMatrix, "Bright 4", color);
			}
			LEDMatrixShow(scoreboard->ledMatrix);
			clearCount += 1;
		} else {
			clearCount = 0;
		}
		if (message.timeIsValid) {
			LEDMatrixClear(scoreboard->ledMatrix);
			if (message.time[0] != ' ') { // Day time
				LEDMatrixSetAlignment(scoreboard->ledMatrix, 'c');
				LEDMatrixAddText(scoreboard->ledMatrix, "WHS 2022", color);
			}
			LEDMatrixShow(scoreboard->ledMatrix);
		}
		if (message.nameIsValid) {
			LEDMatrixClear(scoreboard->ledMatrix);
			LEDMatrixAddText(scoreboard->ledMatrix, message.name, color);
			LEDMatrixShow(scoreboard->ledMatrix);
		}
	}
}
