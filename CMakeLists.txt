cmake_minimum_required(VERSION 3.18.2)

set(CMAKE_CXX_STANDARD 17)
set(NAME utag)

project(${NAME} LANGUAGES CXX)

add_subdirectory(3dparty)
add_subdirectory(app)
