/*
 * gemini.h
 *
 *  Created on: Oct 4, 2021
 *      Author: michaelstrupp
 */

#ifndef INC_PROTOCOLS_GEMINI_H_
#define INC_PROTOCOLS_GEMINI_H_

#include "Message.h"

// Casts the input string to a Message object according to the gemini scoreboard protocol
void geminiGenerateMessage(const uint8_t input[50], Message* message);

#endif /* INC_PROTOCOLS_GEMINI_H_ */
