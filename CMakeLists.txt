cmake_minimum_required(VERSION 3.0 FATAL_ERROR)

# Search for custom module in the "cmake" folder in the top level project directory.
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

# Include DevelopmentSettings.cmake if present.
if(EXISTS ${CMAKE_SOURCE_DIR}/DevelopmentSettings.cmake)
    include(DevelopmentSettings.cmake)
endif(EXISTS ${CMAKE_SOURCE_DIR}/DevelopmentSettings.cmake)
include(CheckCrossCompilerVariable)

# Projects using LibreESP have their own toolchain file defined so we shouldn't define an other one.
if(NOT DEFINED CMAKE_TOOLCHAIN_FILE)
    # Contains settings for using the xtensa gcc compiler.
    set(CMAKE_TOOLCHAIN_FILE "${CMAKE_CURRENT_SOURCE_DIR}/cmake/Toolchain.cmake")
endif(NOT DEFINED CMAKE_TOOLCHAIN_FILE)

project(LibreESP VERSION 0.1.0 LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 11)

# Add all libraries below this line.
add_subdirectory(LibreESP-Core)