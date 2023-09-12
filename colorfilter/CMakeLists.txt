cmake_minimum_required (VERSION 3.8)

project ("OI WIKI Color Filter")

find_package(OpenCV REQUIRED)
# opencv include path: /opt/opencv

# SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --static")
# SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --static")
# SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} --static")
# SET(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} --static")

include_directories(${OpenCV_INCLUDE_DIRS})
link_libraries(${OpenCV_LIBS})

add_executable (colorfilter "main.cpp")
