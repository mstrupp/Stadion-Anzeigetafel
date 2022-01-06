/*
 * RS485Receiver.h
 *
 *  Created on: Oct 4, 2021
 *      Author: michaelstrupp
 */

#ifndef INC_RS485RECEIVER_H_
#define INC_RS485RECEIVER_H_

#include "stm32g0xx_hal.h"

typedef struct {
	UART_HandleTypeDef* huart;
	uint8_t buffer;
	uint8_t message[50];
	uint8_t messageLen;
	int8_t messageComplete;
} RS485Receiver;

void RS485ReceiverInit(RS485Receiver* receiver, UART_HandleTypeDef* huart);

// Start listening for serial messages
void RS485ReceiverStart(RS485Receiver* receiver);

// Byte received callback function
// The function need to be called when a new byte is available.
// Call in HAL_UART_RxCpltCallback.
void RS485ReceiverCallback(RS485Receiver* receiver);

#endif /* INC_RS485RECEIVER_H_ */
