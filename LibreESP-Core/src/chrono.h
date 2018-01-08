#ifndef LIBREESP_CHRONO_H
#define LIBREESP_CHRONO_H

#include <c_types.h>

extern "C" {
volatile uint32_t *system_time = (volatile uint32_t *)0x3FF20C00;
};

#endif
