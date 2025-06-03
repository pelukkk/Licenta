/*
 * Shifter.h
 *
 *  Created on: May 27, 2025
 *      Author: Marco
 */

#ifndef INC_SHIFTER_H_
#define INC_SHIFTER_H_

#include "main.h"
#include "stm32f4xx_hal.h"

#define S0_MUX_Pin GPIO_PIN_2
#define S0_MUX_GPIO_Port GPIOB
#define S1_MUX_Pin GPIO_PIN_10
#define S1_MUX_GPIO_Port GPIOC
#define S2_MUX_Pin GPIO_PIN_11
#define S2_MUX_GPIO_Port GPIOC

void select_mux_channel(uint8_t channel);
GPIO_PinState read_mux_output(void);
void UpdateShifter();

#endif /* INC_SHIFTER_H_ */
