/*
 * MotorControl.h
 *
 *  Created on: May 27, 2025
 *      Author: Marco
 */

#ifndef USEREXTENSIONS_MOTORCONTROL_H_
#define USEREXTENSIONS_MOTORCONTROL_H_

#include <math.h>
#include "stm32f4xx_hal.h"
#include "main.h"
#include "stm32f4xx_ll_tim.h"

void SetupMotor();
void MotorControl();
void ClarkeParkTransform(int32_t ia, int32_t ib, float theta, float* id, float* iq);
void InverseParkTransform(float vd, float vq, float theta, float* valpha, float* vbeta);
float PI_Controller(float error, float* integral, float kp, float ki, float limit);

#endif /* USEREXTENSIONS_MOTORCONTROL_H_ */
