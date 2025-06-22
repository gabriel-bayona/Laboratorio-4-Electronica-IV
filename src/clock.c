/*********************************************************************************************************************
Copyright (c) 2025, Bayona Franco Gabriel <gabrielbayona19@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

SPDX-License-Identifier: MIT
*********************************************************************************************************************/

/** @file clock.c
 ** @brief
 **/

/* === Headers files inclusions ==================================================================================== */
#include "clock.h"
#include <stddef.h>
#include <string.h>
/* === Headers files inclusions ==================================================================================== */

/* === Header for C++ compatibility ================================================================================ */

/* === Public macros definitions =================================================================================== */

/* === Public data type declarations =============================================================================== */

/* === Public variable declarations ================================================================================ */

/* === Public function declarations ================================================================================ */

struct clock_s {
    uint16_t clock_ticks;
    clock_time_t current_time;
    bool valid;

    // De aca en adelante es parte de la alarma
    clock_time_t alarm_time;
    bool alarm_enabled;
    bool alarm_triggered; // Indica si la alarma esta sonando o no
};

clock_t ClockCreate(uint8_t ticks_per_second) {
    (void)ticks_per_second; // Evita advertencias de compilación si no se usa
    static struct clock_s self[1];
    memset(self, 0, sizeof(struct clock_s));
    self->valid = false;
    return self;
}

bool ClockGetTime(clock_t self, clock_time_t * result) {
    memcpy(result, &self->current_time, sizeof(clock_time_t));
    return self->valid;
}

bool ClockSetTime(clock_t self, const clock_time_t * new_time) {
    self->valid = true;
    memcpy(&self->current_time, new_time, sizeof(clock_time_t));
    return self->valid; // siempre devuelve true
}

void ClockNewTick(clock_t self) {
    //(void)self; // Evita advertencias de compilación si no se usa
    //  self->current_time.time.seconds[0] = 0; // Simula un segundo

    self->clock_ticks++;
    if (self->clock_ticks == 5) { // Simula un segundo si la frecuencia es de 5 Hz
        self->clock_ticks = 0;    // Reinicia el contador de ticks
        self->current_time.time.seconds[0]++;
        if (self->current_time.time.seconds[0] > 9) {
            self->current_time.time.seconds[0] = 0;
            self->current_time.time.seconds[1] = 1;
        }
    }
}

// Guarda una copia de la hora de la alarma (alarm_time) en el reloj.
bool ClockSetAlarmTime(clock_t self, const clock_time_t * alarm_time) {
    if (!self || !alarm_time) {
        return false;
    }
    memcpy(&self->alarm_time, alarm_time, sizeof(clock_time_t));
    return true;
}

// Obtiene la hora de la alarma (alarm_time) del reloj y la almacena en alarm_time.
bool ClockGetAlarmTime(clock_t self, clock_time_t * alarm_time) {
    if (!self || !alarm_time) {
        return false;
    }
    memcpy(alarm_time, &self->alarm_time, sizeof(clock_time_t));
    return true;
}

void ClockEnableAlarm(clock_t self) {
    if (self) {
        self->alarm_enabled = true;
    }
}

void ClockDisableAlarm(clock_t self) {
    if (self) {
        self->alarm_enabled = false;
    }
}

bool ClockIsAlarmEnabled(clock_t self) {
    return self ? self->alarm_enabled : false;
}

/* === End of conditional blocks =================================================================================== */
