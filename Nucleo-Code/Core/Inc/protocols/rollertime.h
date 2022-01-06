/*
 * rollertime.h
 *
 *  Created on: 07.10.2021
 *      Author: michaelstrupp
 */

#ifndef INC_PROTOCOLS_ROLLERTIME_H_
#define INC_PROTOCOLS_ROLLERTIME_H_

#include <stdint.h>

#include "Message.h"

// Casts the input string to a Message object according to the rollertime scoreboard protocol
void rollertimeGenerateMessage(const uint8_t input[50], Message* message);

#endif /* INC_PROTOCOLS_ROLLERTIME_H_ */
