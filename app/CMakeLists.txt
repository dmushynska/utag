cmake_minimum_required(VERSION 3.18.2)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED YES)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)

set(NAME utag)
set(SOURCE_EXE main.cpp)
set(TAGLIB_PATH "../3dparty/taglib/taglib")

project(${NAME})

add_compile_options(
    -Wall
    -Wextra
    -Werror
    -Wpedantic
)

find_library(TAGLIB libtag)
find_package(Qt5 COMPONENTS Core Widgets REQUIRED)

include_directories(
    ./src
    ../build/3dparty/taglib
    ${TAGLIB_PATH}/ape
    ${TAGLIB_PATH}/asf
    ${TAGLIB_PATH}/flac
    ${TAGLIB_PATH}/it
    ${TAGLIB_PATH}/mod
    ${TAGLIB_PATH}/mp4
    ${TAGLIB_PATH}/mpc
    ${TAGLIB_PATH}/mpeg
    ${TAGLIB_PATH}/mpeg/id3v2
    ${TAGLIB_PATH}/mpeg/id3v2/frames
    ${TAGLIB_PATH}/ogg
    ${TAGLIB_PATH}/riff
    ${TAGLIB_PATH}/s3m
    ${TAGLIB_PATH}/toolkit
    ${TAGLIB_PATH}/trueaudio
    ${TAGLIB_PATH}/wavpack
    ${TAGLIB_PATH}/xm
    ${TAGLIB_PATH}
)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ../../)

add_executable(${NAME} ${SOURCE_EXE})
add_subdirectory(src)

target_link_libraries(${NAME} tag Qt5::Core Qt5::Widgets app)
