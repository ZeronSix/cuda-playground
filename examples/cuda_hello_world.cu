#include <stdio.h>

#include <cuda_playground_common/cuda_assert.h>

__global__ void CudaHello() {
    printf("Hello World from GPU!\n");
}

int main() {
    CudaHello<<<1, 1>>>();
    CUDA_ASSERT(cudaDeviceSynchronize());

    return 0;
}
