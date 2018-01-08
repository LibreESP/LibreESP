# Check if the variable "ESP8266_COMPILER_ROOT" was assigned to an existing directory. Aborts configuration with an
# FATAL_ERROR if not.
if(DEFINED ESP8266_COMPILER_ROOT)
    file(TO_CMAKE_PATH "${ESP8266_COMPILER_ROOT}" ESP8266_COMPILER_ROOT)
    if(NOT IS_DIRECTORY "${ESP8266_COMPILER_ROOT}")
        message(FATAL_ERROR "Variable \"ESP8266_COMPILER_ROOT\" doesn't point to an existing directory.")
    endif(NOT IS_DIRECTORY "${ESP8266_COMPILER_ROOT}")
else(DEFINED ESP8266_COMPILER_ROOT)
    message(FATAL_ERROR "Variable \"ESP8266_COMPILER_ROOT\" must be set. E.g. /opt/esp-open-sdk/xtensa-lx106-elf")
endif(DEFINED ESP8266_COMPILER_ROOT)