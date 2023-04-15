/*
 * TemperatureSensor.h
 *
 *  Created on: Sep 8, 2022
 *      Author: michaelstrupp
 */

#ifndef TEMPERATURESENSOR_H_
#define TEMPERATURESENSOR_H_

#include "stm32g0xx_hal.h"

typedef struct {
	int values[32];
	int currentPosition;
	ADC_HandleTypeDef* hadc;
} TemperatureSensor;

void TemperatureSensorInit(TemperatureSensor* self, ADC_HandleTypeDef* hadc);

void TemperatureSensorStart(TemperatureSensor* self);

int TemperatureSensorMeasure(TemperatureSensor* self);

#endif /* TEMPERATURESENSOR_H_ */
