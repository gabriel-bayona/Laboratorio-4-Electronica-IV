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

#include <stdio.h>

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
    bool alarm_triggered;      // Indica si la alarma esta sonando o no
    clock_time_t snoozed_time; // Guarda la hora de la alarma pospuesta
    bool snoozed_active;       // Indica si la alarma pospuesta esta activa
};

clock_t ClockCreate(uint8_t ticks_per_second) {
    (void)ticks_per_second; // Evita advertencias de compilación si no se usa
    static struct clock_s self[1];
    memset(self, 0, sizeof(struct clock_s));
    self->valid = false;

    // Alarma
    self->alarm_enabled = false;
    self->alarm_triggered = false;

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
    if (!self || !self->valid)
        return;
    // Incrementar el contador de ticks del reloj
    self->clock_ticks++;
    if (self->clock_ticks == 5) {
        self->clock_ticks = 0;
        self->current_time.time.seconds[0]++;

        // Rollover segundos (unidades)
        if (self->current_time.time.seconds[0] > 9) {
            self->current_time.time.seconds[0] = 0;
            self->current_time.time.seconds[1]++;

            // Rollover segundos (decenas)
            if (self->current_time.time.seconds[1] > 5) {
                self->current_time.time.seconds[1] = 0;
                self->current_time.time.minutes[0]++;

                // Rollover minutos (unidades)
                if (self->current_time.time.minutes[0] > 9) {
                    self->current_time.time.minutes[0] = 0;
                    self->current_time.time.minutes[1]++;

                    // Rollover minutos (decenas)
                    if (self->current_time.time.minutes[1] > 5) {
                        self->current_time.time.minutes[1] = 0;
                        self->current_time.time.hours[0]++;

                        // Rollover horas (unidades)
                        if (self->current_time.time.hours[0] > 9) {
                            self->current_time.time.hours[0] = 0;
                            self->current_time.time.hours[1]++;
                        }
                        // Rollover horas completo (23:59:59 -> 00:00:00)
                        if (self->current_time.time.hours[1] > 2 ||
                            (self->current_time.time.hours[1] == 2 && self->current_time.time.hours[0] >= 1)) {
                            // Volver a 00:00:00 si pasa de 23:59:59
                            // memset(&self->current_time, 0, sizeof(clock_time_t)); ->NO USO PORQUE ME PUEDE ROMPER
                            // LA ALARMA
                            self->current_time.time.seconds[0] = 0;
                            self->current_time.time.seconds[1] = 0;
                            self->current_time.time.minutes[0] = 0;
                            self->current_time.time.minutes[1] = 0;
                            self->current_time.time.hours[0] = 0;
                            self->current_time.time.hours[1] = 0;
                        }
                    }
                }
            }
        }
    }

    // Verificar si la alarma (normal o pospuesta) debe sonar
    if (self->alarm_enabled) {
        clock_time_t * target = self->snoozed_active ? &self->snoozed_time : &self->alarm_time;

        if (ClockTimesMatch(&self->current_time, target)) {
            self->alarm_triggered = true;
            self->snoozed_active = false; // Se desactiva una vez que se disparó
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

bool ClockIsAlarmTriggered(clock_t self) {
    return self ? self->alarm_triggered : false;
}

bool ClockTimesMatch(const clock_time_t * a, const clock_time_t * b) {
    for (int i = 0; i < 6; i++) {
        if (a->bcd[i] != b->bcd[i]) {
            return false;
        }
    }
    return true;
}

bool ClockSnoozeAlarm(clock_t self, uint8_t minutes_to_snooze) {
    printf("ClockSnoozeAlarm called - valid: %d, snooze mins: %d\n", self ? self->valid : -1, minutes_to_snooze);
    if (!self || !self->valid || minutes_to_snooze == 0) {
        return false;
    }

    // Tomamos la hora actual como punto de partida
    uint8_t min_units = self->current_time.time.minutes[0];
    uint8_t min_tens = self->current_time.time.minutes[1];
    uint8_t hr_units = self->current_time.time.hours[0];
    uint8_t hr_tens = self->current_time.time.hours[1];

    uint8_t current_minutes = min_tens * 10 + min_units;
    uint8_t current_hours = hr_tens * 10 + hr_units;

    uint16_t total_minutes = current_minutes + minutes_to_snooze;
    uint16_t new_hours = current_hours + (total_minutes / 60);
    uint16_t new_minutes = total_minutes % 60;

    if (new_hours >= 24) {
        new_hours %= 24;
    }

    self->snoozed_time.time.hours[1] = new_hours / 10;
    self->snoozed_time.time.hours[0] = new_hours % 10;
    self->snoozed_time.time.minutes[1] = new_minutes / 10;
    self->snoozed_time.time.minutes[0] = new_minutes % 10;
    self->snoozed_time.time.seconds[1] = 0;
    self->snoozed_time.time.seconds[0] = 0;

    printf("Alarm snoozed to: %d%d:%d%d\n", self->snoozed_time.time.hours[1], self->snoozed_time.time.hours[0],
           self->snoozed_time.time.minutes[1], self->snoozed_time.time.minutes[0]);
    self->snoozed_active = true;
    self->alarm_triggered = false; // Reinicia la alarma al posponer

    return true;
}

/* === End of conditional blocks =================================================================================== */
