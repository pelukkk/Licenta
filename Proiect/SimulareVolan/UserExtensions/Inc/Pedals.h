/*
 * Pedals.h
 *
 *  Created on: May 27, 2025
 *      Author: Marco
 */

#ifndef INC_PEDALS_H_
#define INC_PEDALS_H_

#include "stm32f4xx_hal.h"
#include "main.h"

#define FILTER_SIZE 8

uint16_t FilterADC(uint16_t *buffer, uint8_t *index, uint16_t newSample);
void UpdatePedals();

#endif /* INC_PEDALS_H_ */
