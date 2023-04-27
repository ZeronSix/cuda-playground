cmake_minimum_required(VERSION 3.24..3.26)

project(
  CudaPlayground
  VERSION 0.1
  DESCRIPTION "CUDA Playground"
  LANGUAGES CUDA CXX
)

if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
  set(CMAKE_CXX_EXTENSIONS OFF)
  set_property(GLOBAL PROPERTY USE_FOLDERS ON)
endif()

add_subdirectory(src)
add_subdirectory(examples)
