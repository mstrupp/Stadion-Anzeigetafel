/*
 * RS485Receiver.c
 *
 *  Created on: Oct 4, 2021
 *      Author: michaelstrupp
 */

#include "RS485Receiver.h"

void RS485ReceiverInit(RS485Receiver* receiver, UART_HandleTypeDef* huart) {
	receiver->huart = huart;
}

// Start listening for serial messages
void RS485ReceiverStart(RS485Receiver* receiver) {
	// Start the uart interrupt
	HAL_UART_Receive_IT(receiver->huart, &receiver->buffer, 1);
}

// Byte received callback function
// The function need to be called when a new byte is available.
// Call in HAL_UART_RxCpltCallback.
void RS485ReceiverCallback(RS485Receiver* receiver) {
	if (receiver->buffer == 0x01) { // gemini 0x01, rollertime 0x02
		// Start of transmission
		receiver->messageComplete = 0;
		receiver->messageLen = 0;
	} else if (receiver->messageComplete == 0 && receiver->buffer == 0x04) { // gemini 0x04, rollertime 0x03
		// End of transmission
		receiver->message[receiver->messageLen] = '\0';
		receiver->messageComplete = 1;
	} else {
		// Part of the message
		receiver->message[receiver->messageLen] = receiver->buffer;
		receiver->messageLen += 1;
	}
	// Start interrupt to receive the next byte
	HAL_UART_Receive_IT(receiver->huart, &receiver->buffer, 1);
}
