add_library(libreesp-core src/chrono.cpp)
target_include_directories(libreesp-core
        PUBLIC
            include
        PRIVATE
            src)
set_target_properties(libreesp-core PROPERTIES LINKER_LANGUAGE CXX)