/*
 * gemini.c
 *
 *  Created on: Oct 4, 2021
 *      Author: michaelstrupp
 */

#include "protocols/gemini.h"

#include <string.h>

// Casts the input string to a Message object according to the gemini scoreboard protocol
void geminiGenerateMessage(const uint8_t input[50], Message* message) {
	if (input[1] == 'R') {
		// time
		memcpy(message->time, &input[10], 8);
		message->time[8] = '\0';
		message->timeIsValid = 1;
	} else if (input[1] == 'a') {
		// name
		memcpy(message->name, &input[9], 25);
		message->nameIsValid = 1;
	} else if (input[1] == 'S') {
		// result
		memcpy(message->result, &input[13], 8);
		message->resultIsValid = 1;
		if ((input[6] == ' ' && input[8] != ' ') || (input[7] != ' ' && input[8] != ' ')) {
			// bib
			memcpy(message->bib, &input[6], 3);
			message->bibIsValid = 1;
		} else {
			// rank, lane
			message->rank = input[6];
			message->rankIsValid = 1;
			message->lane = input[8];
			message->laneIsValid = 1;
		}
	} else if (input[1] == 0x0c) {
		// clear
		message->clear = 1;
	}
}
