#include <stdio.h>

__global__ void CudaHello() { printf("Hello World from GPU!\n"); }

int main() {
    CudaHello<<<1, 1>>>();
    cudaError_t cuda_error = cudaDeviceSynchronize();
    if (cuda_error != cudaSuccess) {
        printf("kernel launch failed with error \"%s\".\n",
               cudaGetErrorString(cuda_error));
    }

    return 0;
}
