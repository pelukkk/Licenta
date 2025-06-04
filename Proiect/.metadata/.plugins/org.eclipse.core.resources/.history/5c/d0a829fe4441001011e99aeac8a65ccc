/*
 * ForceFeedback.h
 *
 *  Created on: May 27, 2025
 *      Author: Marco
 */

#ifndef USEREXTENSIONS_FORCEFEEDBACK_H_
#define USEREXTENSIONS_FORCEFEEDBACK_H_

#include "usbd_customhid.h"
#include <stdbool.h>

#define MAX_EFFECTS 0x28
#define MAX_AXIS 1

// HID Usage - Axes
#define HID_USAGE_X     0x30
#define HID_USAGE_Y     0x31
#define HID_USAGE_Z     0x32
#define HID_USAGE_RX    0x33
#define HID_USAGE_RY    0x34
#define HID_USAGE_RZ    0x35
#define HID_USAGE_SL0	0x36
#define HID_USAGE_SL1	0x37

// HID Usage - Effects
#define HID_USAGE_CONST 0x26
#define HID_USAGE_RAMP  0x27
#define HID_USAGE_SINE  0x31
#define HID_USAGE_SQUR  0x30
#define HID_USAGE_TRNG  0x32
#define HID_USAGE_STUP  0x33
#define HID_USAGE_STDN  0x34
#define HID_USAGE_SPRNG 0x40
#define HID_USAGE_DMPR  0x41
#define HID_USAGE_INRT  0x42
#define HID_USAGE_FRIC  0x43

// HID Report IDs
#define HID_ID_STATE    0x02
#define HID_ID_EFFREP   0x01
#define HID_ID_ENVREP   0x02
#define HID_ID_CONDREP  0x03
#define HID_ID_PRIDREP  0x04
#define HID_ID_CONSTREP 0x05
#define HID_ID_RAMPREP  0x06
#define HID_ID_CSTMREP  0x07
#define HID_ID_SMPLREP  0x08
#define HID_ID_EFOPREP  0x0A
#define HID_ID_BLKFRREP 0x0B
#define HID_ID_CTRLREP  0x0C
#define HID_ID_GAINREP  0x0D
#define HID_ID_SETCREP  0x0E
#define HID_ID_NEWEFREP 0x11
#define HID_ID_BLKLDREP 0x12
#define HID_ID_POOLREP  0x13

// Effect Types
#define FFB_EFFECT_NONE         0x00
#define FFB_EFFECT_CONSTANT     0x01
#define FFB_EFFECT_RAMP         0x02
#define FFB_EFFECT_SQUARE       0x03
#define FFB_EFFECT_SINE         0x04
#define FFB_EFFECT_TRIANGLE     0x05
#define FFB_EFFECT_SAWTOOTHUP   0x06
#define FFB_EFFECT_SAWTOOTHDOWN 0x07
#define FFB_EFFECT_SPRING       0x08
#define FFB_EFFECT_DAMPER       0x09
#define FFB_EFFECT_INERTIA      0x0A
#define FFB_EFFECT_FRICTION     0x0B
#define FFB_EFFECT_CUSTOM       0x0C

// Flags
#define HID_EFFECT_PLAYING      0x10
#define HID_ACTUATOR_POWER      0x08
#define HID_SAFETY_SWITCH       0x04
#define HID_ENABLE_ACTUATORS    0x02
#define HID_EFFECT_PAUSE        0x01
#define HID_ENABLE_ACTUATORS_MASK 0xFD
#define HID_DIRECTION_ENABLE    0x04
#define FFB_EFFECT_DURATION_INFINITE 0xFFFF

#define HID_ID_HIDCMD	 0xA1   // HID cmd

typedef struct
 {
 	uint8_t reportId;
 	uint8_t status;
 } __attribute__((packed)) reportFFB_status_t;

 typedef struct
 {
 	uint8_t reportId;
 	uint8_t effectBlockIndex;
 	uint8_t effectType;
 	uint16_t duration;
 	uint16_t triggerRepeatInterval;
 	uint16_t samplePeriod;
 	uint16_t startDelay;
 	uint8_t gain;
 	uint8_t triggerButton;
 	uint8_t enableAxis;
 	uint16_t directionX;
 } __attribute__((packed)) FFB_SetEffect_t;

 typedef struct
 {
 	uint8_t reportId;
 	uint8_t effectBlockIndex;
 	uint8_t parameterBlockOffset;
 	int16_t cpOffset;
 	int16_t positiveCoefficient;
 	int16_t negativeCoefficient;
 	uint16_t positiveSaturation;
 	uint16_t negativeSaturation;
 	uint16_t deadBand;
 } __attribute__((packed)) FFB_SetCondition_Data_t;

 typedef struct
 {
	uint8_t reportId;
 	uint8_t effectType;
 	uint16_t byteCount;
 } __attribute__((packed)) FFB_CreateNewEffect_Feature_Data_t;

 typedef struct
 {
	uint8_t reportId;
 	uint8_t effectBlockIndex;
 	uint8_t loadStatus;
 	uint16_t ramPoolAvailable;
 } __attribute__((packed)) FFB_BlockLoad_Feature_Data_t;

 typedef struct
 {
	uint8_t reportId;
 	uint16_t ramPoolSize;
 	uint8_t maxSimultaneousEffects;
 	uint8_t memoryManagement;
 } __attribute__((packed)) FFB_PIDPool_Feature_Data_t;

 typedef struct
 {
 	uint8_t reportId;
 	uint8_t effectBlockIndex;
 	uint16_t magnitude;
 	int16_t offset;
 	uint16_t phase;
 	uint32_t period;
 } __attribute__((packed)) FFB_SetPeriodic_Data_t;

 typedef struct
 {
 	uint8_t reportId;
 	uint8_t effectBlockIndex;
 	uint16_t attackLevel;
 	uint16_t fadeLevel;
 	uint32_t attackTime;
 	uint32_t fadeTime;
 } __attribute__((packed)) FFB_SetEnvelope_Data_t;

 typedef struct
 {
 	uint8_t reportId;
 	uint8_t effectBlockIndex;
 	uint16_t startLevel;
 	uint16_t endLevel;
 } __attribute__((packed)) FFB_SetRamp_Data_t;

 typedef struct
 {
 	int16_t cpOffset;
 	int16_t positiveCoefficient;
 	int16_t negativeCoefficient;
 	uint16_t positiveSaturation;
 	uint16_t negativeSaturation;
 	uint16_t deadBand;
 } FFB_Effect_Condition;

 typedef struct
 {
 	uint8_t reportId;
 	uint8_t effectBlockIndex;
 	uint8_t state;
 	uint8_t loopCount;
 } __attribute__((packed)) FFB_EffOp_Data_t;

 typedef struct
 {
 	volatile uint8_t state;
 	uint8_t type;
 	int16_t offset;
 	uint8_t gain;
 	int16_t magnitude;
 	int16_t startLevel;
 	int16_t endLevel;
 	float axisMagnitudes[MAX_AXIS];

 	FFB_Effect_Condition conditions[MAX_AXIS];
 	int16_t phase;
 	uint16_t period;
 	uint32_t duration;
 	uint16_t attackLevel, fadeLevel;
 	uint32_t attackTime, fadeTime;

 	uint16_t startDelay;
 	uint32_t startTime;
 	uint16_t samplePeriod;
 	bool useEnvelope;
 	bool useSingleCondition;
 } FFB_Effect;

 typedef struct
 {
 	uint8_t reportId;
 	uint8_t effectBlockIndex;
 	int16_t magnitude;
 } __attribute__((packed)) FFB_SetConstantForce_Data_t;

 int8_t USBD_CUSTOM_HID_SendReport_FS(uint8_t *report, uint16_t len);
 int find_free_effect(void);
 void create_new_effect(uint8_t effect_type);
 void process_set_constant_force(const FFB_SetConstantForce_Data_t* report);
 void process_set_effect(const FFB_SetEffect_t* report);
 void process_set_condition(const FFB_SetCondition_Data_t* report);
 void stop_all_effects(void);
 void reset_all_effects(void);
 void pause_all_effects(void);
 void resume_effects(void);
 void handle_ffb_control(uint8_t command);
 void set_global_gain(uint8_t gain);
 void free_effect(uint8_t index);
 void send_status_report(void);

#endif /* USEREXTENSIONS_FORCEFEEDBACK_H_ */
