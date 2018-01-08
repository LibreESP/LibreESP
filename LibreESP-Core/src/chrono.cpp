#include <chrono.h>

#include <chrono>

using namespace std::chrono;

steady_clock::time_point steady_clock::now() noexcept {
   return steady_clock::time_point(std::chrono::duration<uint32_t, std::micro>(*system_time));
}