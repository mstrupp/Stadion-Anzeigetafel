/*
 * LEDMatrix.c
 *
 *  Created on: Sep 23, 2021
 *      Author: michaelstrupp
 */

#include <string.h>

#include "LEDMatrix.h"

#include "fonts/font.h"

// Private functions

// The width of a given text in pixels
static int pixelWidth(char text[]) {
	int len = strlen(text);
	int width = 0;
	const Character* character;
	for (int k = 0; k < len; ++k) {
		character = getCharacter(text[k]);
		width += character->width;
	}
	width += (len - 1) * 2; // space between letters
	return width;
}

// Public functions

void LEDMatrixInit(LEDMatrix* ledMatrix, uint32_t numLEDs, uint8_t numCols, LED* leds, TIM_HandleTypeDef* htim, uint32_t timerChannel) {
	ledMatrix->numLEDs = numLEDs;
	ledMatrix->numCols = numCols;
	ledMatrix->leds = leds;

	ledMatrix->htim = htim;
	ledMatrix->timerChannel = timerChannel;

	for (uint32_t k = 0; k < ledMatrix->numLEDs; k++) {
		LEDInit(&ledMatrix->leds[k]);
	}

	ledMatrix->isSending = 0;

	ledMatrix->cursorPos = 0;
	ledMatrix->alignment = 'a';

	ledMatrix->nextLED = 0;
}

// Sets the alignment of the text on the matrix.
// Existing text will not be aligned.
// char alignment must be 'l' (left), 'c' (center), 'r' (right) or 'a' (append to the right of the current position)
void LEDMatrixSetAlignment(LEDMatrix* ledMatrix, char alignment) {
	if (alignment == 'l' || alignment == 'c' || alignment == 'r' || alignment == 'a') {
		ledMatrix->alignment = alignment;
	}
}

// Sets the cursor to the given position where 0 is the first column.
// Cursor position can be negative.
void LEDMatrixSetCursorPosition(LEDMatrix* ledMatrix, int position) {
	ledMatrix->cursorPos = position;
}

// Shuts all leds off
void LEDMatrixClear(LEDMatrix* ledMatrix) {
	for (int k = 0; k < ledMatrix->numLEDs; ++k) {
		ledMatrix->leds[k].color = off;
	}
	ledMatrix->cursorPos = 0;
	ledMatrix->alignment = 'a';
}

// Set a character at the current cursor position in the given color.
// The cursor will not move.
void LEDMatrixSetCharacter(LEDMatrix* ledMatrix, const Character* character, Color color) {
	int currentCursorPos;;
	// Iterate over all character cells
	for (int line = 0; line < character->height; ++line) {
		currentCursorPos = ledMatrix->cursorPos;
		for (int col = 0; col < character->width; ++col) {
			// Check if the column is inside the matrix
			if (currentCursorPos >= 0 && currentCursorPos < ledMatrix->numCols) {
				// Even line: LEDs from left to right
				if (line % 2 == 0) {
					ledMatrix->leds[line * ledMatrix->numCols + col + ledMatrix->cursorPos].color =
							character->matrix[line * character->width + col] ? color : off;
				// Uneven line: LEDs from right to left
				} else {
					ledMatrix->leds[line * ledMatrix->numCols + (ledMatrix->numCols - 1 - col) - ledMatrix->cursorPos].color =
							character->matrix[line * character->width + col] ? color : off;
				}
			}
			currentCursorPos += 1;
		}
	}
}

// Adds a string to the the matrix in the given color
// Respects the currently set alignment.
void LEDMatrixAddText(LEDMatrix* ledMatrix, char text[], Color color) {
	int len = strlen(text);

	// Check alignment and set cursor
	int width = pixelWidth(text);
	switch (ledMatrix->alignment) {
		case 'a': // append
			break;
		case 'l': // left
			ledMatrix->cursorPos = 0;
			break;
		case 'c': // center
			ledMatrix->cursorPos = ledMatrix->numCols / 2 - width / 2;
			break;
		case 'r': // right
			ledMatrix->cursorPos = ledMatrix->numCols - width;
			break;
		default:
			break;
	}

	// Add the characters to the matrix
	const Character* character;
	for (int k = 0; k < len; ++k) {
		character = getCharacter(text[k]);
		LEDMatrixSetCharacter(ledMatrix, character, color);
		// Move the cursor
		ledMatrix->cursorPos += character->width + 2;
	}
}

void LEDMatrixShow(LEDMatrix* ledMatrix) {
	if (ledMatrix->isSending == 0) {
		// Fill the buffer with LED 0 and 1
		const uint32_t* dutyCycles = LEDgetDutyCycles(&ledMatrix->leds[0]);
		memcpy(&ledMatrix->pwmBuffer[0], dutyCycles, 96);
		dutyCycles = LEDgetDutyCycles(&ledMatrix->leds[1]);
		memcpy(&ledMatrix->pwmBuffer[24], dutyCycles, 96);

		ledMatrix->nextLED = 2;
		ledMatrix->isSending = 1;

		// Start sending the PWM pulses
		HAL_TIM_PWM_Start_DMA(ledMatrix->htim, ledMatrix->timerChannel, ledMatrix->pwmBuffer, 48);
	}
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
			ledMatrix->isSending = 0;
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
			ledMatrix->isSending = 0;
		}
	}
	ledMatrix->nextLED += 1;
}
