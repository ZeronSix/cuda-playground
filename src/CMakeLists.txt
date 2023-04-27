set(HEADER_LIST "${CudaPlayground_SOURCE_DIR}/include/cuda_playground_common/cuda_assert.h")

add_library(cuda_playground_common INTERFACE ${HEADER_LIST})
target_include_directories(cuda_playground_common INTERFACE ../include)
target_compile_features(cuda_playground_common INTERFACE cxx_std_17)

source_group(
  TREE "${PROJECT_SOURCE_DIR}/include"
  PREFIX "Header Files"
  FILES ${HEADER_LIST}
)
