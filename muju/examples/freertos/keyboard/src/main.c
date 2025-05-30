/************************************************************************************************
Copyright (c) 2022-2023, Laboratorio de Microprocesadores
Facultad de Ciencias Exactas y Tecnología, Universidad Nacional de Tucumán
https://www.microprocesadores.unt.edu.ar/

Copyright (c) 2022-2023, Esteban Volentini <evolentini@herrera.unt.edu.ar>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
associated documentation files (the "Software"), to deal in the Software without restriction,
including without limitation the rights to use, copy, modify, merge, publish, distribute,
sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial
portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

SPDX-License-Identifier: MIT
*************************************************************************************************/

/** @file
 ** @brief Simple sample of use FreeROTS with MUJU hal functions
 **
 ** @addtogroup sample-freertos FreeRTOS Sample
 ** @ingroup samples
 ** @brief Samples applications with MUJU Framwork
 ** @{ */

/* === Headers files inclusions =============================================================== */

#include "bsp.h"
#include "FreeRTOS.h"
#include "task.h"
#include "keyboard.h"

/* === Macros definitions ====================================================================== */

#define EVENT_TEC1_ON  (1 << 0)
#define EVENT_TEC2_ON  (1 << 1)
#define EVENT_TEC3_ON  (1 << 2)
#define EVENT_TEC4_ON  (1 << 3)

#define EVENT_TEC1_OFF (1 << 4)
#define EVENT_TEC2_OFF (1 << 5)
#define EVENT_TEC3_OFF (1 << 6)
#define EVENT_TEC4_OFF (1 << 7)

/* === Private data type declarations ========================================================== */

typedef struct flash_s {
    keyboard_t keyboard;
    uint8_t key;
    hal_gpio_bit_t led;
    uint32_t delay;
} * flash_s;

/* === Private variable declarations =========================================================== */

/* === Private function declarations =========================================================== */

/**
 * @brief Function to inform an error and stop program execution
 *
 * @param  board   Pointer to board descriptor
 * @param  code    Code of error ocurred
 */
void StopByError(board_t board, uint8_t code);

/**
 * @brief Function to flash a led for a while
 *
 * @param  object   Pointer to task parameters structure, used as parameter when task created
 */
static void FlashTask(void * object);

/* === Public variable definitions ============================================================= */

/* === Private variable definitions ============================================================ */

/* === Private function implementation ========================================================= */

void StopByError(board_t board, uint8_t code) {
    // Signal error condition
    GpioBitSet(board->led_rgb->red);

    // Show error code
    GpioSetState(board->led_1, code & (1 << 0));
    GpioSetState(board->led_2, code & (1 << 1));
    GpioSetState(board->led_3, code & (1 << 2));

    // Stop program execution
    while (true) {
    };
}

static void FlashTask(void * object) {
    flash_s options = object;
    TickType_t last_value = xTaskGetTickCount();

    while (true) {
        KeyboardWait(options->keyboard, options->key);

        GpioBitSet(options->led);
        vTaskDelay(pdMS_TO_TICKS(options->delay));
        GpioBitClear(options->led);
        vTaskDelay(pdMS_TO_TICKS(options->delay));
    }
}

/* === Public function implementation ========================================================= */

int main(void) {
    static struct flash_s flash[3];

    /* Inicializaciones y configuraciones de dispositivos */
    board_t board = BoardCreate();
    keyboard_t keyboard = KeyboardCreate(board);

    if (keyboard == NULL) {
        StopByError(board, 0);
    }

    flash[0].keyboard = keyboard;
    flash[0].key = EVENT_TEC2_ON;
    flash[0].led = board->led_1;
    flash[0].delay = 500;

    flash[1].keyboard = keyboard;
    flash[1].key = EVENT_TEC3_ON;
    flash[1].led = board->led_2;
    flash[1].delay = 250;

    flash[2].keyboard = keyboard;
    flash[2].key = EVENT_TEC4_ON;
    flash[2].led = board->led_3;
    flash[2].delay = 750;

    /* Creación de las tareas */
    if (xTaskCreate(FlashTask, "Red", 256, &flash[0], tskIDLE_PRIORITY + 1, NULL) != pdPASS) {
        StopByError(board, 1);
    }
    if (xTaskCreate(FlashTask, "Yellow", 256, &flash[1], tskIDLE_PRIORITY + 1, NULL) != pdPASS) {
        StopByError(board, 2);
    }
    if (xTaskCreate(FlashTask, "Green", 256, &flash[2], tskIDLE_PRIORITY + 1, NULL) != pdPASS) {
        StopByError(board, 3);
    }

    /* Arranque del sistema operativo */
    vTaskStartScheduler();

    /* vTaskStartScheduler solo retorna si se detiene el sistema operativo */
    while (true) {
    }

    /* El valor de retorno es solo para evitar errores en el compilador*/
    return 0;
}

/* === End of documentation ==================================================================== */

/** @} End of module definition for doxygen */
