/*
 * TemperatureSensor.c
 *
 *  Created on: Sep 8, 2022
 *      Author: michaelstrupp
 */

#include <math.h>

#include "TemperatureSensor.h"

static void TemperatureSensorSample(TemperatureSensor* self) {
	self->currentPosition += 1;
	if (self->currentPosition >= 32) {
		self->currentPosition = 0;
	}
	int value = HAL_ADC_GetValue(self->hadc);
	self->values[self->currentPosition] = value;
}

void TemperatureSensorInit(TemperatureSensor* self, ADC_HandleTypeDef* hadc) {
	self->currentPosition = 0;
	self->hadc = hadc;
}

void TemperatureSensorStart(TemperatureSensor* self) {
	HAL_ADC_Start(self->hadc);
	for (int k = 0; k < 64; k++) {
		TemperatureSensorSample(self);
	}
}

int TemperatureSensorMeasure(TemperatureSensor* self) {
	TemperatureSensorSample(self);
	uint32_t value = 0;
	for (int k = 0; k < 32; k++) {
		value += self->values[k];
	}
	value = value >> 5; // Division by 32

	float voltage = value * 3.3 / 4095;
	float temperature = (voltage - 2.982) * 100 + 25;
	return round(temperature);
}
