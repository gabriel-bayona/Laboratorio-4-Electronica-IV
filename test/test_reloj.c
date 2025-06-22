
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

/** @file test_reloj.c
 ** @brief
 **/

//(SI) Al inicializar el reloj está en 00:00 y con hora invalida.
// (SI)‣ Al ajustar la hora el reloj con valores correctos queda en hora y es válida.
// (NO)‣ Después de n ciclos de reloj la hora avanza un segundo, diez segundos, un minutos, diez minutos, una hora, diez
// horas y un día completo.
//(NO)‣ Fijar la hora de la alarma y consultarla.
// (NO)‣ Fijar la alarma y avanzar el reloj para que suene.
//(NO) ‣ Fijar la alarma, deshabilitarla y avanzar el reloj para no suene.
// (NO) Hacer sonar la alarma y posponerla.
//(NO) Hacer sonar la alarma y cancelarla hasta el otro dia..
// (NO) Probar get_time y con NULL como argumento
// (NO) Tratar de ajustar la hora con un valor inválido y que los rechace
// (NO) Hacer una prueba con una frecuencia de reloj diferente.
// Al inicializar el reloj está en 00:00 y con hora invalida.
/* === Headers files inclusions ==================================================================================== */
#include "unity.h"
#include "clock.h"
/* === Headers files inclusions ====================================================================================
 */
/* === Private macros definitions ================================================================================ */
#define CLOCK_TICKS_PER_SECOND 5 // Frecuencia del reloj simulado en Hz
#define TEST_ASSERT_TIME(hours_tens, hours_units, minutes_tens, minutes_units, seconds_tens, seconds_units,            \
                         current_time)                                                                                 \
    clock_time_t current_time = {0};                                                                                   \
    TEST_ASSERT_TRUE_MESSAGE(ClockGetTime(clock, &current_time), "Failed to set time");                                \
    ClockGetTime(clock, &current_time);                                                                                \
    TEST_ASSERT_EQUAL_UINT8_MESSAGE(seconds_units, current_time.bcd[0], "Difference in units seconds");                \
    TEST_ASSERT_EQUAL_UINT8_MESSAGE(seconds_tens, current_time.bcd[1], "Difference in tens seconds");                  \
    TEST_ASSERT_EQUAL_UINT8_MESSAGE(minutes_units, current_time.bcd[2], "Difference in units minutes");                \
    TEST_ASSERT_EQUAL_UINT8_MESSAGE(minutes_tens, current_time.bcd[3], "Difference in tens minutes");                  \
    TEST_ASSERT_EQUAL_UINT8_MESSAGE(hours_units, current_time.bcd[4], "Difference in units hours");                    \
    TEST_ASSERT_EQUAL_UINT8_MESSAGE(hours_tens, current_time.bcd[5], "Difference in tens hours")

/* === Private data type declarations ============================================================================== */

/* === Private function declarations =============================================================================== */
static void SimulateSeconds(clock_t clock, uint8_t seconds);
/* === Private variable definitions ================================================================================ */

/* === Public variable definitions ================================================================================= */

/* === Private function definitions ================================================================================ */
static void SimulateSeconds(clock_t clock, uint8_t seconds) {
    for (uint32_t i = 0; i < CLOCK_TICKS_PER_SECOND * seconds; i++) {
        ClockNewTick(clock); // Simula un tic del reloj
    }
}
/* === Header for C++ compatibility ================================================================================
 */

/* === Public macros definitions ===================================================================================
 */

/* === Public data type declarations ===============================================================================
 */

/* === Public variable declarations ================================================================================
 */

/* === Public function declarations ================================================================================
 */

clock_t clock; // Variable global para el reloj
void setUp(void) {
    // Esta función se ejecuta antes de cada prueba
    clock = ClockCreate(CLOCK_TICKS_PER_SECOND); // Crea el reloj con la frecuencia especificada
}

// Al inicializar el reloj está en 00:00 y con hora invalida.
void test_set_up_with_invalid_time(void) {
    clock_time_t current_time = {
        .bcd = {1, 2, 3, 4, 5, 6},
    };

    clock_t clock = ClockCreate(CLOCK_TICKS_PER_SECOND);
    TEST_ASSERT_FALSE(ClockGetTime(clock, &current_time));
    TEST_ASSERT_EACH_EQUAL_UINT8(0, current_time.bcd, 6);
}

// Al ajustar la hora el reloj con valores correctos queda en hora y es válida.
void test_set_up_and_adjust_with_valid_time(void) {
    static const clock_time_t new_time = {
        .time =
            {
                .seconds = {4, 5},
                .minutes = {3, 0},
                .hours = {5, 1},
            },
    };

    TEST_ASSERT_TRUE(ClockSetTime(clock, &new_time));
    TEST_ASSERT_TIME(1, 5, 0, 3, 5, 4, current_time);
}

// Después de n ciclos de reloj la hora avanza un segundo, diez segundos, un minutos, diez minutos, una hora, diez horas
// y un día completo.
void test_clock_advance_one_second(void) {

    ClockSetTime(clock, &(clock_time_t){0}); // aca no se verificada nada, es parte de las precondiciones
    SimulateSeconds(clock, 1);               // Simula un segundo

    TEST_ASSERT_TIME(0, 0, 0, 0, 0, 1, current_time);
    // After simulating one second, the expected BCD values are: seconds_units=1, seconds_tens=0, minutes_units=0,
    // minutes_tens=0, hours_units=0, hours_tens=0 (i.e., 00:00:01)
}

void test_clock_advance_ten_seconds(void) {

    ClockSetTime(clock, &(clock_time_t){0}); // aca no se verificada nada, es parte de las precondiciones
    SimulateSeconds(clock, 10);              // Simula diez segundos
    TEST_ASSERT_TIME(0, 0, 0, 0, 1, 0, current_time);
}

void test_set_and_get_alarm_time(void) {
    static const clock_time_t alarm_time = {
        .time =
            {
                .seconds = {0, 0},
                .minutes = {5, 1},
                .hours = {2, 0},
            },
    };

    clock_time_t retrieved = {0}; // la hora de la alarma recuperada desde el reloj.

    // Seteamos la alarma
    TEST_ASSERT_TRUE(ClockSetAlarmTime(clock, &alarm_time));

    // Llamo a ClockGetAlarmTime() y espero que me copie en retrieved la hora que antes guardé con ClockSetAlarmTime()
    TEST_ASSERT_TRUE(ClockGetAlarmTime(clock, &retrieved));

    // Verifico que la hora de la alarma recuperada sea igual a la seteada
    TEST_ASSERT_EQUAL_UINT8_ARRAY(alarm_time.bcd, retrieved.bcd, sizeof(clock_time_t));
}

void test_enable_disable_alarm(void) {
    // Por defecto debería estar deshabilitada
    TEST_ASSERT_FALSE(ClockIsAlarmEnabled(clock));

    // Habilito la alarma
    ClockEnableAlarm(clock);
    TEST_ASSERT_TRUE(ClockIsAlarmEnabled(clock));

    // Deshabilito la alarma
    ClockDisableAlarm(clock);
    TEST_ASSERT_FALSE(ClockIsAlarmEnabled(clock));
}

/* === End of conditional blocks =================================================================================== */
