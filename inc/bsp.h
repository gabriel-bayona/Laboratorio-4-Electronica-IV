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

#ifndef BSP_H_
#define BSP_H_

/** @file bsp.h
 ** @brief Declaraciones públicas para la placa de desarrollo.
 ** @details Este archivo contiene las definiciones y declaraciones necesarias para manejar la placa de desarrollo.
 **/
/* === Headers files inclusions ==================================================================================== */

#include <stdint.h>
#include <stdbool.h>
#include "digital.h"
#include "config.h"

/* === Header for C++ compatibility ================================================================================ */

#ifdef __cplusplus
extern "C" {
#endif

/* === Public macros definitions =================================================================================== */

/* === Public data type declarations =============================================================================== */
//! Estructura que representa la placa de desarrollo
typedef struct Board_s{
    digital_output_t ledGreen;
    digital_output_t ledRed;
    digital_output_t ledBlue;
    digital_output_t ledYellow; 

    digital_input_t keyPush;
    digital_input_t keyToggle;
    digital_input_t keyTurnOn;
    digital_input_t keyTurnOff; 
} const * Board_t;
/* === Public variable declarations ================================================================================ */

/* === Public function declarations ================================================================================ */

/**
 * @brief Crea e instancia la estructura que representa la placa de desarrollo.
 * @return Un identificador para la placa de desarrollo.
 * @note Esta función instancia la estructura y retorna su descriptor.
 */
Board_t BoardCreate(void);

/* === End of conditional blocks =================================================================================== */

#ifdef __cplusplus
}
#endif

#endif /* BSP_H_ */
