/*
 * Message.c
 *
 *  Created on: 07.10.2021
 *      Author: michaelstrupp
 */

#include "Message.h"

void MessageInit(Message* message) {
	message->time[0] = '\0';
	message->timeIsValid = 0;
	message->bib[0] = '\0';
	message->bibIsValid = 0;
	message->name[0] = '\0';
	message->nameIsValid = 0;
	message->result[0] = '\0';
	message->resultIsValid = 0;
	message->rank = '\0';
	message->rankIsValid = 0;
	message->lane = '\0';
	message->laneIsValid = 0;
	message->clear = 0;
}
