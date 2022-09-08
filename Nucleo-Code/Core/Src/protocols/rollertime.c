/*
 * rollertime.c
 *
 *  Created on: 07.10.2021
 *      Author: michaelstrupp
 */

#include "protocols/rollertime.h"

#include <string.h>

// Converts the received time string to a hh:mm:ss format.
static void formatTime(char output[8], const uint8_t input[6]) {
	memcpy(output, input, 2); //hh
	output[2] = ':';
	memcpy(&output[3], &input[2], 2); //mm
	output[5] = ':';
	memcpy(&output[6], &input[4], 2); //ss
}

// Converts the received time string to a mm:ss.dd format.
static void formatResult(char output[8], const uint8_t input[6]) {
	memcpy(output, input, 2); // mm
	if (input[1] != ' ') {
		output[2] = ':';
	} else {
		output[2] = ' ';
	}
	memcpy(&output[3], &input[2], 2); // ss
	output[5] = '.';
	memcpy(&output[6], &input[4], 2); // dd
}

// Casts the input string to a Message object according to the rollertime scoreboard protocol
void rollertimeGenerateMessage(const uint8_t input[50], Message* message) {
	if (input[0] == 'I') {
		int len = strlen((char*) input);
		if (len == 13) {
			// time
			formatTime(message->time, &input[1]);
			message->timeIsValid = 1;
		} else if (len == 12) {
			// result
			formatResult(message->result, &input[1]);
			message->resultIsValid = 1;
			// bib
			memcpy(message->bib, &input[7], 3);
			message->bibIsValid = 1;
		} else if (len == 10) {
			// result
			formatResult(message->result, &input[1]);
			message->resultIsValid = 1;
			// rank, lane
			message->rank = input[7];
			message->rankIsValid = 1;
			message->lane = input[9];
			message->laneIsValid = 1;
		}
	} else if (input[0] == 'B') {
		// clear
		message->clear = 1;
	}
}
