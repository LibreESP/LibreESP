# LibreESP

For [Espressif's ESP8266][esp8266] microcontroller there exists two binary SDKs. The [NON-OS SDK][nonos] and the [RTOS SDK][rtos]. LibreESP is the attemp to create a free and open SDK written in C++11. Goals are to use the power of C++11 while having a modular SDK with a low memory footprint.

Because this is my first real C++ project I have to learn a lot about C++ and memory optimizations, so contributions and code reviews are very welcome.  


## Building
### Requirements
LibreESP is using [CMake][cmake] as build system generator and the Xtensa GCC compiler from [esp-open-sdk][esp-open-sdk]. To build LibreESP you need both of them. Install CMake from your distributions repositories and the Xtensa GCC compiler as described in the repository linked above.

### Cloning
At first clone this repository:
```
> git clone https://github.com/LibreESP/LibreESP && cd LibreESP
```

### Compiling
First create a build directory and switch into it:
```
LibreESP> mkdir build
```
At the configuration step you have to assign the `ESP8228_COMPILER_ROOT` CMake variable:
```
LibreESP/build> cmake -DESP8266_COMPILER_ROOT=</path/to/xtensa-lx106-elf> ..
```
To finally compile LibreESP use the following command within your build directory:
```
LibreESP/build> cmake --build . --target all
```
To generate a project file for your beloved IDE or code editor use
```
LibreESP/build> cmake -G <generator-name> -DESP8266_COMPILER_ROOT=</path/to/xtensa-lx106-elf> ..
```
A list of all available CMake generators can be found [here][cmake-generators].

Now the compiled library can be found in `build/LibreESP-${module_name}/`.

Instead of assign CMake variables at the configuration step you can assign them using a `DevelopmentSettings.cmake` file in the root source directory. Just copy `DevelopmentSettings.cmake.sample` to `DevelopmentSettings.cmake` and replace the default values. 

## Contributing
Please see [CONTRIBUTING](docs/CONTRIBUTING)

[esp8266]: http://espressif.com/en/products/hardware/esp8266ex/overview
[nonos]: https://github.com/espressif/ESP8266_NONOS_SDK
[rtos]: https://github.com/espressif/ESP8266_RTOS_SDK
[esp-open-sdk]: https://github.com/pfalcon/esp-open-sdk
[cmake]: https://cmake.org/
[cmake-generators]: https://cmake.org/cmake/help/latest/manual/cmake-generators.7.html