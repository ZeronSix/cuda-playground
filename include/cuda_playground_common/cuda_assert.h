#pragma once

#include <cstdlib>
#include <iostream>

#define CUDA_ASSERT(statement)                                                 \
    do {                                                                       \
        cudaError_t cuda_error = statement;                                    \
        if (cuda_error != cudaSuccess) {                                       \
            std::cerr << "[" << __FILE__ << ":" << __LINE__ << "] Statement `" \
                      << #statement << "` failed with "                        \
                      << cudaGetErrorString(cuda_error) << "\n";               \
            std::abort();                                                      \
        }                                                                      \
    } while (0)
