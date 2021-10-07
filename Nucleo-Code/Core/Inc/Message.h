/*
 * Message.h
 *
 *  Created on: Oct 4, 2021
 *      Author: michaelstrupp
 */

#ifndef INC_MESSAGE_H_
#define INC_MESSAGE_H_

#include <stdint.h>

typedef struct {
	char time[9];
	uint8_t timeIsValid;
	char bib[4];
	uint8_t bibIsValid;
	char name[26];
	uint8_t nameIsValid;
	char result[15];
	uint8_t resultIsValid;
	char rank;
	uint8_t rankIsValid;
	char lane;
	uint8_t laneIsValid;
	uint8_t clear;
} Message;

void MessageInit(Message* message);

#endif /* INC_MESSAGE_H_ */
