/* Copyright 2022, Laboratorio de Microprocesadores
 * Facultad de Ciencias Exactas y Tecnología
 * Universidad Nacional de Tucuman
 * http://www.microprocesadores.unt.edu.ar/
 * Copyright 2022, Esteban Volentini <evolentini@herrera.unt.edu.ar>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * 3. Neither the name of the copyright holder nor the names of its
 *    contributors may be used to endorse or promote products derived from this
 *    software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

/* === Headers files inclusions =============================================================== */

#include "chip.h"
#include <stdbool.h>
#include "digital.h"
#include "config.h"
#include "bsp.h"
#include "screen.h"
#include "poncho.h"
#include "clock.h"

/* === Private data type declarations ========================================================== */
#define CLOCK_TICKS_PER_SECOND 1000
/* === Private variable declarations =========================================================== */

/* === Private function declarations =========================================================== */

void valueToTime(uint8_t * digits, clock_time_t * time);
void timeToValue(uint8_t * digits, clock_time_t * time);
// void nextState(void);

bool segundosAntibounce(bool teclaPresionada, uint8_t segundosNecesarios);

/* === Public variable definitions ============================================================= */

system_mode_t mode = MODE_UNSET; // Modo del sistema, comienza en no configurado
Board_t board;
clock_t clock;             // Variable global para el reloj
clock_time_t current_time; // Variable global para la hora actual del reloj
clock_time_t alarm_time;   // Variable global para la hora de la alarma

uint8_t digits[4] = {0, 0, 0, 0}; // Dígitos para mostrar la hora
uint8_t dots[4] = {0, 1, 0, 0};
uint8_t dot_alarm[4];
uint8_t last_state;
uint16_t ticks = 1000;

bool segundo;
/* === Private variable definitions ============================================================ */

/* === Private function implementation ========================================================= */

void valueToTime(uint8_t * digits, clock_time_t * time) {
    time->bcd[5] = digits[0]; // horas decenas
    time->bcd[4] = digits[1]; // horas unidades
    time->bcd[3] = digits[2]; // minutos decenas
    time->bcd[2] = digits[3]; // minutos unidades
    time->bcd[1] = 0;         // segundos decenas
    time->bcd[0] = 0;         // segundos unidades
}

void timeToValue(uint8_t * digits, clock_time_t * time) {
    digits[0] = time->bcd[5]; // horas decenas
    digits[1] = time->bcd[4]; // horas unidades
    digits[2] = time->bcd[3]; // minutos decenas
    digits[3] = time->bcd[2]; // minutos unidades
}

bool segundosAntibounce(bool teclaPresionada, uint8_t segundosNecesarios) {
    static uint32_t press_time = 0;

    if (teclaPresionada && segundo) {
        if (press_time == segundosNecesarios) {
            return true; // La tecla se mantuvo presionada el tiempo necesario
        } else {
            press_time++;
            return false; // La tecla aún no ha sido presionada el tiempo necesario
        }
    } else {
        press_time = 0; // Reinicia el contador si la tecla no está presionada
        return false;   // La tecla no está presionada
    }
}

/* === Public function implementation ========================================================= */

int main(void) {

    // Inicializar el sistema
    board = BoardCreate();
    clock = ClockCreate(ticks); // Crea el reloj con la frecuencia especificada (ticks por segundo)

    SysTickInit(ticks);
    DisplayFlashDigits(board->screen, 0, 3, 100);

    while (true) {

        switch (mode) {
        case MODE_UNSET:

            if (DigitalInputWasDeactivated(board->set_alarm)) {
                if (ClockGetAlarmTime(clock, &alarm_time)) {
                    timeToValue(digits, &alarm_time); // Convierte la hora de la alarma a dígitos
                }
                if (ClockIsAlarmEnabled(clock)) {
                    dots[0] = 1;
                }
                mode = MODE_SET_ALARM_MINUTES;
                last_state = MODE_UNSET;
                DisplayFlashDigits(board->screen, 2, 3, 100);

            } else if (DigitalInputWasDeactivated(board->set_time)) {

                mode = MODE_SET_TIME_MINUTES;
                last_state = MODE_UNSET;
                DisplayFlashDigits(board->screen, 2, 3, 100);
            }
            break;

        case MODE_HOME:
            if (ClockGetTime(clock, &current_time)) {
                timeToValue(digits, &current_time); // Convierte la hora actual a dígitos
            }
            ScreenWriteBCD(board->screen, digits, sizeof(digits));
            if (DigitalInputWasDeactivated(board->set_time)) {
                DisplayFlashDigits(board->screen, 2, 3, 100);
                mode = MODE_SET_TIME_MINUTES;
                last_state = MODE_HOME;

            } else if (DigitalInputWasDeactivated(board->set_alarm)) {
                DisplayFlashDigits(board->screen, 2, 3, 100);
                if (ClockGetAlarmTime(clock, &alarm_time)) {
                    timeToValue(digits, &alarm_time); // Convierte la hora de la alarma a dígitos
                }
                if (ClockIsAlarmEnabled(clock)) {
                    dots[0] = 1;
                }
                mode = MODE_SET_ALARM_MINUTES;
                last_state = MODE_HOME;
            }

            // verificacion de la alarma
            if (ClockIsAlarmTriggered(clock)) {
                mode = MODE_ALARM_TRIGGERED;
                DigitalOutputActivate(board->led_blue);
            }

            // activar y desactivar la alarma
            if (DigitalInputWasDeactivated(board->accept)) {
                ClockEnableAlarm(clock);
            } else if (DigitalInputWasDeactivated(board->cancel)) {
                ClockDisableAlarm(clock);
            }
            break;

        case MODE_SET_TIME_MINUTES:
            if (DigitalInputWasDeactivated(board->cancel)) {
                if (last_state == MODE_UNSET) {
                    DisplayFlashDigits(board->screen, 0, 3, 100);
                    mode = MODE_UNSET; // Cancelar y volver al modo UNSET
                } else {
                    DisplayFlashDigits(board->screen, 0, 0, 0);
                    mode = MODE_HOME; // Cancelar y volver al modo HOME
                }
            }
            if (DigitalInputWasDeactivated(board->increment)) {
                uint8_t minutos = digits[2] * 10 + digits[3]; // Combina los dígitos
                minutos = (minutos + 1) % 60;                 // Aumenta y reinicia en 0 si pasa de 60
                digits[2] = minutos / 10;                     // Divide en decenas
                digits[3] = minutos % 10;                     // Y unidades
            }

            if (DigitalInputWasDeactivated(board->decrement)) {
                uint8_t minutos = digits[2] * 10 + digits[3]; // Combina los dígitos
                minutos = (minutos - 1 + 60) % 60;            // Decrementa y reinicia en 59 si pasa de 0
                digits[2] = minutos / 10;                     // Divide en decenas
                digits[3] = minutos % 10;                     // Y unidades
            }
            if (DigitalInputWasDeactivated(board->accept)) {
                DisplayFlashDigits(board->screen, 0, 1, 100);
                mode = MODE_SET_TIME_HOURS; // Cambia al modo de ajuste de horas
                DisplayFlashDigits(board->screen, 0, 1, 100);
            }
            break;

        case MODE_SET_TIME_HOURS:

            if (DigitalInputWasDeactivated(board->cancel)) {
                if (last_state == MODE_UNSET) {
                    DisplayFlashDigits(board->screen, 0, 3, 100);
                    mode = MODE_UNSET; // Cancelar y volver al modo UNSET
                } else {
                    DisplayFlashDigits(board->screen, 0, 0, 0);
                    mode = MODE_HOME; // Cancelar y volver al modo HOME
                }
            }
            if (DigitalInputWasDeactivated(board->increment)) {
                uint8_t horas = digits[0] * 10 + digits[1]; // Combina los dígitos
                horas = (horas + 1) % 24;                   // Aumenta y reinicia en 0 si pasa de 23
                digits[0] = horas / 10;                     // Divide en decenas
                digits[1] = horas % 10;                     // Y unidades
            }

            if (DigitalInputWasDeactivated(board->decrement)) {
                uint8_t horas = digits[0] * 10 + digits[1]; // Combina los dígitos
                horas = (horas - 1 + 24) % 24;              // Decrementa y reinicia en 23 si pasa de 0
                digits[0] = horas / 10;                     // Divide en decenas
                digits[1] = horas % 10;                     // Y unidades
            }

            if (DigitalInputWasDeactivated(board->accept)) {
                DisplayFlashDigits(board->screen, 0, 0, 0);
                valueToTime(digits, &current_time); // Convierte los dígitos a tiempo actual
                if (ClockSetTime(clock, &current_time)) {
                    mode = MODE_HOME; // Vuelve al modo HOME después de aceptar
                    last_state = MODE_HOME;
                } else if (!ClockSetTime(clock, &current_time)) {
                    DigitalOutputActivate(board->led_blue); // Opcional, para debug
                }
            }
            break;

        case MODE_SET_ALARM_MINUTES:
            if (DigitalInputWasDeactivated(board->cancel)) {
                dots[0] = 0;
                if (last_state == MODE_UNSET) {
                    DisplayFlashDigits(board->screen, 0, 3, 100);
                    mode = MODE_UNSET; // Cancelar y volver al modo UNSET
                } else {
                    DisplayFlashDigits(board->screen, 0, 0, 0);
                    mode = MODE_HOME; // Cancelar y volver al modo HOME
                }
            }

            if (DigitalInputWasDeactivated(board->increment)) {
                uint8_t minutos = digits[2] * 10 + digits[3]; // Combina los dígitos
                minutos = (minutos + 1) % 60;                 // Aumenta y reinicia en 0 si pasa de 60
                digits[2] = minutos / 10;                     // Divide en decenas
                digits[3] = minutos % 10;                     // Y unidades
            }
            if (DigitalInputWasDeactivated(board->decrement)) {
                uint8_t minutos = digits[2] * 10 + digits[3]; // Combina los dígitos
                minutos = (minutos - 1 + 60) % 60;            // Decrementa y reinicia en 59 si pasa de 0
                digits[2] = minutos / 10;                     // Divide en decenas
                digits[3] = minutos % 10;                     // Y unidades
            }
            if (DigitalInputWasDeactivated(board->accept)) {
                DisplayFlashDigits(board->screen, 0, 1, 100);
                mode = MODE_SET_ALARM_HOURS;
            }
            break;
        case MODE_SET_ALARM_HOURS:
            if (DigitalInputWasDeactivated(board->cancel)) {
                dots[0] = 0;
                if (last_state == MODE_UNSET) {
                    DisplayFlashDigits(board->screen, 0, 3, 100);
                    mode = MODE_UNSET; // Cancelar y volver al modo UNSET
                } else {
                    DisplayFlashDigits(board->screen, 0, 0, 0);
                    mode = MODE_HOME; // Cancelar y volver al modo HOME
                }
            }
            if (DigitalInputWasDeactivated(board->increment)) {
                uint8_t horas = digits[0] * 10 + digits[1]; // Combina los dígitos
                horas = (horas + 1) % 24;                   // Aumenta y reinicia en 0 si pasa de 23
                digits[0] = horas / 10;                     // Divide en decenas
                digits[1] = horas % 10;                     // Y unidades
            }
            if (DigitalInputWasDeactivated(board->decrement)) {
                uint8_t horas = digits[0] * 10 + digits[1]; // Combina los dígitos
                horas = (horas - 1 + 24) % 24;              // Decrementa y reinicia en 23 si pasa de 0
                digits[0] = horas / 10;                     // Divide en decenas
                digits[1] = horas % 10;                     // Y unidades
            }
            if (DigitalInputWasDeactivated(board->accept)) {
                dots[0] = 0;
                valueToTime(digits, &alarm_time); // Convierte los dígitos a tiempo de alarma
                if (ClockSetAlarmTime(clock, &alarm_time)) {
                    DisplayFlashDigits(board->screen, 0, 0, 0);
                    ClockEnableAlarm(clock); // Habilita la alarma
                    if (last_state != MODE_UNSET) {
                        mode = MODE_HOME;
                    } else {
                        mode = MODE_UNSET;
                        DisplayFlashDigits(board->screen, 0, 3, 100);
                    }
                }
            }

            break;

        case MODE_ALARM_TRIGGERED:
            if (ClockGetTime(clock, &current_time)) {
                timeToValue(digits, &current_time);
            }
            if (DigitalInputWasDeactivated(board->cancel)) {
                // Cancelar la alarma y volver al modo HOME
                ClockCancelAlarmUntilNextDay(clock);
                mode = MODE_HOME;
                dots[3] = 0;

            } else if (DigitalInputWasDeactivated(board->accept)) {
                // Posponer la alarma
                if (ClockSnoozeAlarm(clock, 5)) { // Posponer 5 minutos
                    mode = MODE_HOME;             // Vuelve al modo HOME después de posponer
                    dots[3] = 0;
                }
            }
        }

        for (int delay = 0; delay < 25000; delay++) {
            __asm("NOP");
        }
    }
}

void SysTick_Handler(void) {
    static uint16_t tick_count = 0;

    ScreenRefresh(board->screen);
    ScreenWriteBCD(board->screen, digits, sizeof(digits));
    ScreenWriteDOT(board->screen, dots, sizeof(dots));
    tick_count = (tick_count + 1) % 1000;
    if (tick_count < 500) {
        ScreenToggleDot(board->screen, 1);
        if (mode == MODE_ALARM_TRIGGERED) {
            dots[3] = 1;
        }
    }

    ClockNewTick(clock); // la validacion ya es interna al reloj, no hace falta validar aca
    ClockGetTime(clock, &current_time);
}

/* === End of documentation ==================================================================== */

/** @} End of module definition for doxygen */
